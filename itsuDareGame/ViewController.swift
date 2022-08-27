//
//  ViewController.swift
//  itsuDareGame
//
//  Created by Yui Ogawa on 2022/08/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray: [String] = ["一年前", "一週間前", "昨日", "今日", "一分前", "千年前"]
    let dokodeArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで", "スーパーで", "庭で"]
    let daregaArray: [String] = ["僕が", "大統領が", "先生が", "友達が", "母が", "平安貴族が"]
    let doshitaArray: [String] = ["叫んだ", "演説した", "怒った", "踊った", "買い物をした", "和歌を詠んだ"]
    
    var index:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(){
        // 各ラベルに配列の要素を追加
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        // indexの値に+1
        if index == 5 {
            index = 0
        } else {
            index = index + 1
        }
    }

    @IBAction func reset(){
        // それぞれのラベルを元に戻す
        itsuLabel.text = "-----"
        dokodeLabel.text = "-----"
        daregaLabel.text = "-----"
        doshitaLabel.text = "-----"
        
        // インデックスを初期化
        index = 0
    }
    
    @IBAction func random(){
        // 乱数を生成し、それぞれのindexに入れる
        let itsuIndex = Int.random(in: 0...5)
        let dokodeIndex = Int.random(in: 0...5)
        let daregaIndex = Int.random(in: 0...5)
        let doshitaIndex = Int.random(in: 0...5)
        
        print("いつ：\(itsuIndex)")
        print("どこで：\(dokodeIndex)")
        print("だれが：\(daregaIndex)")
        print("どうした：\(doshitaIndex)")
        
        // それぞれのラベルに要素を追加する
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
    }
}

