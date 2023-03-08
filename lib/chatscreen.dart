import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController controller = TextEditingController();
  final List<ChatMessage> messages = [];
  Widget _buildTextComposer() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                label: Text("Enter a messsage"),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.send),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chat Gpt Ai",
          style: TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
                child: ListView.builder(
              reverse: true,
              itemBuilder: (context, index) {
                return messages[index];
                // Padding(
                //   padding: const EdgeInsets.only(
                //       left: 10.0, right: 10.0, top: 60, bottom: 50),
                //   child: Container(
                //     height: 100,
                //     color: Colors.green,
                //   ),
                // );
              },
              itemCount: messages.length,
            )),
            Container(
              decoration: BoxDecoration(
                color: context.cardColor,
              ),
              child: _buildTextComposer(),
            )
          ],
        ),
      ),
    );
  }
}
