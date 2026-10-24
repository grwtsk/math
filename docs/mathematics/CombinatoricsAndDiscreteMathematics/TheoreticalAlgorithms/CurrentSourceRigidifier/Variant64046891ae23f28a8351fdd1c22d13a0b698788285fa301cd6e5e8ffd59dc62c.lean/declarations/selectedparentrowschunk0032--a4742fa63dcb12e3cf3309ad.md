# selectedParentRowsChunk0032

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28e2ed7cf8676ba5bf5e8a6f0bdb12c585b0e62e2105827894cf51bc54d2ac82",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0032",
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
  "slug": "selectedparentrowschunk0032--a4742fa63dcb12e3cf3309ad",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139540,
    "line": 139367,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4742fa63dcb12e3cf3309ad2a9c4acc9f0dee52c8347def0a0130fe27d215de",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28e2ed7cf8676ba5bf5e8a6f0bdb12c585b0e62e2105827894cf51bc54d2ac82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139367–139540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0032 : List (String × String × List String) :=
[
  ("formal-neighborhood:f9053fb715726f6cb9d70641dc51b57fda9174467e90809da6b8671d8070e7e4", "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1", [
      "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1"
  ]),
  ("formal-neighborhood:f97862a9ebe42fecb1f0c921dfc8cb0a2c32a6d0bdfa0221886ff8303919a88c", "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f", [
      "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f"
  ]),
  ("formal-neighborhood:f985c58f4ebc4027b584f921918a17083f7eaf1188ca6c14410fce4f52027270", "formal-neighborhood:a58e09306b4d65ce31ede59a4e8995ab3862dbcedef36a76409cdac1dd9370ed", [
      "formal-neighborhood:a58e09306b4d65ce31ede59a4e8995ab3862dbcedef36a76409cdac1dd9370ed"
  ]),
  ("formal-neighborhood:f993440ebd6ec3c8a3eeddf3e445e6f3978c06ef383a259cb507921b4bee0d0b", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:f9b41d4d3cfb0790461c799eab88d978600ec802be5d0840087f75ae1c8657d1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f9bc3eef12041413b187beed4965bc24c2e586ad48d4243a90e013d6261ba822", "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da", [
      "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da"
  ]),
  ("formal-neighborhood:f9cce25bd58ee0451ef0724b3b9bf8ee4375aa37b0cde11241b72c391a8f024a", "formal-neighborhood:bbe03a46272c93b5aefa2b7216991f9a6fd0550ad2ad23a5f0e921711fa564e2", [
      "formal-neighborhood:bbe03a46272c93b5aefa2b7216991f9a6fd0550ad2ad23a5f0e921711fa564e2"
  ]),
  ("formal-neighborhood:f9ceca9e62c8d45326ec21addbb80c0c1df923416204065b042ba1264330ca8c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f9d9bf71e76e7b26c53794e77dc359d8da052984a7261af9798afe0dcf6de8e5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f9ded91a76994425ab042ce37542bc433c8043568d4c9f18cd2840d946089b95", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f9ffdb0aafa97530ab92d434a0b854a84f9838c36cb28181b4f972179baf07d9", "formal-neighborhood:a963a472d8e7d0c502971cba23f57aaf880fa7afb3b59f4a2f9d7b5f77f868bd", [
      "formal-neighborhood:a963a472d8e7d0c502971cba23f57aaf880fa7afb3b59f4a2f9d7b5f77f868bd"
  ]),
  ("formal-neighborhood:fa45bfe2b5a761ca039cf0c058c4786ad6e59d11134159432e40516bea4e69c7", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:fa53402ad15f5b7eee02fade8383b612cd02ff439c4da4c60c54f07961ad9030", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:fa6af71f68ec0f918343b5d5cb0fa67ff6be73e4d19148af749240a57ee256a5", "formal-neighborhood:5c146f043f5a2da872af0f005749327b93e0c96b43557e914aa04044db21a012", [
      "formal-neighborhood:5c146f043f5a2da872af0f005749327b93e0c96b43557e914aa04044db21a012"
  ]),
  ("formal-neighborhood:fa6d28ee4a300c94de803edce4e942cf1aec174376cc5b78fbad4c576f4639c3", "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1", [
      "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1"
  ]),
  ("formal-neighborhood:fa7116ee6c1eaab0f3683af63c24d6dd4258c52c240b888e5838ac8b3b73339f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:faa763dca853bc9b756bce2fe236668e733cd9a039803ae53672ba149b7d21c4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fab2c4f4df4695c2467d72a076f46bd681879e65359dd3afba77f5b32b1fec40", "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0", [
      "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0"
  ]),
  ("formal-neighborhood:fad43a26dfbdd3bf51c94d0b7db23d5c751cde4926446096c67a40750292fa06", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:faea9e6bdfe2a2e3d9dfbfd8a52cafde8a139d2d0c4521bd5b866deedc3a2136", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:fb27fc944824dc3b3857402bba716950b24f420c7ffd55e5865e107a92cde5cc", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fb409c2b3d7e917d9558a8bcd32165204d404106d9cda340314cec0feeaa6525", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:fb545d77f296e2c6da58a9375c397655308aa39458198ab27ef9c824e16aa897", "formal-neighborhood:15dfb597c1618625ee5639b8b370404fabe5fb82d37c58746b4114b77522d1ea", [
      "formal-neighborhood:15dfb597c1618625ee5639b8b370404fabe5fb82d37c58746b4114b77522d1ea"
  ]),
  ("formal-neighborhood:fb97d4dae546e6326ee3f46c744782b215b70ab4b6955764fe09d8110dd59b21", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fb9bfb25ca45dddc4ed6854532577535cbce36415fe5f633dd84f0b6d7dfcbe2", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:fba0a78ac89566d355a68a649c3cbdd3fcd4fb6cba588a42881017e001ff321f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fba214292c0636a141433a708e0032750177dd672e596a8d1a0aa9503441c871", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fba29b2cfc89703651bea943fec30795329904f40c493cf3ec8581895819c4a2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fbab52b3b702d507a90b426e59d1caa577e10d1797c9c2f20d7edc41776838cb", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:fbb32f4566f806e1da3c91c3c558ca22d2d620d46565d68541c5cdf09e76a3b4", "formal-neighborhood:2a151e0e8527ec5014f4e09c420b4fed4937ee14b63912267cbeccadeadd1c46", [
      "formal-neighborhood:2a151e0e8527ec5014f4e09c420b4fed4937ee14b63912267cbeccadeadd1c46"
  ]),
  ("formal-neighborhood:fbb43f5d49d54e7aae64b676810f2c4de7f91c9ca91d82699273c64e264b5db7", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ]),
  ("formal-neighborhood:fbd6d2a0d44175c79d483c028be789b8d912b2b17c9e9168da726b23d283c128", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fc0a64362d2a764b8299af04bba745fa410a4302356fbab7811fcb1ac1273005", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:fc736c7628489750642fdd7c4e4761845464f1af55bbca7f5f2f7319e28c085a", "formal-neighborhood:59a119827ad90fb5d924df154e1cc686d43e13af9ac706bd83afb1573c591cf2", [
      "formal-neighborhood:59a119827ad90fb5d924df154e1cc686d43e13af9ac706bd83afb1573c591cf2"
  ]),
  ("formal-neighborhood:fcaf27c2b4e0a3bbaf4d403d0a2756d059ad6ff27d1245d696b4914578850859", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:fd3029d0526d3798852a76904b08b2fcee488e7e1a437fdeb1540cb86916a87c", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:fd335f82f01245963e58d27e5291bb08a6d60f34b6d9333d34b680b41d527db9", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fd63327b5c88eb4d8f6040637ed2b3f73925e2c77ab722cba3cb041dc7086d90", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fd992a84599fd21bd27428408ef8f8c0ddea42ed6ea99ecedd11e3bbecd9905a", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:fda9c344fd6c7ed0ed9eacaf264d4a6b387ffe7789c0b40b9f1d663be8aa420d", "formal-neighborhood:5adc76236da3d931eca8bdc698c0f47b622de9d6854b692969214a8b41711da6", [
      "formal-neighborhood:5adc76236da3d931eca8bdc698c0f47b622de9d6854b692969214a8b41711da6",
      "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6"
  ]),
  ("formal-neighborhood:fdad25643a3b232c5fa4dc6d6ba7fbf3fbd6eaba37ecad721bb9893dea22cc98", "formal-neighborhood:422f384220a38b93568b14953643dc4a5ecc7a1ae03dad6da25e7507804f9ab5", [
      "formal-neighborhood:422f384220a38b93568b14953643dc4a5ecc7a1ae03dad6da25e7507804f9ab5"
  ]),
  ("formal-neighborhood:fdb00b26a762b8c36019d505f34bef05d0402a6ca57e05cc1eb51415b20215c3", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fdb1293fa38728c0992dcb42875e21a4eda3293a68a482f52c1a285303be3295", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:fddb269b158378377257b8b115592adee456bb82635aad6413affe224877f818", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:fe0aa82568399f321cf1bf2f6355ae578f82de0a266eae2f75f94e6daa91dafa", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:b66f1b10986eafa89351f87b9e93e9776eafaa641fe86a0b0e412db111d7f515",
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:fecdec499ad91c35b5351c073ca6a7f35791d04f463f8f2b49673f04ed892d28", "formal-neighborhood:9836a306ea59cf381862571023153eaa9c9ab8994f2d79a5cbe3240e17933441", [
      "formal-neighborhood:9836a306ea59cf381862571023153eaa9c9ab8994f2d79a5cbe3240e17933441"
  ]),
  ("formal-neighborhood:fed4d3d4e96e32edf94744db129a08a36fd509ba6c7251a305fda41b7cefbbd7", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:fee042b867c50daf3f9b51daaaeebeadfc95a870e3c5c3a6b18e668c71d0ed22", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:fefa39290137c0f7c1dd29fa56bb46085a90d89a991bad37d1389a1bf6469756", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:ff54ac399a694658ab9defee55a5d1c89fe821f5330445be6e55af7e6dccb8e8", "formal-neighborhood:edc1585ffa6c35c3f9972e6fbe38f53544e031faedf00f10e2b180e4f385e20d", [
      "formal-neighborhood:edc1585ffa6c35c3f9972e6fbe38f53544e031faedf00f10e2b180e4f385e20d"
  ]),
  ("formal-neighborhood:ff7908abfe4e8046468214d38f4e987e58b1a6c90ed190491f97868be7d66161", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:ff8d09e0a7e0e06db1fdae95bf83a0bc77055d17cad38c153646f062a5bb3526", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:ff9c1890cffec360c4df63b224a69dfd42ccec34a87daf9a9951a38dc5b5e9df", "formal-neighborhood:15b066d755ecdb319912c2691c414db7e98e9ce4f282e5d84841c49c8b13ca7d", [
      "formal-neighborhood:15b066d755ecdb319912c2691c414db7e98e9ce4f282e5d84841c49c8b13ca7d"
  ]),
  ("formal-neighborhood:ffbb95577be75fb33b705d08e4396117f6f8c9e9d3db37403a1aa8908fe4679f", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:ffe2a4f9e88e1dfcb937f31be49e809c86ff065d3b8d12787eaf48671762e3c2", "formal-neighborhood:29350bc1fe248b416d861ba5713edcde8e1ec94a51c2c1e669c0f2256c74a446", [
      "formal-neighborhood:29350bc1fe248b416d861ba5713edcde8e1ec94a51c2c1e669c0f2256c74a446"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L139367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
