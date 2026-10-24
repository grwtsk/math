# candidateSelectionsChunk0023

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0485c3c02e47409d1dcf060ef11dcea1b30824145805d3ab775113f425366644",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0023",
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
  "slug": "candidateselectionschunk0023--eda75ade7ec946ec5d125c9e",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52204,
    "line": 51834,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eda75ade7ec946ec5d125c9ea0699f4f2fc1d17dc758e9643650a4d6f596f1e7",
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

Occurrence: `declaration:0485c3c02e47409d1dcf060ef11dcea1b30824145805d3ab775113f425366644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51834–52204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0023 : List (String × List String) :=
[
  ("name-candidate:91c9de9ad6fb4f47971947e55a95e47d9f89607a9fefd10ce64ccd992f1df8f9", [
      "name-candidate:91c9de9ad6fb4f47971947e55a95e47d9f89607a9fefd10ce64ccd992f1df8f9"
  ]),
  ("name-candidate:9a43113676c8e839e90f78e569066a807097469d7973946e012bc82a4b686ed4", [
      "name-candidate:8ef585186fd1a3714183046f04b2326d8a3579cd56d2d4ab16ae0cecc9e58f0b",
      "name-candidate:9a43113676c8e839e90f78e569066a807097469d7973946e012bc82a4b686ed4",
      "name-candidate:b33230dd786bf22651d8d0e441c81183c9d5b9ac468f5770ffa0298e452fdbc4",
      "name-candidate:dad63c97116208a91de4b36ae56e9be7d9644bbfc348e474d91de7b7fee8df66"
  ]),
  ("name-candidate:0c966c92ed52dceb19a975915c71fd82dd93d04062d6a30a21b08a5569e717a5", [
      "name-candidate:01cc9bc0032beaaf891ae9ca4f0d0962448a2a5c80b26856242e7ce9607fa8c1",
      "name-candidate:0c966c92ed52dceb19a975915c71fd82dd93d04062d6a30a21b08a5569e717a5",
      "name-candidate:2b169a473baa3e91b40a21f6724ff38c7843d782ba7b5e8f49e9a35ea155ddb5",
      "name-candidate:7dfd05f3598882a2db0fc7f3de17d3aacfe8a76fc9c6375f14f4fd4949ed5096"
  ]),
  ("name-candidate:1a195b3e2df6224ff7dd07a2331e55ee530783e4e0b5a4ae377b5c239daabf93", [
      "name-candidate:1a195b3e2df6224ff7dd07a2331e55ee530783e4e0b5a4ae377b5c239daabf93",
      "name-candidate:2085514fd1f52d291ddc5dad93a47496f25ebdcd2aef6f9807cb4ebb86ee9393",
      "name-candidate:338668d6b2ca229a7339bbe0eeb5dbb7b94b692b27746cab058a34e5664f81b7",
      "name-candidate:e094fe33cf0fd63f7c78c7cf61bf948fb19628b804048900e5835c0eacfbde5d"
  ]),
  ("name-candidate:460b7db5cbf0caac29c19684526f64fa999f6e4560d3d55d66ffe1e3d94c9016", [
      "name-candidate:460b2d64c0c642591df8fac902c5fe3b78da967656bfa533ec2cb4517fa1771c",
      "name-candidate:460b7db5cbf0caac29c19684526f64fa999f6e4560d3d55d66ffe1e3d94c9016"
  ]),
  ("name-candidate:5e5631f60e7aeb9d9565f153451c63c9ed221ae532da1a35ce23da4a17fc7e27", [
      "name-candidate:274b72fb10507e1fd8c3abeca14b7308ba922b8d3cbedc941f022a712be25282",
      "name-candidate:2c8f3dbca5fc34c9f2b17de5313a3f34c43b85b83c04039a8de174db7f52ad43",
      "name-candidate:5e5631f60e7aeb9d9565f153451c63c9ed221ae532da1a35ce23da4a17fc7e27",
      "name-candidate:c3c34e8a98f302505947bf96cd119495c7d1f43ff9e3decd584f3c9ffaadeda3"
  ]),
  ("name-candidate:57085e51736d989b2a3b0030c81eb898b4cccf5301eee23899f98a6d811ecd90", [
      "name-candidate:09541ac190bc26773b42bf87a760049b7783d40b01f63fa301d0f25870f4aede",
      "name-candidate:57085e51736d989b2a3b0030c81eb898b4cccf5301eee23899f98a6d811ecd90",
      "name-candidate:b46853a09ad7ac9d5b25b841c54ad93244e21f39be709b3fd7e976f1260c4dfb",
      "name-candidate:f01d9ba87a7328f6719f8fb3dbb9718c7e54539594ea6ecba0d044acbd40564a"
  ]),
  ("name-candidate:32164b8ea86adf0d13390d35ffea9607f5f413b4642d06452a53d46a72e29f70", [
      "name-candidate:008a81a13c3623560e38fa8c0eb2e4d36ef779c0062a95e7736541dd6fec3942",
      "name-candidate:32164b8ea86adf0d13390d35ffea9607f5f413b4642d06452a53d46a72e29f70",
      "name-candidate:87092d77139cd3ccf1e704488dc84b0a34e8cb92f6de27b7dad23c112d41595e",
      "name-candidate:fbaa1c0a024205ed769f2b04173f8d9a189a54015fbf908166fda3904fced13f"
  ]),
  ("name-candidate:32e1fa4914a94ca865e5d14183cfc91c6e2b165079f11723f13930554167660a", [
      "name-candidate:32e1fa4914a94ca865e5d14183cfc91c6e2b165079f11723f13930554167660a",
      "name-candidate:86d8c3abc0a78ff4408667c53e537ffbadcca80c586c3edbd0d8891c863d39b2",
      "name-candidate:c62bc8cd263c7629ad535d04d9b4ae8e17ba3bc9f1d919a8edbbdfc0225be313",
      "name-candidate:f56ab2c5850eb7a62f834df5a69a14f3fe061e1319904673e698f0d36ea91e20"
  ]),
  ("name-candidate:bafd1344a74a96c252aca4ee56312133e9dcec541460332f2c7d629c56ff0715", [
      "name-candidate:598186980293d48d8a2e59f54a8603d7c512b54c06c417ae9a1b779f96db1091",
      "name-candidate:692f707179e8bf3cee02b61294d24558b6e3ec3828e5635144d3c1ca4793e54b",
      "name-candidate:bafd1344a74a96c252aca4ee56312133e9dcec541460332f2c7d629c56ff0715",
      "name-candidate:da9a2f64194d7804589048b642d0c2710b96697be2f8601cc7add0bb9f9d5b78"
  ]),
  ("name-candidate:ddc2dbac3d6141c7adb6432ac3045662036e4f0c0b4f03b668b57080caae33fa", [
      "name-candidate:1f9520f042f1814ae946f2ee94572b2df8c32b28e432ee89caec777a9afd509a",
      "name-candidate:94be96a1560323433bf38f34a8e1cd3ffe6c85cf5c041df06508daf8b46d457a",
      "name-candidate:b3fad92725b8e78116512669b929a3c021ddaad9aa0748dcc6ee56322e76fb37",
      "name-candidate:ddc2dbac3d6141c7adb6432ac3045662036e4f0c0b4f03b668b57080caae33fa"
  ]),
  ("name-candidate:c6e4be939a215b633e0a22735b8f39f015f9ee2896cf65cc24a724818afee850", [
      "name-candidate:141c4a1eb70f29d9b1efd6d919a0949c780f9dd9ef3c547d07e141960e8dd82f",
      "name-candidate:544cb6c60a5a6dff13c3348f4800752fe250f65ea2f704fc47454999dc600336",
      "name-candidate:c6e4be939a215b633e0a22735b8f39f015f9ee2896cf65cc24a724818afee850",
      "name-candidate:cc5a335fd8bf7ad1f70d86bb4bbc57efe07e6519e0fcb2347ab2eabc945f5b16"
  ]),
  ("name-candidate:a7c822b191190261b7c0763ecc142732f99569a729345604355f86e2dd348fdd", [
      "name-candidate:625b18166339c4ba4bae21ce47d903af7fd178fd99bfa9971809de84d9158424",
      "name-candidate:8b986e459adb7ced60592a9b6e4fee19f9a5c7d1284a99f3015d8c2420a482e6",
      "name-candidate:9760dd28baeacdaaf37171a7caddada05582acf92651b9164e261b86a67501d1",
      "name-candidate:a7c822b191190261b7c0763ecc142732f99569a729345604355f86e2dd348fdd"
  ]),
  ("name-candidate:a04a2e98e1b042068af010d3fe333128214d08960d9ab52920220680906d54bf", [
      "name-candidate:38c86e7e18381c7cf39169f8df6dc302da1f6d2ac7aac730c7b0336bfd0178f6",
      "name-candidate:a04a2e98e1b042068af010d3fe333128214d08960d9ab52920220680906d54bf",
      "name-candidate:e67f441b15def5ab13a40328f776d682f3d761a9e854f4d460498e73bb5aed3e",
      "name-candidate:e80f666785bcb66326e956ef68cbaad9586a6d700e9a6cbf794d7e427a80b326"
  ]),
  ("name-candidate:bb6438e68219f22fc6e451e37451f9cbad80f3aaeb1c5efce9064f2bf2f9c735", [
      "name-candidate:05284d50b4af15bcaaa88e7687f352c148f93f6f108c99d7b94508b8fd2e2ac3",
      "name-candidate:302a8aa746e7b947060c2ead5531ff18884f69d747081f9a25816c26915a347c",
      "name-candidate:4a86ce23232b1f1b2f9097553c2378bd907384162ef202a38b859747138c424a",
      "name-candidate:bb6438e68219f22fc6e451e37451f9cbad80f3aaeb1c5efce9064f2bf2f9c735"
  ]),
  ("name-candidate:ab5dffffcf09054453520fbab84dfa98cc75801ad7b10d21c105a98d8d2514c9", [
      "name-candidate:39ee2c4bcae61afb7bd93f4269c388e0fbfc6972dceed38c72dfc50501608afb",
      "name-candidate:9de81f0e5ae4d41f35802dbce07ca395d7f53b1934edecca3ec6d78616d866b4",
      "name-candidate:ab5dffffcf09054453520fbab84dfa98cc75801ad7b10d21c105a98d8d2514c9",
      "name-candidate:cc3b9d5853299bded3de49546526c12b15106e9e5fabbf2e2867b4c8e94c1468"
  ]),
  ("name-candidate:4ddda47aa5786a06e269e5cb3a545cbc34ec1e9266cf75697cb8e404155377f1", [
      "name-candidate:4da98906c5c6d1c56aaa2e2c86eff94f44ba0140e2626184349c5571d3bbe220",
      "name-candidate:4ddda47aa5786a06e269e5cb3a545cbc34ec1e9266cf75697cb8e404155377f1",
      "name-candidate:e518e77951f1a825104da1b177f22b49cc7c8fd8a49697143bd09bf00f5cb7fa",
      "name-candidate:f22ada1e8429780f62d99b7c08e07af222ca16255a9fe48ceed8d297bf800858"
  ]),
  ("name-candidate:65708581ee592a96ea18af0b3d68509338e8ccfd970377cc774ade6a0d0e10a9", [
      "name-candidate:0b0e45dbfddfe31d2b095964000fb5947808534aed4ee2a3b2e9e8aa81fb2a17",
      "name-candidate:12b8ec5ba5f6d9458c4bcc772280866f73d5e191d5bf908b8b2ea4f6e1b60043",
      "name-candidate:65708581ee592a96ea18af0b3d68509338e8ccfd970377cc774ade6a0d0e10a9",
      "name-candidate:77f27430f062c1314322665fc899eb03448fd5551e1a54debfc7c7409f2be7e1"
  ]),
  ("name-candidate:3706a49a55e48ed67d7c48b6953a7c64d9b546cf6bdba5c501c838780aa0b78e", [
      "name-candidate:3706a49a55e48ed67d7c48b6953a7c64d9b546cf6bdba5c501c838780aa0b78e",
      "name-candidate:52f4f2b6614782d43a6e88818d94d08b4be20d66ac6441923319df19c6d30c99",
      "name-candidate:8bb0f781cb49e99a6ffbba23c3469e17a1d1801060d6aefb14a6b2f04c38c960",
      "name-candidate:e0746d751c2c3bca5d6e9c0b2e59a9577611f9d68b34b8b4f8250cff3cc96a08"
  ]),
  ("name-candidate:33e289eba8f8b014bc41937c335bec5ce49061fc99d82bf01297d2aaab571d86", [
      "name-candidate:33e289eba8f8b014bc41937c335bec5ce49061fc99d82bf01297d2aaab571d86",
      "name-candidate:5b534a99f04c8bbe1ff937b1614bac8dc6eeb063069aedd147aef2d6d60bb219",
      "name-candidate:839358cba02bdbb17799e282bde45d475d251331ba555e27ac9994cd8f2371c0",
      "name-candidate:b619bc69f5b55bd376f7647d8d704e0b2babda3c673f7108f673c476d30703d3"
  ]),
  ("name-candidate:8208f534fe5a8042b434f196a400984de829398422db2f280c1912d773809642", [
      "name-candidate:7198437f10a9ce9b13e97503e7f7da27de84032ff82e68b5c86946e0020805f1",
      "name-candidate:8208f534fe5a8042b434f196a400984de829398422db2f280c1912d773809642"
  ]),
  ("name-candidate:fcb1ce83b03a835159040cf28fd58c66ae0cf3292b28a3f976e4993ebc879922", [
      "name-candidate:40b57429c4096877ebf7731b833812ac594f29d33cc661ae9c7f77ad16855edd",
      "name-candidate:4f40ce14673aa6846a99df2a91e9be5ccb42794aeedae905db1b1563405b3f55",
      "name-candidate:fcb1ce83b03a835159040cf28fd58c66ae0cf3292b28a3f976e4993ebc879922",
      "name-candidate:fcf15fb11a5eba65138d77d825578af7e5ccfadf640967dd3a0772343ebd7b37"
  ]),
  ("name-candidate:0086ccdc50cdd6c0cbc4e2bada726831b5c9ee8133d31c472c9920d85a86732e", [
      "name-candidate:0086ccdc50cdd6c0cbc4e2bada726831b5c9ee8133d31c472c9920d85a86732e",
      "name-candidate:852648650fbf362ef799530ed967ba30a8acc472d30ae85af86ee49eaddeaee5",
      "name-candidate:bdce8a048acadaced6d47d69d8af6ea614fdf502bfbad3bbf0ba7eac3ba74299",
      "name-candidate:d594880dfbce52000edea18781a8a7081de9aba602bd4eebb674234e93485761"
  ]),
  ("name-candidate:006cf124b830428ce0a11bc12e635a494a5f656bc5c06908b9624e633832348c", [
      "name-candidate:006cf124b830428ce0a11bc12e635a494a5f656bc5c06908b9624e633832348c",
      "name-candidate:2124030db0f225f7c28bdd7c785f8bcc3701832503f13f761a0a52c799faa885",
      "name-candidate:5a803cfa4c37f17734356a6836a9cda40505c34ce7c020b96e00f4e5d7fd28d4",
      "name-candidate:5f62d3390a41a32abb8862578b6c89bb23178fd4bec2c3211bef0372ffdae58c"
  ]),
  ("name-candidate:2e29e545e976ba7857ad47ca97a90745c17fae414c5b228de3b8913927e8a06c", [
      "name-candidate:2e29e545e976ba7857ad47ca97a90745c17fae414c5b228de3b8913927e8a06c",
      "name-candidate:365ce4e092010e2b4ca29ae509346ec0fea0b8fdfa573de96075c0674c25f2fa",
      "name-candidate:6e0bb9c68d0f6a81f8a1ea7ce799e70d512fb7d6160102ebd867a8b3d318b81b",
      "name-candidate:b20c5ede2e1afdede492ea136970b14f992940757d6ad67295284f431ae81a34"
  ]),
  ("name-candidate:99f969c20e1fb52867ee2b0bba07072071d178ac4b9ef2baf2c09c764fa50caf", [
      "name-candidate:425296457214be966d23c67dd4bbae0cf655087c0e94839f8785464f5e811d59",
      "name-candidate:800373256ffbb2847f5cf45b5441f009710f93b3047ffd5eeafcacb841478d9c",
      "name-candidate:99f969c20e1fb52867ee2b0bba07072071d178ac4b9ef2baf2c09c764fa50caf",
      "name-candidate:fa904d0b4d4c1819ec9eda9b8c28c96bfeb9e6ce01c4824bdceff88fb84be1db"
  ]),
  ("name-candidate:0de8109cc746ee22d522fc44379fae652d583422da5adf83ef9f3e38028b94e1", [
      "name-candidate:0de8109cc746ee22d522fc44379fae652d583422da5adf83ef9f3e38028b94e1",
      "name-candidate:640d3c1dea8d68e7a2be1bbaf4063c6bb2d532aa8e9000448f7a50abacfb4809",
      "name-candidate:6a6b112c545d1ab8e3b2561789c247a3353aefb8b2d7d95b1ff5111a87ad3ac2",
      "name-candidate:77fde8fcbc8d75b9cf6fa70a985ad3f5dccadcc24bc08c8d604c46dd17fa567c"
  ]),
  ("name-candidate:e549a2e26def68e00460e8738471a27e670522d69b85083d732fd96cb20ae063", [
      "name-candidate:3cd55c47f573759510a66d9afd4bb6f62edef81fd1d51eb12ff4ca27b59c2b5c",
      "name-candidate:4554716571e1eb21737dff7aa99214451adc99db8671a4004f1ca7af60f7938f",
      "name-candidate:c588d2f69983b96df5f9edbfd0e1556342886d5b9204f6719e1a09391c343768",
      "name-candidate:e549a2e26def68e00460e8738471a27e670522d69b85083d732fd96cb20ae063"
  ]),
  ("name-candidate:53b4390038e7a17b72099f657704cbb4fb12efb5bcdc64ad6c7d45e6235895ba", [
      "name-candidate:5028df1b1cb43c25ced62aac498a147ff719ca696a2da178bd50107e2f5ee006",
      "name-candidate:53b4390038e7a17b72099f657704cbb4fb12efb5bcdc64ad6c7d45e6235895ba",
      "name-candidate:64315cebd3aec6aee1f246d7951255b90c70e17ad0847b1ec79e242900f8ff4a",
      "name-candidate:e36222224d0236dbe4e57f30d1909aa4cc739c786d3d6d348e1297c5f46452de"
  ]),
  ("name-candidate:e02d1fcd63f17b372038938369439b03411f60e53f7f541d561ab161b33635a0", [
      "name-candidate:4af2c58282fcc8c90990d77cd8c3b04b5abeaf1290b5da20db504d2b2eb932bd",
      "name-candidate:a4093659de6ada988b7b85d43b1e000093042e021d7b1b23a983bac52d31c602",
      "name-candidate:e02d1fcd63f17b372038938369439b03411f60e53f7f541d561ab161b33635a0",
      "name-candidate:e06004b469cb4d96a0fd569e4babec901a33262e0717fd9bf9eb3edeb0defff3"
  ]),
  ("name-candidate:dd7021af98eed00babcf9bb03a055902b4534b1b23620f941f275e040a618946", [
      "name-candidate:488a0d0b304c61cb1c5facc65850e2f01b10189e4c085aba2f8e802b4afdea60",
      "name-candidate:8cdbfcb9a825de1b99612f40c2a3abfd1145994bc927969e468349dc85b2945c",
      "name-candidate:9bf2ddeaddd4335e8c43b32e162045fe1c71af87015ef3d52599b50700d761eb",
      "name-candidate:dd7021af98eed00babcf9bb03a055902b4534b1b23620f941f275e040a618946"
  ]),
  ("name-candidate:eb4c4392a680758bc32043bc0c84e1ca0765f4bc703f694126f61c79b3fe8c18", [
      "name-candidate:7a363031b3a450bf73f0119c1d8ce3f041665b4e8da6f1023ac95e3141f3da8b",
      "name-candidate:eb4c4392a680758bc32043bc0c84e1ca0765f4bc703f694126f61c79b3fe8c18"
  ]),
  ("name-candidate:0b73494f20dc7a608df4173aad5ffae39169c0b3340489c93f6efba2acf94945", [
      "name-candidate:0b73494f20dc7a608df4173aad5ffae39169c0b3340489c93f6efba2acf94945",
      "name-candidate:c849bda995369e8dc7cd83b8ae34b6a67a1d308283a311acbfc0d4548883663d",
      "name-candidate:f9aa7bc73ced900a7e4afa68f90c183f95bbdb70e5f8fed0acc58ae220a12206",
      "name-candidate:fc5eb57f324525f326e700c439504f2f371171e0f203ea521c93fab812d2a9ef"
  ]),
  ("name-candidate:e1319fec506e6cd543e7a9202fe6ccd67cb996cc547e1f79ac32ea9125f259b9", [
      "name-candidate:04ec79db81ee1db219f8dcc9f397d021ad2d8a766035a87c5bb174f636cf7ee9",
      "name-candidate:3cb609d9cb56bf7f1a8b74667ac4e831d5db76309e3396c6fd5c87fc95bb10c2",
      "name-candidate:847932ac68a7113c64991419484c22f974e86f8343d06800029c496cace5cccd",
      "name-candidate:e1319fec506e6cd543e7a9202fe6ccd67cb996cc547e1f79ac32ea9125f259b9"
  ]),
  ("name-candidate:7d60babd5796cee84497750c6c3360fd2821471edf6bca4097978263ab3efc57", [
      "name-candidate:6134ae744f4d295ae907f00d20929c98e577cd14078840296ff6dd1a6d29e4c7",
      "name-candidate:61bac1c36c2f8e090d3d8372dc88fc25d2d78052ed2016a7bc09be1b94fc8787",
      "name-candidate:7d60babd5796cee84497750c6c3360fd2821471edf6bca4097978263ab3efc57",
      "name-candidate:c9f62795f41fdecebfa09bc6e2ccc5ba5d8b92de9ad410a2e527010ddbdb36b0"
  ]),
  ("name-candidate:50206ffbb70bd6f66c87bac3ebba18be9b8aa370ace25a24c534980498415570", [
      "name-candidate:23eb2e07cd3c6d15d855f7e1377c40d7a248f14e40d721d3a2285d7ba53caea0",
      "name-candidate:50206ffbb70bd6f66c87bac3ebba18be9b8aa370ace25a24c534980498415570",
      "name-candidate:8e4e307ce42936292795ba0de0997bdf7d2c26a44d87933fc95d818c12e9e106",
      "name-candidate:a13d96f649e9712577954e5bf58ea0cdf476b56596ad9a9383a1aaabab0a8c7d"
  ]),
  ("name-candidate:dc88fc58899fe1faee92662fab44e5d5f9458f31545849b7a1d04b2b9b4b616d", [
      "name-candidate:0b265ee36d1e0a7a5205ba4a118dcd1ec082235a687bd8d559667eb396695d67",
      "name-candidate:26e144cd19a974942a3414472f416d7d53a0dcc4aaba5cf2c0419aad624d7fc8",
      "name-candidate:dc88fc58899fe1faee92662fab44e5d5f9458f31545849b7a1d04b2b9b4b616d",
      "name-candidate:f92fca0d6387f59258a74bfa8464204a3629dcee6ba0293c980ea772ba1f4867"
  ]),
  ("name-candidate:05b08a12d7f7075a1af1f1882f14b85d019da3340946acc4843ca31311cfeccc", [
      "name-candidate:05b08a12d7f7075a1af1f1882f14b85d019da3340946acc4843ca31311cfeccc",
      "name-candidate:20fdb549173a80fc73bbb085bc7bb9689504ed2f033f3a02b63fe0f38d313f6b",
      "name-candidate:d5275df94f3ebadfc53859106e6bbf3b0e7db5f0b91f5920d8a63ce97412cafe",
      "name-candidate:d7452d697fadf9d4de5db753381e5845abb4c7945874324315d21c4af1568282"
  ]),
  ("name-candidate:dfeebfaba6669641531d60f0f67c854507fe5d15c6cdca355326fe386b67c507", [
      "name-candidate:289d9776a446fc6f9cf279633b6742d805371ff6d9054fee100b935f5233ddf0",
      "name-candidate:5a8cfa5805063b18c8c68d7ac1f354940395aa9f840f23deef388ad2418f26fd",
      "name-candidate:8c9dbb8635b785b06beb2dac54757dc9f28d1edcf2b8df15b63510bb530c16c5",
      "name-candidate:dfeebfaba6669641531d60f0f67c854507fe5d15c6cdca355326fe386b67c507"
  ]),
  ("name-candidate:fd888c7c21ac0e5cfc43d2c142b37fad30f70c162557283c861ae1c387eb6aed", [
      "name-candidate:0ea2776e3a0bd407bdd07c48e0711b09185ad55fe78678cfc4e2074cb9aa9404",
      "name-candidate:5b1a0eaaadb319acd5602c43c6f5065284b7042ba0cca919252fa0f67a2a1be2",
      "name-candidate:fd888c7c21ac0e5cfc43d2c142b37fad30f70c162557283c861ae1c387eb6aed"
  ]),
  ("name-candidate:b21e4b3783a51db5aa3c2c84d78d48afe8d78713ed2acb24f5c1b82f23c8c4e6", [
      "name-candidate:0519f4139ad99a55f8d38f1a44aac7eb3da7d7c0376c0401c169a31960297294",
      "name-candidate:0599585d1ea6416233bd5b65040f0f35f1a82d7c1928197448d44f9c45a46754",
      "name-candidate:3b7cfb36d63fea759af2229c6384ad33c3c4bcee0145bf83d27aca2bce1e1b41",
      "name-candidate:b21e4b3783a51db5aa3c2c84d78d48afe8d78713ed2acb24f5c1b82f23c8c4e6"
  ]),
  ("name-candidate:c595a6a7c5668a2628b007d03086d93ca0ca91d1f02e7f460004f041565514fd", [
      "name-candidate:073e25023d5a60545162e8a86d93e978e80af499f74e16ab1fbc749a63db7bb9",
      "name-candidate:2d641db8a784b3ce6e463d00190b5050dfc8911443c9cc7f4cdecce002c7df07",
      "name-candidate:c595a6a7c5668a2628b007d03086d93ca0ca91d1f02e7f460004f041565514fd",
      "name-candidate:d51cffb01cda01e6430ba8ec6aac4b81ee25e4c3c81c51bb86c09bd291d4aeb4"
  ]),
  ("name-candidate:e200913f2ea33d13e106c13b3ed8ed214054c61fd3327352a07fcad3ef9e40f0", [
      "name-candidate:e200913f2ea33d13e106c13b3ed8ed214054c61fd3327352a07fcad3ef9e40f0",
      "name-candidate:ed03f53594c4290b5b80674560ed2cb7c023c93434066fa989ad6ab2ac2f37ea",
      "name-candidate:f5b8258823871b81cd5fd3e5fe2e1675bc6ca547d34765c5379a1a34d46a0671"
  ]),
  ("name-candidate:3bb0aa1692939edfd9265eb498c3a95581959aa1281af44aff277e82251e5ff5", [
      "name-candidate:3bb0aa1692939edfd9265eb498c3a95581959aa1281af44aff277e82251e5ff5",
      "name-candidate:a88a900be161d7b7cfef3672bbc6aff06964a0efa26676abb6b5dd8b0b14b17f",
      "name-candidate:cd8c20c54340206f7359204ec928e78b8c5d791599efd16b37beb5858a420fef",
      "name-candidate:ed3a8ea3ba160fd4c4a5fd969c692c17d581a184553f46a449bec6787638c5db"
  ]),
  ("name-candidate:816fd954fa4807b2855c8d133ab25764a15035844778394eefe96d1663f0c745", [
      "name-candidate:2577af4e7ddf7d23c10186ee2d9c824d63388b35099ccc61cfb284a748f92ea8",
      "name-candidate:816fd954fa4807b2855c8d133ab25764a15035844778394eefe96d1663f0c745"
  ]),
  ("name-candidate:1f93de387ec3f4bf8b8f1c7b7662db8a069b85871c3c4a73303049ccce702857", [
      "name-candidate:1f93de387ec3f4bf8b8f1c7b7662db8a069b85871c3c4a73303049ccce702857",
      "name-candidate:21c9d65030045a6ea8549def4c691ad85a1c5c00e7896aaf171d86e9ec8b2d19",
      "name-candidate:2a13558f8d1141dc0d94bfd7756b4006f6a36fe615b4501e26db5ba5c32960db",
      "name-candidate:2d4cdb8590dcc643a20cb5da34c799d17666459763a3aa6a7fc0d44b4ce2897d"
  ]),
  ("name-candidate:2949227b688ef2adc850315f718e8e92b9eda12c9c5c515c775caea3b943427d", [
      "name-candidate:2949227b688ef2adc850315f718e8e92b9eda12c9c5c515c775caea3b943427d",
      "name-candidate:8195299de357792950bd52762973734adfe7a3706d5d1199c9145a26a4201c64",
      "name-candidate:c161352e2b82799645a959d1515520607f70c8ad75b0c43982be41493c79e8f0",
      "name-candidate:fa0e7bf1c24cb04bf1355aa89232136c6c9f591f167e08da8c32820fcea6b57c"
  ]),
  ("name-candidate:12be7fd14e5f392874cdd4fa93c5ab2a59fd837c1569c9ab1d74a3c6b5112e4a", [
      "name-candidate:12be7fd14e5f392874cdd4fa93c5ab2a59fd837c1569c9ab1d74a3c6b5112e4a",
      "name-candidate:4fa826f54f54aed21e1b9ea73939c51f1497e8b798bbb5c8a75ad9d166d05a61",
      "name-candidate:9b56410974f77110468b037c58072ceb5772ab6401ecc6a5d6277a7a4001db47",
      "name-candidate:f7b18959631241d1269ea844c181e1196956e4a2b1ddc398d429842729c0ffaf"
  ]),
  ("name-candidate:a5e52dcf4a8f78887c9f00636d4277e1d76b6a91df243b7c198d6aab53e75621", [
      "name-candidate:87015fbd935b0b518cc8c9667483c6711a7d2cb7dbfb820b629a29dd793e00d6",
      "name-candidate:a5e52dcf4a8f78887c9f00636d4277e1d76b6a91df243b7c198d6aab53e75621",
      "name-candidate:ba731ce7b81240de9e77fc50829ad0296962b289139cc0fd5e3b7c3b0476af2a",
      "name-candidate:dcc8dfe5823e4b15c08bec69972fe82b7de0ac64530c0bdfdf5648704fc5c129"
  ]),
  ("name-candidate:3afe6cd538f4714830e144dbc96d0991efa0b0e614ab14f0bc27a6f5b4bc2c35", [
      "name-candidate:33c5f7fb198655e9c941ab71c234872bc9486808155d9af81b8bccbcf42d73c7",
      "name-candidate:3afe6cd538f4714830e144dbc96d0991efa0b0e614ab14f0bc27a6f5b4bc2c35",
      "name-candidate:47e8c7444e3920e5dffacebc566bda7be5be40ac84adeb695548496f5eaa20e6",
      "name-candidate:fe80e8ae0ac2500c3419fdd94ad254b935d9e3894f0a03adc54921750b6c6d25"
  ]),
  ("name-candidate:4fcffadaf6586f184a6b404e1607b3ff1665106d3724cf89bea211f8e862ba04", [
      "name-candidate:4fcffadaf6586f184a6b404e1607b3ff1665106d3724cf89bea211f8e862ba04",
      "name-candidate:596a40a963d414bc84d6a659387cd6c1ea568e50c90b19e98e2b8011fb286bf2",
      "name-candidate:6b2b816d0aa45030e693133acd617a613a6da969be07413f647d43a46739bde1",
      "name-candidate:f3a136435794d44cc034a90dde2516490cd5d29a67e6fcdf3d758114ae0a435c"
  ]),
  ("name-candidate:00dbaabd3cf22f491678ac94f221461e2577611fbab91afdc26327bdbd5c5ac1", [
      "name-candidate:00dbaabd3cf22f491678ac94f221461e2577611fbab91afdc26327bdbd5c5ac1",
      "name-candidate:4d0d83cdc46a00d78036b181734de7e2fadadf621459079b1053064c09901786",
      "name-candidate:8f334775b5419848da5ceddd37bdd9e2548dd8aeebbeb18af537f0fa7ca4848d",
      "name-candidate:a187cd0d460609e13e0cd57f4b52fc08909c85b8c6160e9f43d77e973455b806"
  ]),
  ("name-candidate:f414634a7a46ae2712772f2acfe66b25592a38c3589d7929aa2b8b02ae6f93e1", [
      "name-candidate:7d7a10e9fda47d1f498c952d91cf1ced723f510f7fcbfef84ff0f482c657da13",
      "name-candidate:b1238ea0cc1e16dd2eea8cd40420375e830ca15ef2eee73f16984c703a198226",
      "name-candidate:c8e3bd5063129e5044328c0e583ab3000179de8ecd1c33d8d2e3687eb516f189",
      "name-candidate:f414634a7a46ae2712772f2acfe66b25592a38c3589d7929aa2b8b02ae6f93e1"
  ]),
  ("name-candidate:313ded6bb13bb135a0fbac2d39383699a7c7d6425e8cb7442524befa4026304a", [
      "name-candidate:313ded6bb13bb135a0fbac2d39383699a7c7d6425e8cb7442524befa4026304a",
      "name-candidate:473b7b98639c61ffb7d8d04f2e74335a5f7f629448afec2bb5c3ef46274d6d67",
      "name-candidate:7977f9340015374ecf940587bcb5bccd69878ad4abfcfb890b72fb510f6a00e1",
      "name-candidate:e84f63711ed1108a40677098726a96084318697a45c5804d856c40617733f74f"
  ]),
  ("name-candidate:d0cab0ee22516c2cb149b007d5bc9afa2fb1546d5c0b186c52f4b47c16c7c5bc", [
      "name-candidate:3381d34208c7835bafcf24600501cb26aae5396d277c0a399b03cb41c69cdaa8",
      "name-candidate:8dd26b02e84187cde1ad35f65fa06eb647be77e81935360f06eea0ea5255d16a",
      "name-candidate:d0cab0ee22516c2cb149b007d5bc9afa2fb1546d5c0b186c52f4b47c16c7c5bc"
  ]),
  ("name-candidate:c65d79cf736651faefad956875ee455a606d8c6cca32d07b6196570af9e17eb0", [
      "name-candidate:0d52746ef2f12290032818845890aafc4d62b905424ddac38931eb8b9e80ccdb",
      "name-candidate:8e50b1df1a675652521cce21b47171e2541a6dff7a632869668d62e4df1cc2ee",
      "name-candidate:c65d79cf736651faefad956875ee455a606d8c6cca32d07b6196570af9e17eb0",
      "name-candidate:e75b99c7b9dae16904af84d8fd7c455973eb6955f677ead066df167e0f5156f7"
  ]),
  ("name-candidate:b96a5f9c307bf88af79f6c542d59ada2dfb449b3bb7b41005da9e5c2844ec9d6", [
      "name-candidate:34e2c202613a5aaab27a57234896726f4dff690e8a06a961f5282fe06e663c1f",
      "name-candidate:66931e5d282060b5eb01a2166ba3672be05e62bac68ff5dde8f515fa253a1fcd",
      "name-candidate:986f78c49463084cb18d8ee8ffec6c50c316a1f229ba9ed09ce937d67c1baee4",
      "name-candidate:b96a5f9c307bf88af79f6c542d59ada2dfb449b3bb7b41005da9e5c2844ec9d6"
  ]),
  ("name-candidate:45066a8826584115161684fa1790200ca91c1139f94d6fd28c5e9581fedf577f", [
      "name-candidate:45066a8826584115161684fa1790200ca91c1139f94d6fd28c5e9581fedf577f",
      "name-candidate:8fb05c1c1b9cf88120947153ef85c3861d8758f6b600ac63b59e9715065b9522",
      "name-candidate:a64a8ad5c8474d042b3ff84eb5f86f8cd7a08ec1148d94008359262f795d0c61",
      "name-candidate:af7a4f3bd14883f49a96114b78c19b3b405a6437019b533af52208341be08db0"
  ]),
  ("name-candidate:578861d7737e459c0bd96adb806d56383577e939967801ce196bf69cac509157", [
      "name-candidate:03f0b896d5e0eb9bd2727139e23e2b8c8de1120b39fad793643179f0f67523cd",
      "name-candidate:578861d7737e459c0bd96adb806d56383577e939967801ce196bf69cac509157",
      "name-candidate:742e9a72b9c74136bcaf6d0ec8ca8308e39cc570cfde2a5a1bd2cac53135fdfb",
      "name-candidate:aa988756307189013ff71050a16ebffe85fedcc4b84a2c4f625c2237eeccc7dc"
  ]),
  ("name-candidate:11067d3273d526517cbbaeb684aea52d756e6191aa072e7e6baef2b75076930e", [
      "name-candidate:08c95f6249da770797b1504bc9c7c9abfa8c6fefb64d72da8efbe86697a66486",
      "name-candidate:11067d3273d526517cbbaeb684aea52d756e6191aa072e7e6baef2b75076930e",
      "name-candidate:86e2dd0758c515bbaa89f27456d19ed17de1013538f979585fc7efa352c401a8",
      "name-candidate:baf9fabe5af8da9978f0307b7eb0bc53147e3303880172eddd3f130e3ddb5af6"
  ]),
  ("name-candidate:d487717695005b3759bd1f9ef0307bc54e706e3e53108f59ee0100c55dff91f8", [
      "name-candidate:281e39eaa02c83a1e982a669ab7577051d6dd4b8666a6818d27801b81d04f709",
      "name-candidate:5e822389b1d638d65e9fd49963979e013e1f62cafa5568fe53a6f21822bea728",
      "name-candidate:bf8f3b3d7bf71d4565c55d9c78b5bab20955ddd272ee046a0771ebe030eb3d61",
      "name-candidate:d487717695005b3759bd1f9ef0307bc54e706e3e53108f59ee0100c55dff91f8"
  ]),
  ("name-candidate:f7b9de3425e7de13d9ed413d5f01f7f9db5005259f5a0b4c44ba119820cc0283", [
      "name-candidate:9679ed6a698c1fb1043140aa48c7f0cae7207cfd7e08c0296be05ef878a97faa",
      "name-candidate:f7b9de3425e7de13d9ed413d5f01f7f9db5005259f5a0b4c44ba119820cc0283"
  ]),
  ("name-candidate:56a5c214bf9c4c5385dc691cd81fe443862e1253685b02b14f8cc6d63163e1c5", [
      "name-candidate:56a5c214bf9c4c5385dc691cd81fe443862e1253685b02b14f8cc6d63163e1c5",
      "name-candidate:5fb0cbdee35dc03f13eeb74d672e67e050c56308252179f49c70344b593f8c84",
      "name-candidate:dfba79aff49d2a4587db8a6d97f9ecaecf6a0a66812cdd9cd2c01e0990164175"
  ]),
  ("name-candidate:d5f38f59109aceed53309d03ee7239fa336b70e00d86c5d121338a9fe0b2c1f4", [
      "name-candidate:3e44e94d799d82c9f8aeec58d606c87d35a4e4a109a29c03404774b7c8381581",
      "name-candidate:6dd81dfbe69142a29f0d63040d720954decd1b84f0a4844a0d1c6786aced437d",
      "name-candidate:ce70a44173fef55d67de733a15714a8d3adb00c7c96fcb4b2f1c4ce14422a182",
      "name-candidate:d5f38f59109aceed53309d03ee7239fa336b70e00d86c5d121338a9fe0b2c1f4"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L51834).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
