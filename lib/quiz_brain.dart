import 'questions.dart';

class QuizBrain {
  int _quesNo = 0;

  List<Questions> _quesBank = [
    Questions("Giraffes have black tongues.", true),
    Questions("There are 42 states in India.", false),
    Questions("Zodiac astrology is based on moon sign.", false),
    Questions("Mocha is a type of coffee.", true),
  ];

  void reset(){
    _quesNo = 0;
  }

  bool isFinished(){
    if(_quesNo >= _quesBank.length - 1){
      return true;
    }
    else return false;
  }

  void nextQuestion(){
    if(_quesNo < _quesBank.length - 1){
      _quesNo++;
    }
  }

  String getQuestion() {
    return _quesBank[_quesNo].quesText;
  }

  bool getAnswer() {
    return _quesBank[_quesNo].quesAns;
  }
}
