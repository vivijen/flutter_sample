import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Bagongge(),
    );
  }
}

class Bagongge extends StatefulWidget {
  Bagongge({Key key}) : super(key: key);

  @override
  BagonggeState createState() => BagonggeState();
}

class BagonggeState extends State<Bagongge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Bagongge_Btn(
                routeName: 'JianKang',
                imgsrc: 'http://jspang.com/static//myimg/blogtouxiang.jpg',
                pageName: '健康'),
            Bagongge_Btn(
                routeName: 'TongZhi',
                imgsrc: 'http://jspang.com/static//myimg/blogtouxiang.jpg',
                pageName: '通知'),
            Bagongge_Btn(
                routeName: 'BaoShi',
                imgsrc: 'http://jspang.com/static//myimg/blogtouxiang.jpg',
                pageName: '报事'),
            Bagongge_Btn(
                routeName: 'TouSu',
                imgsrc: 'http://jspang.com/static//myimg/blogtouxiang.jpg',
                pageName: '投诉')
          ]),
          Row(children: <Widget>[
            Bagongge_Btn(
                routeName: 'JiaoFei',
                imgsrc: 'http://jspang.com/static//myimg/blogtouxiang.jpg',
                pageName: '缴费'),
            Bagongge_Btn(
                routeName: 'DangXuan',
                imgsrc: 'http://jspang.com/static//myimg/blogtouxiang.jpg',
                pageName: '党宣'),
            Bagongge_Btn(
                routeName: 'BaoXiu',
                imgsrc: 'http://jspang.com/static//myimg/blogtouxiang.jpg',
                pageName: '报修'),
            Bagongge_Btn(
                routeName: 'GengDuo',
                imgsrc: 'http://jspang.com/static//myimg/blogtouxiang.jpg',
                pageName: '更多')
          ])
        ],
      ),
    );
  }
}

class Bagongge_Btn extends StatefulWidget {
  Bagongge_Btn({Key key, this.routeName, this.imgsrc, this.pageName})
      : super(key: key);

  final String routeName;
  final String imgsrc;
  final String pageName;

  @override
  Bagongge_BtnState createState() => Bagongge_BtnState();
}

class Bagongge_BtnState extends State<Bagongge_Btn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //导航到新路由
        Navigator.pushNamed(context, widget.routeName);
      },
      child: Column(
        children: <Widget>[
          Container(
            child: new Image.network(widget.imgsrc, width: 60, height: 100),
            padding: const EdgeInsets.all(10),
          ),
          Text(
            widget.pageName,
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
