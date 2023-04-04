
import 'dart:async';
import 'HomePage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) {
            return const HomePage();
          }));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      backgroundColor: Colors.black38,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 300,
            ),
            Image.asset('assets/splashScreen.png'),
          ],
        ),
      ),
    );
  }
}

