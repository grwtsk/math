# selectedParentRowsChunk0019

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3f836252164169accb0ec7decba66879cccb4880341be4a39d5fc396c3e4c78",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0019",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "selectedparentrowschunk0019--252d6699fee2c333c40930ea",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120260,
    "line": 120061,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:252d6699fee2c333c40930ea6fb572bef2d5d703fd730d5d35dd77e3bfc079c2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3f836252164169accb0ec7decba66879cccb4880341be4a39d5fc396c3e4c78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120061–120260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0019 : List (String × String × List String) :=
[
  ("formal-neighborhood:97aa7ccfe06364471db5ec2b85b3507cb57f47077245b4d2f24251df215dd5e9", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:97c92e9770750cd423b635e8ed87fc9c6af259dac02a60f02a90273803edbd25", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:97d3f9b1cb5f54949b906a05fab43288d312e16a0baa0a64048857e4d0827eb6", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:981074aae906270aa6f3f0b04cf5cc5fb43075a5dc31c40df529325209ab94e0", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:98181b0d31c661e8f6c466f04a1921d6a20b12ed1c22bb3d9ee0802305739d6b", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:981c0487063994d20ad39c2b0c5e529b04df8fb844ef0b47cd98261ffae34c61", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:9855597febe53b0d0712c015f19213d91df4cb0eafeaf52ff4e80505e2fd6293", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:985b135248860a4931904261985addcb7ca9ac7bd97d03dd1330be19fff51b50", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:988a02f2da98e17470d634246a1aef91c8c9b05fd6be2a2faa89cd8e111e3f1d", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:9891fc6268d978dd47d64e6e2617ce3efce8514d7cfed289491fd3d1f7763e2c", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:98a6cb8050d639ccc5d55dbce950be39bcb2cb36dd16afbcdc69eeaabfc8c5ae", "formal-neighborhood:171700bee02ab42afbfe4f37c193af6b28d7c96d81eb9f562b94ec046746a131", [
      "formal-neighborhood:171700bee02ab42afbfe4f37c193af6b28d7c96d81eb9f562b94ec046746a131"
  ]),
  ("formal-neighborhood:98a846e635df5c0e4e475a32e68f18f9d967701fb65659d51a5f36527aaf54be", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:98b39c2871fc014af3c36a41ea96eb1d3babb0f268d36c30b6182499aa30bf11", "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c", [
      "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c"
  ]),
  ("formal-neighborhood:98c0c1f2208268a539dc52136b0f60cd6047eb85df2f02faccd55fc8397b3222", "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5", [
      "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5"
  ]),
  ("formal-neighborhood:98cbef4067e47030f6fe8753fcaae47d3da27114a3b9b2fba5bb22ac96344386", "formal-neighborhood:97d3f9b1cb5f54949b906a05fab43288d312e16a0baa0a64048857e4d0827eb6", [
      "formal-neighborhood:97d3f9b1cb5f54949b906a05fab43288d312e16a0baa0a64048857e4d0827eb6"
  ]),
  ("formal-neighborhood:990aa3fc61d06180d63092997561c52e7ae9dbbe6ebb0c07cf8f163515e32cd7", "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100", [
      "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100"
  ]),
  ("formal-neighborhood:991d40fd1edcdfa83d827e1d7e30e5777f1415b6c2d0dcd938d4e0a3229979ec", "formal-neighborhood:1404be9403355f071a912c2682915693b8a54f446232621f1cad10b458c86d88", [
      "formal-neighborhood:1404be9403355f071a912c2682915693b8a54f446232621f1cad10b458c86d88"
  ]),
  ("formal-neighborhood:99210209087e5bd2ce43c848a971e2a50081f7cef30b9ccec88a27b36cf0aa5c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9925eae57a420ebf2b9258d3b7089d328e9ba08b510fad24e15a5d2f1e313996", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:9940a4d08f532f610d791fda63cdc6ff559985098087de352f400dd3aa208b32", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:99422cf16cfa6e57147f3dff0dcdc27e686c6c0783686d73c35fdede24e868e3", "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f", [
      "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f"
  ]),
  ("formal-neighborhood:99468bbf1770f59553e46ed4be30f7f636e2f2d37822fc3d1c582272a3abe9bc", "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29", [
      "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29"
  ]),
  ("formal-neighborhood:995fa775a1ee9a8b10803af174b11b737d5b3ba288389c1eda4680db7320d150", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:9974e0eb7b3514c52de76d4342389baaacc3e7aa6afddeb9180684ed683fcd20", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:99ba42cc3dad433eceb31329c452db2a5178084d28663b578f5b07043a137d2d", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:99c5e743bfc773b59ee18666ccda25c4a90c6c4f380f04c2e6a52241134db551", "formal-neighborhood:e715575969a98c46aa47725dec5e5221254b669521b37bf9c6a8850d08cce3a6", [
      "formal-neighborhood:e715575969a98c46aa47725dec5e5221254b669521b37bf9c6a8850d08cce3a6",
      "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138"
  ]),
  ("formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:99d4e5cdf704d77b45a21cb2dcf3c8572f7bcce2ed39f33a938c08f55cbd3ec9", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:99dcd590e94d19f8c797ffd44302e5f147d5707fa5bca4bd5152bc9786f917d1", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:9a061acf1b13f638494556b5c245afcf61863a841bb96a95a7ae9257df67e63f", "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727", [
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:9a347bbd043321dbdeebda67e837c5d8f5daf5361e64bf1b684e756b7b58eeee", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:9a4b37c106b7f274f3b99acfe554fc55388fa3fd572af81c52cb94b5371cfb12", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:9a6518d19b3b85a4bbeae24d03729f49b21426faeacd7608602731e19afe6bbc", "formal-neighborhood:481d14c2a3777439eec8e8ef1cbe146cdfc2c9a67cb7f8f3ec1323b1c6ab1b8b", [
      "formal-neighborhood:481d14c2a3777439eec8e8ef1cbe146cdfc2c9a67cb7f8f3ec1323b1c6ab1b8b"
  ]),
  ("formal-neighborhood:9a6c1cba3b42ec4bb4ce68f34d8d35a008da4d11bfe2fd605c336d83f861db19", "formal-neighborhood:478832b71addd4d2b228dfddfefb3f8f1adfc44c99f0c266e46c003b3823b19c", [
      "formal-neighborhood:478832b71addd4d2b228dfddfefb3f8f1adfc44c99f0c266e46c003b3823b19c"
  ]),
  ("formal-neighborhood:9a7e37f28c9c100d3a5909dbc560cba20888f846afe817114b79dec1e92028d9", "formal-neighborhood:06c19ab993811c3a112975fe7a04ca5db7c57b2ff4492815a86fdff58267c6f0", [
      "formal-neighborhood:06c19ab993811c3a112975fe7a04ca5db7c57b2ff4492815a86fdff58267c6f0"
  ]),
  ("formal-neighborhood:9a819d3730ca600847cae5a2c0e1c0e381ba963534303e59945327b89714c1ef", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9acd153a2071dd735d8188ad936b8f8e3cbba347f794d9d802db33d41aebb1c1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9ae7e0dd4ebcc4771bce4db884c1f5c547ab7e84b96c54b5fc8d17257fc70609", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9ae89d1c925a869fcdf1ec3f4ae498fc849f20097260a471159f25298faecdbd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9b146dfae44c25b3be89e1839347624b281fbffa3fcfd4aeda34f61a5aad922a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9b1873399350a7c7a7568362966ac62f580cf760fdca37a58eb3174a71a56094", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9b24fdac5af81df8c08004bb81ab07c4fdd7f5e6f8f0c1b8f660f2e71bdc5541", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9b3b7a48c76a89c0704b30fb19f5cf7bddab9b1b5c6666f080dea17c0cce0c4e", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:9b73ec529e77985e9ee030d8b46d087aefdd82f1818886eab13a684c95bf812e", "formal-neighborhood:dc3cf71cf4730ad1e27b4693fc98589d6e242aa0352f109f1031053629728e37", [
      "formal-neighborhood:48b8e654208679f2d0c6705044708ad3072026549e8b9776397f59e3584e2971",
      "formal-neighborhood:dc3cf71cf4730ad1e27b4693fc98589d6e242aa0352f109f1031053629728e37"
  ]),
  ("formal-neighborhood:9b760aa981958a13463f3efd888326db8ea502723a6fadca9ab14df29eef4b5c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9b80723fb337179da988254720efc88a9623c2b67cdef5a7c4c922fabf36f1e1", "formal-neighborhood:f77ce8ee3c0075ff90458a9608e699b81fc093a68f2ba1a8e7e8703a34021fd3", [
      "formal-neighborhood:f77ce8ee3c0075ff90458a9608e699b81fc093a68f2ba1a8e7e8703a34021fd3"
  ]),
  ("formal-neighborhood:9bd01b99853cedc40bc04f94f25b1e197e7d34256f0978ff08b54e1aabaace01", "formal-neighborhood:903d25208285b5f43f5b6083c0487ae2e9544da16c202f722df53460f0aa7596", [
      "formal-neighborhood:903d25208285b5f43f5b6083c0487ae2e9544da16c202f722df53460f0aa7596"
  ]),
  ("formal-neighborhood:9be0fe7e10b496ae8371f3f296a39e6f47d4c3d12c9877c7af9f26ffd6838099", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9c1335b83c56e88d7e65369a4c9811457ac89134c1b6f526afb1d2589f0a8d9f", "formal-neighborhood:f9ded91a76994425ab042ce37542bc433c8043568d4c9f18cd2840d946089b95", [
      "formal-neighborhood:f9ded91a76994425ab042ce37542bc433c8043568d4c9f18cd2840d946089b95"
  ]),
  ("formal-neighborhood:9c15fe632df12062df398b664cffdb0e58f9951ec595f05c0f7c14100a5f19f4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9c5f506543496da3651d9aa337dc4be45a67a944f47cfe17f66ccf717625f5d5", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:9cc893755c0661dfdf18774abec3ad390420c748a6fb44dd55ae76dced59750a", "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", [
      "formal-neighborhood:fd79f277430a054a091dbe4e773ca6cff622bc3436ebbc162ee0f4c78e72437b",
      "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a"
  ]),
  ("formal-neighborhood:9cfb85b19c663a3d15e2e07b7b3f5ab3e850174661bceec9774531b153a9eda7", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:9d413a40bf934b7af4bc5ee327068b1173700bc902faa4baddb30352f0d6a217", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9d427bca33947cfb3992a61026198dd8a263884a7c6c5c7d9c201185a674cec3", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:9d49b03f5c4048408421a6371b8ff3b1f5710dead651e8fdfc716f2b0c7cef07", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9d9e23849a481db32dbd15f7ca37459329bdd6b14c3092fce6744889075fe33c", "formal-neighborhood:d53d79831b35f984bfcf9490e4d0df53c04a929461795ace845b7013b3bed576", [
      "formal-neighborhood:d53d79831b35f984bfcf9490e4d0df53c04a929461795ace845b7013b3bed576",
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:9db1b0f4846a7cce0d6965e8166fbf30648a99f736d4f420a4b5312ab2ccd96c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:9dfb9a52d9657312e7b1613c2c119257eca525b840f8c6e07cbbfcd905a97b62", "formal-neighborhood:c76f2ea6c00c8a71326cdd4e46d83bbde6fab3d77efc9a4d2e30f336a9929727", [
      "formal-neighborhood:c76f2ea6c00c8a71326cdd4e46d83bbde6fab3d77efc9a4d2e30f336a9929727"
  ]),
  ("formal-neighborhood:9e152670a5df3ce3398f10280617a9cdcd0110ebf93a9e86722ca490e7ed6a21", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L120061).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
