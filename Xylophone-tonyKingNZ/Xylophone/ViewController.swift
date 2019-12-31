import UIKit
import AVFoundation //Must impport to play audio

class ViewController: UIViewController {

    var player: AVAudioPlayer! //Create the audio player
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!/*Give the button title to the playSound func to assing what audio to play */)
        sender.alpha = 0.5 //Set button half opaque
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            sender.alpha = 1.0
        }//Create a 0.2 secondsdelay
        
    }
    
    func playSound(soundName: String/*Recive the title of the button that is same same name of the audio file */) {
        let url = Bundle.main.url(forResource: "\(soundName)", withExtension: "wav")//Say where is the audio file
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }//Create a funciotion to play the song for each key pressed
}


