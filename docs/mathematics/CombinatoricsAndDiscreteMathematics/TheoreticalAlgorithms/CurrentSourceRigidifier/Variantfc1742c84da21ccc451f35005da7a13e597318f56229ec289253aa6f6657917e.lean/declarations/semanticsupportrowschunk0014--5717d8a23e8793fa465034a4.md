# semanticSupportRowsChunk0014

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a06228e75534284f1433b71bbcdd68197845a4523081b14c5c0bb99312136e9c",
  "kind": "def",
  "lexical_name": "semanticSupportRowsChunk0014",
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
  "slug": "semanticsupportrowschunk0014--5717d8a23e8793fa465034a4",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63568,
    "line": 62786,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5717d8a23e8793fa465034a4cff0e7c7209c89daaf2de504b815c884833ae190",
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

Occurrence: `declaration:a06228e75534284f1433b71bbcdd68197845a4523081b14c5c0bb99312136e9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62786–63568.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def semanticSupportRowsChunk0014 : List (List String × List String) :=
[
  ([
      "declaration:build_cached",
      "public-output:build_cached",
      "raw-source:769a1a0f4631398da129077b4092228f07e498b3f77d362285e92ccf111ba0c2"
  ], [
      "capsule:fa9529d9edd0a2aa02f7855bc1c010cd07daf44f3ef27199c02113728b9ddc8f",
      "declaration:build_cached",
      "element:python-point:fa2b4831ad6cc1393f534a410e93b0b769870d8105b06ec0373af3ea2d3a883e",
      "public-output:build_cached",
      "raw-source:769a1a0f4631398da129077b4092228f07e498b3f77d362285e92ccf111ba0c2",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:select_parents",
      "public-output:select_parents",
      "raw-source:ff3c513dbe1f4942a26eeb0c30d581d2ec4c930e4c818e8b80c9c40dbe6b4b8c"
  ], [
      "capsule:061933b76e9ddf7e7ff67f24b67024e5b209be39deff4fcd02e5bd4965a117ab",
      "declaration:select_parents",
      "element:python-point:fac2aa45151709e5c3a865dea2c652145b84856695056d44be320d30d6d1edc9",
      "public-output:select_parents",
      "raw-source:ff3c513dbe1f4942a26eeb0c30d581d2ec4c930e4c818e8b80c9c40dbe6b4b8c",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:ontology_profile",
      "public-output:ontology_profile",
      "raw-source:cda3b5f8f52a38e55d8d6c33b830a637efb40465d6d417e4b876934f9db24e51"
  ], [
      "capsule:83e267c1d093cd5ee920c7594f50ded1c450dd5f3ac5f98adf0e0b2c24a54a1f",
      "declaration:ontology_profile",
      "element:python-point:fb466e401cbd08c02f03021e35b0ee88e86a91639e82ccb5109c324cf6bb7d95",
      "public-output:ontology_profile",
      "raw-source:cda3b5f8f52a38e55d8d6c33b830a637efb40465d6d417e4b876934f9db24e51",
      "source-context:tools/projection/build_profiles.py"
  ]),
  ([
      "declaration:plan_migration",
      "public-output:plan_migration",
      "raw-source:9a68e8260a3aaeb4ce716079b99cfad768264a4b5df8d3b47bf7b2ceadf808b6"
  ], [
      "capsule:3c1d94e5ab12786795a24c3edc762264f2667a344d2cb56baba0c63527422710",
      "declaration:plan_migration",
      "element:python-point:fb69cfa6fe2098cbb0dedfc5041de3311cab0773c28c0f4ad001e3adbc175af3",
      "public-output:plan_migration",
      "raw-source:9a68e8260a3aaeb4ce716079b99cfad768264a4b5df8d3b47bf7b2ceadf808b6",
      "source-context:tools/refactor/ledger_migration.py"
  ]),
  ([
      "declaration:navigate",
      "public-output:navigate",
      "raw-source:40fe0162f9316f7931a06ed0280050aa33c88c1b9fbea79c939a1bd357869f3c"
  ], [
      "capsule:7c28b06f51242e397f85adcf350d132d4d56819b852f96e307836dbb1aebbd30",
      "declaration:navigate",
      "element:python-point:fb7ab273d6f507eccdb9ea8712e6d6f1d322936e8ad56cadcde896f0a95bd70d",
      "public-output:navigate",
      "raw-source:40fe0162f9316f7931a06ed0280050aa33c88c1b9fbea79c939a1bd357869f3c",
      "source-context:tools/oracle/navigation.py"
  ]),
  ([
      "declaration:propose_invention",
      "public-output:propose_invention",
      "raw-source:c7181c3ad1a9be312b0cb128b3eff81dd67a1e869dc066c035c7cb8ddd9612c7"
  ], [
      "capsule:56f77c78bdb9cd937bfc686d1b5b329d2a10bd22996fa44da5c7ef5a69330464",
      "declaration:propose_invention",
      "element:python-point:fb92cbe0eb592a727976269fcb0d1dad63a8f92fbf1a6396febd3dbb15c3b5fc",
      "public-output:propose_invention",
      "raw-source:c7181c3ad1a9be312b0cb128b3eff81dd67a1e869dc066c035c7cb8ddd9612c7",
      "source-context:tools/oracle/navigation.py"
  ]),
  ([
      "declaration:read_json",
      "public-output:read_json",
      "raw-source:5c01782051aff4f611d06f43ac1984993cee5d03d43c80b49496e3733081590f",
      "source-context:tools/projection/certify_projection.py"
  ], [
      "capsule:fd4bf9f63ab66d8e78811b3f3360b62887e3292db0eb7ca0394dca88856d3419",
      "declaration:read_json",
      "element:python-point:fb96bb03bae44d90300ac09e0b099a61d6d1ed03109dc8bc56d00b5dfcb462e1",
      "public-output:read_json",
      "raw-source:5c01782051aff4f611d06f43ac1984993cee5d03d43c80b49496e3733081590f",
      "source-context:tools/projection/certify_projection.py"
  ]),
  ([
      "declaration:NavigationAndReconstructionTests",
      "public-output:NavigationAndReconstructionTests",
      "raw-source:8a5bbd6cf61a7e295df57144df62c265c2c1de8dc7609380540569269372a6b6"
  ], [
      "capsule:42977da21321b53c0256f2241a7eb9e616756a470d0298a295bf0e66e2d76c9b",
      "declaration:NavigationAndReconstructionTests",
      "element:python-point:fbbabc0c7a239112975ee6400523e3ca85392aad8ad82a8b9090dded2d015232",
      "public-output:NavigationAndReconstructionTests",
      "raw-source:8a5bbd6cf61a7e295df57144df62c265c2c1de8dc7609380540569269372a6b6",
      "source-context:tools/tests/test_mathematics_oracle.py"
  ]),
  ([
      "declaration:Node",
      "public-output:Node",
      "raw-source:05a5206f3b67bb59b20b329ca29766522cd5a40f1398e92c1af36a4cc0f9592f",
      "source-context:tools/environment/expression_tree.py"
  ], [
      "capsule:5fb793cd7a557dab98725260f1016528481bf64b93ef9723d1beacbc39ec5f5a",
      "declaration:Node",
      "element:python-point:fbe7021183cfad6f497a3aa8e485e30a28aead8f3dc56050964f199e5f54032c",
      "public-output:Node",
      "raw-source:05a5206f3b67bb59b20b329ca29766522cd5a40f1398e92c1af36a4cc0f9592f",
      "source-context:tools/environment/expression_tree.py"
  ]),
  ([
      "declaration:dot_sparse",
      "public-output:dot_sparse",
      "raw-source:6877a60583d6e958812bedb490ec989c286e9fc64c13926f768fd9fa929f2fcf",
      "source-context:tools/organization/multiscale.py"
  ], [
      "capsule:a3ae262cceb6eea614d057678ef3027683b138da3628ae92719ce10ebb43e865",
      "declaration:dot_sparse",
      "element:python-point:fc0e65523597a970e96d0cdfa717d268d754bdc81e2908a559b01527c801d39c",
      "public-output:dot_sparse",
      "raw-source:6877a60583d6e958812bedb490ec989c286e9fc64c13926f768fd9fa929f2fcf",
      "source-context:tools/organization/multiscale.py"
  ]),
  ([
      "declaration:enrich_declaration",
      "public-output:enrich_declaration",
      "raw-source:844ac9e4ef5931bb8ac7e7e40f3289054fb94ae6441c6eb82160379d5b1d2263"
  ], [
      "capsule:6284bc8adeda6cf1afae78d5ea46c0adac170130ce8c5f3e62b3f56fad020ffa",
      "declaration:enrich_declaration",
      "element:python-point:fc2c4e6cd32cf15ff7f604008eb68103fc801fa15ebd0805bf396ae35eb8432b",
      "public-output:enrich_declaration",
      "raw-source:844ac9e4ef5931bb8ac7e7e40f3289054fb94ae6441c6eb82160379d5b1d2263",
      "source-context:tools/concept-inventory/enrich.py"
  ]),
  ([
      "declaration:trust_index",
      "public-output:trust_index",
      "raw-source:ad2beda68f90c3862cef768768591a67dc8f6a354d1d1ef469724587adad2c56"
  ], [
      "capsule:4be2d92500c9490c5706066fba48f5d7076bcf8f6799f2dfcf407d9910720ea7",
      "declaration:trust_index",
      "element:python-point:fc943f5cafd2efb5ff2b31453ee9f9a511135154fd69d57ea4d2aa1f82b425be",
      "public-output:trust_index",
      "raw-source:ad2beda68f90c3862cef768768591a67dc8f6a354d1d1ef469724587adad2c56",
      "source-context:tools/environment/diff.py"
  ]),
  ([
      "declaration:_root",
      "public-output:_root",
      "raw-source:a230ab8c52e0f7666470d7bbc2cecb001a8878ec0ba0cd6e6cc604df65afd854"
  ], [
      "capsule:e0c74d1d36d25b5817fd246f55e8d8dc3f87f5433760df3051955b5a7355ad15",
      "declaration:_root",
      "element:python-point:fca6aab4055d17820530d6ee35b11e67bfed9bd55c213f10b46065b11cc120de",
      "public-output:_root",
      "raw-source:a230ab8c52e0f7666470d7bbc2cecb001a8878ec0ba0cd6e6cc604df65afd854",
      "source-context:tools/oracle/cli.py"
  ]),
  ([
      "declaration:_scalar",
      "public-output:_scalar",
      "raw-source:d239a2957ff8db4969ddc53f0ea50e35b598d3175ac9b5b070799333b828f072"
  ], [
      "capsule:195d0be0b3270c7a2f0a887851b367ace4323396cda712cb3cdb0f974b7026d9",
      "declaration:_scalar",
      "element:python-point:fcc5a02015160a10ed92941fe00cbb15134e0c74534b77eec15bf77de4759f40",
      "public-output:_scalar",
      "raw-source:d239a2957ff8db4969ddc53f0ea50e35b598d3175ac9b5b070799333b828f072",
      "source-context:tools/environment/expression_tree.py"
  ]),
  ([
      "declaration:unique",
      "public-output:unique",
      "raw-source:35448c2d9313993bdfb3f61fa96b32098aafb178adf6f320c04952271b3dae79"
  ], [
      "capsule:43a77d9d3242b6b16c802cfe520202156075fc8c123d0866db3bbda3fee3bd16",
      "declaration:unique",
      "element:python-point:fccd798f6f51877fd4d9b43cd71124a9d81889edd14680027a68f7db649552b9",
      "public-output:unique",
      "raw-source:35448c2d9313993bdfb3f61fa96b32098aafb178adf6f320c04952271b3dae79",
      "source-context:tools/environment/verify.py"
  ]),
  ([
      "declaration:_invariants",
      "public-output:_invariants",
      "raw-source:1b5307d1993bc251871a23357e04cb8f3b8f6a36f66b44c09f9ea2058fe506fe"
  ], [
      "capsule:2c90e613d58537ad638eb10d8c66e64320445bc66f141b540de9d277e96a31b9",
      "declaration:_invariants",
      "element:python-point:fcdf2759da80ff1fbd3b747eda08711c3610207f5671ab305d13e3ccee76b50e",
      "public-output:_invariants",
      "raw-source:1b5307d1993bc251871a23357e04cb8f3b8f6a36f66b44c09f9ea2058fe506fe",
      "source-context:tools/oracle/surgery.py"
  ]),
  ([
      "declaration:build_registry",
      "public-output:build_registry",
      "raw-source:50d3c59119ccc01d051c20cd32a1e6156b3530c0283a6e7243403d92fae0ee2d"
  ], [
      "capsule:6c42ce77cb33bc070ea14657ae20a0dbc6b7b8114a9fe1dcf39b6bb45508b919",
      "declaration:build_registry",
      "element:python-point:fce5cd49e800daa2f63a997ba47e1275cf23782731b611bc903d92940e30cecd",
      "public-output:build_registry",
      "raw-source:50d3c59119ccc01d051c20cd32a1e6156b3530c0283a6e7243403d92fae0ee2d",
      "source-context:tools/taxonomy/build_registry.py"
  ]),
  ([
      "declaration:load_index",
      "public-output:load_index",
      "raw-source:fab5f3a8aebd1cf4d4d8b53397744c4c023c5f006c409040c1cbbf8d7515fda8",
      "source-context:tools/projection/locality.py"
  ], [
      "capsule:3967900fe72f373e248f2d1660e6fa873e59d824a5740081fc3762593e2532f4",
      "declaration:load_index",
      "element:python-point:fcf3fd60d76910c644aea3de6f1d4996734efa79e920444a93829aa482840697",
      "public-output:load_index",
      "raw-source:fab5f3a8aebd1cf4d4d8b53397744c4c023c5f006c409040c1cbbf8d7515fda8",
      "source-context:tools/projection/locality.py"
  ]),
  ([
      "declaration:ObsoleteFacadeTests",
      "public-output:ObsoleteFacadeTests",
      "raw-source:9f41b87399712a48264491883492682e3bdaaf2c0307e86cdd4050df2472948b"
  ], [
      "capsule:10d43e50a19b415e400a802eb8ba0f51feadf7463b5ca6f41b132232936062c0",
      "declaration:ObsoleteFacadeTests",
      "element:python-point:fd1a075984958115162c3e1ae52166dc7c80521be10b4b24d96ff3db080ed240",
      "public-output:ObsoleteFacadeTests",
      "raw-source:9f41b87399712a48264491883492682e3bdaaf2c0307e86cdd4050df2472948b",
      "source-context:tools/tests/test_obsolete_facades.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:438460d6770a18df42c2858d5ed05bc1ffd4cc15c686bbda83329c91b12fd34f",
      "source-context:tools/organization/persistent.py"
  ], [
      "capsule:5e92ac7975a58203d581f8bc2a9e2936776f970a2804e3bbd7918ed22537fc19",
      "declaration:main",
      "element:python-point:fd34e905d5765703c60f8f35613e80e1929fe51bae1d96873fae4817f92ab383",
      "public-output:main",
      "raw-source:438460d6770a18df42c2858d5ed05bc1ffd4cc15c686bbda83329c91b12fd34f",
      "source-context:tools/organization/persistent.py"
  ]),
  ([
      "declaration:validate_analysis",
      "public-output:validate_analysis",
      "raw-source:90c24fe3248893bc6d002ae70fa3a2d288f9e0bde435c21145a5e2b01e7ea25f"
  ], [
      "capsule:000c1e19e0dc6d75e7f672acc36696df0facfa65e2eee7c0bcf94c26e22d0e46",
      "declaration:validate_analysis",
      "element:python-point:fd7b2a99b6be8cc603c86d829efdf6164b34ef32ec7a83966c500f87ecf59353",
      "public-output:validate_analysis",
      "raw-source:90c24fe3248893bc6d002ae70fa3a2d288f9e0bde435c21145a5e2b01e7ea25f",
      "source-context:tools/refactor/validate.py"
  ]),
  ([
      "declaration:ratio",
      "public-output:ratio",
      "raw-source:f64673acd8d7bbea8afa2a3defdd62f754921d78f20448645f21bc56924898cc"
  ], [
      "capsule:2489866bc03b81d2b1586b0d99a1b7db287d6aa16494e684e9c2c80a9adbeae8",
      "declaration:ratio",
      "element:python-point:fdc119a8b4e153b07bb20ef11d0600dd797f59e117b771199e2b22b41d382700",
      "public-output:ratio",
      "raw-source:f64673acd8d7bbea8afa2a3defdd62f754921d78f20448645f21bc56924898cc",
      "source-context:tools/taxonomy/coverage.py"
  ]),
  ([
      "declaration:reject_floats",
      "public-output:reject_floats",
      "raw-source:12bd13118a06a6deb6b4d858e8e11640d1d389f32167f023657bfbae9665aa7a"
  ], [
      "capsule:f09ee9e3bd3212d66d0d9ffc8e730d75e02d288980ae10b2f9ec6f496ba243ec",
      "declaration:reject_floats",
      "element:python-point:fdd88de9acfafc72c4a01b5f3421684c70e92a3a11c1b0887ca46e967fcd9f95",
      "public-output:reject_floats",
      "raw-source:12bd13118a06a6deb6b4d858e8e11640d1d389f32167f023657bfbae9665aa7a",
      "source-context:tools/environment/verify.py"
  ]),
  ([
      "declaration:as_fraction",
      "public-output:as_fraction",
      "raw-source:cdc514e1219ba4e182bfc542100288a9f258a239087c3af8c7bdf88ee76b0c71"
  ], [
      "capsule:b7c727656e483769da1417b3a39192b189c1050c270dc2fd6e0580a3c1bbf400",
      "declaration:as_fraction",
      "element:python-point:fe5d98a60820565533a20977d8129ba0c6778443eb70d30f94f5e32ff4ab9c7a",
      "public-output:as_fraction",
      "raw-source:cdc514e1219ba4e182bfc542100288a9f258a239087c3af8c7bdf88ee76b0c71",
      "source-context:tools/oracle/contracts.py"
  ]),
  ([
      "declaration:enrich",
      "public-output:enrich",
      "raw-source:e0563ce8ecc8873130a9b0bb7a1d0ca9af3005e49d8865e0245657b06e651170"
  ], [
      "capsule:63d37fc7699d7a63bc6d56b57d52b2c3a5819e4aff575d17daae06d566bab94d",
      "declaration:enrich",
      "element:python-point:fe8d5f1a13b3d954651de06a0160aaa130f42d9e4126882f06b76fda467a7a32",
      "public-output:enrich",
      "raw-source:e0563ce8ecc8873130a9b0bb7a1d0ca9af3005e49d8865e0245657b06e651170",
      "source-context:tools/concept-inventory/enrich.py"
  ]),
  ([
      "declaration:sha256_bytes",
      "public-output:sha256_bytes",
      "raw-source:740f2357ee8f574a5f54f4560f64f25c49e41b59da10b4bcb0a657f50cdd7371",
      "source-context:tools/concept-inventory/enrich.py"
  ], [
      "capsule:c952e4f0318f537e1754eaf512067f12ef8ce0a22dfc7cdf7272134dbe175ad4",
      "declaration:sha256_bytes",
      "element:python-point:fe947fab9b928085f8c66fe4bf756dd5366033ba10bb028c3dbf4c1d95c7a25e",
      "public-output:sha256_bytes",
      "raw-source:740f2357ee8f574a5f54f4560f64f25c49e41b59da10b4bcb0a657f50cdd7371",
      "source-context:tools/concept-inventory/enrich.py"
  ]),
  ([
      "declaration:find_olean",
      "public-output:find_olean",
      "raw-source:b1930b9beddc013a988b4b179900db5a584bc0bdb9472137504e0c9e6d496a95",
      "source-context:tools/environment/local_extract.py"
  ], [
      "capsule:03c87e0a7ca68049613ff6b784e8da32039e5361a613c6ca4dddb118e0ca39f7",
      "declaration:find_olean",
      "element:python-point:fe9c763e6c0243934260debdf7628e10988903901562d47dc3dc7f38366e88a5",
      "public-output:find_olean",
      "raw-source:b1930b9beddc013a988b4b179900db5a584bc0bdb9472137504e0c9e6d496a95",
      "source-context:tools/environment/local_extract.py"
  ]),
  ([
      "declaration:relation_rule_map",
      "public-output:relation_rule_map",
      "raw-source:60715bb50a2825df9b048f7a576ba8ba10d328a61e8367c20d7435d55815e471"
  ], [
      "capsule:e8e5ae0b1406923eb727e58f2a053b69e15333a408d080ebed17b712f0448381",
      "declaration:relation_rule_map",
      "element:python-point:ff230cbcf625a639b32337752b2061f094c0bd99ac4bf1c77da81b5eafba24b9",
      "public-output:relation_rule_map",
      "raw-source:60715bb50a2825df9b048f7a576ba8ba10d328a61e8367c20d7435d55815e471",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:NeighborhoodNameTests",
      "public-output:NeighborhoodNameTests",
      "raw-source:e0697fed4c7fafdebb42ad749238298afe1465602aec90b9277b4558bc086ce5"
  ], [
      "capsule:e47010b9eb4053134e1583a1a9f976c290d465fe4aff81bd21b5d4f0c8a14d72",
      "declaration:NeighborhoodNameTests",
      "element:python-point:ff7363aa5c153a3d13d74b95a9d90180c9639b636251fb17a86c65b1fade8e92",
      "public-output:NeighborhoodNameTests",
      "raw-source:e0697fed4c7fafdebb42ad749238298afe1465602aec90b9277b4558bc086ce5",
      "source-context:tools/tests/test_neighborhood_names.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:35f1a04286051db36c85744982fbe4c6b3925776358683613275ffe202d0fd72",
      "source-context:tools/kernel/gram_cache.py"
  ], [
      "capsule:107708ede2dae0b9edafa42a6d40140040aa34fd815aa1c8383d21006480b183",
      "declaration:main",
      "element:python-point:fffc633a78f16d94be3a6f1de3fcd62e85e2b9b8a2408855d4e1715c0c94b61c",
      "public-output:main",
      "raw-source:35f1a04286051db36c85744982fbe4c6b3925776358683613275ffe202d0fd72",
      "source-context:tools/kernel/gram_cache.py"
  ]),
  ([
      "declaration:md_log",
      "public-output:md_log",
      "raw-source:c903903131af66ef040819663e5914b9b7705020b8507c0cf0f82d22c1b23c31"
  ], [
      "capsule:fff2b24b72a7b63e8d261003f867cbbe73c0664c1a0db355306188441ffbdd96",
      "declaration:md_log",
      "element:shell-point:07f53c06c3736d279e80dc53cb0217f26abbb0283beecc289bf9956556ef5b70",
      "public-output:md_log",
      "raw-source:c903903131af66ef040819663e5914b9b7705020b8507c0cf0f82d22c1b23c31",
      "source-context:scripts/lib/common.sh"
  ]),
  ([
      "declaration:usage",
      "public-output:usage",
      "raw-source:ac45172e3294018506d6a72aff20153608867638460aee2be4c4296d847fc151",
      "source-context:scripts/git-ignored-globs.sh"
  ], [
      "capsule:1a8537ff1ff010669031f24e186854f1951785ed37fe50fb8fa988ada7ea9179",
      "declaration:usage",
      "element:shell-point:0a3dc9aba6f14f87dff8ec461c43d3f5767ff85f5cad5180c8fb86d0561e63c4",
      "public-output:usage",
      "raw-source:ac45172e3294018506d6a72aff20153608867638460aee2be4c4296d847fc151",
      "source-context:scripts/git-ignored-globs.sh"
  ]),
  ([
      "declaration:workflow_locality_check",
      "public-output:workflow_locality_check",
      "raw-source:42493a8790ae7c477b8b47d1d2c14ed54c0fc5c1bf626ee2309e78d85e80cc72"
  ], [
      "capsule:6f128f6a9cda23e802c38820ed3c2cbe998c16233f336e0f7671650c6d79046e",
      "declaration:workflow_locality_check",
      "element:shell-point:0c2245f6e5fbf72b34a0f32143799955e5944d510987327aebe540fb6c500934",
      "public-output:workflow_locality_check",
      "raw-source:42493a8790ae7c477b8b47d1d2c14ed54c0fc5c1bf626ee2309e78d85e80cc72",
      "source-context:scripts/workflows/locality.sh"
  ]),
  ([
      "declaration:md_make_temp_dir",
      "public-output:md_make_temp_dir",
      "raw-source:8e41ad1de3f22ac88c31d600703cbe9efdfddf57e14cdc8d08bb72a4ad003fe0"
  ], [
      "capsule:cafaba649f2416b354c3303539afe33e7b09f218ad27fca7d92a8a2fb0204578",
      "declaration:md_make_temp_dir",
      "element:shell-point:0d3658ce7c76f45ad8a05a4aad026a9a6dd53235edbee2b7d62c2fc5267f8a85",
      "public-output:md_make_temp_dir",
      "raw-source:8e41ad1de3f22ac88c31d600703cbe9efdfddf57e14cdc8d08bb72a4ad003fe0",
      "source-context:scripts/lib/common.sh"
  ]),
  ([
      "declaration:workflow_projection",
      "public-output:workflow_projection",
      "raw-source:3bc589f47aafd64c31204190000edd48124f1ae8ae160f3077b8dd7509200986"
  ], [
      "capsule:70b98415ca388530b30f1b8976221f36f1fdbf5b4c240417edf451d848ae4edb",
      "declaration:workflow_projection",
      "element:shell-point:12c74b30aed0986ad7f20ca727f70817fcacff7f638ec53a8afb192d653509b7",
      "public-output:workflow_projection",
      "raw-source:3bc589f47aafd64c31204190000edd48124f1ae8ae160f3077b8dd7509200986",
      "source-context:scripts/workflows/projection.sh"
  ]),
  ([
      "declaration:md_require_tool",
      "public-output:md_require_tool",
      "raw-source:bf9b0e356330afbd0e2545be368dd15140721dc72b5eb6f05780a4de6e5a804b"
  ], [
      "capsule:d7358f29c3426823411a68ddc08b1854bab03ee5fe92b18b5288f7845cc3690e",
      "declaration:md_require_tool",
      "element:shell-point:1c730a94f67c583fc7067d87b57595c2f9d6da2f9fdc4fc9500fd39bc5edc791",
      "public-output:md_require_tool",
      "raw-source:bf9b0e356330afbd0e2545be368dd15140721dc72b5eb6f05780a4de6e5a804b",
      "source-context:scripts/lib/common.sh"
  ]),
  ([
      "declaration:workflow_taxonomy_proposals",
      "public-output:workflow_taxonomy_proposals",
      "raw-source:9e758812ce8737668998950467526ea70a7b6e98648b0b48c1b03f90f5a289db"
  ], [
      "capsule:2ccca38752496e61129b64316db9e794c5e6049e8732ee11442a25eae6ae7eb9",
      "declaration:workflow_taxonomy_proposals",
      "element:shell-point:2052002409de3303dbf5e7fa4f52bdb3aaa98a05df5727d59404fe374c951a0a",
      "public-output:workflow_taxonomy_proposals",
      "raw-source:9e758812ce8737668998950467526ea70a7b6e98648b0b48c1b03f90f5a289db",
      "source-context:scripts/workflows/taxonomy.sh"
  ]),
  ([
      "declaration:workflow_taxonomy_coverage",
      "public-output:workflow_taxonomy_coverage",
      "raw-source:e43502c2b20857f5c7465c946775717fdd7f6b781271afd4dcd8204f975f4049"
  ], [
      "capsule:f055834f3acce149cb52f45bcbc30be5abcd06ec6ec8ed5461e8ae2c78e27b80",
      "declaration:workflow_taxonomy_coverage",
      "element:shell-point:2f09386825fd0d6e13946d690ac1b20fd012846f7387e5e44325c3081ddd2edf",
      "public-output:workflow_taxonomy_coverage",
      "raw-source:e43502c2b20857f5c7465c946775717fdd7f6b781271afd4dcd8204f975f4049",
      "source-context:scripts/workflows/taxonomy.sh"
  ]),
  ([
      "declaration:fail",
      "public-output:fail",
      "raw-source:0d776739660eb7e8b6cd15f17caa077f51eda56f8607c2c1b7fb26f328f044c4",
      "source-context:scripts/git-ignored-globs.sh"
  ], [
      "capsule:4dd99669d1bcfe6cac19b800dbd98ab9cd88b2d81ae0493c6a9378e4727f74a4",
      "declaration:fail",
      "element:shell-point:3169cd066cec8f411b20404a24da2f164ce201fd5998776603fa93d0521ebc2f",
      "public-output:fail",
      "raw-source:0d776739660eb7e8b6cd15f17caa077f51eda56f8607c2c1b7fb26f328f044c4",
      "source-context:scripts/git-ignored-globs.sh"
  ]),
  ([
      "declaration:workflow_self_extract",
      "public-output:workflow_self_extract",
      "raw-source:2fe5b4c9832ba66d88580847a0083c23d8f0952b6385f3be933d1c1d7f4d45c9"
  ], [
      "capsule:cbf2f81e7458d2c1993bab2798b22bfdb99ba7e6de7cf138e33e4025b038dc22",
      "declaration:workflow_self_extract",
      "element:shell-point:380a454bb3fb6a2e3eb5a0718f40c7c94d6665317222c51f47c7ffac9c447428",
      "public-output:workflow_self_extract",
      "raw-source:2fe5b4c9832ba66d88580847a0083c23d8f0952b6385f3be933d1c1d7f4d45c9",
      "source-context:scripts/workflows/extract.sh"
  ]),
  ([
      "declaration:run_expect_status",
      "public-output:run_expect_status",
      "raw-source:c2a1eaf8835ed3511472dd73e774508bb73c796769866b41ef36ddeeda6a9e0c"
  ], [
      "capsule:27bb8270006c78f9e997ede08005cb1b579d1ec26b79de22a64d06646184a4ff",
      "declaration:run_expect_status",
      "element:shell-point:3fb07dfad64ca454d12eaccdeaffa13836b891c1d7405a306cc50b95c114d821",
      "public-output:run_expect_status",
      "raw-source:c2a1eaf8835ed3511472dd73e774508bb73c796769866b41ef36ddeeda6a9e0c",
      "source-context:scripts/test-posix.sh"
  ]),
  ([
      "declaration:usage",
      "public-output:usage",
      "raw-source:cc091c4b57ceff215cab13c1ef4d5474bde7a82150d5029ad16f14a035537b1e",
      "source-context:scripts/bundle-code.sh"
  ], [
      "capsule:9cd3cc416cc1999af669ab6f347c652961980ceb26df8171d7dd4cd70bbde996",
      "declaration:usage",
      "element:shell-point:4040e282daef7fca47724b6125173f64a3650e2ea959eb3e3aa6883fcbfc8430",
      "public-output:usage",
      "raw-source:cc091c4b57ceff215cab13c1ef4d5474bde7a82150d5029ad16f14a035537b1e",
      "source-context:scripts/bundle-code.sh"
  ]),
  ([
      "declaration:md_require_lake_tool",
      "public-output:md_require_lake_tool",
      "raw-source:b50c60a88df20717b81553cde5d00aff814d7334cf845690dd2c3a2d47ea908e"
  ], [
      "capsule:7bae021eb8f9556fcae383d83ec6709b2d2b2afc33770f31ef52116c85f61537",
      "declaration:md_require_lake_tool",
      "element:shell-point:460abaf082d8c0e9e296dbb1712ab15258dadd2383adeeae6b4279f8a92c33cc",
      "public-output:md_require_lake_tool",
      "raw-source:b50c60a88df20717b81553cde5d00aff814d7334cf845690dd2c3a2d47ea908e",
      "source-context:scripts/lib/common.sh"
  ]),
  ([
      "declaration:workflow_learned_embeddings",
      "public-output:workflow_learned_embeddings",
      "raw-source:1174227615b43115a543737e7abf01275734220498f45c05ed51bef0f00beb67"
  ], [
      "capsule:5221b7d1a7d83c5aaae6e015f1fcb0dd0117dc9a1551f243f7381cca5c38ba51",
      "declaration:workflow_learned_embeddings",
      "element:shell-point:4a678a4a6f5f075084f2fcb62088be3b7dfe0a77cc24ca9582d35079817c15fe",
      "public-output:workflow_learned_embeddings",
      "raw-source:1174227615b43115a543737e7abf01275734220498f45c05ed51bef0f00beb67",
      "source-context:scripts/workflows/embedding.sh"
  ]),
  ([
      "declaration:md_run_step",
      "public-output:md_run_step",
      "raw-source:29855fe545d531071a777d6eec94883e3de2f5f101a98f97bf11b6454fea4fcb"
  ], [
      "capsule:ca9489d5d827dcee830cccf78e09e4a79802c893eaef7cf63d1d560115d71017",
      "declaration:md_run_step",
      "element:shell-point:52b9846b4f8b162256dccebff43be7189328e78e5dc32fd8ee7248a76f7d7191",
      "public-output:md_run_step",
      "raw-source:29855fe545d531071a777d6eec94883e3de2f5f101a98f97bf11b6454fea4fcb",
      "source-context:scripts/lib/common.sh"
  ]),
  ([
      "declaration:workflow_proof_strategies",
      "public-output:workflow_proof_strategies",
      "raw-source:bd1cad2c009fead7bbad2496e98e39028661bd439ae3893d20680adba444f4fa"
  ], [
      "capsule:912d3a84c046a4c5c02616aa64c0ec47389f072dcb41a454ec737fdf5f63b5a3",
      "declaration:workflow_proof_strategies",
      "element:shell-point:570775e8f908e86d6d868de6f26278502bae876b1431c311c62be9f9917fb5ad",
      "public-output:workflow_proof_strategies",
      "raw-source:bd1cad2c009fead7bbad2496e98e39028661bd439ae3893d20680adba444f4fa",
      "source-context:scripts/workflows/proof-strategy.sh"
  ]),
  ([
      "declaration:workflow_test",
      "public-output:workflow_test",
      "raw-source:a4655dd6c59a63512e8a6860609cce219385b454557445a7453aaef3d94b556c"
  ], [
      "capsule:22fc119cfde1ac04686521d5c0bb6f6e6285a79bd80873fcc4935e8836a6570c",
      "declaration:workflow_test",
      "element:shell-point:60b7e42f6fea5ba742d3670dcb23f94a0541ac0285a6e272afd1fd47ed2d64fb",
      "public-output:workflow_test",
      "raw-source:a4655dd6c59a63512e8a6860609cce219385b454557445a7453aaef3d94b556c",
      "source-context:scripts/workflows/test.sh"
  ]),
  ([
      "declaration:workflow_projection_profiles",
      "public-output:workflow_projection_profiles",
      "raw-source:8259473aaf58cfde8cca2893c5a731daf6b5da78e53b5b44b19c4027ac414503"
  ], [
      "capsule:19e0609bc884615974a53dcd96dd58e02857080025c9914aeed480989b1e8b88",
      "declaration:workflow_projection_profiles",
      "element:shell-point:614e13519b9032123b3ca3977f3b362a80e6ae5789344a5dd95776439d962da3",
      "public-output:workflow_projection_profiles",
      "raw-source:8259473aaf58cfde8cca2893c5a731daf6b5da78e53b5b44b19c4027ac414503",
      "source-context:scripts/workflows/projection.sh"
  ]),
  ([
      "declaration:language_for",
      "public-output:language_for",
      "raw-source:2563c9b7e2ad5d7c39acb52912a661bc1e45cfc75e93c26fae9410fd490a349f"
  ], [
      "capsule:ca1b3801700c76e9f6fe219b2609aef87143b4d299d3a05e8e757695cbcdb704",
      "declaration:language_for",
      "element:shell-point:62e74419d0c2645c758c25174649718901368fbf48df30a9a5b27d28b47266b5",
      "public-output:language_for",
      "raw-source:2563c9b7e2ad5d7c39acb52912a661bc1e45cfc75e93c26fae9410fd490a349f",
      "source-context:scripts/bundle-code.sh"
  ]),
  ([
      "declaration:cleanup",
      "public-output:cleanup",
      "raw-source:bdcb6eb3db8dc5816c016a6687ae36b444e466958c589a5a2f5e4719aa6892ee"
  ], [
      "capsule:dec78e2dca6dcdf81125c2d733be0d61f997195fe4ca70149b61fefc29e770aa",
      "declaration:cleanup",
      "element:shell-point:70ad2a994ccd9f2e6a21b591d3888a96db1bb0724bb04a6519f2f004efb99922",
      "public-output:cleanup",
      "raw-source:bdcb6eb3db8dc5816c016a6687ae36b444e466958c589a5a2f5e4719aa6892ee",
      "source-context:scripts/bundle-code.sh"
  ]),
  ([
      "declaration:workflow_refactor_in_place",
      "public-output:workflow_refactor_in_place",
      "raw-source:f45574e028f3638f7f799b3993ab76c48fa10543df18506ba92c502aa22dfc75"
  ], [
      "capsule:632dc4720d2754a1a7f5297a2bae975d2f03b576b2a3e2f6913cf09fbe9136d5",
      "declaration:workflow_refactor_in_place",
      "element:shell-point:88f26ceaae5235856654e4078893925be5db594054a96b8211e2a9cf13bb8671",
      "public-output:workflow_refactor_in_place",
      "raw-source:f45574e028f3638f7f799b3993ab76c48fa10543df18506ba92c502aa22dfc75",
      "source-context:scripts/workflows/refactor-in-place.sh"
  ]),
  ([
      "declaration:matches_filter",
      "public-output:matches_filter",
      "raw-source:8f61205fcd320b3a9714321c7b37230e4cabcf35e1304cb25f51a5eaafed05e8"
  ], [
      "capsule:509e0d3d7bcc3e13d86b9e2fe786c299993cd3391110de3fd1735bce8da0c494",
      "declaration:matches_filter",
      "element:shell-point:9d13ce4a5a3ac78510eb0eaa50e6ac026de43a917f4e985aad5a738249a524c4",
      "public-output:matches_filter",
      "raw-source:8f61205fcd320b3a9714321c7b37230e4cabcf35e1304cb25f51a5eaafed05e8",
      "source-context:scripts/bundle-code.sh"
  ]),
  ([
      "declaration:md_cleanup",
      "public-output:md_cleanup",
      "raw-source:e6b59b211402f36604255f52a3444974444acd652b3eb4c3df3462b897212d83"
  ], [
      "capsule:124355ae423f54014026ba087546b396e6e46aed3669989a6d3c668fa9f9d0ea",
      "declaration:md_cleanup",
      "element:shell-point:a3953942d3418cecc920bbcaf0bab2b50424d84cef2d7cd12b1f291c5ddcd1dd",
      "public-output:md_cleanup",
      "raw-source:e6b59b211402f36604255f52a3444974444acd652b3eb4c3df3462b897212d83",
      "source-context:scripts/lib/common.sh"
  ]),
  ([
      "declaration:workflow_layout",
      "public-output:workflow_layout",
      "raw-source:8c09be85ae978f2a73615189cb5adf897851432e59c64b157abefdf95c8dea40"
  ], [
      "capsule:6bb665412d70b83cfb94615f88996f52947425bdc4e6d8978d51bc34396fe969",
      "declaration:workflow_layout",
      "element:shell-point:a55e0a2491760e249d19e939a43a7e057ea9b3cab878536b3c3b26a452b9cf5e",
      "public-output:workflow_layout",
      "raw-source:8c09be85ae978f2a73615189cb5adf897851432e59c64b157abefdf95c8dea40",
      "source-context:scripts/workflows/layout.sh"
  ]),
  ([
      "declaration:workflow_build",
      "public-output:workflow_build",
      "raw-source:07bfa08b09f8fc33949c6ed39b2ca15db394f7ada6e2f6c324de75b2fdf50cc1"
  ], [
      "capsule:bff6eddc9a9380adecf8ab508b19c067e96a854dd0fe47dadc93aea9026450c1",
      "declaration:workflow_build",
      "element:shell-point:aa1c302178125cf71bfb2c599b4de069f8763544cc8cbc398d25b573b092b87b",
      "public-output:workflow_build",
      "raw-source:07bfa08b09f8fc33949c6ed39b2ca15db394f7ada6e2f6c324de75b2fdf50cc1",
      "source-context:scripts/workflows/build.sh"
  ]),
  ([
      "declaration:workflow_projection_all",
      "public-output:workflow_projection_all",
      "raw-source:f613295bdc97f8de7d28df9d5af0334703af983bfe954ae9b46bec38440ef543"
  ], [
      "capsule:d85d27197137c7ee46d4b282c6d232cc8eed109515321a00bf1af89e49b2517f",
      "declaration:workflow_projection_all",
      "element:shell-point:aad0c94c4893e9b31743f0678616c64c54dc43da7125090efc25ea03dcccb776",
      "public-output:workflow_projection_all",
      "raw-source:f613295bdc97f8de7d28df9d5af0334703af983bfe954ae9b46bec38440ef543",
      "source-context:scripts/workflows/projection.sh"
  ]),
  ([
      "declaration:workflow_kernel_check",
      "public-output:workflow_kernel_check",
      "raw-source:da5345c3a423528080f01f3ab31763122e9e556582ccbc3d0c60e4cafa0afdb3"
  ], [
      "capsule:67f7b82daf2614224708e8bf2a979ac17b99c50a17ed82933f3cd8dcf14d6752",
      "declaration:workflow_kernel_check",
      "element:shell-point:ae2a0b6d6585ecb3212220321a920e44da50aeaf92fe8e5db02e50fb0f0547f8",
      "public-output:workflow_kernel_check",
      "raw-source:da5345c3a423528080f01f3ab31763122e9e556582ccbc3d0c60e4cafa0afdb3",
      "source-context:scripts/workflows/verify.sh"
  ]),
  ([
      "declaration:workflow_refactor_plan",
      "public-output:workflow_refactor_plan",
      "raw-source:1507df707c63bbd57e9284ef47d4fe484d313cee542d08928de4ce9d5e630a5f"
  ], [
      "capsule:8b63b283e4dc59993fd0579af57046399cbf9c68a7b02821a3b6998717350edf",
      "declaration:workflow_refactor_plan",
      "element:shell-point:b222a46720fc55672082974e7fdfdb35b0cb871ef1e1c546b109fb59ceb3255f",
      "public-output:workflow_refactor_plan",
      "raw-source:1507df707c63bbd57e9284ef47d4fe484d313cee542d08928de4ce9d5e630a5f",
      "source-context:scripts/workflows/refactor-plan.sh"
  ]),
  ([
      "declaration:md_signal_exit",
      "public-output:md_signal_exit",
      "raw-source:1c4f67a8b005da471929a7a87e70a7edd00fbf64d7bd58a02a49b9982dce8aba"
  ], [
      "capsule:8664e6495aa1165acde167802601c868f88cf7317ffec69aec9217a210ee516d",
      "declaration:md_signal_exit",
      "element:shell-point:b9ad69af44b495d145de6ceda978120823418f16235909f7fe84055174588305",
      "public-output:md_signal_exit",
      "raw-source:1c4f67a8b005da471929a7a87e70a7edd00fbf64d7bd58a02a49b9982dce8aba",
      "source-context:scripts/lib/common.sh"
  ]),
  ([
      "declaration:workflow_verify",
      "public-output:workflow_verify",
      "raw-source:f075375c7d8228750528c8108d2b11176450de2d43b259f87da77ff956cc09bf"
  ], [
      "capsule:7c8fdcf333782e9ca33adefc415eef65e6e9c420e4561dc93f25cdaa745007d4",
      "declaration:workflow_verify",
      "element:shell-point:bdaddb68f82fe118e47cc96afb8728927d29c66ca84bab68d1d6d3b57d481ce8",
      "public-output:workflow_verify",
      "raw-source:f075375c7d8228750528c8108d2b11176450de2d43b259f87da77ff956cc09bf",
      "source-context:scripts/workflows/verify.sh"
  ]),
  ([
      "declaration:md_fail",
      "public-output:md_fail",
      "raw-source:7fd17cafe9ddc450336c938102cfd5f5faa9ccb09c119fbf7a055034ea3bf8ff"
  ], [
      "capsule:5ac45ddeec8791b5bbbe7ac9ecef54574527a4c4c489bcd13e3d07c80f819648",
      "declaration:md_fail",
      "element:shell-point:be72a26d884fc7321b029c672d47f639862b2485baa7efc66cd015741db9da62",
      "public-output:md_fail",
      "raw-source:7fd17cafe9ddc450336c938102cfd5f5faa9ccb09c119fbf7a055034ea3bf8ff",
      "source-context:scripts/lib/common.sh"
  ]),
  ([
      "declaration:md_compare_files",
      "public-output:md_compare_files",
      "raw-source:08ee09afde30245ecc2ba23c26158cf9d2ea490b4ad409f36441d0a2137203d5"
  ], [
      "capsule:4f5a6cb7a31f8ebb025973b4f8844f04190542264aa2fffc5cc5954cdad687b6",
      "declaration:md_compare_files",
      "element:shell-point:c71d58ccfdf1f37f5c15d13f075f4bf147ea78caeac9f63ecf8b5fd896f639f5",
      "public-output:md_compare_files",
      "raw-source:08ee09afde30245ecc2ba23c26158cf9d2ea490b4ad409f36441d0a2137203d5",
      "source-context:scripts/lib/common.sh"
  ]),
  ([
      "declaration:md_require_directory",
      "public-output:md_require_directory",
      "raw-source:b8b97b99a9eb4b9657c04142f07387bc342290b36131088d505284e4a9eb5d8d"
  ], [
      "capsule:da517dd3c61600eebd40c34ddc85dcc75ac114c514366b21dce531cd1bb3484b",
      "declaration:md_require_directory",
      "element:shell-point:cc6fea24102e3bd6e84edcf9cbb00a5b28a8c408fa824f96c02af2703a9ed6c3",
      "public-output:md_require_directory",
      "raw-source:b8b97b99a9eb4b9657c04142f07387bc342290b36131088d505284e4a9eb5d8d",
      "source-context:scripts/lib/common.sh"
  ]),
  ([
      "declaration:workflow_taxonomy_registry",
      "public-output:workflow_taxonomy_registry",
      "raw-source:e22cc694f8959b6e71d3bc1ffc8eaa1b7280bc8a6aeb3db13b7582152de81281"
  ], [
      "capsule:4ec15bfdd9e9a8abca9a2ed0c721a81f03cf522b8f342fe33ac6a7c6405f55db",
      "declaration:workflow_taxonomy_registry",
      "element:shell-point:d1383e97b6505a660e875f30828f0915a8a1b9d2c1cabff4498b0777de44dd7a",
      "public-output:workflow_taxonomy_registry",
      "raw-source:e22cc694f8959b6e71d3bc1ffc8eaa1b7280bc8a6aeb3db13b7582152de81281",
      "source-context:scripts/workflows/taxonomy.sh"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L62786).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
