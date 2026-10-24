# candidateSelectionsChunk0016

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0a468aace5448d031805461483f9a58315d613441d7b36424d204615f518e33",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0016",
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
  "slug": "candidateselectionschunk0016--cedd072a1ba339d6c8635b3b",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49628,
    "line": 49264,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cedd072a1ba339d6c8635b3b59d0ae604433bc20d600f915ec89a17c1a204a80",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0a468aace5448d031805461483f9a58315d613441d7b36424d204615f518e33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49264–49628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0016 : List (String × List String) :=
[
  ("name-candidate:de0f4b936f2c51c28745e83b31624f9bbc363c424e729099cf68472db501ab79", [
      "name-candidate:019330460c0463435794ad07b9dcab92d1800ed3dce8d7577701be7b5fd4be18",
      "name-candidate:146f5635bf4df10a14a009fd36714ce498e248779d4af6e64286ff077bec7975",
      "name-candidate:ab0ca25480a981869d8538620659fa0385f05fcaa7b7642603c4ad4204f4b8c6",
      "name-candidate:de0f4b936f2c51c28745e83b31624f9bbc363c424e729099cf68472db501ab79"
  ]),
  ("name-candidate:f9f0263a1d12bd8f9734a0ec7f15d40fdf675cf35f4b36399e125097cd7ed830", [
      "name-candidate:8cc84150c3a497e22e61d286bafba16afb2e79002e4829eb6c6d1955cd46bdbd",
      "name-candidate:d5274319cec0298acb12088366cd5bfb37c74e9492851dcf84b1614affe0731c",
      "name-candidate:f8895fc88a93ece41bc272c77856d0f3112998fd7c20fab3a71bca0c710ab1d1",
      "name-candidate:f9f0263a1d12bd8f9734a0ec7f15d40fdf675cf35f4b36399e125097cd7ed830"
  ]),
  ("name-candidate:4ca9dd85545ccfd52cc9078db139f7b1a7a85b261b2cd6723a7c36508fc409e0", [
      "name-candidate:45d1e828f57123e0d5d518a4cb9348e97c33d3e8fe3ae559a4aa2f8bd6b37bae",
      "name-candidate:4ca9dd85545ccfd52cc9078db139f7b1a7a85b261b2cd6723a7c36508fc409e0",
      "name-candidate:867f610de6d2df8013cdc83449acb806df685120dfd36499edaa7b19fc5bc18d",
      "name-candidate:bca6ba387c24a8c06a098d3474c5622280965a27dbf63a6cca403b67658eb0da"
  ]),
  ("name-candidate:20fefae26f0623844375d41b7e31370c4b63088df8b4338ced33f07f271b8dd7", [
      "name-candidate:137d34a1d5b77cae5bf9bb5662d591a8329aef71a9c20b07a7542391131de0d4",
      "name-candidate:20fefae26f0623844375d41b7e31370c4b63088df8b4338ced33f07f271b8dd7",
      "name-candidate:37db3e86abad59c3f8cdbc62847c54203803257573084f443d3c06d045752e83",
      "name-candidate:b10de8caab5ebb82b978610416ff8d054e15b1bd26110ae9f6b05ad092cad400"
  ]),
  ("name-candidate:54433605b0be156771175b40a0152389bfb6fd55ec773c43bc63b5f4dfa9b3ea", [
      "name-candidate:316a03a650d88870d934a9f724a8db840a91dbcc9b6d144e5ccaf11923e796f4",
      "name-candidate:4e75a823fefc0eeee402946d543de9166c1051fc989f2859af4d0a865065da23",
      "name-candidate:54433605b0be156771175b40a0152389bfb6fd55ec773c43bc63b5f4dfa9b3ea",
      "name-candidate:fd565fd012d45015e38fcf568f44aa37325e341c11e3fc2b17befee347f0ee7b"
  ]),
  ("name-candidate:cd4096f2acc2c8debbdae315040c732c50cf50916855d05bca827bf59fde8786", [
      "name-candidate:641bb91dbb9bf9fe3b14ebab2cba9f67c26b4c6578a25c9c32996c6e06ecc1b7",
      "name-candidate:75ab679c758e337161c1a0aeb9f22086eb2d086ee850953d5f94ede9c3fa75a4",
      "name-candidate:a8546a950c9e3029e36feb2b1b071a6c624f2f339ef2ffd9d5c7ee07b0637cb5",
      "name-candidate:cd4096f2acc2c8debbdae315040c732c50cf50916855d05bca827bf59fde8786"
  ]),
  ("name-candidate:8ee11768e1b7e2c74c301207eb0f81b739a85eb3378d94a04c18d2241c3bb42d", [
      "name-candidate:8ee11768e1b7e2c74c301207eb0f81b739a85eb3378d94a04c18d2241c3bb42d",
      "name-candidate:a87871c11b31cd88214973c77e99c69b05228e7e5de7ef91bb7f08b2d3033124",
      "name-candidate:d1052a208e272e6163dfe65dc105c5df0cea8d99e02d7296be6d097d7861d716"
  ]),
  ("name-candidate:72d1eda2310aa4a63cbaf5ff1671955d38cea60923c99c83fadc17e2838411de", [
      "name-candidate:72d1eda2310aa4a63cbaf5ff1671955d38cea60923c99c83fadc17e2838411de",
      "name-candidate:7fe99fd4515dad3a98491f6557b907fe19370cab9ee36e1eabb0ace60f7a92a6",
      "name-candidate:9c458258d026cb4b59b34cde21e9eae9f1cc8af8638b582020cd595d58825e3c"
  ]),
  ("name-candidate:f35681214707cd9b38b8330dbeec40273340f37cd401114ab27a99add18a7e9b", [
      "name-candidate:14182f12fcf95d0671424af8afa86fd1947ef5f64c0f3be414c2890ac224a0d0",
      "name-candidate:412dedabe384f049a7ea87201035cefd9c9e19fd5a3227b870bd9bca5dde3bb4",
      "name-candidate:f35681214707cd9b38b8330dbeec40273340f37cd401114ab27a99add18a7e9b"
  ]),
  ("name-candidate:aa3c2fb45197cc5204d78b8d4eee77fadc5db114f95260557101bd9b55edae29", [
      "name-candidate:47cf5d64438a1af2a149092862bef52341ffb9d9290afee1735c603e407403a7",
      "name-candidate:8d26b67219d8fa176c4b2804205c9e82a13eb6edb2a272bc044c1a1b069a23dd",
      "name-candidate:aa3c2fb45197cc5204d78b8d4eee77fadc5db114f95260557101bd9b55edae29",
      "name-candidate:fe9b31019dd874d60327d29b8e37435aa1f9c154b33dddcbeac8e5a900a4dbcd"
  ]),
  ("name-candidate:3f591e64801b0aeeab9302e868e3cf48672d0fa19544b673284cc301a56f78f7", [
      "name-candidate:3f591e64801b0aeeab9302e868e3cf48672d0fa19544b673284cc301a56f78f7",
      "name-candidate:7e69b2681ff2acbb5fd753a48dcb6af3b2df93e1e72c06ad79aa059246f30992",
      "name-candidate:9604ddd60f916f4066111416f7b63131c21b9607a15ce95dbf344f77db3423c2",
      "name-candidate:a0fb2eb5ace614ea215b4e0220cb6374767e729b4d18511f61a1eb081f26c883"
  ]),
  ("name-candidate:cdf4e3c1f63c6428e5f868e66f5af913a10f3f72f151568ef23072bd65d52bfd", [
      "name-candidate:0ee28629cbfa8d2af50a3f2dae17083b6f531e8e521b41b9299b4ee0afb64511",
      "name-candidate:3322b0d4d3ec48b1390479e3bc02daefaca5f8b59733b407d27b35a4c7ae5c28",
      "name-candidate:3ff8db27abca636975276be5b9376be5886d53b09703a6637a3002c7c4ed9fd0",
      "name-candidate:cdf4e3c1f63c6428e5f868e66f5af913a10f3f72f151568ef23072bd65d52bfd"
  ]),
  ("name-candidate:74b363e75e2552c364faa1e5c6ad4213e33046277020ad7f2cd6fd2f881a4910", [
      "name-candidate:74b363e75e2552c364faa1e5c6ad4213e33046277020ad7f2cd6fd2f881a4910",
      "name-candidate:8152305e6f30ad2e561028d7e424b571dd56e5ad0077ebc1bc551205928bd82c",
      "name-candidate:bcfc0eb2601144897b683d75e32c7987c1c3613ff16b3c056637ebf8e18937ee",
      "name-candidate:f9d611f13cca9ac4765b8da455b9ad9cfdb4b0fc98bbd1876f4ed0289267f865"
  ]),
  ("name-candidate:536183a9c92c2d61a918a0a5d709316b16220e574840b7c992009000af1052d2", [
      "name-candidate:173e51abedf8c92ba851a5c59a98f1d8c94bb6c4c376c62d537f09a3727957dc",
      "name-candidate:536183a9c92c2d61a918a0a5d709316b16220e574840b7c992009000af1052d2",
      "name-candidate:949c76f65f10efb8c4870ab0307856ceb82510c0aae4ce8b35db340effde9e51",
      "name-candidate:cf5a018cbec28a36dc558ce2a20d8a0e53dfa0fa90af7735ecd8552544f9ae2a"
  ]),
  ("name-candidate:f40d48725852c2e153365bf95df18a982951235eed1007176775ce3bf84da728", [
      "name-candidate:a3dbc06c3ea11f5e681a53c64ffd787ea29ef9c98cc2dacb0a81d75de52b5f84",
      "name-candidate:a41ac823f17cfc531215e6e86bcd144a1dc428818a24a9cbff83a3f6d13cffdc",
      "name-candidate:e1ca548393ddbdd6d7bb81e0bca3fca816012f2dd06f97717bd168bee0ceaa11",
      "name-candidate:f40d48725852c2e153365bf95df18a982951235eed1007176775ce3bf84da728"
  ]),
  ("name-candidate:213986e09a45115248a21f2ca88448e31081085b5c63123b5b892730c239a27f", [
      "name-candidate:0222bd7b1e323f3d4bdecde3ef99eb138004fcf710061248f5489e363b0bbd56",
      "name-candidate:213986e09a45115248a21f2ca88448e31081085b5c63123b5b892730c239a27f",
      "name-candidate:262109f88404f3562460de271400df76e8ceec39a51d09fc510bb2927a96f461",
      "name-candidate:7a61a73116d49cbb9e153aa660a8b34936870213343b7e9d17e74260ddf66acf"
  ]),
  ("name-candidate:951d71492f2449ab317d69095608f023d8ed3f36fcfbabc46516984562a4ce11", [
      "name-candidate:45486fd730679c8c817d201ef394eef8273398688652393bd1c7fad112ed4ed2",
      "name-candidate:951d71492f2449ab317d69095608f023d8ed3f36fcfbabc46516984562a4ce11",
      "name-candidate:d7a05cec872c2b8611ff92bc1866b687bde7c0a27739ace5c36023acdcc7169d",
      "name-candidate:f62f151f10c03501653c1731f807748933e54a481e61f086674c845c2154f78a"
  ]),
  ("name-candidate:8976d8e1ed0d56838f9007c9ca84c65b9236f38a3da2a62cb7b11111734eaf37", [
      "name-candidate:6e9e225c9c0bfc9cfc65086ad46edddb60094ed8186a4c42019574b5354a7c40",
      "name-candidate:8976d8e1ed0d56838f9007c9ca84c65b9236f38a3da2a62cb7b11111734eaf37",
      "name-candidate:9e3b04fb602ca9920b9be301e871aa250379e333f00915060a21d531d5196bb8"
  ]),
  ("name-candidate:21bfa830131dc9e0f14b2bfee8eba3def33d9fb18fe4cebfcbe556c9b56672d1", [
      "name-candidate:21bfa830131dc9e0f14b2bfee8eba3def33d9fb18fe4cebfcbe556c9b56672d1",
      "name-candidate:476fe16ac80d3e2095917c87dce29d4fcdd9d35576b026b73c35999c18657e5a",
      "name-candidate:5daecbb87fe93bb99cebbf870fb3d9f40d88d27751dd39cca6af64b8e258e1ea",
      "name-candidate:80241041e563199a0930f4fffba37f9dfc5d9d0b124baae01a9f3de9c7917da3"
  ]),
  ("name-candidate:cf1a62f037acf1677d5ddbe04677d4a7562364ac0e483a18ad5f6bfed4fb0d49", [
      "name-candidate:3f783a2130988007f4b7e94d309d658fd5510ab3bc51b180f0a9b18902f012c2",
      "name-candidate:88a0fb6e685f54554c4ea97b6ffb0c4536cb0382de61e0480493330721633851",
      "name-candidate:af58b75a80b69537875a0398255a25f675a3671f76bd131da8d5c4384fb68f5b",
      "name-candidate:cf1a62f037acf1677d5ddbe04677d4a7562364ac0e483a18ad5f6bfed4fb0d49"
  ]),
  ("name-candidate:ccbf6d1b87247e2be457d88095e01211f5ad7488ffc5bd09479e65e45b529baf", [
      "name-candidate:0f219d005bd17bda57e8f9052c136cd0edaccc667b608592f21f4ff4090df2e7",
      "name-candidate:222345a3acd0eb0991068459875fbf2757fc590f12a3c83a7963bc0155fcfb96",
      "name-candidate:c8759e2298db8bb8dd50d89344e5e5aff9768cbae3f8ef48363c720f83044df0",
      "name-candidate:ccbf6d1b87247e2be457d88095e01211f5ad7488ffc5bd09479e65e45b529baf"
  ]),
  ("name-candidate:062f76db2ed0661a98243c63d7548ef3cad8e3667fed995f6a201670c0553869", [
      "name-candidate:062f76db2ed0661a98243c63d7548ef3cad8e3667fed995f6a201670c0553869",
      "name-candidate:11a622a5c148b446c39423c472ae00091de25644fbc265142c6fb220ddb0fc3e"
  ]),
  ("name-candidate:9e3504a837f27a06e8029e6aeeb93be17e4b25a5adbb298fb4f092497f8effa6", [
      "name-candidate:40419fdb8867ed4eaac07d1d1d1118d9e65a146094ea1e068dbb61eed4affd2e",
      "name-candidate:5e9de4aeca84b2606c332e9fef6369cd1fea3156ec4ba0bd3a419a3db660a743",
      "name-candidate:9e3504a837f27a06e8029e6aeeb93be17e4b25a5adbb298fb4f092497f8effa6",
      "name-candidate:d139611eba3d7921714d7b84c07ea887bf39dc72f6b8bf5b0b92d0881cb1841f"
  ]),
  ("name-candidate:98c8d502bb8d4496d8579243d7d5bdc348f9e963f92a8ef0b26032585af424fe", [
      "name-candidate:51ccba222f37490b9f63d8892c66f6896e6e1f100033cd79ca93c873be3e4aa3",
      "name-candidate:98c8d502bb8d4496d8579243d7d5bdc348f9e963f92a8ef0b26032585af424fe",
      "name-candidate:a2f42aaaebce6acc2209c31557c1c629c4d5620cad261e0d7fa6c189a7515d26",
      "name-candidate:ab13cdb7ad3d33234181f7bf51bcd8a39e116262dc6c4b93ad97a011d29ea6bb"
  ]),
  ("name-candidate:247395d17b1c5846e80b1cf9b4b7f6eef639ba61a09f72799fb599539af5280c", [
      "name-candidate:247395d17b1c5846e80b1cf9b4b7f6eef639ba61a09f72799fb599539af5280c",
      "name-candidate:b1634f3d55f6bd4e71e822f4d0298cbce844661503c6cbc16d33aa6a87e64610",
      "name-candidate:b8c1eaa50a2d2bdc486b4d76c1d2769dcaae45c69b99e3cefc1d149ff262e851",
      "name-candidate:ff5278e85c001ad924cc761f1fbb76333efd2862f05d0302a7c60687d493b7bb"
  ]),
  ("name-candidate:922281fd2c245cb2281a8b0e02bcb0c59d97213db3f8f48bb6756c664a8e0428", [
      "name-candidate:922281fd2c245cb2281a8b0e02bcb0c59d97213db3f8f48bb6756c664a8e0428",
      "name-candidate:e6448ad819aa1512851954911be57c4835e0e6267b810af5d9217995aa1dc56d"
  ]),
  ("name-candidate:8dfad6a803ebe342694efa234a74b78e4e3ae9a9777b706b6ac21f8a29982d1d", [
      "name-candidate:1feb568a792d85ccb7e6a896d156a4031c31e910432ba7f504de10055fb9ac3f",
      "name-candidate:863ea2ef52d00f04060c5a40ab243e2eef2fdefbc4377ea08861955b69edea89",
      "name-candidate:8dfad6a803ebe342694efa234a74b78e4e3ae9a9777b706b6ac21f8a29982d1d",
      "name-candidate:9d48f66fbc1c154f908adb199cd6decc95e4d2f294fbfa26ccfafcb423433cd4"
  ]),
  ("name-candidate:9cbf8762b5df10ae5547977451bad0c5482157b1688bf6f022cf16f678264bab", [
      "name-candidate:9cbf8762b5df10ae5547977451bad0c5482157b1688bf6f022cf16f678264bab",
      "name-candidate:ba0da55a51137043a3b169496b1a04032e322d2e5f6bd34ed00e0d543fa020f8",
      "name-candidate:d456ad42540f81209b9ed208d875c64c44bad47610e66d42a5b27610f3b54c70"
  ]),
  ("name-candidate:27ccf4d9a05c90d4f7fb19ad0328cb7d39393e08180da0f2206befed7bdd9b1d", [
      "name-candidate:27ccf4d9a05c90d4f7fb19ad0328cb7d39393e08180da0f2206befed7bdd9b1d",
      "name-candidate:4b36a49f42e2898012e65a1f298a7747fbea4ee48d27412ff4e059ff24bb6c56",
      "name-candidate:7a9484921c232d51ab6f3993433733bc228588a833e38211e085c81e87618d81",
      "name-candidate:7e780a85a9bfd48b3795c0efb28508f8ad7440c3719c2b225be38b9bc77833c2"
  ]),
  ("name-candidate:bfab5586c536219eace5a667bfbce570ffdafdcff2692fc8b62b6e62f0ff2c90", [
      "name-candidate:5f121cc918981f6d831c3a1b41d4c2a640287e4bba2278c30f3d4d5d49e22a48",
      "name-candidate:bfab5586c536219eace5a667bfbce570ffdafdcff2692fc8b62b6e62f0ff2c90",
      "name-candidate:f6fcd2f1e21e8393647eaa5ba2c150c832b811cbba0b6ea8b5405dc49c278884"
  ]),
  ("name-candidate:28fe5ea55d17ab0eba934de65a6992024d9e3b51257f1a2ce1489491818da7d4", [
      "name-candidate:1383b6e21ea1b95e7b66a22e8e5d676f19d173f6289fed5f1047ebc4d1172382",
      "name-candidate:15dce5b6fd466ebf85ba187cee380bcee0b9590077fd5251e6affa99f909e192",
      "name-candidate:28fe5ea55d17ab0eba934de65a6992024d9e3b51257f1a2ce1489491818da7d4",
      "name-candidate:a309ccdd5a1053467ff0abcaf5c74d5ff4572e029225119e4f14e910ea595a4a"
  ]),
  ("name-candidate:13f074285f8eb423a7346dc35a4046ccefa1b09022d78b2b5901b2a9c9c3d932", [
      "name-candidate:13f074285f8eb423a7346dc35a4046ccefa1b09022d78b2b5901b2a9c9c3d932",
      "name-candidate:41339ffe0cdc51d75c61ceae9b46dfa53ac8df6c58ebe896d07f1b4169daf1d8",
      "name-candidate:5594ad4fa8ad8c4209c99c408640addd68ddc54d63ca1c1c0f2d6a4653db9c43"
  ]),
  ("name-candidate:50d7e171e1dc215778833071d6abc0c7daa3ba8b4d915676adf74cc1e14d9b36", [
      "name-candidate:50d7e171e1dc215778833071d6abc0c7daa3ba8b4d915676adf74cc1e14d9b36",
      "name-candidate:79796fa1baa71a37ec75c1539d377a72360a3c42213e7d808bc3ceddd61922b3"
  ]),
  ("name-candidate:7d9c014842e6ed9883410f1dbdd3b5824b1c3d3ef6c1088b9374ba905f26c03f", [
      "name-candidate:5670557a62be3bd71117fcbc1659458a86a59105d18177eca0e1448ffe403463",
      "name-candidate:7d9c014842e6ed9883410f1dbdd3b5824b1c3d3ef6c1088b9374ba905f26c03f",
      "name-candidate:94bc704dab2f5d37a72188f4f4e31ffee0f65cf896e71bd732cb90a2fa99905e",
      "name-candidate:f41de4e669e6c60ea17c21a4ff13dd8c20821a9906c2896d976441639b50f2c3"
  ]),
  ("name-candidate:2f69710f2d451363fda011803c7ba08b8fbec7c898eb83d2ce76dbbba064b0bd", [
      "name-candidate:2f69710f2d451363fda011803c7ba08b8fbec7c898eb83d2ce76dbbba064b0bd",
      "name-candidate:30d0363467d8f243e5cab213c4100935174f02a942467db94a445c2c4f061cf4",
      "name-candidate:45b52f1475c877dc31a707b5216c84adbca9b7a48982317b6d12a98255e10320",
      "name-candidate:7e1efddc3c9aa587e48fe565e457712cc8788c6a5b4d569300943c0550689bbb"
  ]),
  ("name-candidate:b22d7502343815006fb375518b85193f2a0e247544a25419fde90d205ab168fa", [
      "name-candidate:b22d7502343815006fb375518b85193f2a0e247544a25419fde90d205ab168fa",
      "name-candidate:e6d3fcc8573f4e597e90dbcd0d572ce86e76a62620e8f1a233fc9dd8626c2bd1"
  ]),
  ("name-candidate:cc46c05c33b64efc77984d64bff8e93622872ceb2f28e071f0271025f9a1efeb", [
      "name-candidate:45f0bebe0225b38ebe92c92f0d515fdc27ebfc6dbd61395e5b6646eb499fbecb",
      "name-candidate:5743182afefc9b919dc9d1893a0b10761f1ae356f3df140216ccb3cf938485ed",
      "name-candidate:cc46c05c33b64efc77984d64bff8e93622872ceb2f28e071f0271025f9a1efeb",
      "name-candidate:de3f86a460df83c31edaef0d6f8265de18ffaf90bebdae21f19c02730b2b3f2c"
  ]),
  ("name-candidate:f1880cd5e89d32584c6bd57c2ecfe2a92afea90db07fcca493309e921cb1b45f", [
      "name-candidate:048d7fc3bb4890a6e5502f791e3b96a658906880f8930ce1042432a8ac111bd4",
      "name-candidate:a3e8592dffc597e90e712be0a8f9c6ea9e20a1a4c6b3e460e44f3f92a34a93d5",
      "name-candidate:ac940d04c945c0f0e714594728c633e94dd285f217c83f0b4f748c1c0e164827",
      "name-candidate:f1880cd5e89d32584c6bd57c2ecfe2a92afea90db07fcca493309e921cb1b45f"
  ]),
  ("name-candidate:e3ebb5c77cc4982a1d0331eaf55be1ce7e64a337166a0eea37c1736e0b6066fd", [
      "name-candidate:16561e110e5529645e40a8a33186be3e3653c3956270c12adae1163e121b0df2",
      "name-candidate:e3ebb5c77cc4982a1d0331eaf55be1ce7e64a337166a0eea37c1736e0b6066fd",
      "name-candidate:e448599ec7e2d2a8178b2b1b850c1c19eb85fb23d45506754bf7be25ea609929"
  ]),
  ("name-candidate:e950dd521929690e4574c9fe214c55cd3a1a7d2a118123bc922360e5ce6dabee", [
      "name-candidate:0d1242f1d6901f92de535411cb229b7fa020f240b9fedcb1def55158839bde33",
      "name-candidate:7ab9e795ad46846ec0549f21f3fc9568ac04a90cfa9f71028bf3230b71ba2606",
      "name-candidate:a7458c466481e9cd8e02f222fee7dd9aef3d9962ecbbdd7375678d1435297bf1",
      "name-candidate:e950dd521929690e4574c9fe214c55cd3a1a7d2a118123bc922360e5ce6dabee"
  ]),
  ("name-candidate:297af707b61842328081f8cc47f8b4ca54d787330f43e93db01c52c7cf94a6af", [
      "name-candidate:297af707b61842328081f8cc47f8b4ca54d787330f43e93db01c52c7cf94a6af",
      "name-candidate:48ec83de2da11e5b5fffe236b1014d6382b349cd57313f6799a296e3a95d6a6d",
      "name-candidate:66fcfbbff9c9ec7cf95888330d5277b1df383ef93011f9d5655e245149c0c149"
  ]),
  ("name-candidate:d38e0ee39c97073e8df985e6a0ca6807daab613318907ebe2ba66c8025293822", [
      "name-candidate:3c6e20226c788b5c8afc2d32108a97ebc6f67bf5e2ef0eb4f312067a3a5c5db9",
      "name-candidate:96b5df4f818ecbc4359760c3b867ec0cafd4eba47271fa4b329281505220e11b",
      "name-candidate:d38e0ee39c97073e8df985e6a0ca6807daab613318907ebe2ba66c8025293822",
      "name-candidate:ddfcec077088438ccd8052d825a54fc989a12a8cc239649f0543071195da6d8a"
  ]),
  ("name-candidate:8b6c5c2a4993ac9c91adba7a628d73c1cbcbbb82de4c4092061f7ee7cb4dc420", [
      "name-candidate:8b6c5c2a4993ac9c91adba7a628d73c1cbcbbb82de4c4092061f7ee7cb4dc420",
      "name-candidate:9e6678ef8f2e13008f395778dc7b6116b1cec64559ce4c38b92e1a36be3b7d89",
      "name-candidate:a4edcb57e22c70c101afe0ac024a17d0b7e269acd6757c8697cb3ac88a7e33a5",
      "name-candidate:d6bc7d1449b8221a4ccd9ae1cec56a958f9121a91d79a54f4c58b6c305e74b37"
  ]),
  ("name-candidate:75ba2da92b9886f585b719de2238c097520b63c795cbe288cee37014380b9dc0", [
      "name-candidate:27a54d668b2d0dbfa659f3b7f733130e6255bb55c3dce153eccbdffca853b0a9",
      "name-candidate:75ba2da92b9886f585b719de2238c097520b63c795cbe288cee37014380b9dc0",
      "name-candidate:ba3650f52b9006fa5f6d6f0120f3a52bae4cf41e1b26efeb06ef4cdc18e6b2e8"
  ]),
  ("name-candidate:bb2124d6ac2cf80c790933e8ad49c7997e2549d432fea059a0a1ff3958e1333d", [
      "name-candidate:095c01dd151e50a05d57285c7d5004c9200c1521e7034c8c7f8a59b79323b116",
      "name-candidate:b99d9a8a3a3320b41d465fe075b3962441d535a6a26ae4c5eb2df0e1c97b1dbe",
      "name-candidate:bb2124d6ac2cf80c790933e8ad49c7997e2549d432fea059a0a1ff3958e1333d",
      "name-candidate:c5d0eb5cf33a5c4fe94a16ff3189dfdea17f9fd7baf5806f718c6153ad9112bd"
  ]),
  ("name-candidate:df649a6ebb199e6aa7f5dc6ad342ecab39e7c8d14b8b202e230ff14b1da4891b", [
      "name-candidate:56551db1802f15f50018be9a5e128211430ec023bd10093d903c7723482eb09c",
      "name-candidate:5b29a29049dc5313953a5896f0d5030233e9deda27efbc1e0f59c363f0262908",
      "name-candidate:ab8eaba70c47bca36e8eaf04224ce057a3477ee6d4d12fc226e1c99816895797",
      "name-candidate:df649a6ebb199e6aa7f5dc6ad342ecab39e7c8d14b8b202e230ff14b1da4891b"
  ]),
  ("name-candidate:c0c012c74bfa4a37bf595fed251eb81e1b12d61e9c1ebb267c95414a241f30ed", [
      "name-candidate:9a31888a88a7bc2ba585859319a67073921096a4d683fa55cf95abf075aa96ec",
      "name-candidate:c0c012c74bfa4a37bf595fed251eb81e1b12d61e9c1ebb267c95414a241f30ed",
      "name-candidate:cab6ec404166b309b9a787f92921235901e9da2ff7bd6fd024d84078688753dd",
      "name-candidate:f0907100a88fee2c249ad2727a6bc368922910ef8aea0447872c08e3d7c313bd"
  ]),
  ("name-candidate:c7a8bc89ad6b53649fc70d6703627e7cf48fdbf7b9ee94bdc5d2b3135d404c6d", [
      "name-candidate:3bddfa182471a1fd087696231d5dedd1ff810933332ebf3ef7ee326e67659a53",
      "name-candidate:abd03f507edc6a97a1ad67bae864cadb014342756d3465975976a7b349d0feb4",
      "name-candidate:c7a8bc89ad6b53649fc70d6703627e7cf48fdbf7b9ee94bdc5d2b3135d404c6d",
      "name-candidate:cab75fc6ede01a6b83583f53153242cfb979ee79c4513a80ac8976bbd67fb894"
  ]),
  ("name-candidate:d4cc5c3ea9b224940b4c44edbcceafe47ad07bfff571650fc4db6e95b8c230e4", [
      "name-candidate:16befac02b65c3c77b96f0eb8f500ef3e0d746b9dd4ca474c00555b92f7a7910",
      "name-candidate:1fb264992a3a450a1d121a6c847be2c8f3868091e6688c210c89d73dbfdc1f2a",
      "name-candidate:d4cc5c3ea9b224940b4c44edbcceafe47ad07bfff571650fc4db6e95b8c230e4",
      "name-candidate:f3fcaac3dda234e4861e681b08df2be4ff3dfd67576e41ca62d4aee9d6a15c68"
  ]),
  ("name-candidate:394331d906e4b04234a76ef125ce1f7b0a46d7e8b32ede2d17bff43e7b65db5c", [
      "name-candidate:2d876d558f099d39216519d71c38a1f3d38987d3d698e460c8a03d7792a10c50",
      "name-candidate:394331d906e4b04234a76ef125ce1f7b0a46d7e8b32ede2d17bff43e7b65db5c"
  ]),
  ("name-candidate:a4b224eaab14b4dc9b9530df0daabcf0b88b9d9dd5d7322484aa676af7b818b3", [
      "name-candidate:a4b224eaab14b4dc9b9530df0daabcf0b88b9d9dd5d7322484aa676af7b818b3",
      "name-candidate:c7ad8cb23e0ad9694ef1c2d78889b66157d5773a2feafe197a7d54cbe6872b1b",
      "name-candidate:d946872b02176de70d43eed48e894dde49179f14f020f588be80909d06cca666",
      "name-candidate:ec7779a4db0e33dce48d502698ed58173b1acd8f1bd9e0d58ec6adebd320e672"
  ]),
  ("name-candidate:a4e88eef0a504df7c1005a5762d45d3b8683414f3f75016780e3df658288fd1b", [
      "name-candidate:0dc602d0a00ac16adca870e3be8ca0cfc2561a776cdd7bf50bf3228cd91d8ee5",
      "name-candidate:7ab8deba0dc4b4f67d9c7ab423728e92e3e4b9fc6b437cc8040fcd8ef138c459",
      "name-candidate:8d797eaf6b114d65fe83e5e17013f3870380284964b19b0bb1511f268af9934e",
      "name-candidate:a4e88eef0a504df7c1005a5762d45d3b8683414f3f75016780e3df658288fd1b"
  ]),
  ("name-candidate:3ac64901cd9081671e4c0a163bdb075295cc4a2a145f8d47ec14ce878c8b379c", [
      "name-candidate:3a4c30f35ff53f977ea0ece7e451997cb0f48a45963222585bac4397265940ef",
      "name-candidate:3ac64901cd9081671e4c0a163bdb075295cc4a2a145f8d47ec14ce878c8b379c",
      "name-candidate:6b1aa0e1fe2a34ebaed049dc9104ef7ede8dc1d647b34cc830e7867a97a36c1c",
      "name-candidate:8806296d69938db5f9d2c77b317ed4be33f244e8aa67d335914b82979833272c"
  ]),
  ("name-candidate:40d2e842e015603b7adde4c5d495a0f66e6d0177048a72c3e36787452367d386", [
      "name-candidate:2ab373279b3b9c3bbef72634f71e90370fa41f9e6115df0c248423e7239393cc",
      "name-candidate:40d2e842e015603b7adde4c5d495a0f66e6d0177048a72c3e36787452367d386",
      "name-candidate:5dc56ef5cc2825e955e180ddc7d7e5292d60e70cb6827cf919a5bd2cbfd2fc28",
      "name-candidate:7467670c83e193c134103a932e6b158190329a0af7e80516f385d3b392179fbe"
  ]),
  ("name-candidate:06417e6fe9786752f5b08aab1064ee6bfc755bbb00d435bec64091c245c6b9e6", [
      "name-candidate:06417e6fe9786752f5b08aab1064ee6bfc755bbb00d435bec64091c245c6b9e6",
      "name-candidate:42c2e4ed4ac2f8215eb90b6bf4fe5c7a697c18f675b8e0c6eed644ce43d4756f",
      "name-candidate:8b5fb651f0b87028c290583b68cd282584f8d91dc047d10b9dc7ffacbe6456c0",
      "name-candidate:b95a74b5fb1880fd2edd077146abb9f13d90a8c0cc54744e1e4fb5cc45072021"
  ]),
  ("name-candidate:23747a40056a2fd037804333b31999eb811c24716c423f4f24a78ce640f04d50", [
      "name-candidate:23747a40056a2fd037804333b31999eb811c24716c423f4f24a78ce640f04d50",
      "name-candidate:3b0f3a526ef06b27b26d8a40f9947c414872dd1587e02fdf2bedaf1648b1ad3f",
      "name-candidate:a1c27364ec95b9df98c1eaca077b70d5324fd1eaaaa6c1ae33fb60633923e873",
      "name-candidate:d942f32d9793b3455ed3ba47a0327e62f486fceca69e4fcf1214da37ecec05f3"
  ]),
  ("name-candidate:e419140852e731d12766d1503f735381967a8181f7e55a0ec67b12e47cf0a891", [
      "name-candidate:5fdf66264683ea40ee89c599aac86ccfa812444c7f2922b7130649f61b44e7cb",
      "name-candidate:e419140852e731d12766d1503f735381967a8181f7e55a0ec67b12e47cf0a891",
      "name-candidate:ef8e273e46c5dbb67c766731e943711297335ffbf761bb5bae049b3a9c586c96"
  ]),
  ("name-candidate:eefa6cefb16dfc72a2d40464b64cc3bd5e0693af8cbcebad8eb90b34fde0d9ad", [
      "name-candidate:762c19f5c4e85d034a805c59484823f24ea78aeb8d4a7967dba69c8208202e32",
      "name-candidate:87892dff3980ab25abaf7b968f6500a525ebcfc479ae50a728d6dbede820ab22",
      "name-candidate:a98877e4736e50dde73efdb1e728742c9cbc2bdfa8977d2a7fcc9bfe8efec529",
      "name-candidate:eefa6cefb16dfc72a2d40464b64cc3bd5e0693af8cbcebad8eb90b34fde0d9ad"
  ]),
  ("name-candidate:0a243a0c393548a16a9087c5c25ea65ab128939fa7ffaa7c905577e535cc7a1f", [
      "name-candidate:0a243a0c393548a16a9087c5c25ea65ab128939fa7ffaa7c905577e535cc7a1f",
      "name-candidate:e543d09a9108c0008d7e35d3131ce595625abfb660d089661bd7dd7cdaed84f6"
  ]),
  ("name-candidate:fb299bfc25c1a3bf4ff5ea9e87bc38e09da2d7cff486508bcda0f4d310e7764a", [
      "name-candidate:236d80104fc25ee997549bd3a875d6413004cf16571b62491af8ecf6672175a4",
      "name-candidate:9407732ea6a6a34b71c97d244462a6ecd690483b7e0ca915ce8f936d8efe9b09",
      "name-candidate:bd0500dea3ba20d90d0ae5b5ba348cf67835205c1061d016b1db01d6a0a19e30",
      "name-candidate:fb299bfc25c1a3bf4ff5ea9e87bc38e09da2d7cff486508bcda0f4d310e7764a"
  ]),
  ("name-candidate:3e6e57be79921fbfc504409163cd4077219ac18384836a40c5683ce9a4d35dd1", [
      "name-candidate:008319127d4db50165c06a74369fbf880925ae90d27995a0358b8899f68f0a6e",
      "name-candidate:3e6e57be79921fbfc504409163cd4077219ac18384836a40c5683ce9a4d35dd1",
      "name-candidate:726f7435479858269d4f8ef5da531c3854dc201755db7c57f10ef06294f5cade",
      "name-candidate:b276bfed6d096faf4f8177298974f9fd53c8da2a8be9bcabcebe398ecf22a1b4"
  ]),
  ("name-candidate:14d9c99560b96a0af5d38918febdf8c6db839a2c1cdc5e24f861ebb193ea1451", [
      "name-candidate:14d9c99560b96a0af5d38918febdf8c6db839a2c1cdc5e24f861ebb193ea1451",
      "name-candidate:349799ae89887681901a31982097b5e121910c05ff661861d33c49426b158b60",
      "name-candidate:f0faaf67f2a522af6750d51651b633b338a1d88a037411621b00bd07547a47a9",
      "name-candidate:fe8a461e2a77b17ff80f13fa853b43d34befc0d724d06077f1c56e4a1a385aff"
  ]),
  ("name-candidate:cdace5c10e8b6fc41f1fe88e62e7a8fb5f4d68f63dd2c7a4231cea241dbb6975", [
      "name-candidate:0a15755e5e940da017d8b63892e16aedb17bb2fd6baea4d20b566993382029f4",
      "name-candidate:8193d7d1021f0669f95b7a9a9143ca705a53b32fe16861f0d96f9dc032268e2f",
      "name-candidate:c7b3cce6ad7afcc6930239afc627026c5d081f185ed482cc13b53dee34450e6b",
      "name-candidate:cdace5c10e8b6fc41f1fe88e62e7a8fb5f4d68f63dd2c7a4231cea241dbb6975"
  ]),
  ("name-candidate:b76cbec125303a9cee3014a3589d4c2f76cf826b910fe6453f7739001c3133db", [
      "name-candidate:ada343becd9c5effa6105ad683ce33f8dd54b50fb8ef8e701e7a014041112f02",
      "name-candidate:b76cbec125303a9cee3014a3589d4c2f76cf826b910fe6453f7739001c3133db",
      "name-candidate:e85a540666e8688c631cf9cf2ac15b88cd352ca1fe7b1326cd36a27b64ccf7de",
      "name-candidate:f84f5464732779b14a497cfba3c14be2dc414a0634e01dabe93aef5ce3b5d811"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L49264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
