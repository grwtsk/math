# candidateSelectionsChunk0012

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c35b1f32a7add6dd8f1d3ed8acb58012b120751d595ac91fd1728e4efbc94e1",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0012",
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
  "slug": "candidateselectionschunk0012--2af47f9946d66bb024364aeb",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45648,
    "line": 45325,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2af47f9946d66bb024364aeb872635a3bfe80c7707d114a7bdf4ea2f33bede71",
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

Occurrence: `declaration:2c35b1f32a7add6dd8f1d3ed8acb58012b120751d595ac91fd1728e4efbc94e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45325–45648.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0012 : List (String × List String) :=
[
  ("name-candidate:782175d9a93993f1e40203da758ef08aae411f43c9074f768eada87663dc0b36", [
      "name-candidate:23fe07ccc0fdb1b8c86496dd909ec00770483f4cd7157aa7878b5975961b32d4",
      "name-candidate:782175d9a93993f1e40203da758ef08aae411f43c9074f768eada87663dc0b36",
      "name-candidate:f857c723890d7faf77ae1bab81c0a363a3a4cbb4f267bd2eba2c84982745e168"
  ]),
  ("name-candidate:abcddde1decc544b51eacf1a0045a179aa4f5f00776e444fa7ccbf575ff79fea", [
      "name-candidate:227da095d4cbcabd90411173dfd389c34fdf1fef6756d1c780ff5c2996eebb2d",
      "name-candidate:abcddde1decc544b51eacf1a0045a179aa4f5f00776e444fa7ccbf575ff79fea",
      "name-candidate:b4ad67671312f692fc777715b84b3fee711c34e9e099555f14e649602f42400e"
  ]),
  ("name-candidate:223b1a9786b91f34ceb7b60ccec8efa9c71f229373ddd7d8ca59c87cdfa72ee1", [
      "name-candidate:10f3677c29ee1091eacc2fc72d303de78c492f1323abc1f50133fe19dd9a43cf",
      "name-candidate:223b1a9786b91f34ceb7b60ccec8efa9c71f229373ddd7d8ca59c87cdfa72ee1",
      "name-candidate:c1615586e56e3e3fbeb190b0598fa7bf87381b7d13300ee14ac815f9fa44e89c"
  ]),
  ("name-candidate:067b21eb2b1a5b5202635c7bfff471a5a1fc2c0d46778d05a0803e147c480789", [
      "name-candidate:067b21eb2b1a5b5202635c7bfff471a5a1fc2c0d46778d05a0803e147c480789",
      "name-candidate:131c0562423c76f4c605a673998f6fa13cecd08b801b91010fc0f5eea54fc364",
      "name-candidate:349f727df2f7412500dd657f524dc8c6b422cb60fe765f6d72028864195ea23d"
  ]),
  ("name-candidate:657eebeb4b788a6d20e475b3453339931ae332a3856e1ae097d110a66dad39f3", [
      "name-candidate:139f90a62c077925e8f775a3f11d54025448763be63876126c43a1f1b20e2490",
      "name-candidate:657eebeb4b788a6d20e475b3453339931ae332a3856e1ae097d110a66dad39f3",
      "name-candidate:796153e12c2b8d4079e9e446b2804da2752be9ca8db216de3801b8189031026b"
  ]),
  ("name-candidate:8988d31e5f84ef52ba85e3884fcbf60f70862c2fde24fed249fe93c3a9b4b282", [
      "name-candidate:8988d31e5f84ef52ba85e3884fcbf60f70862c2fde24fed249fe93c3a9b4b282",
      "name-candidate:b09b3454608ed68145d4b1d53c412a2bea7b3c578114170bfab2169a2fc26e45",
      "name-candidate:e1f63c7f145735c3256a1d211b04054ca8f31ff9a63c3180755cfef4bdb88b54"
  ]),
  ("name-candidate:386843ae78f60b88f58e40fd526603d28d40b71c17fa0fa0fa1d56ae1aca56e0", [
      "name-candidate:386843ae78f60b88f58e40fd526603d28d40b71c17fa0fa0fa1d56ae1aca56e0",
      "name-candidate:866656912b3b85d4c1f7f11099871482f81daadf0b558cd660b1634faaed9473",
      "name-candidate:de6e1a658517b05828922b10b941df6e567bdca69c098f7d4a2f702b5ff803dd"
  ]),
  ("name-candidate:351ff6cb75f65394af69b977bdfe11e9f0263e9b949ecb830603e0411e9a6f66", [
      "name-candidate:351ff6cb75f65394af69b977bdfe11e9f0263e9b949ecb830603e0411e9a6f66",
      "name-candidate:ba6efabd8c88f5b631386f2184e091715df40f6902f311df986d2e1719c182ef",
      "name-candidate:dc516d729758e933e360810cd34a0f4c36a06d1a7003163ac85b475b95ea794d"
  ]),
  ("name-candidate:1cf8556030db1b56124b477fd10f5ae4fbdb361c0f45e460b6413bfd33bbc806", [
      "name-candidate:1cf8556030db1b56124b477fd10f5ae4fbdb361c0f45e460b6413bfd33bbc806",
      "name-candidate:24910d3c505bcdaa1dc20600d2f79617adc3b0c0c124c5522d6f7716ee6b58a6",
      "name-candidate:b0d73ef851c73067073e24f5578ce392f5c02949b7352441fb1ddd8ee03a387c"
  ]),
  ("name-candidate:887366b502afd89e60526ef1d3c12ed39ffacea147cf21f44b5b246093a022f3", [
      "name-candidate:67e6cc9510db272aac035b4c9ef9cd7b4c0017a64127584d10734726e99d67dd",
      "name-candidate:887366b502afd89e60526ef1d3c12ed39ffacea147cf21f44b5b246093a022f3",
      "name-candidate:bb8247109b3e29f791d0b01261cb63d0f1ff0187efb8948062f1b47df438f065"
  ]),
  ("name-candidate:b50d973fa8894d2533e6d7c9c39deb8115f9e4d73c7ad681e16dfa1c3244d25e", [
      "name-candidate:7f976e120f214287887e41e8be2895bf52d4e0cedd4739f0cf4cb1ddd8713a6f",
      "name-candidate:9240e5b2470689ee28b68246d7f4c409d0a407504add0c382b630b6a9f742e02",
      "name-candidate:b50d973fa8894d2533e6d7c9c39deb8115f9e4d73c7ad681e16dfa1c3244d25e"
  ]),
  ("name-candidate:f937c0e2ef6af4f63eb0ddf35372d85fce9513556df06e7b9709f1ec4c18ece6", [
      "name-candidate:3d989cdb79a4e952d3c23b24c93b5863bfc93fac795d6d8688a951de648f586b",
      "name-candidate:aa445cd68a81e99d1578ee154047e4928ec7245504862a9286bcd91a0a2dd169",
      "name-candidate:f937c0e2ef6af4f63eb0ddf35372d85fce9513556df06e7b9709f1ec4c18ece6"
  ]),
  ("name-candidate:e51a901483327d6db1c0f5ee820db41e1b7942ee3927bff56f3655d05699913c", [
      "name-candidate:aeaa2b7f1033b13a33bf0c4447efc7300cef4f4155535518c3a57ce3f151ca3d",
      "name-candidate:d96c2870879a58af4aca46de396adedc5e49e5c85b0dc954402d691b71a0c5b9",
      "name-candidate:e51a901483327d6db1c0f5ee820db41e1b7942ee3927bff56f3655d05699913c"
  ]),
  ("name-candidate:be49710cf6a71bf3726c6e47ea5003ee108ca0bba2e43fd056cac98b873bc29c", [
      "name-candidate:3c73b752dfd79aa37e75affd2b23478d52048275bfed2c9051849b0e0e574752",
      "name-candidate:b83db4c21f2f70569370783db5f18fab01bed7b5a44a00153fa1c596eeca6d0a",
      "name-candidate:be49710cf6a71bf3726c6e47ea5003ee108ca0bba2e43fd056cac98b873bc29c"
  ]),
  ("name-candidate:2948db2f0f95a238aaa33ef212385c034a1729c3b14e1ff563134a667a2d005d", [
      "name-candidate:0c0b994c86be333e7bd10177bb2d812f1bb08ed41044f1595f5ee05e22a7fec9",
      "name-candidate:2948db2f0f95a238aaa33ef212385c034a1729c3b14e1ff563134a667a2d005d",
      "name-candidate:34b0e0f18577c2e883f497ae61815d51bd71e00eaa27d4df2245a515c03b1605"
  ]),
  ("name-candidate:894cb72366ea1620dbcbd006d91a9b53af0ab3c5f42f8a406b08dbd1f9d1f7f7", [
      "name-candidate:3bedcf18ec0f05ea1e5dce90d381ee1334888d0cb11c57be994fe476d2c8d2e4",
      "name-candidate:894cb72366ea1620dbcbd006d91a9b53af0ab3c5f42f8a406b08dbd1f9d1f7f7",
      "name-candidate:fcd670ff7441f5d71ac75c09c841f28746768ac781e9b9e86d69bea4d4501032"
  ]),
  ("name-candidate:c57226d1f3ffef713747d6484271037e94b428cdcb018e7188215dd3ba667f80", [
      "name-candidate:52f9f36bdf0067bd04cf89ea6c50829604d4c032211d70e6f08019f4921ca51c",
      "name-candidate:a749c783a941f47a15dcc51755f772f29385eb6afad42ed48fa291557448eaf2",
      "name-candidate:c57226d1f3ffef713747d6484271037e94b428cdcb018e7188215dd3ba667f80"
  ]),
  ("name-candidate:59c69602e21ee4004f9c236fc763a327138e2318b561cfaf66d06747896e1c54", [
      "name-candidate:59c69602e21ee4004f9c236fc763a327138e2318b561cfaf66d06747896e1c54",
      "name-candidate:99a9b6a76eaabfb673a064284777ba2662ce26b7c1b91f826f68f48d0a877c43",
      "name-candidate:e8138523cdcae334c8261eb728138231802974da7bb38683e04f19e554a0a114"
  ]),
  ("name-candidate:93abdf553425e5757e87d670865edf99f6cb27aa94e2f563e9fdb2be893d91d5", [
      "name-candidate:148245aac038183252b1fd2a37bd55eea25d73a19a97c40c647114d33d28e87b",
      "name-candidate:93abdf553425e5757e87d670865edf99f6cb27aa94e2f563e9fdb2be893d91d5",
      "name-candidate:d4a31e3e96b616cdb9be73982c89034b9533069bf0287bb3d3b8cdebd47e3928"
  ]),
  ("name-candidate:b27e82961088fcf3f9c46e95a99c35b2b28615e2037aea8fed357839bdc00417", [
      "name-candidate:4100c9ec798bb939333caf2e55576d70a37d453f2b8fd3f931066ec3b0edde89",
      "name-candidate:b27e82961088fcf3f9c46e95a99c35b2b28615e2037aea8fed357839bdc00417",
      "name-candidate:e52961f67bcab508377de49f5f30d2552c5be2ef7a1bd66beaf54e7f82024c97"
  ]),
  ("name-candidate:ada8a398ce32a2317c39f9fd24c2eee471e57e3aa90e61e9fa2c276a62e01736", [
      "name-candidate:04b76f457dee9124d1ebe4402db24ec5e9d68e39d1dcb19cb18c5010cd843c8c",
      "name-candidate:a4917b6f5d99b4ed4550bde4e0a8a987d627f7bc8d62bc2ae57caa24450b04bb",
      "name-candidate:ada8a398ce32a2317c39f9fd24c2eee471e57e3aa90e61e9fa2c276a62e01736"
  ]),
  ("name-candidate:9f66a25cdd69142566cbc1f17bb221bcaab53628d6fae4efc7d0cb8ae768c64e", [
      "name-candidate:0872ba0358608053d59f9a17514532dc33fd4b75334332dc93fb70a5a4afda9a",
      "name-candidate:1d79bafc6fa7657131ffe8dc0fcae165594a65c03b88206e075e84a199bf5f00",
      "name-candidate:9f66a25cdd69142566cbc1f17bb221bcaab53628d6fae4efc7d0cb8ae768c64e"
  ]),
  ("name-candidate:beee2aeb1603989543ce5bea4e0ebefaff781d0be7a50b20f742befa9af513d5", [
      "name-candidate:5345b6f08b5773ea8ee96de46546519a5c34b8926a15da49f6bb0a50e1522e42",
      "name-candidate:5ffd8312662458126dc2b3efaf74bf001371711d9f90ba03faff52e8f61561cc",
      "name-candidate:beee2aeb1603989543ce5bea4e0ebefaff781d0be7a50b20f742befa9af513d5"
  ]),
  ("name-candidate:dfe522c19f8e6e600fb38a4ee70ee8f93c649bb52ec8b7b3057742999b9e13ea", [
      "name-candidate:b9cbea348f373f4ddf6ad6975972cb4aef6adc5a9b6abe834bb96eb16abd64df",
      "name-candidate:dfe522c19f8e6e600fb38a4ee70ee8f93c649bb52ec8b7b3057742999b9e13ea",
      "name-candidate:ee877db5cd8a88b5efafdac52401f6bd02acaedba0a7fd0d82b5b3da16f05baa"
  ]),
  ("name-candidate:66f624a32fa3af2e6c871852c0c145f6f5f269a02a976757907192edc78c0c3f", [
      "name-candidate:05378ce4b6fc1c1734133d58c404833fcb35cf77b34f45e915dac795ac8f1a54",
      "name-candidate:66f624a32fa3af2e6c871852c0c145f6f5f269a02a976757907192edc78c0c3f",
      "name-candidate:fad145bd075cac95c89a754106e1310c4a4687fc473076e1ebc4444e95cfe026"
  ]),
  ("name-candidate:7bc6f6e07e8c2f418ff0ca62d0fa87422740a58b595a307fdc5827fa194a9dfa", [
      "name-candidate:4a83ff5778be13d41c54aaf683f43b15bdd3ec764ff3f457a5ce7755a305a6bc",
      "name-candidate:617c15f627df110fbb5bcc46d54112c22dcc05a9866e909d6b961b78ced047e3",
      "name-candidate:7bc6f6e07e8c2f418ff0ca62d0fa87422740a58b595a307fdc5827fa194a9dfa"
  ]),
  ("name-candidate:c4666dc467bff42f0ead6952a7cd3f6ee878a048c294927aee1becb9cbd3f917", [
      "name-candidate:a25cb02c9ad7366b78d69c0eb306a961e8494356b24849af0bc9d5458adb1026",
      "name-candidate:c4666dc467bff42f0ead6952a7cd3f6ee878a048c294927aee1becb9cbd3f917",
      "name-candidate:ff8dcc5cae6d27803981567ebbfccc11c9b06bca296d13890375d923ccb9342f"
  ]),
  ("name-candidate:e6edcf62156bb7a30d7f49ff59ac97596306fd21fcf7ee019cf4ca7ab2f946ca", [
      "name-candidate:12be7146604b0bbc26bc29e1c5d7249246c10e4d33d1551a8283d49de24b23b1",
      "name-candidate:e6edcf62156bb7a30d7f49ff59ac97596306fd21fcf7ee019cf4ca7ab2f946ca",
      "name-candidate:fc391e77114369351f006c21766289d9c0a35e101740d4fee905d662e23cdced"
  ]),
  ("name-candidate:d34d9e5bbd5005fc2b377e60e0bce3b6ce0d3e0b2456d847c7dfe93254e973e9", [
      "name-candidate:6d626fea2660023468cf93a57d21358ac619a466f2d67bb27359bf4f3015f620",
      "name-candidate:96bac817529c55e2e2fc5b4178e5d9949122449be3e26e9637ca73b491edca01",
      "name-candidate:d34d9e5bbd5005fc2b377e60e0bce3b6ce0d3e0b2456d847c7dfe93254e973e9"
  ]),
  ("name-candidate:1bffb4290f885f4779aa5361b7c81c6dd7897b76caf11f470c85fdcb98271bc8", [
      "name-candidate:1bffb4290f885f4779aa5361b7c81c6dd7897b76caf11f470c85fdcb98271bc8",
      "name-candidate:5becd15560c959d84fc0d55a6fbf64393fd6c35076dc20cbe39e9c6ec078e033",
      "name-candidate:f17c4c93d3bbcf59a536d3dde82637f2d87f58f16ff49adfabce34845457f6a6"
  ]),
  ("name-candidate:b73c2a4dfff7ffe213f2d695be442f944ff2192ba410b18624b021fe033b2ccf", [
      "name-candidate:135e06449b85457d3b0220d4d28d36c218d9848f2944001fcde9ad39e8b10416",
      "name-candidate:b73c2a4dfff7ffe213f2d695be442f944ff2192ba410b18624b021fe033b2ccf",
      "name-candidate:dff3788d80b608df00491eaa85dbd6b72dfec5859ea49ad68f8ad6bcc9f2e3d0"
  ]),
  ("name-candidate:196b161189d2ec65fe202ab8044c963d428b678cfcd2e95cc9e3117ca0331768", [
      "name-candidate:196b161189d2ec65fe202ab8044c963d428b678cfcd2e95cc9e3117ca0331768",
      "name-candidate:69e0d34627fb6bde5b73da78c08d02f27991a488a367a0b56a215c90714326e9",
      "name-candidate:b978eceec8a185f262121047aeb2679b0294f7290862db61c5f7da66cd9de7a1"
  ]),
  ("name-candidate:2107cc65a41aa3be8587b69ff4bfd49b4611a6d9817283db4f8b1c9c4af188b9", [
      "name-candidate:2107cc65a41aa3be8587b69ff4bfd49b4611a6d9817283db4f8b1c9c4af188b9",
      "name-candidate:79000337679a3c8f5a292fd7814158b1947f46c2bf1b3fc002e6ac1ea013fc94",
      "name-candidate:c405e0a373bd5c9b5b16e35358b9cc49e14b80ae155e835dfa0fb9308b7d7584"
  ]),
  ("name-candidate:46caaee7facb1521d21abbe26c306b781c8fc69ec89207d191f8159959925681", [
      "name-candidate:125654635eaa9b6c0476f2361747d0cd0ecf4653872789c546b25bc80f602931",
      "name-candidate:46caaee7facb1521d21abbe26c306b781c8fc69ec89207d191f8159959925681",
      "name-candidate:b0ee047b4fb47ee99f3ee331389d13820d4e9dc311fdd6dc341f6f2f5b0be117"
  ]),
  ("name-candidate:895786bd37dae026a7955746a0c79fe4d42f60394516aef2397539cfbd5546db", [
      "name-candidate:81e68420cf526d8c0c33494ebe1cfc195b032bbf5518882021ecbeb62d79395d",
      "name-candidate:895786bd37dae026a7955746a0c79fe4d42f60394516aef2397539cfbd5546db",
      "name-candidate:9739a2fe2654b99e1f62f8cec34e0aedbeb52e3011b065b2fbf7ad0ab6070c10"
  ]),
  ("name-candidate:f7c47f296ef2747e39c1e6440386a7ccc54d29fc63456740aaf69613ff069669", [
      "name-candidate:52f9583088727bba98006d5258e21896281581e9e4f992885a3a9083f199f175",
      "name-candidate:750bad0a15960a1b92f9bbc2176dcfaa8e15fe6277e4b83f207ba67d5748ec9d",
      "name-candidate:f7c47f296ef2747e39c1e6440386a7ccc54d29fc63456740aaf69613ff069669"
  ]),
  ("name-candidate:a84704a2bc645b93a21d2d7997932b4af659c7bd281a2785f056f5f060a95732", [
      "name-candidate:6ff123ec51ff56b7a6ce3d72145a755bcdda2070f65ef9b8c52a31cb1c108bc4",
      "name-candidate:a84704a2bc645b93a21d2d7997932b4af659c7bd281a2785f056f5f060a95732",
      "name-candidate:d874ffbff06dbce79f6d709ea5f351417c7d548c453e9d8fa0511d54d204f1a6"
  ]),
  ("name-candidate:937d95fa1a163973ff6d12634b3a556fe81e2b6d5bb64d65826ff2d13ad5e8c7", [
      "name-candidate:2583d2b932b798ef8df44e2d72899815bb8278572abb9107bf1f027cbb1fe4d6",
      "name-candidate:937d95fa1a163973ff6d12634b3a556fe81e2b6d5bb64d65826ff2d13ad5e8c7",
      "name-candidate:abdbe88be6bc907b51b2ba3e12ff76acadef75d9a8e44d0aa1e851e9d5aa0aa0"
  ]),
  ("name-candidate:5a3d91cea0e406e27ab45d90c1579a53626768d2d23d1bc1c2a34a81288b67e6", [
      "name-candidate:179def4ed7ce489db25265afe887c80a6f8054c3ef3d9572e2eeeb2ccf00d21f",
      "name-candidate:5a3d91cea0e406e27ab45d90c1579a53626768d2d23d1bc1c2a34a81288b67e6",
      "name-candidate:918f64165e95a35ca097779c7ee7cbe93200e96d45b3508772dad796fe865642"
  ]),
  ("name-candidate:a5b544f0984404f9f1587dbc37ba37c21c400da6aaf05ee6fdf684d527f8bc0c", [
      "name-candidate:34012120d52bad7a12adaad882fdc6fdbdca572018f51031fe120c3dbb5e2b91",
      "name-candidate:a5b544f0984404f9f1587dbc37ba37c21c400da6aaf05ee6fdf684d527f8bc0c",
      "name-candidate:dbbeb42c87c30b4ec9e9f8ff67a050b234a4895e4e4cf21710038eeb1600773b"
  ]),
  ("name-candidate:d6de796283845a0e433b97fdaa032ed2e8ed1844a834d4f5edf958ec5ff06a0b", [
      "name-candidate:29cc26126b6e1cda5ea9aac59090b957b02636b8d8f8899011b14b5c9bbeb9f0",
      "name-candidate:d6de796283845a0e433b97fdaa032ed2e8ed1844a834d4f5edf958ec5ff06a0b",
      "name-candidate:dc7d6f961f4672b2f452dd0818ede2d651a267791259036aecc158cbeced376d"
  ]),
  ("name-candidate:8a2d87ec84b7f2fbc4ffd42ea4862a54d264930f5f074c5530912f0309ceea0e", [
      "name-candidate:212571c70f075400aa6655b1f21e0bab7c2f1358f683dbf47e0c012ef39fdb31",
      "name-candidate:8a2d87ec84b7f2fbc4ffd42ea4862a54d264930f5f074c5530912f0309ceea0e",
      "name-candidate:abbaa800f37e4b6587bebcff94696323ee0f44ba9bac791220fc4fc5b64073a0"
  ]),
  ("name-candidate:101ebc9e4dbca04de49f8535ad29e2e0a18cff4e611e7d66ca7f79b121582ce9", [
      "name-candidate:101ebc9e4dbca04de49f8535ad29e2e0a18cff4e611e7d66ca7f79b121582ce9",
      "name-candidate:159db379f4df6fe91b3bcd31f113b1469c5a4fbe23aa057ac75f58d6d2179107",
      "name-candidate:c55c41e3e52eec8c3c7cefa668d30a76f451d1a67e04a5d7a34420e673c19113"
  ]),
  ("name-candidate:eaa816b21eadf1b32e6332979bc2f98ffe95a8fda7ccf97623b23c665f40615b", [
      "name-candidate:0d8f852c88482780853a4376f46462905ddc3855f7495d0ec8b1711ced37b96a",
      "name-candidate:147ef3b1fa35dab74689f34eef861ece200a9f1f556846270321dd7a4357f075",
      "name-candidate:eaa816b21eadf1b32e6332979bc2f98ffe95a8fda7ccf97623b23c665f40615b"
  ]),
  ("name-candidate:f9101d36679855669d14dcfc242d9b1f8ae18edcd739626b07a25cd3b4bd9a3d", [
      "name-candidate:416698d240c047c6648f709c16ad2d623b6ff3e40ebca7881f17dfcbe0803d38",
      "name-candidate:d348bba9ee99de5a9394d5c042a7f0a834cda3fa74b0799d0b8b17241ac01085",
      "name-candidate:f9101d36679855669d14dcfc242d9b1f8ae18edcd739626b07a25cd3b4bd9a3d"
  ]),
  ("name-candidate:c83247651eea2b62307f0813e40dc5ff2dc70cdc7e6d7cb38813025678205221", [
      "name-candidate:213dbbe653dd73b19dd2301025e3c2bc5c30a4933e6f02bac4fa4fd471993ea6",
      "name-candidate:531633efc7fd5f3b2f7fff62708e3be4a8f7cd0c8ae2a93aa5b179adfb5cc177",
      "name-candidate:c83247651eea2b62307f0813e40dc5ff2dc70cdc7e6d7cb38813025678205221"
  ]),
  ("name-candidate:1fa4c39cc78e64e041e678e2e17da22342a079d6994a9772cd74dcc13b6f5b1b", [
      "name-candidate:1fa4c39cc78e64e041e678e2e17da22342a079d6994a9772cd74dcc13b6f5b1b",
      "name-candidate:5851d78622c9c04cb9b41d41b0ca683d5ee22b40f68834245c309697c72e76d3",
      "name-candidate:60ffa2285c49d9c595b88303a024593a0dca5de420c39abc1cc2b2e2e6c604b0"
  ]),
  ("name-candidate:a3d3560c64411246c7baefa650689c251b558d6ae2066cd7bd696991c586340e", [
      "name-candidate:22bbf1bc964548ae27ac105411d9a76778db40c8103de8fa2d9dd400d3d410dd",
      "name-candidate:a3d3560c64411246c7baefa650689c251b558d6ae2066cd7bd696991c586340e",
      "name-candidate:d364329976930a7afee256e6bf9479ef49ff485ac1a5860f50470a6e8e8fdd19"
  ]),
  ("name-candidate:5457bd8b2a4344f7064f2029e31f6eeb03f53fe02df7f5c5f303099229e95ba3", [
      "name-candidate:5457bd8b2a4344f7064f2029e31f6eeb03f53fe02df7f5c5f303099229e95ba3",
      "name-candidate:b8958b9f1fb799515af57a4013b39318fbb521e499f739675c9e7497268d8fe3",
      "name-candidate:f0368d0638d7fa048998c477f2cf1e1e4837340b678a47e8444560411502ea5f"
  ]),
  ("name-candidate:406543cc4d576a6fe6c776ded96ef31ba0635447ba56de42e5c1798bfc2f32ee", [
      "name-candidate:3ed68301dc7f30a874b8783ace898f812ef826766ab514152b6c01948804d8ff",
      "name-candidate:406543cc4d576a6fe6c776ded96ef31ba0635447ba56de42e5c1798bfc2f32ee",
      "name-candidate:a8c46919a048d3c9a8952e04555cec4e4a7b4cae3b867cc9fc99f67db25fedb9"
  ]),
  ("name-candidate:a44cc4684549fb82178b8f46e534d624c8805e8066b98dfcf932536e9fd31c5c", [
      "name-candidate:56b8b26389e7b9e21e08eea62cc49cd0a34aecb464180d2ac6f2e4962273a3a9",
      "name-candidate:98001bfd685e0e589b9a638a27dce908ea4ae6b3ed09997c5ec92ec148c8d760",
      "name-candidate:a44cc4684549fb82178b8f46e534d624c8805e8066b98dfcf932536e9fd31c5c"
  ]),
  ("name-candidate:afeeb8b052c51c8dfb946456e85d849c31406b6e48db93fd2f907f50701c586c", [
      "name-candidate:16970338aa6c0e7b7d4bd8e38d0b7ad058d73792961ddf5513ca339c66512476",
      "name-candidate:1b18db3d140a181a76da3eda85c5afdbe042e2d6192a9bb198fc1d47f63b85ea",
      "name-candidate:afeeb8b052c51c8dfb946456e85d849c31406b6e48db93fd2f907f50701c586c"
  ]),
  ("name-candidate:5e2394b6427d622ccb6cd400f47e1c57fd2ed46507e77e87ff3353b29c5e5b1f", [
      "name-candidate:4f5d9c5c6081dd0e4a8c3813c15639175a57c3d07ab296ab7bc305b329d95f6d",
      "name-candidate:59a62118c5a3cd6a119c04da85a2fbd4ba9426de23a9a0f5d12bd75b99dc12f6",
      "name-candidate:5e2394b6427d622ccb6cd400f47e1c57fd2ed46507e77e87ff3353b29c5e5b1f"
  ]),
  ("name-candidate:c669595b35324a49c63bfce24c4fcc78640beb666aaf73263d910530106c3dfd", [
      "name-candidate:4584147254af5a68621db109455befb2692c18468904f7cb5272569c2abd5eb4",
      "name-candidate:c669595b35324a49c63bfce24c4fcc78640beb666aaf73263d910530106c3dfd",
      "name-candidate:c9e572638300c5c9ca71607ff60c8de949e54606e78fafad2080b51f5402a151"
  ]),
  ("name-candidate:ebe2ea1eabf70c4d391e9e1638b78c54cf34310827303b47399af96d58ae7c94", [
      "name-candidate:96977303076ffc05d32acba5d7b2e99856b2b7beca6908f8983da8d4848f2c3a",
      "name-candidate:ebe2ea1eabf70c4d391e9e1638b78c54cf34310827303b47399af96d58ae7c94",
      "name-candidate:fc7a5a72bdf26d6b351d7f714392b3831b9f2e906a9e88c87aea73da3bc2a1f1"
  ]),
  ("name-candidate:63ddc3a3e9878142d4b885952621e377a702cb77fd88118857be0722e05837c7", [
      "name-candidate:49b5dd41f41739fa8691bc540bca49b7f04476cf250806ef590d6416a7850611",
      "name-candidate:63ddc3a3e9878142d4b885952621e377a702cb77fd88118857be0722e05837c7",
      "name-candidate:683616f7ddf7e0507e532ce0aa26e1ea2084f397b9fda055803653211e2d117c"
  ]),
  ("name-candidate:ee87ed93b1a4c81d2df5037ea1ea156e160b214cf7eab92548ffba9eb32d1777", [
      "name-candidate:0a480cc6ee75c538ec958e13cefb8599ef9308dc9bfa16ac25d622accf4140d7",
      "name-candidate:86d2702d0375864be954734806e758dd00a6d2124f674f52bae2913dd56b3bea",
      "name-candidate:ee87ed93b1a4c81d2df5037ea1ea156e160b214cf7eab92548ffba9eb32d1777"
  ]),
  ("name-candidate:9ffa5b95051b93add0f40bb202b4ed77eb05a5b834c141e63a9965294f28d0c9", [
      "name-candidate:10ad7684647c41ba111511f92425e0c72db6b80dc0eb9b27aa458e82002c0dd0",
      "name-candidate:9ffa5b95051b93add0f40bb202b4ed77eb05a5b834c141e63a9965294f28d0c9",
      "name-candidate:dc2c64c8ae69919faf5e6ee786f073491047ef345632b2e77fd875f94093a911"
  ]),
  ("name-candidate:3d63716b6b495e0604f84c67f6727bcbc89d72e857690ca2c1b176ceb45a42f5", [
      "name-candidate:3d63716b6b495e0604f84c67f6727bcbc89d72e857690ca2c1b176ceb45a42f5",
      "name-candidate:a3297824b145123ebea256e87f05afe0d34e166914ea73696bce68e8f07fa58a",
      "name-candidate:ead4411735cf1ecb253a5a3f9012c73a24a5cb5c1f10b35f2a4690bdbc63b0a1"
  ]),
  ("name-candidate:d2e40cde58eff7e9fdf3eaa57af545844ab50cbda2d2f4b34615eed71e6d40d4", [
      "name-candidate:46f44192e4e6760ec9dd9df1ae07d4ca3a687f2e42111769b6470ca0f0e5b829",
      "name-candidate:75f863f2ae7d0fa7f44da9ca7cd43caf8bd6a3b9a5cb2e8f255a221833660948",
      "name-candidate:d2e40cde58eff7e9fdf3eaa57af545844ab50cbda2d2f4b34615eed71e6d40d4"
  ]),
  ("name-candidate:d9f251bbc01e49df49e59c6528c3f167fe942082edb00ce93c2744df7cd8e237", [
      "name-candidate:a2b14d2717cc34bfe2e18d156798059228bed1fcb9bf7359c5a0f0dee8f648b0",
      "name-candidate:c36893354bada75c092026a152c50686cc827cd981a8f54807afc4969f193248",
      "name-candidate:d9f251bbc01e49df49e59c6528c3f167fe942082edb00ce93c2744df7cd8e237"
  ]),
  ("name-candidate:66e35dba3d145d44807eafffe9fb397d5c1aaa6e3d22e93161aca6d0a12d5009", [
      "name-candidate:03053e775cf698bf3c3a94cdf7facad54d6c997c737cba4b1957a03fd8bea2a6",
      "name-candidate:66e35dba3d145d44807eafffe9fb397d5c1aaa6e3d22e93161aca6d0a12d5009",
      "name-candidate:863f329a9e39590e0db5f8a781b378ad4977af693994c5ba7233416118c4efb5"
  ]),
  ("name-candidate:6aff3b1cd43dd5470e3d4b366633e7786707e548736dcd1fe19076f78c3553e6", [
      "name-candidate:5c454fc95c9ce03eb765eaa60d46e53883332cf5b0bc8f016a311247c1f3ec5b",
      "name-candidate:5c67c053efe6a18108a08e70f697ce9cf3a2ad3fb8ef0eb93ae21c4167b45756",
      "name-candidate:6aff3b1cd43dd5470e3d4b366633e7786707e548736dcd1fe19076f78c3553e6"
  ]),
  ("name-candidate:bad85a11b4e189d3f844b96ff62f01064d8c3ca50142d62d2ac7beee0bd7cb4f", [
      "name-candidate:0e9c1f0fdff3d0100954ca3982fa9b7daab7f9e6fa5f77a814e7992dd4760eef",
      "name-candidate:95816b0ed4d84e549c55da5592771e0c5dc99719d57013462c6bc3ab1bd30beb",
      "name-candidate:bad85a11b4e189d3f844b96ff62f01064d8c3ca50142d62d2ac7beee0bd7cb4f"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L45325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
