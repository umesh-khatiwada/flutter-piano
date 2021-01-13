import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Piano(),
      ),
    );

class Piano extends StatefulWidget {







  @override
  _PianoState createState() => _PianoState();
}

class _PianoState extends State<Piano> {


void music(int hero){
 final player = AudioCache();
  player.play('note$hero.wav');

}


  Expanded blockrey({color,int number}){
  return  Expanded(
            child: FlatButton(
              onPressed: () {
               music(number);
              },
              child: null,
              color: color,
            ),
          );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Piano Songs'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          blockrey(color: Colors.red, number:1),
           blockrey(color: Colors.greenAccent, number:2),
            blockrey(color: Colors.blue, number:3),
             blockrey(color: Colors.yellow, number:4),
              blockrey(color: Colors.pink, number:5),
               blockrey(color: Colors.brown, number:6),
                blockrey(color: Colors.black, number:7),

          

        ],
      ),
    );
  }
}


/*


          Expanded(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note2.wav');
              },
              child: null,
              color: Colors.orange,
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note3.wav');
              },
              child: null,
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note4.wav');
              },
              child: null,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note5.wav');
              },
              child: null,
              color: Colors.green,
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note6.wav');
              },
              child: null,
              color: Colors.pink,
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note7.wav');
              },
              child: null,
              color: Colors.yellow,
            ),
          ) */