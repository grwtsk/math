# selectedParentRowsChunk0020

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:609dab5113da3d47e4bb577612cc5d96107867b4aed5b26be9db5cc93c54dffc",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0020",
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
  "slug": "selectedparentrowschunk0020--9ace9ca945eccb2e53cdcb80",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120461,
    "line": 120261,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ace9ca945eccb2e53cdcb80bb858495e96928dbb630d3d98cb490ae14cc9f86",
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

Occurrence: `declaration:609dab5113da3d47e4bb577612cc5d96107867b4aed5b26be9db5cc93c54dffc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120261–120461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0020 : List (String × String × List String) :=
[
  ("formal-neighborhood:9e23c80c1bac27f42c75fef14291dfac83c78d25fc5543d5b79dab48770668e0", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:9e28b0e9019cd2a8d9a4c7a5dc535c93ffd70889a89c0718723104f50175ddbb", "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb", [
      "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb"
  ]),
  ("formal-neighborhood:9e2e64831e241ee8c8c6fa31dad0ad739436a46aaf7f018e909716a5cf72a5a8", "formal-neighborhood:23c4bedec07dc9fff0e80eb902166d412c341d4358b304c80125ed55a0fd73ed", [
      "formal-neighborhood:23c4bedec07dc9fff0e80eb902166d412c341d4358b304c80125ed55a0fd73ed"
  ]),
  ("formal-neighborhood:9e3a066a73ddd1ad30b3f45123b20bc74a8afff2da8d87398c6b56f845f96c12", "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727", [
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:9e600a076b396f929085625851c1987f60bfc61ff10d29aed808d07078b74bed", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9ea2d248fcbc814c9952670545a7dc7a1dc8a0a9d5c553729a6992518433d0d4", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:9eb021fb23caba9b88a5dd66bfe14e374f645f4f5d6f48a0120ca8676f575bbd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9eb43fb7163b379316e3b61d8cb815bede548b5d2382bcd66152d5ed880fd786", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9eecf32e5e6858feeed0ec678385794525b196492a46131866c7d15affc222c7", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:9f2b275b37bdaf83f2f0088572b0a5dfb0a123df66b8baf6861396f60a4994c4", "formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83", [
      "formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83"
  ]),
  ("formal-neighborhood:9f391ed7b409d134b8f059bd34527394140ff2a5def8b45a85af4cb14ce20aeb", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9f66990920f5f28ffed14480438f19072fad9ca8ceccf5002771fcfc9e2db321", "formal-neighborhood:7e40518b1954bca6f6bf4fab80de78e8eea4fd3c34f309d22cd94882509e6f75", [
      "formal-neighborhood:7e40518b1954bca6f6bf4fab80de78e8eea4fd3c34f309d22cd94882509e6f75"
  ]),
  ("formal-neighborhood:9f8c276db36a62a009ccf19926f8e7f1ecaa04a68ea495c6b1fa100e9556a429", "formal-neighborhood:23c4bedec07dc9fff0e80eb902166d412c341d4358b304c80125ed55a0fd73ed", [
      "formal-neighborhood:23c4bedec07dc9fff0e80eb902166d412c341d4358b304c80125ed55a0fd73ed"
  ]),
  ("formal-neighborhood:9f8dd7e6fb4fdcc0ed2bff692e3a01403621b8f437342996c238ec3eb61f317d", "formal-neighborhood:a58e09306b4d65ce31ede59a4e8995ab3862dbcedef36a76409cdac1dd9370ed", [
      "formal-neighborhood:a58e09306b4d65ce31ede59a4e8995ab3862dbcedef36a76409cdac1dd9370ed"
  ]),
  ("formal-neighborhood:9f90ec3eb42622286c9d9297aae32061ca6bf0430610112dd0a0de2b1ccf6753", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9fb09be1fcc9b843660a7eb2d07158bcc6d6927dc29d5b9fef71ed99a1b43b15", "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270", [
      "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270"
  ]),
  ("formal-neighborhood:9fbc14b441584bc439422444142f7c9e253f8eb72d81a97e7ac0ec7e1aeb60c1", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:9fd6595125a4d2664f8b5fbc6bd968cb529b1ed44f71138fc84e22153aff6fc4", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ]),
  ("formal-neighborhood:9febfb952bce9273dd5c170b2a0bf3fe634a1f9d5941daf3e6af575d0853f836", "formal-neighborhood:ee9563e021a1ef09817abd2409c79d336c6edd74701914595558746607326441", [
      "formal-neighborhood:ee9563e021a1ef09817abd2409c79d336c6edd74701914595558746607326441"
  ]),
  ("formal-neighborhood:9ff8478ae64541927d09ec1ee3d8f9a850a76dd99602d9584ab9346731945994", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a005101541749dca866a9019a5597def01715a7debc01bc92c936e95e4747743", "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee", [
      "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee"
  ]),
  ("formal-neighborhood:a015422184165448c704c372721e51b2f5580b111d24d983856622149238d771", "formal-neighborhood:8592af13237a6039328d4eb0a583959069690765d57e996cc2bdf8bb6b63bfc1", [
      "formal-neighborhood:8592af13237a6039328d4eb0a583959069690765d57e996cc2bdf8bb6b63bfc1"
  ]),
  ("formal-neighborhood:a026e3a24241288ce4819063e436bc0cd3a526ccb3a821fa4fbb257ecc8f4f60", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a03fa2a32f0ccb8885f440dcfac4b252f287e315721b27fe8b9924f0a2f6f44c", "formal-neighborhood:15dfb597c1618625ee5639b8b370404fabe5fb82d37c58746b4114b77522d1ea", [
      "formal-neighborhood:15dfb597c1618625ee5639b8b370404fabe5fb82d37c58746b4114b77522d1ea"
  ]),
  ("formal-neighborhood:a04e85f85a31ad653a5f04022d93991c52ce224b3b3beb99ff81991c444c2529", "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1", [
      "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1"
  ]),
  ("formal-neighborhood:a0554eb2a50645c636684106f72f110b0b5719af81ec23db958548e9e02d168f", "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1", [
      "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1"
  ]),
  ("formal-neighborhood:a07c1f83bac659a7930f85be87d9be52e52775c6c7f82e244b6a3a97cba42849", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a09ac83db557aacdebbf9f8a99c3084ad2a1ccc3363f48d690d3230587510b8a", "formal-neighborhood:99dcd590e94d19f8c797ffd44302e5f147d5707fa5bca4bd5152bc9786f917d1", [
      "formal-neighborhood:99dcd590e94d19f8c797ffd44302e5f147d5707fa5bca4bd5152bc9786f917d1"
  ]),
  ("formal-neighborhood:a0ac08a112c92c0df8793961cc673566809a353163a0872d55a446bc18643c5e", "formal-neighborhood:f77ce8ee3c0075ff90458a9608e699b81fc093a68f2ba1a8e7e8703a34021fd3", [
      "formal-neighborhood:f77ce8ee3c0075ff90458a9608e699b81fc093a68f2ba1a8e7e8703a34021fd3"
  ]),
  ("formal-neighborhood:a0fcd8bdbdc32f20f900350bf4a6e54547a218c768585f0d6573fff0f0845b02", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:0ccdc80bd326968deef91fab9c8bfd76dfe8da9272155d21fce72a35eea6a389",
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:a100fe3d7834d99d52877faf18f591bb193dd0a0554ef68e0821ab45ba667a2b", "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712", [
      "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712"
  ]),
  ("formal-neighborhood:a11952655ecf1c4f6ad4a26bb965ba3ca0793417e0d7a15d85686dd4964f3f43", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a120cba072ad51d081e84a84fbd0030f30fb7f069fac0a3a91cefee502bfc0a7", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a1355fdcc5d24e37cc73e49e474717a082244fec6467454cd0c3ba6d35541154", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:a138cf43e5324da14fe0c70f095578c997c928d582f4cc10fe2cf8a4417dfddd", "formal-neighborhood:a87a66d8aa4c658903ebd0376bf84494b7ed23a23290d9aab236a30cc1432637", [
      "formal-neighborhood:a87a66d8aa4c658903ebd0376bf84494b7ed23a23290d9aab236a30cc1432637"
  ]),
  ("formal-neighborhood:a182a878332032ccb89106e576582be0d2170b8acd70acc366df5e08f61ee3d9", "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5", [
      "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5"
  ]),
  ("formal-neighborhood:a195bffc63ccae7f40e93114a1195e9571552b45d8bdcb08847cbcbb927e0df7", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:a1c339b4e87930acee759f0fb028008a0842b4a4ed91b1c8cb0c3cdb87b30b2f", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:a1d464ad69a5ad164f89acb3dbde6b8217b5bdf2fb24c73870645f8a553694e4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a1e187edc2c4d2098b46f5d35ac800975c603b0c9cb40bbef6207f75ddc836fd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a29af07ef07228197ce232112dbfcd609df266cfb135b08b5b7b99fabe6befb4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a2bbeec513064620d1c2cc2b976bf1316ba620d1adb94fab39c75a7d9a4373e5", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:a3309e4f2a7d811c4a0b77682ea36c4d3a8344c633d2825b023e1b73d30663e6", "formal-neighborhood:c56879317db7f83cedcb63b04cb92d8f8d3d085cd2d66c0e6e88f040b85ab93c", [
      "formal-neighborhood:c56879317db7f83cedcb63b04cb92d8f8d3d085cd2d66c0e6e88f040b85ab93c"
  ]),
  ("formal-neighborhood:a35a4561c162aa9a5011c68e1c1cf0107519e8d5e7910a6f034613eec5bf305f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a376f5e630c85bfbeec54459a7563f07c0de489649180b6b060823f47cb31c99", "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c", [
      "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c"
  ]),
  ("formal-neighborhood:a3a56472f9937eb51d1c055e3dbde46f42c58cc09e07f92dd3165ca001ac3653", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a3ac68f5f4f891e90ea0d49f64bb30371c0cd2524b32ce3be697ae063d553d0a", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:a3f928f3b87145ff6fdc85684097e07653bdf01ad8e602c6dbb4fbe1ca874494", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:a407afda0a7052bee81bb4a327d1e780ed1a7485a068107f9104495930532b41", "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1", [
      "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1"
  ]),
  ("formal-neighborhood:a416544a4320f201e4397b0cfc2a1d712f8972cee54f5ba80aeefd489025d660", "formal-neighborhood:377b598359d96a9c19e6e592b40795e9dd2c11436fd136716ffdfde2c1424a30", [
      "formal-neighborhood:377b598359d96a9c19e6e592b40795e9dd2c11436fd136716ffdfde2c1424a30"
  ]),
  ("formal-neighborhood:a41e0e778f43dabf440249b8e5999943b7d41b8cdee9a13f009d17c9eb5f29a4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a421189245c501217c9397ab9cfbc57e691fb14219aa6d6648e5dffb97b636ca", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a42da6089864d2b500fedc82256eda8228f8b38b7dca4b8224b0216f49dccaf1", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a439ba35acf9129fafa7c29cb39fdae34e3e5a41ea05779ca979a4a9a4c50bba", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:a467a9d0b48cb80ca573297363d0d2fa5e649e2a60d1f08f0102c54f2a86163b", "formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d", [
      "formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d"
  ]),
  ("formal-neighborhood:a46bbba073a531651e44ddf9444a7b75d21d2c1011a6357b86023c5c7c6ce921", "formal-neighborhood:7e40518b1954bca6f6bf4fab80de78e8eea4fd3c34f309d22cd94882509e6f75", [
      "formal-neighborhood:cceea42c6f48a51a02fb905b71fedfce390d506ce009a1339eb83bc793a81b88",
      "formal-neighborhood:7e40518b1954bca6f6bf4fab80de78e8eea4fd3c34f309d22cd94882509e6f75"
  ]),
  ("formal-neighborhood:a476ae9b409cbfa965a7b8923ce90e4f12a130fb6be8d2227f0064fa400cdfd2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a49768c0cccab01ea3e1a1a3fefe999f0c8526bcf1cf49466ef370a97d1c0e5b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a4f5b51733cdadd454248ee152df33a91cda076195d0eaae6d2cc05f7422fe25", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:844f0bd47eb497730bf558ab8070a23bae97445a969dae519427ad728db90137",
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ]),
  ("formal-neighborhood:a4f66d9cf810f167594349841220b9c98b997e7a96203a1963b7a8acc156acc6", "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29", [
      "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29"
  ]),
  ("formal-neighborhood:a53dcb19a977e2de7fbb4137626fe6de9ab5967a85ce723144ada33403cdd61d", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:c57c11569d58b8e3aaa4fdb21761bd3f3e676eb6934ea143f790bfa1ba8eede7",
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:3a6af848f023f9dd886082e88d386db119355e31fa59154f6571c606ad7f8324",
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a546351ae1c0cd7659944431d11a31fc3009c664f1406c06ad491245b0440077", "formal-neighborhood:4edaa65c20517f440ddf567b54f23a286be402e879526f83889c8516fb9293bf", [
      "formal-neighborhood:4edaa65c20517f440ddf567b54f23a286be402e879526f83889c8516fb9293bf"
  ]),
  ("formal-neighborhood:a55a8ccab495e8a9951534e26ec0efde2b860f590c9f0c5726193840b17f8e18", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L120261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
