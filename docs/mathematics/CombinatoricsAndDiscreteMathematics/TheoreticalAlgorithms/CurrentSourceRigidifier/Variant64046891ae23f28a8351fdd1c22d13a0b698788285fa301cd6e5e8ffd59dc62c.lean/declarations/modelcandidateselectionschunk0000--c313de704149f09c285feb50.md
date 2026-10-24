# modelCandidateSelectionsChunk0000

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2446d6cc08fb021a04d6dcf68fac0495aec98ffa375972cbe6941a693250193a",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0000",
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
  "slug": "modelcandidateselectionschunk0000--c313de704149f09c285feb50",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54842,
    "line": 54519,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c313de704149f09c285feb5085d049a65b51c4d4393e2a4444617415bdd420da",
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

Occurrence: `declaration:2446d6cc08fb021a04d6dcf68fac0495aec98ffa375972cbe6941a693250193a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54519–54842.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0000 : List (String × List String) :=
[
  ("name-candidate:0d89216ad39279f6ba0bb990c7276ae6f0ecc1f8c53c2ba457b0424517923e4e", [
      "name-candidate:0d89216ad39279f6ba0bb990c7276ae6f0ecc1f8c53c2ba457b0424517923e4e",
      "name-candidate:aef88abe7a9e3675012e867b3010e3aa8cf3a6f45f6c2809bf068040eb1b1e62",
      "name-candidate:dc5c8a9b91cf5c4e9c595dd830eb891c303d303b13ffccb9a5e42301f2152ecf"
  ]),
  ("name-candidate:ee66d420824193063500ddf63591ff55eb31f34c430815841ed3498cfa7a87c6", [
      "name-candidate:b44185633088ee041d304b92e80528fbcb893cf5e91d11644f34e73ca418b248",
      "name-candidate:ee66d420824193063500ddf63591ff55eb31f34c430815841ed3498cfa7a87c6",
      "name-candidate:fd9340fdf15876a2ec877c7184d0420264d629f0157f40c2df53e36e6ea30654"
  ]),
  ("name-candidate:3e5b0ca1f9588d500f2a8709fe159e21a8bba714665962a453c3eb635bbfd49b", [
      "name-candidate:3e5b0ca1f9588d500f2a8709fe159e21a8bba714665962a453c3eb635bbfd49b",
      "name-candidate:a19775b461f42dcbca46d4004fdb6c3758bd7ca689079b926c3785283956461c",
      "name-candidate:a84dad2cb2a0e49e66cfd5a6a061c289c2cfb1296830f61c8114eb8a94b25624"
  ]),
  ("name-candidate:78485efc1717a50fad27569e08f934792fece41301bd1829ff444710684aff6a", [
      "name-candidate:78485efc1717a50fad27569e08f934792fece41301bd1829ff444710684aff6a",
      "name-candidate:d635b6bf18f01575444e69d69c6f89502eb7587f08eb3dc4d663a2202fa2c213",
      "name-candidate:e91d05d7b5d927a9581c1f8f546af454c1410331bab5d1cf774a029d66508b76"
  ]),
  ("name-candidate:631a2867e891ce140953a6371a57816cd13d29a3ff7824cf7ae2493c4df60fe4", [
      "name-candidate:2d1c2f642e86225e7a83372bae6845a73696284a45bf5bc86ed9740430ba2299",
      "name-candidate:631a2867e891ce140953a6371a57816cd13d29a3ff7824cf7ae2493c4df60fe4",
      "name-candidate:c4ada4a9af5cef2bf87cb4bf8b5628498de5b933311a78ecfb82fd0a2f3f330f"
  ]),
  ("name-candidate:547a73a7fd2eadf49095b33eaebb8f524b77bcb5f605ba12122ce3b761269f68", [
      "name-candidate:547a73a7fd2eadf49095b33eaebb8f524b77bcb5f605ba12122ce3b761269f68",
      "name-candidate:7bd862ff88e66eb163f0295725a524efee67744b0e50dbff71e30755b44324cf",
      "name-candidate:c8a11ba22b7a4a092670ddf17322d19e7d887a1446bbc6a9a80fe6b3d6c85833"
  ]),
  ("name-candidate:67fd21f0a75ce4d4f60f8513c8f1bcd32bb95225b132a124d8f307cdbccc09b9", [
      "name-candidate:06f6a2ee5d6b0005969317a948b07ab7dd5931d7c64d42085ddfc0270c227be3",
      "name-candidate:67fd21f0a75ce4d4f60f8513c8f1bcd32bb95225b132a124d8f307cdbccc09b9",
      "name-candidate:d98be0824b4249cce1d0472598f85fc05e548e1b8f92c3e2e743ec0ed2d2db26"
  ]),
  ("name-candidate:5f4a0c6afdf094921bb42d7deaa5bb10dca4d41af67be212fcb95faa7c7bac2a", [
      "name-candidate:5f4a0c6afdf094921bb42d7deaa5bb10dca4d41af67be212fcb95faa7c7bac2a",
      "name-candidate:8f93c99b6420879eb6440de7cbefe04ed016ce5b07405794aa415b5a05d1d198",
      "name-candidate:f3d7ac72f2bea6ea2b55f389f8eac00416599270e61d43d12cdc5e94967bb34a"
  ]),
  ("name-candidate:4a7913eaaa5127b9270c310dfaa4dbdf0e3676a22ab3c7e00938fa95afd220be", [
      "name-candidate:04d3e44c20445e90cf3ccf81c5a4fcd8dd08d46e226935a19f863e4303c9f6b2",
      "name-candidate:4a7913eaaa5127b9270c310dfaa4dbdf0e3676a22ab3c7e00938fa95afd220be",
      "name-candidate:9c01f2fed6a7fc8bdfcea9619b69c1c047c8bb6a1b83d7762e88b32bc9b9030e"
  ]),
  ("name-candidate:c4ad16e89afc3d3a318bcf177daa78d7846b1bd7aee626f0ee802d804c5f393b", [
      "name-candidate:76140be05f236b1acf23508a2aebcc3838e9650b7cebb94ba63a1b2b2c38a51a",
      "name-candidate:ba8b4b68f300b214e7f5bba37fb059db44e7c2f284fade2e8e2829716cf3198e",
      "name-candidate:c4ad16e89afc3d3a318bcf177daa78d7846b1bd7aee626f0ee802d804c5f393b"
  ]),
  ("name-candidate:ff9a2acf1ea26ff8b3db6f9aa1908d2789b8ede33c6a17f1e831f2eedbfb6d14", [
      "name-candidate:463df6c19fbf1c4a50c28ea203b4a23f2ce4b432df933b3a0e79685b3358e228",
      "name-candidate:f9b086bef8cdebf0c02faaaf64f8973b3ceaa00a26497dec99c84246c5c094a2",
      "name-candidate:ff9a2acf1ea26ff8b3db6f9aa1908d2789b8ede33c6a17f1e831f2eedbfb6d14"
  ]),
  ("name-candidate:e133b74d125d702e13a55a9db7c71727e01fae79ce37c88c88343a0c50ad8483", [
      "name-candidate:af5736f1431d7c459af3f46cada0f5bebc8e4b47324a0014929851b88ef2a7d2",
      "name-candidate:b4638fb369c3108c75db9b7c1ed00d7dc51031e1f26455980d0b8caecca0ea64",
      "name-candidate:e133b74d125d702e13a55a9db7c71727e01fae79ce37c88c88343a0c50ad8483"
  ]),
  ("name-candidate:2106a8d1da9efe469f3275c037cca8ba59108f1c503455a620117c40b950615d", [
      "name-candidate:2106a8d1da9efe469f3275c037cca8ba59108f1c503455a620117c40b950615d",
      "name-candidate:620f42d5c5fb82f697c43f3b6405b8f960d4e47830f1579c5a2af92e6fa7013b",
      "name-candidate:9cfa6cf21058996f19c5b07eb4c9b178176e9da4c327b99ed59c9face395356f"
  ]),
  ("name-candidate:d7c3ca2dc9db99418b46b7e32e3d222e1b8112558b751bbbde9f72588f46389d", [
      "name-candidate:82771088e839ca61d398f4a870274eb485231dbc208e13261dc7264a92443803",
      "name-candidate:9d8539e7c117bf1b662d3d665d5adce5ff0bf38af29162f47bb864c7c5371ef4",
      "name-candidate:d7c3ca2dc9db99418b46b7e32e3d222e1b8112558b751bbbde9f72588f46389d"
  ]),
  ("name-candidate:81aacd86e1470140cbea9e1229e019533ce62092a660bb6a5bc478936bf8aa8b", [
      "name-candidate:0e990244ae7616ed841617c5852fb48cebf3bc8a7cf2e719f72e36bd3d990d8c",
      "name-candidate:24b04c6d0f1f873e07bd3d461c4c0e49e4839a0a0128717c039a4c62695b88ce",
      "name-candidate:81aacd86e1470140cbea9e1229e019533ce62092a660bb6a5bc478936bf8aa8b"
  ]),
  ("name-candidate:27d06b39bd4e82f3446b88d1d70974f4bbdd6b690c517269704d7f319da5dd18", [
      "name-candidate:199756ab2e6a8497d323cade4999ad3575bdae26956dbd7a25ee065b83cd8884",
      "name-candidate:27d06b39bd4e82f3446b88d1d70974f4bbdd6b690c517269704d7f319da5dd18",
      "name-candidate:3d05466c4ca36c96942c2fa6ea03f1781e9f3c7fc19ae62a82fb48f45fa99ad2"
  ]),
  ("name-candidate:8116ea1e33458020b6b0236cd2afd064a010d056f8d9887d5fa4a5e6dee74e7a", [
      "name-candidate:77e669d01f1bf966868940b2430efaba9b9f748c4753e1ad2b90a0e940a59e5a",
      "name-candidate:7d03542d84288ec7e998d32196e47422c052b2bba6b62aa4093bdc4f19267626",
      "name-candidate:8116ea1e33458020b6b0236cd2afd064a010d056f8d9887d5fa4a5e6dee74e7a"
  ]),
  ("name-candidate:cbf4707b2fbb2869fa2a6b8376be2434efef265aa3c2003ebbdb5e6c233b02ee", [
      "name-candidate:39f1a28d951a52af3d625409b666aec9c37f8240a84a31b0b4b01960fe905c30",
      "name-candidate:42446c29ce6a2128cbd1ac08e7a653f723a522c36a1aa4820916964f46880f25",
      "name-candidate:cbf4707b2fbb2869fa2a6b8376be2434efef265aa3c2003ebbdb5e6c233b02ee"
  ]),
  ("name-candidate:84f978ac5eb3337f0da7702c972d911d58b98cb89021507b26ff4dfbd1c450b1", [
      "name-candidate:284a7f934f390e83dcea069390b45baae4401f50db74ac473e10ba4dcdcb1cf6",
      "name-candidate:84f978ac5eb3337f0da7702c972d911d58b98cb89021507b26ff4dfbd1c450b1",
      "name-candidate:9639d107306a843393f1e8430f63db0016f055e79f28aa1a6edc8f9ded9f5506"
  ]),
  ("name-candidate:9d8b98bd2aff99b9811d1106410e3c0c60e71f5ec73bbbe1deb589fa6b9d4f61", [
      "name-candidate:203227f23c47e0ca454d1c2cd4222b164e9c322e256e231b74b197157e2f44ed",
      "name-candidate:25a48605438c30c822af3da5bc294a9f8da85c17f27be8f4f501eaa4dc70c173",
      "name-candidate:9d8b98bd2aff99b9811d1106410e3c0c60e71f5ec73bbbe1deb589fa6b9d4f61"
  ]),
  ("name-candidate:2c47ce5d70cf022c1d4f13dbb52f49107f34005ae73fb4f981fdce2440dd5a03", [
      "name-candidate:2c47ce5d70cf022c1d4f13dbb52f49107f34005ae73fb4f981fdce2440dd5a03",
      "name-candidate:96b45f86567e0568fc6556f2fb81d4ef5bca85524b44f250349aeb88436a0f15",
      "name-candidate:f1f1e50a0f729584e8f7c1f26bcfd408a269ed4a58c4f37e37655e93188acfaa"
  ]),
  ("name-candidate:1d3df4723943b02baaac9e8c08e754135ccdce6a3813131bea81661d5967db81", [
      "name-candidate:1d3df4723943b02baaac9e8c08e754135ccdce6a3813131bea81661d5967db81",
      "name-candidate:96caa99606108143dae0097303b1f4ecd445ae7883189e96609201b4c58c3003",
      "name-candidate:d6975945f3a62c5e58aa9fdf12f460e3e94cd95513f1bdaebfefe349ae79433b"
  ]),
  ("name-candidate:7947ddd8b47d10d578c9c8a4c42c0c9dc331e8de836913a711fea62a9b06099c", [
      "name-candidate:7947ddd8b47d10d578c9c8a4c42c0c9dc331e8de836913a711fea62a9b06099c",
      "name-candidate:8a2d29d735b46bfa82f0b271b411e870905d985495c215880702a0f34f7a9be3",
      "name-candidate:cec4bc0d82457306278a44b5acd417d9b5d0fa2daa7ea02e8ba9d4b16c467597"
  ]),
  ("name-candidate:62d06e6755227567f826569e02d3d69aaf0e4f14b49a7b1e1fc86e5b4a3a5374", [
      "name-candidate:62d06e6755227567f826569e02d3d69aaf0e4f14b49a7b1e1fc86e5b4a3a5374",
      "name-candidate:7180a05a67acce54c168122e147b5a0d1f53e1ba96d00a446fbe6212bf683edd",
      "name-candidate:ee6226aae537c19326b9f0832eaa1f8e03277148f50b14417f8e8c2bb3e80b66"
  ]),
  ("name-candidate:6d3b0d6c9d5b0831102f23bf4fcd128d727ce2e96a0fcc6b753e9afd456eb779", [
      "name-candidate:59cbabbb9b017ebba9dd1d6bf4f4a4e69ece3dc02ccefff065c3bccd6c6d44d2",
      "name-candidate:69dd7a74ffbb36407a756a983cd7d29d0c8d4b6666d95019a80c88beadbee646",
      "name-candidate:6d3b0d6c9d5b0831102f23bf4fcd128d727ce2e96a0fcc6b753e9afd456eb779"
  ]),
  ("name-candidate:97257c9b5523701f33595ed25e237523ffcf84bf4533247e3dc70303e0dc3231", [
      "name-candidate:7a31eeac4805a2b3abc0e826ac54ba0eae3023a565abe4c6bff32531aef9d9cd",
      "name-candidate:97257c9b5523701f33595ed25e237523ffcf84bf4533247e3dc70303e0dc3231",
      "name-candidate:a0872bf75e68c28a6e0ff8b0dbccdc7a80bae59c1147433d33559487b6039133"
  ]),
  ("name-candidate:430ab754f48746a9ff734cd98404fa0365f820b59f40ff8f2c964e910930f121", [
      "name-candidate:430ab754f48746a9ff734cd98404fa0365f820b59f40ff8f2c964e910930f121",
      "name-candidate:59109771b6754a0d4abf4fd222a4c4b768208521067252a48a151cf84c0614ef",
      "name-candidate:b0109bce8144c7dba0bc1629b5aaeaa967dbb2d373c76538d8197d449c3a724f"
  ]),
  ("name-candidate:8c1e3ec6ffb2ba099d188f37725d7e635666f65559b47ca7b032f68f748ecec8", [
      "name-candidate:8c1e3ec6ffb2ba099d188f37725d7e635666f65559b47ca7b032f68f748ecec8",
      "name-candidate:9e7497614469f8549c2cd3667865e9ae61b41993f4e122e0f194d3a37c9087a4",
      "name-candidate:a989fd88522a28ae1c764a92374294352f7bfd4d1b72315bcb2bbe5a0fc272e2"
  ]),
  ("name-candidate:f6042c746d34014a2627694011d450f2a17b420b7bf9fe249ac89f13590fb9cf", [
      "name-candidate:35880730852c7258753ca6fe7e84a032f01da9a75c72f9289d07322ed35769ea",
      "name-candidate:b4fb78f2c2d72c6ef8e0fbbe0a9de3e9cdce8bb18de777c6e0f7f08b46e5ff3b",
      "name-candidate:f6042c746d34014a2627694011d450f2a17b420b7bf9fe249ac89f13590fb9cf"
  ]),
  ("name-candidate:7184a6b0074efef15e6e140ec14726f8c869166f5bdfccad26014e5af19c580f", [
      "name-candidate:05a7efcd35726053f81b38a7544c4fdaf9874c0d6f7a55b8c87a2283cd5f88c0",
      "name-candidate:63588a8a58e27bcbbd5486ba59cb27af3c9d813087b9cf6d5e78d5f50ecd83b0",
      "name-candidate:7184a6b0074efef15e6e140ec14726f8c869166f5bdfccad26014e5af19c580f"
  ]),
  ("name-candidate:3c36b17f363ade3332aa8576f5420ab24667e0561e6c9dae393868d9efd9e76f", [
      "name-candidate:3c36b17f363ade3332aa8576f5420ab24667e0561e6c9dae393868d9efd9e76f",
      "name-candidate:8d134a7e18b08fa318bbfbca3b050b4ba63ae2f402ee6e1d2a93c77dada10b9f",
      "name-candidate:b79edc49eb038a7eea4089f113da7307a3fb6934db8c531ecd3a4cff0fabf536"
  ]),
  ("name-candidate:5a520c85b650d3b6e8bfe4de0016197dab954b24bce1ac5b0e067b5966c4c36d", [
      "name-candidate:1f7fa442a919c00180cda8daa765f6a819d0350e8295fecc6638955f5ff06e85",
      "name-candidate:3a4ba2f89a8329e38b8344e5e9d0f196da1b23494f64a3416793401faa4cec73",
      "name-candidate:5a520c85b650d3b6e8bfe4de0016197dab954b24bce1ac5b0e067b5966c4c36d"
  ]),
  ("name-candidate:3f5cd5df04df955e6afc6a12d417ba543fa0b75cc83dc1ee4a83f206f953bd91", [
      "name-candidate:013ddd1c96b2b23837c849ac12a4288d30a0ce3eccb4f0b496715dc0b92b96fb",
      "name-candidate:3f5cd5df04df955e6afc6a12d417ba543fa0b75cc83dc1ee4a83f206f953bd91",
      "name-candidate:ee5a958194793472436c0bc7eae972b4fe2ee6e713fd39ac521929c6beb3b3d0"
  ]),
  ("name-candidate:46ceb2a356659605ec1441245269ba30518c203b20cebab8afa69c45741b2f78", [
      "name-candidate:46ceb2a356659605ec1441245269ba30518c203b20cebab8afa69c45741b2f78",
      "name-candidate:48fc19c1486842cd8ecfe3e39bfdf6ee4ea10a1fd722d80d82d007d26dcfc5d6",
      "name-candidate:79de391b3dceddb0379f8ce9e8783e1d76a9260c9f94b1ad4ba5865869fb8a56"
  ]),
  ("name-candidate:568590ae826243267049573910ad4ecaa05cb7b919dcb22e94d5efd5f59a684f", [
      "name-candidate:1e21a504cb88c01a52af4eb4d9844d26abd3e0cfb1741e9a93563435e026d014",
      "name-candidate:237cefdc97fdfdac7d0f17d522e1f4876871e0c00c8d78eb0659054795cd7463",
      "name-candidate:568590ae826243267049573910ad4ecaa05cb7b919dcb22e94d5efd5f59a684f"
  ]),
  ("name-candidate:d014f5d1d4867b35da58cbed695d9203e3666b97aaf627a3d22aab289ba47b70", [
      "name-candidate:d014f5d1d4867b35da58cbed695d9203e3666b97aaf627a3d22aab289ba47b70",
      "name-candidate:d377139fd81d1f602376f59c826375ca360f8c28bfdc6d68c1704d71a4333d10",
      "name-candidate:d52415ac2455c597539fc4e1dbee4c7c161258b927d390b16fe1498424afcfce"
  ]),
  ("name-candidate:83bdb9b9d358bb447b582d4e3260c6a6ac41a338bdbb6e96ee42dbf057027b0f", [
      "name-candidate:2ca0d5df82473ac711e377f01ccd3b63d4fb11f4966ec81464687c468f9e344a",
      "name-candidate:83bdb9b9d358bb447b582d4e3260c6a6ac41a338bdbb6e96ee42dbf057027b0f",
      "name-candidate:d09e7a6b3cf661446dabfbb201cec70432056eab4e98daf122586960dcccb358"
  ]),
  ("name-candidate:8365a46256913cef2437802612f753afccb4d557e89b920de7277a09786b2824", [
      "name-candidate:29c78bddbce1817781e1d41d3d4dc59c6e844d47da3e27dc17800c1def0bd32a",
      "name-candidate:709cbc15e33da75af879c58ab23fc908ead953f9f34fb24f8d21167ee053662d",
      "name-candidate:8365a46256913cef2437802612f753afccb4d557e89b920de7277a09786b2824"
  ]),
  ("name-candidate:3f6ba608660fcd69a0cf439a37909972f9aa507cd3d597e2fe577f35a182e5bd", [
      "name-candidate:3de416c69e0f865a2b7ab582391450b7c7386198e4a9200d339b0da931f4feb7",
      "name-candidate:3f6ba608660fcd69a0cf439a37909972f9aa507cd3d597e2fe577f35a182e5bd",
      "name-candidate:c88f05f5f996ed29611229e51316c99e0d399089112b0f6fe99a9f72493fe4da"
  ]),
  ("name-candidate:232ea30fbaf6de174cb1895810a76ecdc7023fdc700ed0577420901daf56959f", [
      "name-candidate:232ea30fbaf6de174cb1895810a76ecdc7023fdc700ed0577420901daf56959f",
      "name-candidate:7de1aa44bb51f9090b9478150b8feefb8f0216b45c9ab31f2247667aa571bfc0",
      "name-candidate:f24e00914c41296ce3f9ea26834eb600d1e83d86c874eabf94455962bb8464a1"
  ]),
  ("name-candidate:9e8c36fa81d71d2270734fe36478200153722fb046fd149f1b40c30218e965cd", [
      "name-candidate:293268808bf3626aa274b3350e1adceb5ae9e844ed571fa014f747e5f72bacae",
      "name-candidate:3d38163ab93cbed1008f0d470b4bd535619352eb8f483071a014a3d57976f200",
      "name-candidate:9e8c36fa81d71d2270734fe36478200153722fb046fd149f1b40c30218e965cd"
  ]),
  ("name-candidate:792f9da642b3e0693cd525c38dc8ef0542c16a709440911fe3816fd650797a13", [
      "name-candidate:68704533377888289dae631a87df9ee73c6c7a12f40a2e8f1abc954217b79b1c",
      "name-candidate:792f9da642b3e0693cd525c38dc8ef0542c16a709440911fe3816fd650797a13",
      "name-candidate:bd1ade195b6785bba8de3edb2526a75998c8a43e57df85b1e674378b81a7d13a"
  ]),
  ("name-candidate:6b9fb30385eba2eebee9087c68ac16e47cedadd57018b7e400986c666a3496de", [
      "name-candidate:3dc570e8a9031705f6221ce9d16d94c9dc364b016c196f0dd702122b89770a21",
      "name-candidate:6b9fb30385eba2eebee9087c68ac16e47cedadd57018b7e400986c666a3496de",
      "name-candidate:89af14509e88a59a83198a37b1e0a4eaa611c2dca3fa08a4f2b576575285ab6d"
  ]),
  ("name-candidate:641aae027db21a020a820490cf17615c264e0305964d0e3c453d9c90649b250e", [
      "name-candidate:641aae027db21a020a820490cf17615c264e0305964d0e3c453d9c90649b250e",
      "name-candidate:b9b81fc9214e857d807846dfc3580e85bdc638a73cbc2783493ed633ab5b8ee7",
      "name-candidate:ffcf7189e1e8070943592650229daed81fed83211e60209ef9d2b7202ce1f07c"
  ]),
  ("name-candidate:410325dad4680b31e7cba4f3a2c47b64bb79036809b311fcb7c545934cf7791a", [
      "name-candidate:2be5fb81ae0727d255aea943e200718c803cee65f4ef0b2d2ebf110c5a56e5d0",
      "name-candidate:410325dad4680b31e7cba4f3a2c47b64bb79036809b311fcb7c545934cf7791a",
      "name-candidate:e9e42afcff1656b4d974279d23983c185bd1dae3397ab0589a7dc05bf203ef8a"
  ]),
  ("name-candidate:79dcc81c62013715b4fa2cc12501056726655d21dea74f661403bbc2e8353391", [
      "name-candidate:65c2118b79c948c529974faebd2548a736ac2c673ffaa5d3b15e2aee1a4b2dd8",
      "name-candidate:79dcc81c62013715b4fa2cc12501056726655d21dea74f661403bbc2e8353391",
      "name-candidate:8ea82166b2bd03e54ad32c3abea2732ba6bd3c6b11757329297976352e2db573"
  ]),
  ("name-candidate:9bc88caf681e0b99027e7664b4c3d3e142026363f782634ac8a8d729ddd590d1", [
      "name-candidate:5bed79b6481f3df71a68a75dabf0679087449dbc953fe5d31fc0bf71d9625d23",
      "name-candidate:9bc88caf681e0b99027e7664b4c3d3e142026363f782634ac8a8d729ddd590d1",
      "name-candidate:d4b8cbe05bb07667fce8bc3d6e3955a9134062175c7e79c0d58a46e755579bcc"
  ]),
  ("name-candidate:028c3123384c98c7653243b157b82b96f6c3c50e70c3f6e2c8db25ee19860294", [
      "name-candidate:028c3123384c98c7653243b157b82b96f6c3c50e70c3f6e2c8db25ee19860294",
      "name-candidate:1ca87f748683d9d25fc6b9688c8d510af2f126010a3e3576f61af82bba1b6ee2",
      "name-candidate:1f5c87d4457c12578d98c4e1784928a12122257e13a6e4afce5350647ce8bce1"
  ]),
  ("name-candidate:33607828840c7bfbb2c39f71a5d9c6ae2f6eb5fed8b46c4174f73c42b64428dc", [
      "name-candidate:33607828840c7bfbb2c39f71a5d9c6ae2f6eb5fed8b46c4174f73c42b64428dc",
      "name-candidate:6e0d83ed9e85d9453c6128408d81d1d248517e4d82c6ba7b0ea03bc8c1e834ac",
      "name-candidate:b465e8d71ca1996ed09554a3af4e4801c374286f58675fbc508f7ed9a674bdea"
  ]),
  ("name-candidate:77e3f53f9d1ef05960ffa27af72eeb961f9407ce13275c7699d665c88731b6ba", [
      "name-candidate:6bc584e45d1569e9b0be96db246ad3263347f99178bbd2c8778e8dc08d0bd6e6",
      "name-candidate:77e3f53f9d1ef05960ffa27af72eeb961f9407ce13275c7699d665c88731b6ba",
      "name-candidate:af734ebc4288adcd4486ac822d77899415d62e5610d0af0db4cf211ab10ab2f4"
  ]),
  ("name-candidate:82d8029c3770bd706439f803b5890489881acbc4eca59c253fc29a19573ec95b", [
      "name-candidate:82d8029c3770bd706439f803b5890489881acbc4eca59c253fc29a19573ec95b",
      "name-candidate:a00043124feeafb9a4f325f600d7de1722343d4a2b6113ddb80dda1c900d1552",
      "name-candidate:d585bd8bf904a9dda6bb316075e26f4f108d4e5665d78defa39b3684598b3d64"
  ]),
  ("name-candidate:6426abc5c39d977596f712cefe4c6828a308ddc96f839c706637a426eb0de42b", [
      "name-candidate:6426abc5c39d977596f712cefe4c6828a308ddc96f839c706637a426eb0de42b",
      "name-candidate:99035ff61fd377c9dd231e745ddf84338e12c5b4335870a54af074b24e0d79a4",
      "name-candidate:bfcdec4cb9554e86decf2cf757d152cd2452ced46155136c88566c383d0e965f"
  ]),
  ("name-candidate:373c49a49ee5f42c3f0589bdc71adc1af01eed3a0df040051ed38f9c66e1d5dd", [
      "name-candidate:373c49a49ee5f42c3f0589bdc71adc1af01eed3a0df040051ed38f9c66e1d5dd",
      "name-candidate:4fa84e59298bf98a44bcd9710fea0d08a0b616e9cc135fe55832f5eeb61786df",
      "name-candidate:ab3ee1b4303163e143b66329f3961bfc12eb5db849f994624c0cc9f8d910d556"
  ]),
  ("name-candidate:1fbfe516d36048e0cf1618a11b47bcc45de6e589bb80f91bc0916367968b3b65", [
      "name-candidate:1fbfe516d36048e0cf1618a11b47bcc45de6e589bb80f91bc0916367968b3b65",
      "name-candidate:8892686a9a5b413683f9af612691b15bfa172a27273957f2274b16f24773f45c",
      "name-candidate:ec1abdf066612c9be8d8541d8c234a103c80f510ac8f2a13419aafc9dd430507"
  ]),
  ("name-candidate:84560b09c426ba0a635e211f05e770303d34beff952c3b1147a392f4e078dce3", [
      "name-candidate:30370c11d647f84fea09c6444755a655c359306535186943206262940c0478ea",
      "name-candidate:84560b09c426ba0a635e211f05e770303d34beff952c3b1147a392f4e078dce3",
      "name-candidate:e746b64d0cefbfb2c9eb4866df12354679222c6a52bfd6df8b81386706bd1587"
  ]),
  ("name-candidate:3c14be07bfcbb5414ee9d5261b88464f1a413e3d71e85e7dc35db8e602ed76ad", [
      "name-candidate:3c14be07bfcbb5414ee9d5261b88464f1a413e3d71e85e7dc35db8e602ed76ad",
      "name-candidate:80ff8f405d517b59e9f75e11258f678df761fa72c83938ae8313b0b1df946ee8",
      "name-candidate:f8edcf4f2365ae77a0e8148187725b96841f5ef741a3316e0448074f903fbd92"
  ]),
  ("name-candidate:29f90b8e94bb6e7e563f82196c7cadde60a24d0a347cc40865da07238dea8426", [
      "name-candidate:148d13fa9ba8b70108a13380cedb91f88b7bec98b3e7f91594d7b978688eeb6d",
      "name-candidate:29f90b8e94bb6e7e563f82196c7cadde60a24d0a347cc40865da07238dea8426",
      "name-candidate:6171d9aa6f0c0bd64c578ac4da1650c6a29a9450818bf1f3194f4ed77f5fee0a"
  ]),
  ("name-candidate:cbb812c332eda12aa153efddccafb09228c0586dc70a01e8624ed26643f69cbd", [
      "name-candidate:6a8a36cfdc5b553be294540939fe14e9c09a5a5c28c66381b963e3600e2bdc16",
      "name-candidate:bd11b89e1dfa4aa9c034ad013b7423b8c9405fcbda99eb01de272dc11ae9c578",
      "name-candidate:cbb812c332eda12aa153efddccafb09228c0586dc70a01e8624ed26643f69cbd"
  ]),
  ("name-candidate:c340a464a9956abc98b04792ac5449c340e1be0da569e10a1ea48dd1b50d49fa", [
      "name-candidate:8af33c6ffc4279c12503ae4490834803b9afe6ba888ceae5796c50c4518ae6d7",
      "name-candidate:c340a464a9956abc98b04792ac5449c340e1be0da569e10a1ea48dd1b50d49fa",
      "name-candidate:e525649121c02981d7684d1fae5caa85271a479c6b7fa23b207453817cef8394"
  ]),
  ("name-candidate:9544f4442b93e99b3ca022b11ed55e9f87eed03c9e9c5c823fd18a861868e42e", [
      "name-candidate:8fe5b8983309264e4f0a600eb36f6a3112279b8e83c516692da428ae5504f658",
      "name-candidate:9544f4442b93e99b3ca022b11ed55e9f87eed03c9e9c5c823fd18a861868e42e",
      "name-candidate:cb71f29a7beca6a8ba492a700d7cdcdb3cbc112257a36e1febc3cbe8ced013ec"
  ]),
  ("name-candidate:489faf995366ec351aa51e52f45115b3caf2b1947d20cb1b5d300a6468c75580", [
      "name-candidate:16f29f2e6c73c0f8da373a0d0bc34b01ee0942f498cad8d77018d771d6078b1d",
      "name-candidate:489faf995366ec351aa51e52f45115b3caf2b1947d20cb1b5d300a6468c75580",
      "name-candidate:b66963964cac1af804d25359a4c7bcd7ee482f4a2f38b42bec8ff9ac99c0529f"
  ]),
  ("name-candidate:56a1f77983d260a496565e2d2dd05e94cdd1338707c8647c90ce6ae9d9a98b6f", [
      "name-candidate:56a1f77983d260a496565e2d2dd05e94cdd1338707c8647c90ce6ae9d9a98b6f",
      "name-candidate:5e862f53b5ceef64da8f80318d4cf75debd0f1a1bda925e1996f91a959c6e36e",
      "name-candidate:d5250290ec9d5bad78ab432655397d716cad2e4260b31a3a4c6d22feaefa58bf"
  ]),
  ("name-candidate:824fd413ece1f19a7c87158b797103f99e42e41afe61fd3ebf3de12f0e70119b", [
      "name-candidate:48d41c1240d285ee2d98d2547f106d3d37c13157d6538837fb9113b0093cbe4c",
      "name-candidate:75b1817695b40fb4f9a6fb1a8d7a09ce7b6fb77527ab98f7ad7b75c6494f52e2",
      "name-candidate:824fd413ece1f19a7c87158b797103f99e42e41afe61fd3ebf3de12f0e70119b"
  ]),
  ("name-candidate:0ea613cbe404bfc988a3d79ebd3937bbd84dc42f500cfdeae320b2dbbf28bd8b", [
      "name-candidate:0ea613cbe404bfc988a3d79ebd3937bbd84dc42f500cfdeae320b2dbbf28bd8b",
      "name-candidate:2684dd9e3fc8ee37764db9adbc337930a5519b46abd4e015d8d811f0649fc8df",
      "name-candidate:f692298c25184051c2d6779dc662ad39335f0dad562adbf00f200aa2780b7a71"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L54519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
