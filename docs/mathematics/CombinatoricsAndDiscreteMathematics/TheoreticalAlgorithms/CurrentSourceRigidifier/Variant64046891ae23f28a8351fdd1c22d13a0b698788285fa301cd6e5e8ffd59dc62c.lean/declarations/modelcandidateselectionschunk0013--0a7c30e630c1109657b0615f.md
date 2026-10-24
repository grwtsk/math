# modelCandidateSelectionsChunk0013

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:938012f5e2514b05c4aebf4b9d8532c4e2f02ebdf3fe9607a73e0330394d4ae2",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0013",
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
  "slug": "modelcandidateselectionschunk0013--0a7c30e630c1109657b0615f",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59048,
    "line": 58725,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a7c30e630c1109657b0615ff2d09a4594e43a558c81fbb585c6ce0c3441f8e3",
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

Occurrence: `declaration:938012f5e2514b05c4aebf4b9d8532c4e2f02ebdf3fe9607a73e0330394d4ae2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58725–59048.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0013 : List (String × List String) :=
[
  ("name-candidate:e5d8a3dee5ec095ca0dc6db8a0d03fd554f66119090d538da5cc119c5c202545", [
      "name-candidate:5637afb356a1a284d39bc71c0efc87a00835e67b92570287c3a1a96ee8d3a4eb",
      "name-candidate:e5d8a3dee5ec095ca0dc6db8a0d03fd554f66119090d538da5cc119c5c202545",
      "name-candidate:f91f523f5416d5f5ec1486019497865d4f7e877001abd953affa4e257bd917d5"
  ]),
  ("name-candidate:96bac817529c55e2e2fc5b4178e5d9949122449be3e26e9637ca73b491edca01", [
      "name-candidate:6d626fea2660023468cf93a57d21358ac619a466f2d67bb27359bf4f3015f620",
      "name-candidate:96bac817529c55e2e2fc5b4178e5d9949122449be3e26e9637ca73b491edca01",
      "name-candidate:d34d9e5bbd5005fc2b377e60e0bce3b6ce0d3e0b2456d847c7dfe93254e973e9"
  ]),
  ("name-candidate:f17c4c93d3bbcf59a536d3dde82637f2d87f58f16ff49adfabce34845457f6a6", [
      "name-candidate:1bffb4290f885f4779aa5361b7c81c6dd7897b76caf11f470c85fdcb98271bc8",
      "name-candidate:5becd15560c959d84fc0d55a6fbf64393fd6c35076dc20cbe39e9c6ec078e033",
      "name-candidate:f17c4c93d3bbcf59a536d3dde82637f2d87f58f16ff49adfabce34845457f6a6"
  ]),
  ("name-candidate:135e06449b85457d3b0220d4d28d36c218d9848f2944001fcde9ad39e8b10416", [
      "name-candidate:135e06449b85457d3b0220d4d28d36c218d9848f2944001fcde9ad39e8b10416",
      "name-candidate:b73c2a4dfff7ffe213f2d695be442f944ff2192ba410b18624b021fe033b2ccf",
      "name-candidate:dff3788d80b608df00491eaa85dbd6b72dfec5859ea49ad68f8ad6bcc9f2e3d0"
  ]),
  ("name-candidate:196b161189d2ec65fe202ab8044c963d428b678cfcd2e95cc9e3117ca0331768", [
      "name-candidate:196b161189d2ec65fe202ab8044c963d428b678cfcd2e95cc9e3117ca0331768",
      "name-candidate:69e0d34627fb6bde5b73da78c08d02f27991a488a367a0b56a215c90714326e9",
      "name-candidate:b978eceec8a185f262121047aeb2679b0294f7290862db61c5f7da66cd9de7a1"
  ]),
  ("name-candidate:546ea5904ba0f8b3ddc97ce5faed758d29b5fa68c9b77b41e7f376a8e529bc04", [
      "name-candidate:4883cfb7d0302eb5b8cb95a6ed6b1fffa1a43a62a5c52592dd37179b6d58a43b",
      "name-candidate:546ea5904ba0f8b3ddc97ce5faed758d29b5fa68c9b77b41e7f376a8e529bc04",
      "name-candidate:98ed3f90adbc60a8b45575dc23753b2aa212083fcb13be5dd453f7ed364cf45e"
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
  ("name-candidate:9739a2fe2654b99e1f62f8cec34e0aedbeb52e3011b065b2fbf7ad0ab6070c10", [
      "name-candidate:81e68420cf526d8c0c33494ebe1cfc195b032bbf5518882021ecbeb62d79395d",
      "name-candidate:895786bd37dae026a7955746a0c79fe4d42f60394516aef2397539cfbd5546db",
      "name-candidate:9739a2fe2654b99e1f62f8cec34e0aedbeb52e3011b065b2fbf7ad0ab6070c10"
  ]),
  ("name-candidate:f7c47f296ef2747e39c1e6440386a7ccc54d29fc63456740aaf69613ff069669", [
      "name-candidate:52f9583088727bba98006d5258e21896281581e9e4f992885a3a9083f199f175",
      "name-candidate:750bad0a15960a1b92f9bbc2176dcfaa8e15fe6277e4b83f207ba67d5748ec9d",
      "name-candidate:f7c47f296ef2747e39c1e6440386a7ccc54d29fc63456740aaf69613ff069669"
  ]),
  ("name-candidate:d874ffbff06dbce79f6d709ea5f351417c7d548c453e9d8fa0511d54d204f1a6", [
      "name-candidate:6ff123ec51ff56b7a6ce3d72145a755bcdda2070f65ef9b8c52a31cb1c108bc4",
      "name-candidate:a84704a2bc645b93a21d2d7997932b4af659c7bd281a2785f056f5f060a95732",
      "name-candidate:d874ffbff06dbce79f6d709ea5f351417c7d548c453e9d8fa0511d54d204f1a6"
  ]),
  ("name-candidate:937d95fa1a163973ff6d12634b3a556fe81e2b6d5bb64d65826ff2d13ad5e8c7", [
      "name-candidate:2583d2b932b798ef8df44e2d72899815bb8278572abb9107bf1f027cbb1fe4d6",
      "name-candidate:937d95fa1a163973ff6d12634b3a556fe81e2b6d5bb64d65826ff2d13ad5e8c7",
      "name-candidate:abdbe88be6bc907b51b2ba3e12ff76acadef75d9a8e44d0aa1e851e9d5aa0aa0"
  ]),
  ("name-candidate:918f64165e95a35ca097779c7ee7cbe93200e96d45b3508772dad796fe865642", [
      "name-candidate:179def4ed7ce489db25265afe887c80a6f8054c3ef3d9572e2eeeb2ccf00d21f",
      "name-candidate:5a3d91cea0e406e27ab45d90c1579a53626768d2d23d1bc1c2a34a81288b67e6",
      "name-candidate:918f64165e95a35ca097779c7ee7cbe93200e96d45b3508772dad796fe865642"
  ]),
  ("name-candidate:a5b544f0984404f9f1587dbc37ba37c21c400da6aaf05ee6fdf684d527f8bc0c", [
      "name-candidate:34012120d52bad7a12adaad882fdc6fdbdca572018f51031fe120c3dbb5e2b91",
      "name-candidate:a5b544f0984404f9f1587dbc37ba37c21c400da6aaf05ee6fdf684d527f8bc0c",
      "name-candidate:dbbeb42c87c30b4ec9e9f8ff67a050b234a4895e4e4cf21710038eeb1600773b"
  ]),
  ("name-candidate:29cc26126b6e1cda5ea9aac59090b957b02636b8d8f8899011b14b5c9bbeb9f0", [
      "name-candidate:29cc26126b6e1cda5ea9aac59090b957b02636b8d8f8899011b14b5c9bbeb9f0",
      "name-candidate:d6de796283845a0e433b97fdaa032ed2e8ed1844a834d4f5edf958ec5ff06a0b",
      "name-candidate:dc7d6f961f4672b2f452dd0818ede2d651a267791259036aecc158cbeced376d"
  ]),
  ("name-candidate:212571c70f075400aa6655b1f21e0bab7c2f1358f683dbf47e0c012ef39fdb31", [
      "name-candidate:212571c70f075400aa6655b1f21e0bab7c2f1358f683dbf47e0c012ef39fdb31",
      "name-candidate:8a2d87ec84b7f2fbc4ffd42ea4862a54d264930f5f074c5530912f0309ceea0e",
      "name-candidate:abbaa800f37e4b6587bebcff94696323ee0f44ba9bac791220fc4fc5b64073a0"
  ]),
  ("name-candidate:101ebc9e4dbca04de49f8535ad29e2e0a18cff4e611e7d66ca7f79b121582ce9", [
      "name-candidate:101ebc9e4dbca04de49f8535ad29e2e0a18cff4e611e7d66ca7f79b121582ce9",
      "name-candidate:159db379f4df6fe91b3bcd31f113b1469c5a4fbe23aa057ac75f58d6d2179107",
      "name-candidate:c55c41e3e52eec8c3c7cefa668d30a76f451d1a67e04a5d7a34420e673c19113"
  ]),
  ("name-candidate:0d8f852c88482780853a4376f46462905ddc3855f7495d0ec8b1711ced37b96a", [
      "name-candidate:0d8f852c88482780853a4376f46462905ddc3855f7495d0ec8b1711ced37b96a",
      "name-candidate:147ef3b1fa35dab74689f34eef861ece200a9f1f556846270321dd7a4357f075",
      "name-candidate:eaa816b21eadf1b32e6332979bc2f98ffe95a8fda7ccf97623b23c665f40615b"
  ]),
  ("name-candidate:416698d240c047c6648f709c16ad2d623b6ff3e40ebca7881f17dfcbe0803d38", [
      "name-candidate:416698d240c047c6648f709c16ad2d623b6ff3e40ebca7881f17dfcbe0803d38",
      "name-candidate:d348bba9ee99de5a9394d5c042a7f0a834cda3fa74b0799d0b8b17241ac01085",
      "name-candidate:f9101d36679855669d14dcfc242d9b1f8ae18edcd739626b07a25cd3b4bd9a3d"
  ]),
  ("name-candidate:213dbbe653dd73b19dd2301025e3c2bc5c30a4933e6f02bac4fa4fd471993ea6", [
      "name-candidate:213dbbe653dd73b19dd2301025e3c2bc5c30a4933e6f02bac4fa4fd471993ea6",
      "name-candidate:531633efc7fd5f3b2f7fff62708e3be4a8f7cd0c8ae2a93aa5b179adfb5cc177",
      "name-candidate:c83247651eea2b62307f0813e40dc5ff2dc70cdc7e6d7cb38813025678205221"
  ]),
  ("name-candidate:60ffa2285c49d9c595b88303a024593a0dca5de420c39abc1cc2b2e2e6c604b0", [
      "name-candidate:1fa4c39cc78e64e041e678e2e17da22342a079d6994a9772cd74dcc13b6f5b1b",
      "name-candidate:5851d78622c9c04cb9b41d41b0ca683d5ee22b40f68834245c309697c72e76d3",
      "name-candidate:60ffa2285c49d9c595b88303a024593a0dca5de420c39abc1cc2b2e2e6c604b0"
  ]),
  ("name-candidate:a3d3560c64411246c7baefa650689c251b558d6ae2066cd7bd696991c586340e", [
      "name-candidate:22bbf1bc964548ae27ac105411d9a76778db40c8103de8fa2d9dd400d3d410dd",
      "name-candidate:a3d3560c64411246c7baefa650689c251b558d6ae2066cd7bd696991c586340e",
      "name-candidate:d364329976930a7afee256e6bf9479ef49ff485ac1a5860f50470a6e8e8fdd19"
  ]),
  ("name-candidate:0f60e0954b96583b696399d3c422fff58bcbe7d308717e1de72e43e5291835d0", [
      "name-candidate:0f60e0954b96583b696399d3c422fff58bcbe7d308717e1de72e43e5291835d0",
      "name-candidate:770a69426e428598e87ea1de224218ffc84db4f5921fbe7480ac9d0d325603f3",
      "name-candidate:7ac43b55928b38d70ec2419382a271dcde4d940935fabf8b872b23c532397cc2"
  ]),
  ("name-candidate:5457bd8b2a4344f7064f2029e31f6eeb03f53fe02df7f5c5f303099229e95ba3", [
      "name-candidate:5457bd8b2a4344f7064f2029e31f6eeb03f53fe02df7f5c5f303099229e95ba3",
      "name-candidate:b8958b9f1fb799515af57a4013b39318fbb521e499f739675c9e7497268d8fe3",
      "name-candidate:f0368d0638d7fa048998c477f2cf1e1e4837340b678a47e8444560411502ea5f"
  ]),
  ("name-candidate:a8c46919a048d3c9a8952e04555cec4e4a7b4cae3b867cc9fc99f67db25fedb9", [
      "name-candidate:3ed68301dc7f30a874b8783ace898f812ef826766ab514152b6c01948804d8ff",
      "name-candidate:406543cc4d576a6fe6c776ded96ef31ba0635447ba56de42e5c1798bfc2f32ee",
      "name-candidate:a8c46919a048d3c9a8952e04555cec4e4a7b4cae3b867cc9fc99f67db25fedb9"
  ]),
  ("name-candidate:56b8b26389e7b9e21e08eea62cc49cd0a34aecb464180d2ac6f2e4962273a3a9", [
      "name-candidate:56b8b26389e7b9e21e08eea62cc49cd0a34aecb464180d2ac6f2e4962273a3a9",
      "name-candidate:98001bfd685e0e589b9a638a27dce908ea4ae6b3ed09997c5ec92ec148c8d760",
      "name-candidate:a44cc4684549fb82178b8f46e534d624c8805e8066b98dfcf932536e9fd31c5c"
  ]),
  ("name-candidate:afeeb8b052c51c8dfb946456e85d849c31406b6e48db93fd2f907f50701c586c", [
      "name-candidate:16970338aa6c0e7b7d4bd8e38d0b7ad058d73792961ddf5513ca339c66512476",
      "name-candidate:1b18db3d140a181a76da3eda85c5afdbe042e2d6192a9bb198fc1d47f63b85ea",
      "name-candidate:afeeb8b052c51c8dfb946456e85d849c31406b6e48db93fd2f907f50701c586c"
  ]),
  ("name-candidate:59a62118c5a3cd6a119c04da85a2fbd4ba9426de23a9a0f5d12bd75b99dc12f6", [
      "name-candidate:4f5d9c5c6081dd0e4a8c3813c15639175a57c3d07ab296ab7bc305b329d95f6d",
      "name-candidate:59a62118c5a3cd6a119c04da85a2fbd4ba9426de23a9a0f5d12bd75b99dc12f6",
      "name-candidate:5e2394b6427d622ccb6cd400f47e1c57fd2ed46507e77e87ff3353b29c5e5b1f"
  ]),
  ("name-candidate:c669595b35324a49c63bfce24c4fcc78640beb666aaf73263d910530106c3dfd", [
      "name-candidate:4584147254af5a68621db109455befb2692c18468904f7cb5272569c2abd5eb4",
      "name-candidate:c669595b35324a49c63bfce24c4fcc78640beb666aaf73263d910530106c3dfd",
      "name-candidate:c9e572638300c5c9ca71607ff60c8de949e54606e78fafad2080b51f5402a151"
  ]),
  ("name-candidate:fc7a5a72bdf26d6b351d7f714392b3831b9f2e906a9e88c87aea73da3bc2a1f1", [
      "name-candidate:96977303076ffc05d32acba5d7b2e99856b2b7beca6908f8983da8d4848f2c3a",
      "name-candidate:ebe2ea1eabf70c4d391e9e1638b78c54cf34310827303b47399af96d58ae7c94",
      "name-candidate:fc7a5a72bdf26d6b351d7f714392b3831b9f2e906a9e88c87aea73da3bc2a1f1"
  ]),
  ("name-candidate:63ddc3a3e9878142d4b885952621e377a702cb77fd88118857be0722e05837c7", [
      "name-candidate:49b5dd41f41739fa8691bc540bca49b7f04476cf250806ef590d6416a7850611",
      "name-candidate:63ddc3a3e9878142d4b885952621e377a702cb77fd88118857be0722e05837c7",
      "name-candidate:683616f7ddf7e0507e532ce0aa26e1ea2084f397b9fda055803653211e2d117c"
  ]),
  ("name-candidate:0a480cc6ee75c538ec958e13cefb8599ef9308dc9bfa16ac25d622accf4140d7", [
      "name-candidate:0a480cc6ee75c538ec958e13cefb8599ef9308dc9bfa16ac25d622accf4140d7",
      "name-candidate:86d2702d0375864be954734806e758dd00a6d2124f674f52bae2913dd56b3bea",
      "name-candidate:ee87ed93b1a4c81d2df5037ea1ea156e160b214cf7eab92548ffba9eb32d1777"
  ]),
  ("name-candidate:dc2c64c8ae69919faf5e6ee786f073491047ef345632b2e77fd875f94093a911", [
      "name-candidate:10ad7684647c41ba111511f92425e0c72db6b80dc0eb9b27aa458e82002c0dd0",
      "name-candidate:9ffa5b95051b93add0f40bb202b4ed77eb05a5b834c141e63a9965294f28d0c9",
      "name-candidate:dc2c64c8ae69919faf5e6ee786f073491047ef345632b2e77fd875f94093a911"
  ]),
  ("name-candidate:ead4411735cf1ecb253a5a3f9012c73a24a5cb5c1f10b35f2a4690bdbc63b0a1", [
      "name-candidate:3d63716b6b495e0604f84c67f6727bcbc89d72e857690ca2c1b176ceb45a42f5",
      "name-candidate:a3297824b145123ebea256e87f05afe0d34e166914ea73696bce68e8f07fa58a",
      "name-candidate:ead4411735cf1ecb253a5a3f9012c73a24a5cb5c1f10b35f2a4690bdbc63b0a1"
  ]),
  ("name-candidate:d9f251bbc01e49df49e59c6528c3f167fe942082edb00ce93c2744df7cd8e237", [
      "name-candidate:a2b14d2717cc34bfe2e18d156798059228bed1fcb9bf7359c5a0f0dee8f648b0",
      "name-candidate:c36893354bada75c092026a152c50686cc827cd981a8f54807afc4969f193248",
      "name-candidate:d9f251bbc01e49df49e59c6528c3f167fe942082edb00ce93c2744df7cd8e237"
  ]),
  ("name-candidate:03053e775cf698bf3c3a94cdf7facad54d6c997c737cba4b1957a03fd8bea2a6", [
      "name-candidate:03053e775cf698bf3c3a94cdf7facad54d6c997c737cba4b1957a03fd8bea2a6",
      "name-candidate:66e35dba3d145d44807eafffe9fb397d5c1aaa6e3d22e93161aca6d0a12d5009",
      "name-candidate:863f329a9e39590e0db5f8a781b378ad4977af693994c5ba7233416118c4efb5"
  ]),
  ("name-candidate:3525eb86698681e084b54555dc3fd2d7cab98128a41ae3760d040f367a07af41", [
      "name-candidate:3525eb86698681e084b54555dc3fd2d7cab98128a41ae3760d040f367a07af41",
      "name-candidate:73c5fc965fe3302f1c28630104f5d1adfb7c04fa949ad1d8628117a3712809ce",
      "name-candidate:d2fee930cbb5f9e841d9b116fc01f7848f7fc0c106d3a22d1b155cf16cceec63"
  ]),
  ("name-candidate:5c454fc95c9ce03eb765eaa60d46e53883332cf5b0bc8f016a311247c1f3ec5b", [
      "name-candidate:5c454fc95c9ce03eb765eaa60d46e53883332cf5b0bc8f016a311247c1f3ec5b",
      "name-candidate:5c67c053efe6a18108a08e70f697ce9cf3a2ad3fb8ef0eb93ae21c4167b45756",
      "name-candidate:6aff3b1cd43dd5470e3d4b366633e7786707e548736dcd1fe19076f78c3553e6"
  ]),
  ("name-candidate:bad85a11b4e189d3f844b96ff62f01064d8c3ca50142d62d2ac7beee0bd7cb4f", [
      "name-candidate:0e9c1f0fdff3d0100954ca3982fa9b7daab7f9e6fa5f77a814e7992dd4760eef",
      "name-candidate:95816b0ed4d84e549c55da5592771e0c5dc99719d57013462c6bc3ab1bd30beb",
      "name-candidate:bad85a11b4e189d3f844b96ff62f01064d8c3ca50142d62d2ac7beee0bd7cb4f"
  ]),
  ("name-candidate:57312dd67d181ff2cd2ddb7b6758cdeb4d061204329021cc8c75a9f92720656e", [
      "name-candidate:13d68be482923863d4eed5f564fc22edb143ca2c1660e2a486aca564e8aa0003",
      "name-candidate:57312dd67d181ff2cd2ddb7b6758cdeb4d061204329021cc8c75a9f92720656e",
      "name-candidate:9f5c98cb140f0f125283202c8055929a4768963cb20131f9c64419717668738d"
  ]),
  ("name-candidate:8029251f60874b0b03eaa5d174174cb535520656f0619cdb77aa8e051bc7b988", [
      "name-candidate:8029251f60874b0b03eaa5d174174cb535520656f0619cdb77aa8e051bc7b988",
      "name-candidate:ada31d6d42c9b3dbe78c9a86becd38e887f5b5a8f644aa1d9a2bef7c9ac00bf1",
      "name-candidate:fd308af733a901c7ab866b36c28489d27384c3cb0ed571244dadad245124bd07"
  ]),
  ("name-candidate:74b9fdb2408775fccd9ac2e9f843c0279ec96b121a01cbef2a7c175a7a1ba8e1", [
      "name-candidate:62d64aee4b9066408be8e367870d7507362f0e8a201d205de29df49969bb0c06",
      "name-candidate:74b9fdb2408775fccd9ac2e9f843c0279ec96b121a01cbef2a7c175a7a1ba8e1",
      "name-candidate:af30e54368388b2503e75a66a841c9f2b9f86500e74374dc8138967cdd471dc8"
  ]),
  ("name-candidate:df0f9e3a3693a70377a0285496b5ba600fb86c6fa763f4c6ae611ddc9c3f186c", [
      "name-candidate:2737e6ce1f6c07461daa7246eaf41f7b0421e9d6e42e21b50a71d314eec390d7",
      "name-candidate:2f192c2ef6b34db140237bdb716b8d14ca3916dd207ec13c1d3d49a4772e2c4f",
      "name-candidate:df0f9e3a3693a70377a0285496b5ba600fb86c6fa763f4c6ae611ddc9c3f186c"
  ]),
  ("name-candidate:6ff4fe35dc8746dbe3abfa3127abb1d9d95adca7746e748e1b184ef980ecb8e2", [
      "name-candidate:1e15287181dd97a1ed72125f93e6e88785d02a0a4d6caca56416c5e4dfbbc4c8",
      "name-candidate:6ff4fe35dc8746dbe3abfa3127abb1d9d95adca7746e748e1b184ef980ecb8e2",
      "name-candidate:c08ef9505c85e40ab3bb89f2417946f61b4d2e76c3b20f6bf06a3bc361eca420"
  ]),
  ("name-candidate:155dff721d9a159487f8df7b79903dd9cd3ca5942da8ad760323a091db81a7a0", [
      "name-candidate:155dff721d9a159487f8df7b79903dd9cd3ca5942da8ad760323a091db81a7a0",
      "name-candidate:212504df80589a616c5d6ca25a70afcf494079681246464848b98b4c33c89231",
      "name-candidate:6f1a549cd24e8511a9f4c11c283c3cd495bbbb2f521624e4079a4de81a92e6ce"
  ]),
  ("name-candidate:77797f5ad55a66c79306def66332bcb903f1551ed6d2742f720b7226e74afc76", [
      "name-candidate:49eac0bb34c34a3bc4170597196fb60ff298c6533613f17ea1f40c2db69b0e2a",
      "name-candidate:69f21bd1502ba5c7aa9c9a4c613aca798748fa0d6601f78e5f3793d687d23826",
      "name-candidate:77797f5ad55a66c79306def66332bcb903f1551ed6d2742f720b7226e74afc76"
  ]),
  ("name-candidate:a73cdc10283179bc1a076de2b0b89af27e321e8481c664d2cc61422668f659b3", [
      "name-candidate:173e0f254ba8d95f4cbfe38bc3efbb7b23be8119bee01ba9b12d4c03f6b639b5",
      "name-candidate:6a62640165dcea8b97a2163767f0072b33282fac6da473e0f60ac5d2e5443f2b",
      "name-candidate:a73cdc10283179bc1a076de2b0b89af27e321e8481c664d2cc61422668f659b3"
  ]),
  ("name-candidate:a07f53e800ec7fd5fe43f67c804ec5e539f60f2a488f5c50b4e9079f58071179", [
      "name-candidate:067735cd87477ec03789a3dabf118e61f5c7af866cca7b154dc65989acbd5cac",
      "name-candidate:16bf00f8d302d57f23f348b00c569d95a1c98b3f41a4fa94eab006e48555a8ba",
      "name-candidate:a07f53e800ec7fd5fe43f67c804ec5e539f60f2a488f5c50b4e9079f58071179"
  ]),
  ("name-candidate:6f9fb98fe3c5acd9ba5622f82fc85628068e3af00a2a2391b204b55222ae59e3", [
      "name-candidate:6f9fb98fe3c5acd9ba5622f82fc85628068e3af00a2a2391b204b55222ae59e3",
      "name-candidate:95981fd9e0b512c5264eeb9482846cb163b7c409c69000761a42f857d2ba5017",
      "name-candidate:cb36897f84d30d6b984d4227c2db8d45ba74afc997506394a8caec2b56d52935"
  ]),
  ("name-candidate:1d78323fcfd41c0df7217b48d9cb761c59d2e2b751db301b136146e52ad76fbb", [
      "name-candidate:1d78323fcfd41c0df7217b48d9cb761c59d2e2b751db301b136146e52ad76fbb",
      "name-candidate:5c7b8c4baecd8a0d1a2c01513035ff1792ee242fba58ee214db3918c7dce7d99",
      "name-candidate:caee1efdc981adeb166e38a9bc6a87569718c46259ae025f80a1da08ee0eb0e4"
  ]),
  ("name-candidate:f47fe449caec1d37b6268300baff5e29ba50214764a03ae4ffa99daf86faa6e6", [
      "name-candidate:2545cc083890a4ce55b1d085fd9931dc9ff7531cda95a4381153685dfbb95f38",
      "name-candidate:2acab39d02ba85b713d884d5c329e661df971b980222815b8e8faa6eb32cfa69",
      "name-candidate:f47fe449caec1d37b6268300baff5e29ba50214764a03ae4ffa99daf86faa6e6"
  ]),
  ("name-candidate:c380545d451148120d2112cf1dce931182789f73edb3a78c7dc9b5ff66a2d683", [
      "name-candidate:87db4200db2a67a6ffd3f23f85729693a06d47f5b9eb82e5c00215d5246b16e2",
      "name-candidate:9e977b613a3148e1513fdb8b7f7a590a42894a76709b8ec1ab2fb241d9728ef7",
      "name-candidate:c380545d451148120d2112cf1dce931182789f73edb3a78c7dc9b5ff66a2d683"
  ]),
  ("name-candidate:37d5e25ee6524f4dd5c35ac59b663d37e51634400dad1fa93e43a6af179221e1", [
      "name-candidate:37d5e25ee6524f4dd5c35ac59b663d37e51634400dad1fa93e43a6af179221e1",
      "name-candidate:d6273ba1ba84d81d5274cf6b344541ae220caf291e19d7eed7fd8a7bdcff9a94",
      "name-candidate:dc4da8df1550875f0ea4356efdacba8a91b2865368be6fe78d0f25d825ea3591"
  ]),
  ("name-candidate:26d7f0f6de7136cb84044d548f0d399ee0c87e4f5fdccc4bfc7155060961b975", [
      "name-candidate:0884cab60b251b2ab5cd46cceae527cca1afd578b68faed6bbb51f2d62dd6d07",
      "name-candidate:26d7f0f6de7136cb84044d548f0d399ee0c87e4f5fdccc4bfc7155060961b975",
      "name-candidate:b30139762e1d81fa2e8eaba350c4f2ba3d2ceb68fa318f142e2c0d1e4b988bed"
  ]),
  ("name-candidate:2a5b4826788a525a068e14876754eac79ecab104cec15fa8fc8aab64dc8e023a", [
      "name-candidate:2a5b4826788a525a068e14876754eac79ecab104cec15fa8fc8aab64dc8e023a",
      "name-candidate:b81505ba38d0d06b0c1820f25ed4f0621e59328b3a0bc18c842c369a7891982f",
      "name-candidate:e727057bfbf23405499c71e654304e8b4a3d6e152068873a807601d0777d9406"
  ]),
  ("name-candidate:325d199ff63c8e229503ad14b59111baa91c9e4f00025ae27179868e5676c0bf", [
      "name-candidate:0d82adbf8108adb5da8448d8c4ab46dae1db34fa3fe8af1680376ae083df1c1b",
      "name-candidate:325d199ff63c8e229503ad14b59111baa91c9e4f00025ae27179868e5676c0bf",
      "name-candidate:7868690e4e3437e11612a4817dbd2bfc60a56ff34c1b97dffbc0a76ccc5326ea"
  ]),
  ("name-candidate:137cfaa21251f067ea4856c272946093e6f224187fb72259416261b90386b402", [
      "name-candidate:088d5b3a798d3ae11717f2332f2ca7845994162f2fed69f628895d154a3822c9",
      "name-candidate:137cfaa21251f067ea4856c272946093e6f224187fb72259416261b90386b402",
      "name-candidate:58d51f38863676c52697865d3520085c1da46e6ae9d6b9c3cb1e088dc640fe0b"
  ]),
  ("name-candidate:1c030bd93fd68270c6651003597f120d04cbcff9fc470e855322104b91b11868", [
      "name-candidate:1c030bd93fd68270c6651003597f120d04cbcff9fc470e855322104b91b11868",
      "name-candidate:65ba1e0cd1579a6fee0c3bb51483404b1296c686b60ff27a8642beacd368aeb9",
      "name-candidate:d48689136d458314dd3b49a41de2291cdb09467275134245d1c2bca2018e8cb7"
  ]),
  ("name-candidate:b0667f10eda11c951fa37a6e5180d7362ad5f0e66e8ab8c613f4a6a21d4f5ecb", [
      "name-candidate:8de82570039ffcb2af52490fd8419b24e51409a2f2d58fde51590eb1387ebbc1",
      "name-candidate:b0667f10eda11c951fa37a6e5180d7362ad5f0e66e8ab8c613f4a6a21d4f5ecb",
      "name-candidate:f96398400340f6fc6d38f11b5eaa8773919ddfc3b930efad537562fc8f158e5b"
  ]),
  ("name-candidate:b2c0d2fe19b5f7f3375dbbb3076b4d4c2dbfede7c9814a9a5e32bf98a9190ba6", [
      "name-candidate:6dc0af66e18e0df1dcebd9c9826b3b1b93271132fb87355c76c397701dc2e4f7",
      "name-candidate:77990a71c0688f3f85073a105d5eb4e93ae8f332cbe3fc6b300bf68da959b666",
      "name-candidate:b2c0d2fe19b5f7f3375dbbb3076b4d4c2dbfede7c9814a9a5e32bf98a9190ba6"
  ]),
  ("name-candidate:23def39ed84e3bc53028a8c6a9d185a920618109b5eda4456a658993ec86ccac", [
      "name-candidate:0666a9f41a4924856b24110a06322b96aff2c3e0ce375963576fea1beb02d6f2",
      "name-candidate:23def39ed84e3bc53028a8c6a9d185a920618109b5eda4456a658993ec86ccac",
      "name-candidate:6b7676667445b56f033f91fa20d23890ff836ca80bc8c07953be7ea3a53427b1"
  ]),
  ("name-candidate:d0f3e0b47dcb47f0669017c37a72afd917266448c7715ae5d6bf511d0d8932c1", [
      "name-candidate:5acd1f23a82d1c380124f7486af75d0362c9a4db42d8745169fc94abfd057587",
      "name-candidate:5fe019397886a948f4f0baefa84c9ec76893e640ab5ccc72bc7c9b4bee7239e0",
      "name-candidate:d0f3e0b47dcb47f0669017c37a72afd917266448c7715ae5d6bf511d0d8932c1"
  ]),
  ("name-candidate:839209166c0171e7861fea55b869f66d00e6aefe0d7c692bf13686306986ae11", [
      "name-candidate:5be37fdca7931ab9370eb4fe7a1585eee5063d58dbe8bcf1a807ad4c965c7bb1",
      "name-candidate:839209166c0171e7861fea55b869f66d00e6aefe0d7c692bf13686306986ae11",
      "name-candidate:db96e55a78cddf4adb9053ec5f839d2acef87b47934d46a24c15bc16cf9f9146"
  ]),
  ("name-candidate:8729b579cd45105aa11651ae39cde79878d71a86305820c659fcdc4f15ac2c0d", [
      "name-candidate:240d1619be11ff023c565a3dae59db8b4771b7a0a05f435fbf2c82f0898a05d2",
      "name-candidate:8729b579cd45105aa11651ae39cde79878d71a86305820c659fcdc4f15ac2c0d",
      "name-candidate:c0ec69fdda7a46a5b01e7a2c0f93aa78f78d44afe28de435e3b4b12f8089d3e4"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L58725).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
