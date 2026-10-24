# candidateSelectionsChunk0011

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6d82ef1555dc56eb8e4c584566655c8afedcc6e60b63f019bf63612a5d3dbbc",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0011",
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
  "slug": "candidateselectionschunk0011--fbc0365381c50cda85e7d4c0",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45324,
    "line": 45001,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbc0365381c50cda85e7d4c03fe03e3a24b3f31ef893d88411f412457c6179d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6d82ef1555dc56eb8e4c584566655c8afedcc6e60b63f019bf63612a5d3dbbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45001–45324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0011 : List (String × List String) :=
[
  ("name-candidate:479db7ae19564ae0e711d5552d2c64c5e70c4c404b70b3d5a4acb4c758f3a393", [
      "name-candidate:08cf47647fa8bc1cf64f7621541c45161184f3debea1546157445a88152f6500",
      "name-candidate:479db7ae19564ae0e711d5552d2c64c5e70c4c404b70b3d5a4acb4c758f3a393",
      "name-candidate:99ea04c6a649343f13e81f2db940ddda99ee68fbcc18ba760f65edfe199ea2b1"
  ]),
  ("name-candidate:da7c31b1ac9e8c19870f43e18bbc8ee31aa7b7a47b04d66c6d5850d71308dca2", [
      "name-candidate:3305af84462d5f8e828dd27f553cd7e563f13bdb275472b95f8f89f143930126",
      "name-candidate:4b9d7f0d81944c0a340ee6391ec738f8cbd85ce20607a73fdecbea842be31933",
      "name-candidate:da7c31b1ac9e8c19870f43e18bbc8ee31aa7b7a47b04d66c6d5850d71308dca2"
  ]),
  ("name-candidate:a64cf38d2f54921c4b181b51ecbb38a3feace02ac6da425d7c853cbbfbf615dd", [
      "name-candidate:5af6248423ab980b8a936088c43eff5e819f5a22a36e43e195bbb9273eab195c",
      "name-candidate:9e4735f8808dbd145f764683aec47c10adf72e2b360fafbdb478ff617e31a4fa",
      "name-candidate:a64cf38d2f54921c4b181b51ecbb38a3feace02ac6da425d7c853cbbfbf615dd"
  ]),
  ("name-candidate:82a8f53dcdc35954fb69bd680fafc88e78b42ff259875c9809daabd6a3b15ad8", [
      "name-candidate:62c84ca837a66c86e4ba7121e9dcab984753cda53e1cc100f6977b5ee4baf31d",
      "name-candidate:82a8f53dcdc35954fb69bd680fafc88e78b42ff259875c9809daabd6a3b15ad8",
      "name-candidate:8f6dbb8e7439de2fbd026869f029d60cd4e0f7a7f15056d88dc33614ca27f849"
  ]),
  ("name-candidate:6a36e2302ad608634395512f1febf6fc8ec20c896f1d2fd6baf82e0d37608940", [
      "name-candidate:4eab8c2fb723e8e9e25dc1cbca607756c6e49b6bf743c2f0dfcb43b1991dff2d",
      "name-candidate:6a36e2302ad608634395512f1febf6fc8ec20c896f1d2fd6baf82e0d37608940",
      "name-candidate:c0be0f190fcfd42142292fb2eb10e5469ae3459ccd398c574810e92e19791b88"
  ]),
  ("name-candidate:4ede4f0fb60c9e3026f260094492f37a5ae323388df85f9f5f0e31c17d56b39c", [
      "name-candidate:4ede4f0fb60c9e3026f260094492f37a5ae323388df85f9f5f0e31c17d56b39c",
      "name-candidate:5c9da167ff77230886fa987af43d9eea288e8f103abe0de6cc6d12920b47a979",
      "name-candidate:c6e68a0f903310e68114133f08470418e10428a8864af0833c7ecaf879921697"
  ]),
  ("name-candidate:9f5e5bccab5716aca7d6e5c282369fc2ef0cdaed01eaaa1052d03559bb04abca", [
      "name-candidate:787a149d7310ca05790c7a835ff16be4231f2657069ccc328e4ee6433d7803d4",
      "name-candidate:9f5e5bccab5716aca7d6e5c282369fc2ef0cdaed01eaaa1052d03559bb04abca",
      "name-candidate:b62441a3baa6fea518038c8f9a9e97e333cba5aedd1ed17e6196607797489577"
  ]),
  ("name-candidate:43a6934598c1cd9464c43c83140aa0490551c6609facd308d26ea69b100a5861", [
      "name-candidate:43a6934598c1cd9464c43c83140aa0490551c6609facd308d26ea69b100a5861",
      "name-candidate:5d63b61ef4ee137d1dc32124aafa6cd6ca90e715d20d6ef632d2e69150220401",
      "name-candidate:f1eb0e276ae06ee0ef069251a49f7aa56dda10106f88c3679d045b0a99edb8aa"
  ]),
  ("name-candidate:b7d998b86fee7033088a095d00700b5ab7a933b6f57c502f80791f41a56bcf58", [
      "name-candidate:7143ae6d7d148d9d3c0b47b5a00d4d17c96f14964901f8e9af8f1ad150c4d81d",
      "name-candidate:b7d998b86fee7033088a095d00700b5ab7a933b6f57c502f80791f41a56bcf58",
      "name-candidate:f106acc0f05e803f98e818d4abc1aa42b5a0256fcfa8d80a01694a86aa3b621c"
  ]),
  ("name-candidate:a11fbcb4a18fb31947695ea5567daa301bac6294cf6a84c30b8cbd302d62d6ae", [
      "name-candidate:a11fbcb4a18fb31947695ea5567daa301bac6294cf6a84c30b8cbd302d62d6ae",
      "name-candidate:ab654b6153d3aa1d2ae575adfe42a5d09d1236eacf5d891d360f6982a47e7f35",
      "name-candidate:f609e5cbe6fb4fdc729dd6bece3f194c822ce9c0c1d1753e0067df5cfda1bdec"
  ]),
  ("name-candidate:8f74504b63370ef1b7b72a4e3bfbca005b3d5025e98d427f6d40df172c36c573", [
      "name-candidate:079dc5b46a7768e2bb47e953e7c49a5fbc0ea1837262f15a973095c374c4400b",
      "name-candidate:3611021e864ed72dfaac8672ba634648f581d323f73227f173167feadf41403f",
      "name-candidate:8f74504b63370ef1b7b72a4e3bfbca005b3d5025e98d427f6d40df172c36c573"
  ]),
  ("name-candidate:b8930da80409229b06d618eed0c4e83ee9ef1ef03331656a7bb47220ae15eb93", [
      "name-candidate:6818f5396c10e6ff2123e186bc84bd9df4140089668b3c1ec86e4cb62bae579e",
      "name-candidate:b8930da80409229b06d618eed0c4e83ee9ef1ef03331656a7bb47220ae15eb93",
      "name-candidate:d16f0d6b3b3fe10eac506cdd3a84d4952296529f7ebf7e83a01294cb4f0a1dd5"
  ]),
  ("name-candidate:07dda4b247fdc9c56c8859960827b3bae365a8624626a09b679d67a6cf94d8d4", [
      "name-candidate:07dda4b247fdc9c56c8859960827b3bae365a8624626a09b679d67a6cf94d8d4",
      "name-candidate:63d9f873a56d94a5140ddd955c3ebdb413e77464c29ad4a1fc696899a19dd4e4",
      "name-candidate:a54e5c5bd3c3e185c613b50c26714919dcc435ddb117424c618e2a902a3ff3ba"
  ]),
  ("name-candidate:9d91f571e28b4deb9dff6497a02505b211bb765bba32d0a561ed7eb9a599d2cd", [
      "name-candidate:3ff2eaf855f2ab5dfbaf17fcfc69d1a8cc027f0b9d6b7cffd747c7ded6dddd2e",
      "name-candidate:9d91f571e28b4deb9dff6497a02505b211bb765bba32d0a561ed7eb9a599d2cd",
      "name-candidate:eb22f2ca4fcc9513f6a913b6325fecb424af22a8b4844d0008e8b176ce92182a"
  ]),
  ("name-candidate:86417037efb271f9cea0ce6efa62a39ca49c804760e63fbe2c5de99cc4943051", [
      "name-candidate:86417037efb271f9cea0ce6efa62a39ca49c804760e63fbe2c5de99cc4943051",
      "name-candidate:88f8f583014433abc8b5ee6669114e4527722b3a73aeed7b4ce662f846a8fa1e",
      "name-candidate:d9d757f9fc197acfea20acd4b978a9c7f8d7633fcaf4dd117500d1fdf92c19c9"
  ]),
  ("name-candidate:d32afa9081645f0675baf1e763cbc73e54e5378d7e57fdf8bd888ceec805315e", [
      "name-candidate:d32afa9081645f0675baf1e763cbc73e54e5378d7e57fdf8bd888ceec805315e",
      "name-candidate:e06cc9fb26530840fc12afcad025075ef93e8a32f68d306059ba869748853590",
      "name-candidate:e17b3888886229f85422849cd532e9c94bc8c9baf38af42049390d876be6f216"
  ]),
  ("name-candidate:0e7bc0ee761904c60df16969178f9e264a9dc13d5d50bb757dbf648431ff70ac", [
      "name-candidate:0e7bc0ee761904c60df16969178f9e264a9dc13d5d50bb757dbf648431ff70ac",
      "name-candidate:6481e289e8fd52c54f23b5b399f0b78166950e9b58a0bac42c0ed2d14f41b2be",
      "name-candidate:7cf017c2116eaaca4c35be2c45c3d90d74f65afb0070e67aa9f0f5f2571d4766"
  ]),
  ("name-candidate:46a39bc1715473b0cab51e0227a4bb128d7b4335dfca4f8f63c34e92d52bfb5d", [
      "name-candidate:46a39bc1715473b0cab51e0227a4bb128d7b4335dfca4f8f63c34e92d52bfb5d",
      "name-candidate:4c018b95df4647385fcad08310cd91d0eb15e74c26ab91e2beee27c23fad0f4e",
      "name-candidate:b8b1b8e48dedc2689833cb9cefc4699f5c5d9251fb797c466a7873e4bc65c5c5"
  ]),
  ("name-candidate:c5689a11909c97ad514abee47a17c91df6971ec5c9ee1a1ed08f751b8c2861b1", [
      "name-candidate:1a346ad70f8aaf08fd17cf727d344dbe6a5eebeb1e8f0492c71f8b4fe7f767a1",
      "name-candidate:1f33fb68384438fb9b62d039a4accef1bcb01d6fc1183684e6eda399831b4dd1",
      "name-candidate:c5689a11909c97ad514abee47a17c91df6971ec5c9ee1a1ed08f751b8c2861b1"
  ]),
  ("name-candidate:e15883095bf748e4cc48675e2212d6a4d75cf8ae437d6efdb299712968441d78", [
      "name-candidate:42fb3cc8930aa6fa7b99141f23a3187bf794021104c4894936321743c70b176b",
      "name-candidate:6bb76cff0dc9e79f9902691a4c4566f9e13d7a7c3901c6582c0c65e7bbd31825",
      "name-candidate:e15883095bf748e4cc48675e2212d6a4d75cf8ae437d6efdb299712968441d78"
  ]),
  ("name-candidate:419c37abaab019e9b3ec3f3ca5520680a7345f8c6716234a70005394468c1153", [
      "name-candidate:419c37abaab019e9b3ec3f3ca5520680a7345f8c6716234a70005394468c1153",
      "name-candidate:430fa57742585c055a09115b3a8289136392176ebec8db0438fb116cd1a30e3a",
      "name-candidate:9b6bffbcc41f502651bbabc1cf40c85aec1bd84d13e28945a5cffb4726620917"
  ]),
  ("name-candidate:01912ed70fbba7ea041bbc2830c6e96a9579bec2482076722478fa1da7a25bcb", [
      "name-candidate:01912ed70fbba7ea041bbc2830c6e96a9579bec2482076722478fa1da7a25bcb",
      "name-candidate:245723734a5ecfcf534fa65edc31bbd85454dd4c6d3b36bbb24f902049caeafd",
      "name-candidate:54c5b89387b8895303b7e110e6f9a1f0578c8501525671993c3d416101e29f8c"
  ]),
  ("name-candidate:79a978abdb62eae6e86c7c078e9b746f9d794c0bf5b731e4265abfd2aad3d55d", [
      "name-candidate:53b2022c7612ae3cb51b1308f8056edfaf1de1655ba4c5f49cb74c03811969b0",
      "name-candidate:79a978abdb62eae6e86c7c078e9b746f9d794c0bf5b731e4265abfd2aad3d55d",
      "name-candidate:fce4ec5ed9a7f17094c7937ee964d74a396a28143dc812f8bc98a7daa7b776eb"
  ]),
  ("name-candidate:2b7cc98ec5714703a5c49ac0d0c32ac50953e83705caecbb32f55773b36eec5e", [
      "name-candidate:2b7cc98ec5714703a5c49ac0d0c32ac50953e83705caecbb32f55773b36eec5e",
      "name-candidate:938093ca512372b234138c93f1be531f5d6f84c512d7a97b2b5b23d736aa7d55",
      "name-candidate:9e65abcc0b00af336696fbe1583ec8d1e2fbccceaaa1d61f2ad8582f8553a797"
  ]),
  ("name-candidate:81ace380bb550a11de2b58eee78f3c548df8c4dbc983b00a4872a641f1842c80", [
      "name-candidate:801f766bd6f21d030516006526b4be63d55183ed61cd5574bda411f2cd8b9003",
      "name-candidate:81ace380bb550a11de2b58eee78f3c548df8c4dbc983b00a4872a641f1842c80",
      "name-candidate:91caf0fd25682ae341b4e29189cb8b2b72943381762068f3c6af739c4dde2df8"
  ]),
  ("name-candidate:75e4bce8dc55c79a072f4c8c9bd036c6f9e3e6f531dedf77ffadb67b15794c17", [
      "name-candidate:07a023502c7127b25c0c859277b34dc5d71a755ef6a3772f32dc56ee3000bb67",
      "name-candidate:1fa50f96f735b7b379a04005020f63f078d6d1bebe44e27053d1bddab1405194",
      "name-candidate:75e4bce8dc55c79a072f4c8c9bd036c6f9e3e6f531dedf77ffadb67b15794c17"
  ]),
  ("name-candidate:71e270dc7eef3f4d03b54833ea3852fb7bc1af6c2d177b3ab85432c21855c382", [
      "name-candidate:555daa980cf53878bfc2c67d966dc1718346a31b65f11ff40fdcc35294eac029",
      "name-candidate:71e270dc7eef3f4d03b54833ea3852fb7bc1af6c2d177b3ab85432c21855c382",
      "name-candidate:774f04339ffc5d386fbfcdbf2161e6bf10de72119cd090f0270e957398e78d19"
  ]),
  ("name-candidate:95a7564a88ac8e81918d96746eeac0f1c6d181cd1f4447f3dc98339fc04c971d", [
      "name-candidate:4eb4a819da0cd72905eff61600e3529c72ce7323c977e0f65726b9af8fb231da",
      "name-candidate:5f17092459d19c255f263bdd139a1cf959ccc8239efaf6407616b93c43e1ddda",
      "name-candidate:95a7564a88ac8e81918d96746eeac0f1c6d181cd1f4447f3dc98339fc04c971d"
  ]),
  ("name-candidate:e1ce38da16a08adf88fafe99c96402dfdc3281a237fe8f6d0074ce581084b8b2", [
      "name-candidate:552fc36eaa1ae1a49804058579ae2b2bccf5022dbe2b4263bf47594c069683f1",
      "name-candidate:78f8504597940eadf5021da2168de8835ffb56c14245fd46573d675f12d6da91",
      "name-candidate:e1ce38da16a08adf88fafe99c96402dfdc3281a237fe8f6d0074ce581084b8b2"
  ]),
  ("name-candidate:936f584d0845947b173d5636369f29232aa6168380125cffc5cd3e260d433661", [
      "name-candidate:4f841e41357bd26541f697aab5cb2fc5ff95cc227129b8515dd56c42b34f1c8d",
      "name-candidate:936f584d0845947b173d5636369f29232aa6168380125cffc5cd3e260d433661",
      "name-candidate:d3a3cfa02aa271214f76db83694d8c479c93501931075ced9520cada5d874e71"
  ]),
  ("name-candidate:05a1a61c2e7a2add40e919c6a2fbc526d8864fcf70ddbd2125bad158ccf41d47", [
      "name-candidate:05a1a61c2e7a2add40e919c6a2fbc526d8864fcf70ddbd2125bad158ccf41d47",
      "name-candidate:694abcd1bf328647a3b83a4d52668999c1c418b3495248abf1989b906c596f44",
      "name-candidate:90bc68912237549688073b959a24ee35dc5e57a16754a9074ba23899da7a3940"
  ]),
  ("name-candidate:08d491044616c52d7a5872f0ca2619924158b60ec2b5a9542db2828299aec1ee", [
      "name-candidate:0686b458a547a9e479b2522effa70dc99d32b6b37d220cc5a14832993abdb048",
      "name-candidate:08d491044616c52d7a5872f0ca2619924158b60ec2b5a9542db2828299aec1ee",
      "name-candidate:f0a49388dbbb387e08bbdef41c6984a24bf126ae32c4da0d4a93cebbd6abf97c"
  ]),
  ("name-candidate:954c9ffbe73eccae05cc32aa334350fcf950ffe29722b22fdac512e2b675d10a", [
      "name-candidate:062e5570462258efa50e0e89c5276513b7f28231dda7b8d34ae82b30d1edd0b8",
      "name-candidate:7d5fa2d0c2d6c5c6a0f058cd81edf0fd6d0fe6da9d254d6ef4e696f71fbc8e97",
      "name-candidate:954c9ffbe73eccae05cc32aa334350fcf950ffe29722b22fdac512e2b675d10a"
  ]),
  ("name-candidate:2e8216f87d630d962654d3c866c0828db9ee3ce11256ee611568788a38211afb", [
      "name-candidate:2e8216f87d630d962654d3c866c0828db9ee3ce11256ee611568788a38211afb",
      "name-candidate:b530e7a58af2af63e57ff3ee9cd06ab8cdf4a4aae461660719c6863f5d9555a0",
      "name-candidate:b7bc9bef96ffa5aa41cd476473e86e004614e563dac71f29c99de6605e66741f"
  ]),
  ("name-candidate:db3f10131be8e66e2d66467ccbc3e24f3a06386e8e10b0b502ec4836f11c1eed", [
      "name-candidate:0c0652573753cb979e8d23c64c15a85b96cdc7a120f2e8a4d1c56d01c793875e",
      "name-candidate:349c8582cac5481338c626e2b429285b69d69917a204f33fdcd1ec21418318ba",
      "name-candidate:db3f10131be8e66e2d66467ccbc3e24f3a06386e8e10b0b502ec4836f11c1eed"
  ]),
  ("name-candidate:dea513704637ed7af57d10e20f4f113f3736c533531faecc0bcbc2d2b88b6f9a", [
      "name-candidate:b9758337b3bfef80354612aedf486a023af8ff48cc5fa0373fc33018dea6bcac",
      "name-candidate:dea513704637ed7af57d10e20f4f113f3736c533531faecc0bcbc2d2b88b6f9a",
      "name-candidate:eebc664a0b2101744adcb69553c5effac0f1c069719709f76802a4d737ff9fdd"
  ]),
  ("name-candidate:1453ee36495eb26d037e9fcf2f2d96325acf089ef76a9a8e3c9763a0a4bff5ef", [
      "name-candidate:1453ee36495eb26d037e9fcf2f2d96325acf089ef76a9a8e3c9763a0a4bff5ef",
      "name-candidate:5e49c971d63a96f969f7410a80d41a87869f5d9c44316edba553326cf918056f",
      "name-candidate:bfb965b36b070433de081505ad2133d30767cb9545b768080c2ca104b0c024d7"
  ]),
  ("name-candidate:b38a872a31e3e85ab550cb63383a0abcf2665b354db7da5beb08e4efe223acca", [
      "name-candidate:278a5aaa34b90f3a4d5860819b8ab5c9f555f29f33c48057da073816428bb0f2",
      "name-candidate:7b23ae8c57f8ee29535718c615cdcdb3a27a2c6ce23dfd0df06076a7082a1900",
      "name-candidate:b38a872a31e3e85ab550cb63383a0abcf2665b354db7da5beb08e4efe223acca"
  ]),
  ("name-candidate:faaba6c7ff31044c25b26edf8e657cf35fba6ccf59c8f03e04d1c2e892b2fa21", [
      "name-candidate:19dbea538868d8a6c44b80312a8b5fbfebe8c31dddd351cba7744a1795f98966",
      "name-candidate:d60f6cbf3ef0067f4407b1ab8245b56b4c85586956498af79a402b91636c85c4",
      "name-candidate:faaba6c7ff31044c25b26edf8e657cf35fba6ccf59c8f03e04d1c2e892b2fa21"
  ]),
  ("name-candidate:b22cbd0c7f3562a2790d9f8941d0e0c722cec617dc50146f7d04a28ee7adea50", [
      "name-candidate:28156fb797959fde8cbe0a356f35985bdcac8b7466213be8ee170374b8ce16ba",
      "name-candidate:a4814cb8e8dbb7bd57af7a471056df6ea548093e2184878e3df3d3a4eead731b",
      "name-candidate:b22cbd0c7f3562a2790d9f8941d0e0c722cec617dc50146f7d04a28ee7adea50"
  ]),
  ("name-candidate:34850eff434c1b47d1a316c30a8c7052fb683059b7c027db0b4a12378f1da4c8", [
      "name-candidate:149603d7d8064c108cf68e247c348c8339ffc6aae87184f07b25752fed80403f",
      "name-candidate:34850eff434c1b47d1a316c30a8c7052fb683059b7c027db0b4a12378f1da4c8",
      "name-candidate:a5a2409a96c50f322dba5c3c9be6c0086f4b981659d75c14819f023f160521e1"
  ]),
  ("name-candidate:83bb506fe9510aca6eb0ad6f56a9fa052074e19ba4f60790d7faa68aa685d6a8", [
      "name-candidate:0e9bd6f27051634b071c8dfd0b9ff04fab9c9992c0fa95adfdfe30568fe42868",
      "name-candidate:83bb506fe9510aca6eb0ad6f56a9fa052074e19ba4f60790d7faa68aa685d6a8",
      "name-candidate:95bf68d08b5fbd0d821d031a93ce312921258ad6d1ab5a626e584cf81193304c"
  ]),
  ("name-candidate:ca90a06c2a9a4fd776b705f4e7cd8a16dcaeb18b59767cae4d0f4902665cd6e7", [
      "name-candidate:64eeb35e88aa06b2f749b919e7a9b74c4738cb716894379ac2f376d4ddd21e08",
      "name-candidate:79cfe3090dbf6295200e259c739d8a353ecbc88c3509ab8aec496c58c8ab0f68",
      "name-candidate:ca90a06c2a9a4fd776b705f4e7cd8a16dcaeb18b59767cae4d0f4902665cd6e7"
  ]),
  ("name-candidate:fe2fdd78f272dca425fd83f6df324ec2858b25ea53066c5bef3ab54339fe5031", [
      "name-candidate:87b3650a2cfe947115dd7d4048fc9184484d36bda8cf5202c181de89e0c841eb",
      "name-candidate:e74567cdd6b398d3db2bac3264cd0283b1f48a185561106ed0fcd563445eaac3",
      "name-candidate:fe2fdd78f272dca425fd83f6df324ec2858b25ea53066c5bef3ab54339fe5031"
  ]),
  ("name-candidate:08c82d3227ccf1adf47885aa8b2cfcb4d87171ccee2dfbe5363bdca62ffb0b3b", [
      "name-candidate:08c82d3227ccf1adf47885aa8b2cfcb4d87171ccee2dfbe5363bdca62ffb0b3b",
      "name-candidate:485c66a95f64f005a75354f14ebe16081057f52194f654a33b9f55c4d57e841c",
      "name-candidate:8d9f883046dfe22290bc1366a7c0ea7b5f754f26a58f6619c5006e106c770501"
  ]),
  ("name-candidate:577410d5da52b58b8d2b46bcc6786b924ad6b7536d24358f48ad0f74ec279b1a", [
      "name-candidate:3d1f758b845f152c396f9a413193cee62436f6816ab78a269d65cd3d93bf29d2",
      "name-candidate:577410d5da52b58b8d2b46bcc6786b924ad6b7536d24358f48ad0f74ec279b1a",
      "name-candidate:be07fef64d1c0a5422a3c58e76478b6886ccd219a712093af7d0dfbae7fea1d9"
  ]),
  ("name-candidate:bd09cf923e71eed1dc03f36b9a7c3f0a8908016680d53815b5b87de2c6688ed1", [
      "name-candidate:7963b4bf2e2daa0a8b2c8bd331c2f9aa5262c333bf510ff1e7f8d0bca1150adf",
      "name-candidate:8675213350763515e814cead136b5d2add94bc8e0fd5bdcf63cf4e81c606fbe7",
      "name-candidate:bd09cf923e71eed1dc03f36b9a7c3f0a8908016680d53815b5b87de2c6688ed1"
  ]),
  ("name-candidate:67599fcf47fc39b2d21537e138a289fa5e302d02e7236c9c410c89af608ac5de", [
      "name-candidate:2c89c61eb2c6d24de7575f11549ccebfe1d6465b7dd7be5a99eab6f725d14526",
      "name-candidate:67599fcf47fc39b2d21537e138a289fa5e302d02e7236c9c410c89af608ac5de",
      "name-candidate:f94056344e2ba7f06523b5a09bb6d93e750dfba7b1d284b576572d69ff5aca07"
  ]),
  ("name-candidate:f44d0c29e0c471a63626d1c02ffe5d1275589948c51438d22c3d1d971ad25b98", [
      "name-candidate:47f8cacce7c567588a4cf9b4b09c16fd2d27da21a20d9e7cfda759b418a0a849",
      "name-candidate:6e5006d1e4a830c3c3c5b1c54e8a9b274cc238fb042306101311dc252f8bb314",
      "name-candidate:f44d0c29e0c471a63626d1c02ffe5d1275589948c51438d22c3d1d971ad25b98"
  ]),
  ("name-candidate:4dd410739ae9e5a3e4a717704beb4e818a626bc87aa86e208627471844298508", [
      "name-candidate:388610e1b13c604c8c06c66fca73a9553a5b8feaa7819780ec603409b75a7b89",
      "name-candidate:4dd410739ae9e5a3e4a717704beb4e818a626bc87aa86e208627471844298508",
      "name-candidate:e1c3868d4f0abe0bc5de27d640a388c31f13cb662a24183821bc5c5f9be4a89e"
  ]),
  ("name-candidate:12f85f15788febb69bb0412575d20302839e8b178dc7d22ceebcbe46cc96b8c3", [
      "name-candidate:12f85f15788febb69bb0412575d20302839e8b178dc7d22ceebcbe46cc96b8c3",
      "name-candidate:2d002aec1c463fe3a838ac297746ce461dd8aa1dff9fdf2c442c5754338273f3",
      "name-candidate:5dc6bb2e2ed9970610ce7ed9ebb7d5268f383efc31f5839e7213671a12caf226"
  ]),
  ("name-candidate:21760834e7201ee9f62fbad81b5dfa02535b5b5af372a2db0fc562465df4c4a3", [
      "name-candidate:21760834e7201ee9f62fbad81b5dfa02535b5b5af372a2db0fc562465df4c4a3",
      "name-candidate:841c9f464c472ae16d333abb77f4c04bb42afce7fa098d56d1ba43d89162fd7e",
      "name-candidate:c35f2616fda5c26e1b3d12ce883f198ae35032e47d4b82d2bc1592fcefa69edf"
  ]),
  ("name-candidate:5a7607a5ea2cfd7dac8f64ddf2a599e40b1e6fe8bbe8ea91de155c227866f612", [
      "name-candidate:5a7607a5ea2cfd7dac8f64ddf2a599e40b1e6fe8bbe8ea91de155c227866f612",
      "name-candidate:bdc2a8be8c440023c2e0d8022f64f123fa0f74c5e38f096f4839fde285184dad",
      "name-candidate:e887a98caf3fb48319b680d5f8f99a9adbeeb6956e6b05a453a6e6ccd12f49fe"
  ]),
  ("name-candidate:3b2c45fcf1a26116541eb8ef10b6c2901e0f4d7909adcd732a57154383f75f0d", [
      "name-candidate:0276a5a67a960deac38c1a2a324a9ce9d30653513adda8898aaeb9fbe3a21b0a",
      "name-candidate:3b2c45fcf1a26116541eb8ef10b6c2901e0f4d7909adcd732a57154383f75f0d",
      "name-candidate:58b9543b041b14d6ce9f882290c7a8f675b5056fa48b56a33767232103db6980"
  ]),
  ("name-candidate:c967eeba292c7faca6cb467d0d7bb7a7ecb960e664e02317d9ba099d6baba10c", [
      "name-candidate:a2fcb8948e82e3ce8c6114ad90a1d6aed67fdea4155242b63b6489fc3c443070",
      "name-candidate:c967eeba292c7faca6cb467d0d7bb7a7ecb960e664e02317d9ba099d6baba10c",
      "name-candidate:fac3c8ecd96a331fd0f644ae7aa6ab81401f5cd6ff4a7f9f2c5ec5b20b2c36d1"
  ]),
  ("name-candidate:1930c6cc58219c6a564d21401b2a792b3f8fd3ded74987c682dc68cc9b85d82f", [
      "name-candidate:1930c6cc58219c6a564d21401b2a792b3f8fd3ded74987c682dc68cc9b85d82f",
      "name-candidate:9e6181fe3ab6a871b3e10cf4aa7ec1e0f01f58349c14aed8a6269593b1a1a26c",
      "name-candidate:b00258df64520eb1ee6e0523f0e760ac1445319b3ed91b4368082311e553d6b8"
  ]),
  ("name-candidate:5e0e3351576d27f719af43e519792ba293c0c8c549d1986e98af146a3f43f8b2", [
      "name-candidate:5e0e3351576d27f719af43e519792ba293c0c8c549d1986e98af146a3f43f8b2",
      "name-candidate:ec936038be379ab3f3d01c2b3e8355203d1d1ed467ad6545bb6fe3c179129ff6",
      "name-candidate:f1cf3e01d1d1c49fb13f00674bde1bd41fd920e52e07f9c159e05d108e50561a"
  ]),
  ("name-candidate:df4029b13e033a4435ce2e49623861b4b2c8a047ccf32b3c7d53f139d1e426aa", [
      "name-candidate:967ba410fb1a8d410ec96ee057c3ce63adb0d1acf747d0780b9098388a568377",
      "name-candidate:9c5fec9e00fa06e980fb022ae3ac21b86eba0ea34e558e5bbca09885e57353a7",
      "name-candidate:df4029b13e033a4435ce2e49623861b4b2c8a047ccf32b3c7d53f139d1e426aa"
  ]),
  ("name-candidate:c84d6f965ad5e86c5d852eefd88d7159421e2b55370c5c15e216f0713a937199", [
      "name-candidate:17c112bc706ffa230a8aa900ba2cc93cefb8452b7dab9ab3f06a64e99852d76e",
      "name-candidate:88fb483e01a11ac67f56b8f83eca4bce6f2a296e9c0349d576a186fd9f42d7f9",
      "name-candidate:c84d6f965ad5e86c5d852eefd88d7159421e2b55370c5c15e216f0713a937199"
  ]),
  ("name-candidate:aeb6c1daa4b511640d4ecaa5229477b51dbf86b9331681b117ff1cea938f3ec7", [
      "name-candidate:0d6daadba66a498a572ff10376d06d9355f69bb1dcd340434bef72ffe9dbf70b",
      "name-candidate:5eea1c05bd449da7b851f03bb85cc1366834653e5dadf9bfa8eeffd5ce48c2c2",
      "name-candidate:aeb6c1daa4b511640d4ecaa5229477b51dbf86b9331681b117ff1cea938f3ec7"
  ]),
  ("name-candidate:80a7f7105a13050c182703b5d98b0be2a0b43bbfd3f7dae8b932f57d31695b3b", [
      "name-candidate:80a7f7105a13050c182703b5d98b0be2a0b43bbfd3f7dae8b932f57d31695b3b",
      "name-candidate:90464522fbc85f388a0d477602569da5a75d26480dd9e6dd427ae3a3837b80bb",
      "name-candidate:f0e0c9739a74167b152fdfdfd9294af8d00cc87879fd407f9c53f3267cba7d7e"
  ]),
  ("name-candidate:6bbc63e7ac98d1a27963de96256bcb343b63869df67b5778979b58cef73bbfb4", [
      "name-candidate:13565356d4208f65da592f315228038c16c657915788675fb2b6176a0e68e0fc",
      "name-candidate:17241d7a5bad917a9401f607bdd6e2f52145eeaa186e0f1130490e01a95ae2a7",
      "name-candidate:6bbc63e7ac98d1a27963de96256bcb343b63869df67b5778979b58cef73bbfb4"
  ]),
  ("name-candidate:715c514c991fe98cf8f19629ed5d723decde63314f2d796cee6ee76b39f6b9e1", [
      "name-candidate:34409ea32f80927921f4fbddcbd542fe41e2c8e94d9873954cb3a563ae2016cd",
      "name-candidate:715c514c991fe98cf8f19629ed5d723decde63314f2d796cee6ee76b39f6b9e1",
      "name-candidate:eae0c4a4c3d4acd27c7dccb4176b4c68c1af5dbc2d3fbcfbfede6acf4c201866"
  ]),
  ("name-candidate:bba6cd67662d20eb8e388260ef8bf6ffa36cac9fab29a63e43094e37594f406b", [
      "name-candidate:2ac76d69310a9fa3fd312f36094dd5709818d3265841e42edc3a509a9174e880",
      "name-candidate:8b52ecc0e2125689813c9b76ff29292b6451971fc771070782149f2293c5e492",
      "name-candidate:bba6cd67662d20eb8e388260ef8bf6ffa36cac9fab29a63e43094e37594f406b"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L45001).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
