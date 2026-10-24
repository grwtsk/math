# candidateSelectionsChunk0015

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25d605882a4a9a051ac67e6e9b6f3cbc27d82a205f71f3dd2590e22c197d046a",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0015",
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
  "slug": "candidateselectionschunk0015--7501bcce824456b3e5c29082",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46658,
    "line": 46297,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7501bcce824456b3e5c290822dff7185544b6a787ee5e500a40cf469c53833b7",
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

Occurrence: `declaration:25d605882a4a9a051ac67e6e9b6f3cbc27d82a205f71f3dd2590e22c197d046a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46297–46658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0015 : List (String × List String) :=
[
  ("name-candidate:2bfd61ba2e1ec5fc3ece7d9c957c62025c9215d22e3f5197bc32892b6f686caa", [
      "name-candidate:2bfd61ba2e1ec5fc3ece7d9c957c62025c9215d22e3f5197bc32892b6f686caa",
      "name-candidate:8024110b80427d802572123999e4eb223b64d4eeb503d965c5fe1760b96c2009",
      "name-candidate:912693022f30bea3bd37d122cd15f0b90e521277dd0da71750db1952738977b9"
  ]),
  ("name-candidate:0ee54053d2861d79e48ff66692bcbd9bb2bd3b81a5fa7f1b32788831f63c5e18", [
      "name-candidate:0ee54053d2861d79e48ff66692bcbd9bb2bd3b81a5fa7f1b32788831f63c5e18",
      "name-candidate:32aef16235e07755811faa221a0fddac6a3aa8af2e2ecc2ee6cd4b9dafb9562e",
      "name-candidate:65b67acf52b19f976756e878fdf028211a0692e9e00ea7dd0e442c337c2a2e2a"
  ]),
  ("name-candidate:766a5cdf66bb0a12d930602ab82b6070a9a90202f9e447e1bc4abaa5269f8561", [
      "name-candidate:6372cd37759564f3953fbc060108455e01ae190533243dd20053ed5992c35582",
      "name-candidate:766a5cdf66bb0a12d930602ab82b6070a9a90202f9e447e1bc4abaa5269f8561",
      "name-candidate:806c04e362ed68c1341dea719b53a800b7f8e7b85220d8f7ac33bdb0d8a7439e"
  ]),
  ("name-candidate:a03aa3fce1e9ac822567707bb9f7866fdc8fe1cdd218234014d7febb2ddf0584", [
      "name-candidate:74b6bd04e4b4e69c4e9a3730e5c3af76292841893e6405972ff7579fd0998240",
      "name-candidate:a03aa3fce1e9ac822567707bb9f7866fdc8fe1cdd218234014d7febb2ddf0584",
      "name-candidate:c3f75e7a676f5964921a682b301bfc9ffee36b4abb6195663af9250c93a360d3"
  ]),
  ("name-candidate:fb4d719ae01457188ca33fc885a272c7e733198fad5099cad2421cb3cd0d1b9f", [
      "name-candidate:49bfb4bede27b5235948dd01fa3fb20332092b516c0ee723c068a3b1ed934aba",
      "name-candidate:fb4d719ae01457188ca33fc885a272c7e733198fad5099cad2421cb3cd0d1b9f",
      "name-candidate:fd3329ed6c222dcebf558401ecfba1ed61c4ba57ed87bf1a55278c93bf99aa57"
  ]),
  ("name-candidate:8e4ac63dbf22b8ffbcc37f11805838d67904c25d9281f024a06d593a78417dcd", [
      "name-candidate:8e4ac63dbf22b8ffbcc37f11805838d67904c25d9281f024a06d593a78417dcd",
      "name-candidate:b5ea769f08a192b32eb2748767f93c552a49a1b03a686e2ca7c0635c9669d6a0",
      "name-candidate:da5388b9b473a893443f79910a17d94232b5b06976774653ede806a2100e5237"
  ]),
  ("name-candidate:d00b0b4d1730b93e4f9de31a89c7c520cadbd66bbaa5c41573ad1903bf06822b", [
      "name-candidate:514f0acbf0aded1de92438b31b4d749b92b6b1897e6da1b782510bd774bb7824",
      "name-candidate:7814ac4c42581365041951c1cd52e102c51a22c325b1eab7b3f8925d91e7fe4d",
      "name-candidate:d00b0b4d1730b93e4f9de31a89c7c520cadbd66bbaa5c41573ad1903bf06822b"
  ]),
  ("name-candidate:de71c61939ee0434c8405df12aefc8a205afdb055672388ab06762f8dc1cceea", [
      "name-candidate:73c992daa54ee5a378323ffe2cce7ab9e1e37915f2c938bea7609e3ff864a0e2",
      "name-candidate:c001861fca2af421a01461f463ab0bf22c9b10dfd98dd31d58f4ce99e1ec2d8d",
      "name-candidate:de71c61939ee0434c8405df12aefc8a205afdb055672388ab06762f8dc1cceea"
  ]),
  ("name-candidate:30d7242924336113f235a9d7e04bebba8895b81ce6d8c44455c72593de727357", [
      "name-candidate:10e6991ad395124171dd1e65cd5ab74021c6308ef159925afeda97977bf52432",
      "name-candidate:2603b41d15af852bceafa62e67d5b82302b7f71f42f69024840d5584e53005d8",
      "name-candidate:30d7242924336113f235a9d7e04bebba8895b81ce6d8c44455c72593de727357",
      "name-candidate:a40691cbf8721269cac392241c1e102b12f47516af253f4ecf6053d0eb9969f9"
  ]),
  ("name-candidate:8d603f7d0e71c9b62ad57c89123e617082a0a67f53e2e7b8cbcb4d0c37da809c", [
      "name-candidate:7cd719b9ab33e4dbc3360348143e9316908ac2e8ee637d6957f8fc15ec58408d",
      "name-candidate:8d603f7d0e71c9b62ad57c89123e617082a0a67f53e2e7b8cbcb4d0c37da809c",
      "name-candidate:ecdf8f89c4f2415f169ecd9bcf4df130daff4c9cc8bcfe1f16b2ea2208082017",
      "name-candidate:f43609bda1db8dfbb516ea744e7f14e208908e190437837cac3ce282147d73a8"
  ]),
  ("name-candidate:535b5d9f9117cff4166126f8cd005abf2a7bbc518cc47c4503d07a5dbf58b33f", [
      "name-candidate:1f0916935adf10cc22946c49e7bb31e421c2b4fd2d4dd6709c9549a03e7e721f",
      "name-candidate:535b5d9f9117cff4166126f8cd005abf2a7bbc518cc47c4503d07a5dbf58b33f",
      "name-candidate:56250bfdfc861e25c3a19f251c6baa61dd7176b424aae74314f534e8dfc0e666",
      "name-candidate:b0a9f92736d6628a22bb23ee2f7596e351385beb82e77592e2aa65ee91789d3e"
  ]),
  ("name-candidate:5560755e4a4b6a1caf769834d37e6ebf99f920ef2430d5c3179c0474e1a144ea", [
      "name-candidate:5560755e4a4b6a1caf769834d37e6ebf99f920ef2430d5c3179c0474e1a144ea",
      "name-candidate:8ace999d897b08e4b105912beaf9c4a91730a4885eba8644f016822c95e22c5a",
      "name-candidate:93d1de9aa1e77c01f4684751691292f009ccca85eca01b579991b0fde5ed4b71"
  ]),
  ("name-candidate:b7f9430ea5a2b3109d86d8c382e37aa2ad98068db8c811b4522c7fba82499e0a", [
      "name-candidate:098a97ead7cb17c418895b90c8c02f4521183e23aac1d93178d54f10f6068fd4",
      "name-candidate:2842400d86c6304ee5b224e6a3a31b071781fb9aeb261dcf4f18a9947e4d54dd",
      "name-candidate:8d7592e14fd3c595a04f7f0f865897be013f04b07e9f711a76851c4cdb52f970",
      "name-candidate:b7f9430ea5a2b3109d86d8c382e37aa2ad98068db8c811b4522c7fba82499e0a"
  ]),
  ("name-candidate:057cc0a0121e7f45e008290529c30c00334e0e97cfa67af266b4c962a0084fc6", [
      "name-candidate:057cc0a0121e7f45e008290529c30c00334e0e97cfa67af266b4c962a0084fc6",
      "name-candidate:31f8e92b56a565064ce2285f4c2b1a68dc7802d49763bffe4d2164ccc6eb7358",
      "name-candidate:614aaa6537067390aa32cf585b107d3a3b9b30fc82b1f30bf73ec0dc44899e3e",
      "name-candidate:c146c6666ee1a9fc3a2bd47597524de83efb86c9d61335d21d5f28f776913e54"
  ]),
  ("name-candidate:bf8fb3432f65b5e5da57442782f1571908e56ae3a51a96de101906205768733c", [
      "name-candidate:36105a877a2877606de8be173a079d0acc9d8c61dbc072b255abfaff232d8d7e",
      "name-candidate:bb9598d0bc519727442f47685f4b8fb1b400b0a43df491bfd6c96c3190c85c37",
      "name-candidate:bf8fb3432f65b5e5da57442782f1571908e56ae3a51a96de101906205768733c",
      "name-candidate:cc5ad912b697331575f120e8565a58e89af39285c04fbb6e8a08876ec3fa6592"
  ]),
  ("name-candidate:aee47ec046c3501cdab215bfb6e91f377187e8a6d06d9b6c7a6caf83b012d7af", [
      "name-candidate:106e77a1464eb9aaf2310025ce45cb5723a85a899fdafd0af539d90fbcde9c40",
      "name-candidate:355720cd28492c9104e69331d2a8a6edb23d816580893a08a6e6ed94b60ff6f5",
      "name-candidate:3d3253a4416854192aaebce37717259613f6f3fa693b4a796e12a03fff212e6a",
      "name-candidate:aee47ec046c3501cdab215bfb6e91f377187e8a6d06d9b6c7a6caf83b012d7af"
  ]),
  ("name-candidate:c0e463001dbc037f31d23a506bdd59693fefd7c35343cb1d207bd76be9732ed6", [
      "name-candidate:38a749891c894aa27d9104a87f5dfce46b646729d4fa627aac90afc7059c0341",
      "name-candidate:c0e463001dbc037f31d23a506bdd59693fefd7c35343cb1d207bd76be9732ed6",
      "name-candidate:e477cc3048af0291fc6ddb964bfc881b42e5285182f0755c31354f4093815bc4",
      "name-candidate:eea712f89f33f46ae3088f238ff2fb5099442307003fc2e4bd1f8e50016a8232"
  ]),
  ("name-candidate:df6620a2963fadfbc24b078d92fb196d888b208ba8f68ab9d2e0f52e342b8a32", [
      "name-candidate:1667411181cc1d7764353d7663d16144ab3cbd4f2f66e6c44b3c339a1c4a56dc",
      "name-candidate:1a026e34369dd4a628bd6afb7b6f037d9514708a84c690b3826e01aae730c1d7",
      "name-candidate:9c233f16507d75945ad42d45761997fa85c2e542c84f1f3b4c622e90f755b550",
      "name-candidate:df6620a2963fadfbc24b078d92fb196d888b208ba8f68ab9d2e0f52e342b8a32"
  ]),
  ("name-candidate:3254d580ee87b5ccf2024c1aa90fe016b8344394a0500dee94d2d6e39b306562", [
      "name-candidate:3254d580ee87b5ccf2024c1aa90fe016b8344394a0500dee94d2d6e39b306562",
      "name-candidate:a03e3122bba112e89735fefeb908333c96e87e6f20dcf94f59942f241ea06b11",
      "name-candidate:aa43d1998c1b330e3cb288ce290d556010fb5cb6f9ee9f4bcb7ef73b7e738246",
      "name-candidate:bc558597a0122c07c08e8bd36bf2751f5dda449671a3dde1c3903e02b1545119"
  ]),
  ("name-candidate:90e4edd52586bede7b830989c64c6840ad92b8a520b2cdf3d552da235a07a123", [
      "name-candidate:90e4edd52586bede7b830989c64c6840ad92b8a520b2cdf3d552da235a07a123",
      "name-candidate:9b4f586fa46b066edde8fcdc131b7fc400b50f40aab6797ce30f47035b622bb0",
      "name-candidate:deef1a80b32a0391e83f68ba51600645c09924a06908c4553764deb013ee2e1b",
      "name-candidate:fb1018115ba94505bd2fb8a686f0abc4172fd6ab1bc9ec078f83e84eb9d6b111"
  ]),
  ("name-candidate:556613cf8f0bba435d4ba8e8f79bf441005bf782c582223262b046f94f46e8de", [
      "name-candidate:4f34b76a40f0712e765e0e8f950d084394467d6ee5eadfdaf4291d9ae066bf8c",
      "name-candidate:556613cf8f0bba435d4ba8e8f79bf441005bf782c582223262b046f94f46e8de",
      "name-candidate:5c475cf1a1399dbaf9423f0c0df9f5d81ef50e405b8d2e56251d13e148dd0d94",
      "name-candidate:b6db65d7dddce75b41c008112d3fa8aa5c66bff4d05a07f4fdfae3255614a092"
  ]),
  ("name-candidate:60e3e12806282f3e56d6bc14ab63f89a1e16fd5ba23dd417b245c30bc205ccd9", [
      "name-candidate:2cf18d5a24b730c7273f51902fb54ae127846e3e1494e103a50019125858a226",
      "name-candidate:60e3e12806282f3e56d6bc14ab63f89a1e16fd5ba23dd417b245c30bc205ccd9",
      "name-candidate:6b157f2b1464a802dabc9bfe451aa86279b69d9a3eb566e922bcdee647c26d35",
      "name-candidate:e58fb92e419d265fcd345b2687d7c6dd0821cfeeb54c031c696eb1f94b78733c"
  ]),
  ("name-candidate:146f5635bf4df10a14a009fd36714ce498e248779d4af6e64286ff077bec7975", [
      "name-candidate:019330460c0463435794ad07b9dcab92d1800ed3dce8d7577701be7b5fd4be18",
      "name-candidate:146f5635bf4df10a14a009fd36714ce498e248779d4af6e64286ff077bec7975",
      "name-candidate:ab0ca25480a981869d8538620659fa0385f05fcaa7b7642603c4ad4204f4b8c6",
      "name-candidate:de0f4b936f2c51c28745e83b31624f9bbc363c424e729099cf68472db501ab79"
  ]),
  ("name-candidate:d5274319cec0298acb12088366cd5bfb37c74e9492851dcf84b1614affe0731c", [
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
  ("name-candidate:37db3e86abad59c3f8cdbc62847c54203803257573084f443d3c06d045752e83", [
      "name-candidate:137d34a1d5b77cae5bf9bb5662d591a8329aef71a9c20b07a7542391131de0d4",
      "name-candidate:20fefae26f0623844375d41b7e31370c4b63088df8b4338ced33f07f271b8dd7",
      "name-candidate:37db3e86abad59c3f8cdbc62847c54203803257573084f443d3c06d045752e83",
      "name-candidate:b10de8caab5ebb82b978610416ff8d054e15b1bd26110ae9f6b05ad092cad400"
  ]),
  ("name-candidate:fd565fd012d45015e38fcf568f44aa37325e341c11e3fc2b17befee347f0ee7b", [
      "name-candidate:316a03a650d88870d934a9f724a8db840a91dbcc9b6d144e5ccaf11923e796f4",
      "name-candidate:4e75a823fefc0eeee402946d543de9166c1051fc989f2859af4d0a865065da23",
      "name-candidate:54433605b0be156771175b40a0152389bfb6fd55ec773c43bc63b5f4dfa9b3ea",
      "name-candidate:fd565fd012d45015e38fcf568f44aa37325e341c11e3fc2b17befee347f0ee7b"
  ]),
  ("name-candidate:75ab679c758e337161c1a0aeb9f22086eb2d086ee850953d5f94ede9c3fa75a4", [
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
  ("name-candidate:a0fb2eb5ace614ea215b4e0220cb6374767e729b4d18511f61a1eb081f26c883", [
      "name-candidate:3f591e64801b0aeeab9302e868e3cf48672d0fa19544b673284cc301a56f78f7",
      "name-candidate:7e69b2681ff2acbb5fd753a48dcb6af3b2df93e1e72c06ad79aa059246f30992",
      "name-candidate:9604ddd60f916f4066111416f7b63131c21b9607a15ce95dbf344f77db3423c2",
      "name-candidate:a0fb2eb5ace614ea215b4e0220cb6374767e729b4d18511f61a1eb081f26c883"
  ]),
  ("name-candidate:0ee28629cbfa8d2af50a3f2dae17083b6f531e8e521b41b9299b4ee0afb64511", [
      "name-candidate:0ee28629cbfa8d2af50a3f2dae17083b6f531e8e521b41b9299b4ee0afb64511",
      "name-candidate:3322b0d4d3ec48b1390479e3bc02daefaca5f8b59733b407d27b35a4c7ae5c28",
      "name-candidate:3ff8db27abca636975276be5b9376be5886d53b09703a6637a3002c7c4ed9fd0",
      "name-candidate:cdf4e3c1f63c6428e5f868e66f5af913a10f3f72f151568ef23072bd65d52bfd"
  ]),
  ("name-candidate:bcfc0eb2601144897b683d75e32c7987c1c3613ff16b3c056637ebf8e18937ee", [
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
  ("name-candidate:a41ac823f17cfc531215e6e86bcd144a1dc428818a24a9cbff83a3f6d13cffdc", [
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
  ("name-candidate:9e3b04fb602ca9920b9be301e871aa250379e333f00915060a21d531d5196bb8", [
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
  ("name-candidate:11a622a5c148b446c39423c472ae00091de25644fbc265142c6fb220ddb0fc3e", [
      "name-candidate:062f76db2ed0661a98243c63d7548ef3cad8e3667fed995f6a201670c0553869",
      "name-candidate:11a622a5c148b446c39423c472ae00091de25644fbc265142c6fb220ddb0fc3e"
  ]),
  ("name-candidate:40419fdb8867ed4eaac07d1d1d1118d9e65a146094ea1e068dbb61eed4affd2e", [
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
  ("name-candidate:b8c1eaa50a2d2bdc486b4d76c1d2769dcaae45c69b99e3cefc1d149ff262e851", [
      "name-candidate:247395d17b1c5846e80b1cf9b4b7f6eef639ba61a09f72799fb599539af5280c",
      "name-candidate:b1634f3d55f6bd4e71e822f4d0298cbce844661503c6cbc16d33aa6a87e64610",
      "name-candidate:b8c1eaa50a2d2bdc486b4d76c1d2769dcaae45c69b99e3cefc1d149ff262e851",
      "name-candidate:ff5278e85c001ad924cc761f1fbb76333efd2862f05d0302a7c60687d493b7bb"
  ]),
  ("name-candidate:922281fd2c245cb2281a8b0e02bcb0c59d97213db3f8f48bb6756c664a8e0428", [
      "name-candidate:922281fd2c245cb2281a8b0e02bcb0c59d97213db3f8f48bb6756c664a8e0428",
      "name-candidate:e6448ad819aa1512851954911be57c4835e0e6267b810af5d9217995aa1dc56d"
  ]),
  ("name-candidate:863ea2ef52d00f04060c5a40ab243e2eef2fdefbc4377ea08861955b69edea89", [
      "name-candidate:1feb568a792d85ccb7e6a896d156a4031c31e910432ba7f504de10055fb9ac3f",
      "name-candidate:863ea2ef52d00f04060c5a40ab243e2eef2fdefbc4377ea08861955b69edea89",
      "name-candidate:8dfad6a803ebe342694efa234a74b78e4e3ae9a9777b706b6ac21f8a29982d1d",
      "name-candidate:9d48f66fbc1c154f908adb199cd6decc95e4d2f294fbfa26ccfafcb423433cd4"
  ]),
  ("name-candidate:ba0da55a51137043a3b169496b1a04032e322d2e5f6bd34ed00e0d543fa020f8", [
      "name-candidate:9cbf8762b5df10ae5547977451bad0c5482157b1688bf6f022cf16f678264bab",
      "name-candidate:ba0da55a51137043a3b169496b1a04032e322d2e5f6bd34ed00e0d543fa020f8",
      "name-candidate:d456ad42540f81209b9ed208d875c64c44bad47610e66d42a5b27610f3b54c70"
  ]),
  ("name-candidate:4b36a49f42e2898012e65a1f298a7747fbea4ee48d27412ff4e059ff24bb6c56", [
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
  ("name-candidate:15dce5b6fd466ebf85ba187cee380bcee0b9590077fd5251e6affa99f909e192", [
      "name-candidate:1383b6e21ea1b95e7b66a22e8e5d676f19d173f6289fed5f1047ebc4d1172382",
      "name-candidate:15dce5b6fd466ebf85ba187cee380bcee0b9590077fd5251e6affa99f909e192",
      "name-candidate:28fe5ea55d17ab0eba934de65a6992024d9e3b51257f1a2ce1489491818da7d4",
      "name-candidate:a309ccdd5a1053467ff0abcaf5c74d5ff4572e029225119e4f14e910ea595a4a"
  ]),
  ("name-candidate:41339ffe0cdc51d75c61ceae9b46dfa53ac8df6c58ebe896d07f1b4169daf1d8", [
      "name-candidate:13f074285f8eb423a7346dc35a4046ccefa1b09022d78b2b5901b2a9c9c3d932",
      "name-candidate:41339ffe0cdc51d75c61ceae9b46dfa53ac8df6c58ebe896d07f1b4169daf1d8",
      "name-candidate:5594ad4fa8ad8c4209c99c408640addd68ddc54d63ca1c1c0f2d6a4653db9c43"
  ]),
  ("name-candidate:50d7e171e1dc215778833071d6abc0c7daa3ba8b4d915676adf74cc1e14d9b36", [
      "name-candidate:50d7e171e1dc215778833071d6abc0c7daa3ba8b4d915676adf74cc1e14d9b36",
      "name-candidate:79796fa1baa71a37ec75c1539d377a72360a3c42213e7d808bc3ceddd61922b3"
  ]),
  ("name-candidate:f41de4e669e6c60ea17c21a4ff13dd8c20821a9906c2896d976441639b50f2c3", [
      "name-candidate:5670557a62be3bd71117fcbc1659458a86a59105d18177eca0e1448ffe403463",
      "name-candidate:7d9c014842e6ed9883410f1dbdd3b5824b1c3d3ef6c1088b9374ba905f26c03f",
      "name-candidate:94bc704dab2f5d37a72188f4f4e31ffee0f65cf896e71bd732cb90a2fa99905e",
      "name-candidate:f41de4e669e6c60ea17c21a4ff13dd8c20821a9906c2896d976441639b50f2c3"
  ]),
  ("name-candidate:30d0363467d8f243e5cab213c4100935174f02a942467db94a445c2c4f061cf4", [
      "name-candidate:2f69710f2d451363fda011803c7ba08b8fbec7c898eb83d2ce76dbbba064b0bd",
      "name-candidate:30d0363467d8f243e5cab213c4100935174f02a942467db94a445c2c4f061cf4",
      "name-candidate:45b52f1475c877dc31a707b5216c84adbca9b7a48982317b6d12a98255e10320",
      "name-candidate:7e1efddc3c9aa587e48fe565e457712cc8788c6a5b4d569300943c0550689bbb"
  ]),
  ("name-candidate:b22d7502343815006fb375518b85193f2a0e247544a25419fde90d205ab168fa", [
      "name-candidate:b22d7502343815006fb375518b85193f2a0e247544a25419fde90d205ab168fa",
      "name-candidate:e6d3fcc8573f4e597e90dbcd0d572ce86e76a62620e8f1a233fc9dd8626c2bd1"
  ]),
  ("name-candidate:45f0bebe0225b38ebe92c92f0d515fdc27ebfc6dbd61395e5b6646eb499fbecb", [
      "name-candidate:45f0bebe0225b38ebe92c92f0d515fdc27ebfc6dbd61395e5b6646eb499fbecb",
      "name-candidate:5743182afefc9b919dc9d1893a0b10761f1ae356f3df140216ccb3cf938485ed",
      "name-candidate:cc46c05c33b64efc77984d64bff8e93622872ceb2f28e071f0271025f9a1efeb",
      "name-candidate:de3f86a460df83c31edaef0d6f8265de18ffaf90bebdae21f19c02730b2b3f2c"
  ]),
  ("name-candidate:a3e8592dffc597e90e712be0a8f9c6ea9e20a1a4c6b3e460e44f3f92a34a93d5", [
      "name-candidate:048d7fc3bb4890a6e5502f791e3b96a658906880f8930ce1042432a8ac111bd4",
      "name-candidate:a3e8592dffc597e90e712be0a8f9c6ea9e20a1a4c6b3e460e44f3f92a34a93d5",
      "name-candidate:ac940d04c945c0f0e714594728c633e94dd285f217c83f0b4f748c1c0e164827",
      "name-candidate:f1880cd5e89d32584c6bd57c2ecfe2a92afea90db07fcca493309e921cb1b45f"
  ]),
  ("name-candidate:e448599ec7e2d2a8178b2b1b850c1c19eb85fb23d45506754bf7be25ea609929", [
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
  ("name-candidate:ddfcec077088438ccd8052d825a54fc989a12a8cc239649f0543071195da6d8a", [
      "name-candidate:3c6e20226c788b5c8afc2d32108a97ebc6f67bf5e2ef0eb4f312067a3a5c5db9",
      "name-candidate:96b5df4f818ecbc4359760c3b867ec0cafd4eba47271fa4b329281505220e11b",
      "name-candidate:d38e0ee39c97073e8df985e6a0ca6807daab613318907ebe2ba66c8025293822",
      "name-candidate:ddfcec077088438ccd8052d825a54fc989a12a8cc239649f0543071195da6d8a"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L46297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
