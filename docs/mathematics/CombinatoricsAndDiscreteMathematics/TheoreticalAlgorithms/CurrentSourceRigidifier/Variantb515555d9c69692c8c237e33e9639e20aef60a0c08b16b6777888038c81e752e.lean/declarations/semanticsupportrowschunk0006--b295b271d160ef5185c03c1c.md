# semanticSupportRowsChunk0006

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8322c736a3d5da7e5e6a0e70b67b8c0b613be69b20a4f3a40d21a773bff0dde1",
  "kind": "def",
  "lexical_name": "semanticSupportRowsChunk0006",
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
  "slug": "semanticsupportrowschunk0006--b295b271d160ef5185c03c1c",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57241,
    "line": 56445,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b295b271d160ef5185c03c1ca54278f4af508b06c1dc81c51730d70e92db03ed",
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

Occurrence: `declaration:8322c736a3d5da7e5e6a0e70b67b8c0b613be69b20a4f3a40d21a773bff0dde1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56445–57241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def semanticSupportRowsChunk0006 : List (List String × List String) :=
[
  ([
      "declaration:audit_relative_paths",
      "public-output:audit_relative_paths",
      "raw-source:45fcbcf25e550e4187b1cbe1bb0a254f8ca092f2547af0381e4a5b08517406c3"
  ], [
      "capsule:960d39a07c9eaecde37dd46277ea363b5edc1f8fe77c6e8008167ee85450dabc",
      "declaration:audit_relative_paths",
      "element:python-point:6ff6f69c01ee64a68d3f7989e683ea6283a2dcf0515adcdba62c8b4ef0aa8a49",
      "public-output:audit_relative_paths",
      "raw-source:45fcbcf25e550e4187b1cbe1bb0a254f8ca092f2547af0381e4a5b08517406c3",
      "source-context:tools/refactor/canonical.py"
  ]),
  ([
      "declaration:canonical_relative",
      "public-output:canonical_relative",
      "raw-source:e2bdc22ae28689346122905a0436ed0ae4dec9d9702519c361a99cb8c3754886",
      "source-context:tools/environment/canonical.py"
  ], [
      "capsule:36c7cdbdc4c24c859327177400ef724349638022c7eca8d6a6dabbaab0a9f477",
      "declaration:canonical_relative",
      "element:python-point:7009f3e5649b6ea14d876e31676040c9e9fd4f190b52d5f2ab77c1822b1d4a56",
      "public-output:canonical_relative",
      "raw-source:e2bdc22ae28689346122905a0436ed0ae4dec9d9702519c361a99cb8c3754886",
      "source-context:tools/environment/canonical.py"
  ]),
  ([
      "declaration:write_certified_labels",
      "public-output:write_certified_labels",
      "raw-source:b749e36a4afbbe15a1f829a27a73991e7c54ca89c72b28447d7f254748d10b8a"
  ], [
      "capsule:55c67dad4e91d408e17a12f9b9f7d9437d6e9bedff53ea1b434470639ce27916",
      "declaration:write_certified_labels",
      "element:python-point:70154f166bcfd954026bc8c271ddfdb1fd8738c2d95ad9034f95e04fa21a19d2",
      "public-output:write_certified_labels",
      "raw-source:b749e36a4afbbe15a1f829a27a73991e7c54ca89c72b28447d7f254748d10b8a",
      "source-context:tools/projection/external_rigidifier.py"
  ]),
  ([
      "declaration:_id_text",
      "public-output:_id_text",
      "raw-source:481021cdbd3acabb82c51d94c2864fa0695144032e72aeaeec5f8666c37be807",
      "source-context:tools/projection/external_rigidifier.py"
  ], [
      "capsule:b46e266a48bbefaf18f6a337d6f89d29e45691eeccc54898491831553067c216",
      "declaration:_id_text",
      "element:python-point:7238c1f27f0644edb93266bb23f0fc4a1b7667e3a4ba69f0a37a5f303b51e56a",
      "public-output:_id_text",
      "raw-source:481021cdbd3acabb82c51d94c2864fa0695144032e72aeaeec5f8666c37be807",
      "source-context:tools/projection/external_rigidifier.py"
  ]),
  ([
      "declaration:ProgressionTests",
      "public-output:ProgressionTests",
      "raw-source:88f1c8bd263b825a55e2b083f8523ca5d5a86cbfd8ed47d7f3bdcd11a299f98d"
  ], [
      "capsule:1e2620d4ab8cb3cc0c502ceb102e78544fedad913c6125b4e26a42eb1ea95dad",
      "declaration:ProgressionTests",
      "element:python-point:723e62e2fe68c93cfcce675c98bffab4056c129c4348bb2f6a6f90953655ac38",
      "public-output:ProgressionTests",
      "raw-source:88f1c8bd263b825a55e2b083f8523ca5d5a86cbfd8ed47d7f3bdcd11a299f98d",
      "source-context:tools/tests/test_mathematics_oracle.py"
  ]),
  ([
      "declaration:occurrence_sort_key",
      "public-output:occurrence_sort_key",
      "raw-source:6abf6303ce5868987db79ca550b23755afd7dd3f693c5cf96dc790ab93e686ac"
  ], [
      "capsule:9f94b819c549a9835c547ee5284f3bc896e7310f59e89e867c039ea073001734",
      "declaration:occurrence_sort_key",
      "element:python-point:7245db5a6abf10d8c278034be0b01d5e4fe3523e1db309f2f8d88a4dffbb911f",
      "public-output:occurrence_sort_key",
      "raw-source:6abf6303ce5868987db79ca550b23755afd7dd3f693c5cf96dc790ab93e686ac",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:role_candidates",
      "public-output:role_candidates",
      "raw-source:7d4f8e353c9cf62955ac987ba4d9d342f36ca2ac6e1f7f05ccc8519fd412479c"
  ], [
      "capsule:ca23637ac51ec5aa49eb9122138ecc93c050be72740cf38ce741d0af95ff955c",
      "declaration:role_candidates",
      "element:python-point:72579ca0dc14d43b88d9d37187fd08b3384aa7e19b10a51b4004b0c326d91d09",
      "public-output:role_candidates",
      "raw-source:7d4f8e353c9cf62955ac987ba4d9d342f36ca2ac6e1f7f05ccc8519fd412479c",
      "source-context:tools/taxonomy/propose.py"
  ]),
  ([
      "declaration:replay",
      "public-output:replay",
      "raw-source:28fb6a24b405d03a1578d35965f9e01801c2fdee9a0d3bf97132a6e592ab2cf0"
  ], [
      "capsule:2e601b913cf91d362074c0f33f562b2c2fd96e0ab5f59f2e8a8c92e058a5118e",
      "declaration:replay",
      "element:python-point:72597f4d245692797756091ed423876e0a727ce4f03dd9910d5f618764a8ee64",
      "public-output:replay",
      "raw-source:28fb6a24b405d03a1578d35965f9e01801c2fdee9a0d3bf97132a6e592ab2cf0",
      "source-context:tools/environment/replay.py"
  ]),
  ([
      "declaration:rank_candidates",
      "public-output:rank_candidates",
      "raw-source:21fcf386d328994a3ff889bbf33078b1a3a7cb4e09ebd3a5dadd51b6bc2a17af"
  ], [
      "capsule:bc198ddd748b59f77c97d47c5f91dba55ca0325297a2e72758220e0c374f0677",
      "declaration:rank_candidates",
      "element:python-point:729eaa32c839c539eab2056e679643083e7dac9220373a5be70a3d01227ab897",
      "public-output:rank_candidates",
      "raw-source:21fcf386d328994a3ff889bbf33078b1a3a7cb4e09ebd3a5dadd51b6bc2a17af",
      "source-context:tools/refactor/ml_rank.py"
  ]),
  ([
      "declaration:specific_expression_records",
      "public-output:specific_expression_records",
      "raw-source:e8a6c70ecd1c5163b16b254101cd874130fcd0ff445486d8fa5170de05b376a9"
  ], [
      "capsule:e3fab971ea001b2701e72fd7b021645793e052d752be0bc5c221cc4f3b634301",
      "declaration:specific_expression_records",
      "element:python-point:72f6fef4b7ba00a00bf74ff23558abf3418fba0b936880a8e9c61e9178f5a814",
      "public-output:specific_expression_records",
      "raw-source:e8a6c70ecd1c5163b16b254101cd874130fcd0ff445486d8fa5170de05b376a9",
      "source-context:tools/environment/assemble.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:e0e51b9ff92631f1defca45292e8e9ee15cf438b6987ea10449fe7b05ed2ef9e",
      "source-context:tools/proof-strategy/classify.py"
  ], [
      "capsule:81f1b4fbe2ad3bc01f8fa973c110dd21f1dae0559f33a0f6cf7806b661abbd70",
      "declaration:main",
      "element:python-point:736e421ac6b6782c1f16906d04fc366285c35d496c800b165468d3804ef203b6",
      "public-output:main",
      "raw-source:e0e51b9ff92631f1defca45292e8e9ee15cf438b6987ea10449fe7b05ed2ef9e",
      "source-context:tools/proof-strategy/classify.py"
  ]),
  ([
      "declaration:build_capsules",
      "public-output:build_capsules",
      "raw-source:722f28fb173ad72b0aa89c2e843cec8e18ffed63c797463b83020f7917bf54d1"
  ], [
      "capsule:a3c3e2d2f8c5ac9b1ce8b3dd29bc2879287c4fe3cd2157bd997d0edb038f1335",
      "declaration:build_capsules",
      "element:python-point:737d5bd6ab8f944b5736527982da139fa0ecb6145b40d2571ad1e1511fe05ce3",
      "public-output:build_capsules",
      "raw-source:722f28fb173ad72b0aa89c2e843cec8e18ffed63c797463b83020f7917bf54d1",
      "source-context:tools/refactor/point_corpus.py"
  ]),
  ([
      "declaration:_split_families",
      "public-output:_split_families",
      "raw-source:33f65ef8dd889dce65fd8b0b46b63fdee59bb00e6296788afae1c28cbb9a4344"
  ], [
      "capsule:0002d01ddea3b22df7129d07a826e5fadc20e4fce3d44dc2f1c4f06e2b1d4281",
      "declaration:_split_families",
      "element:python-point:73a2972e5ca90c6b91500b5b92e3f1893b274ed763ffbb3bfa1edead4d9f0b64",
      "public-output:_split_families",
      "raw-source:33f65ef8dd889dce65fd8b0b46b63fdee59bb00e6296788afae1c28cbb9a4344",
      "source-context:tools/oracle/dataset.py"
  ]),
  ([
      "declaration:_cycle",
      "public-output:_cycle",
      "raw-source:b5391345c2cbc2034cb120fc1779faefe038d41291c8f4d6b3de1dd3e82f9de9"
  ], [
      "capsule:231f1dc53f0bcd250b153358fd098769e1da8be2ef125d6b555ca677ef748380",
      "declaration:_cycle",
      "element:python-point:73cff028ae6570e86b7a7e9722dfa655247466fc104817dba129ce803ca5061a",
      "public-output:_cycle",
      "raw-source:b5391345c2cbc2034cb120fc1779faefe038d41291c8f4d6b3de1dd3e82f9de9",
      "source-context:tools/refactor/constraints.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:31694d42cc806e66c61a1a64dca019de8d8ee9c2027d5139c4d9e962f9b8c028",
      "source-context:tools/embedding/validate.py"
  ], [
      "capsule:1fe5bf832c48a044d5341a49e4e7095ccf2d42ccbaccfa566d4a4f32ce705018",
      "declaration:main",
      "element:python-point:740910f5b5a5152a7ddf00c8260d3945708c0ba8120954f557e3d712f00f3479",
      "public-output:main",
      "raw-source:31694d42cc806e66c61a1a64dca019de8d8ee9c2027d5139c4d9e962f9b8c028",
      "source-context:tools/embedding/validate.py"
  ]),
  ([
      "declaration:sid",
      "public-output:sid",
      "raw-source:aab85933afef464f5c2daef11603db767ce6bc5a09114d5447fe2db7d595a977",
      "source-context:tools/tests/test_projection.py"
  ], [
      "capsule:bd18b342fa2cebadb15a2392bbef184d2f577283dc8f307dfbfafda47b2741c9",
      "declaration:sid",
      "element:python-point:74d856a042bc5ce7bd3a54465e7902981dbd008bf5dcae550a0d5023ba0213de",
      "public-output:sid",
      "raw-source:aab85933afef464f5c2daef11603db767ce6bc5a09114d5447fe2db7d595a977",
      "source-context:tools/tests/test_projection.py"
  ]),
  ([
      "declaration:PipelineTests",
      "public-output:PipelineTests",
      "raw-source:9c0b0964065c74e2a68ca0837554aeec462d7c364940cb65629f6e99bd866847"
  ], [
      "capsule:c4398244c572a33585a944d5fa46f776fbb92a9c28de112519fe353d90bb1f5c",
      "declaration:PipelineTests",
      "element:python-point:751eb32bb641ef15763708c6e778cd5f305b2cbc2b8defa3694f6aba5cba2777",
      "public-output:PipelineTests",
      "raw-source:9c0b0964065c74e2a68ca0837554aeec462d7c364940cb65629f6e99bd866847",
      "source-context:tools/tests/test_pipeline.py"
  ]),
  ([
      "declaration:module_path",
      "public-output:module_path",
      "raw-source:6f20d8788dc538eb756b8231be6efbcdeab896874258a746315fb86205da8cec",
      "source-context:tools/environment/assemble.py"
  ], [
      "capsule:de13778e5e644b2739845709c3d59042d6705af4aca09fe9ad23027a24846ce1",
      "declaration:module_path",
      "element:python-point:754fba48443d5ac9940609f0a3787a1b895487d068836da16890504ef1ee5731",
      "public-output:module_path",
      "raw-source:6f20d8788dc538eb756b8231be6efbcdeab896874258a746315fb86205da8cec",
      "source-context:tools/environment/assemble.py"
  ]),
  ([
      "declaration:explain",
      "public-output:explain",
      "raw-source:7c2875eabc0b778ce07171d3c837341948a8e068f69c7090d84d019b203d103e"
  ], [
      "capsule:bda19687592d8e25f53f87b4dc5ade3ee74a73222737d04fed8b76d7cfc5a700",
      "declaration:explain",
      "element:python-point:75568e091393ef5e344e4a99ec66ad60cb4740dec1946c59bbf682a0d2dccaf8",
      "public-output:explain",
      "raw-source:7c2875eabc0b778ce07171d3c837341948a8e068f69c7090d84d019b203d103e",
      "source-context:tools/refactor/explain.py"
  ]),
  ([
      "declaration:factor_provenance",
      "public-output:factor_provenance",
      "raw-source:33d0c457939b91a1a1100d6d713a5cb167c83c5b1037df2371a8fdb60badc206"
  ], [
      "capsule:abdda4b287a86b3838664f8ee082c5d85a1572e5dce44adf16226994990e3dea",
      "declaration:factor_provenance",
      "element:python-point:7557809e80a9ffd63932e36d5d47466b00dff2940bcc93358c4268b392d34f77",
      "public-output:factor_provenance",
      "raw-source:33d0c457939b91a1a1100d6d713a5cb167c83c5b1037df2371a8fdb60badc206",
      "source-context:tools/kernel/gram_cache.py"
  ]),
  ([
      "declaration:receipt_for_module",
      "public-output:receipt_for_module",
      "raw-source:781c75191b9b0906177e6680dfaac74c1c00f3d026fc6756f06d6f1e3b0310b8"
  ], [
      "capsule:5332eac47cb27f6daadb33ef3fa765ef4e00d1ca48fcc4e7fc8769aa0b61a4f2",
      "declaration:receipt_for_module",
      "element:python-point:75f41cbcd07cd5db67dcbfd0b60ce0d1ad3bf43ce47aae0146725e7222078b54",
      "public-output:receipt_for_module",
      "raw-source:781c75191b9b0906177e6680dfaac74c1c00f3d026fc6756f06d6f1e3b0310b8",
      "source-context:tools/environment/assemble.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:2ed300e9a916249c424d5c6e51eca6505ad4a6c9c72d9304d6a28ed384826915",
      "source-context:tools/environment/replay.py"
  ], [
      "capsule:0c5b9728b44d3e2d68c6b82e24829a6196069c2e399be98d4224eeca7ade0080",
      "declaration:main",
      "element:python-point:769c24c4df0008a35493d04fff19fce3da6fc498b6d77c39f7b75896296ed2f3",
      "public-output:main",
      "raw-source:2ed300e9a916249c424d5c6e51eca6505ad4a6c9c72d9304d6a28ed384826915",
      "source-context:tools/environment/replay.py"
  ]),
  ([
      "declaration:package_records",
      "public-output:package_records",
      "raw-source:81f51bd506acc1204390d2941e70a37236c69317a16759588507e45db60251f1"
  ], [
      "capsule:a4a07c5c7f1b72b8c4c5ad28ff7d7dfdc147864b3e22652ffdb21165f9af72a4",
      "declaration:package_records",
      "element:python-point:771aa2301c80c0a9b3f3245a0c682ff178d68ca001a3fe1eabae9fab341b0e49",
      "public-output:package_records",
      "raw-source:81f51bd506acc1204390d2941e70a37236c69317a16759588507e45db60251f1",
      "source-context:tools/environment/assemble.py"
  ]),
  ([
      "declaration:normalize_lean_syntax",
      "public-output:normalize_lean_syntax",
      "raw-source:365dcd4f91604656b75aa1c19af7b60685c05a9ddb69544d7435ebf6adfa788d"
  ], [
      "capsule:23f8a8891d99fce4d09f0176f4487fc1507677fddcf97efd0705e745ad26fb1d",
      "declaration:normalize_lean_syntax",
      "element:python-point:771c344d4fb7a7e311677b300587d2a03382832842f8088aed80b4a404ee89c8",
      "public-output:normalize_lean_syntax",
      "raw-source:365dcd4f91604656b75aa1c19af7b60685c05a9ddb69544d7435ebf6adfa788d",
      "source-context:tools/projection/intrinsic_structure.py"
  ]),
  ([
      "declaration:id_value",
      "public-output:id_value",
      "raw-source:946f04cc434052d392aee33e00f079c9c0d37701e78811ab0fd3a2489eaa9e54",
      "source-context:tools/taxonomy/build_calibration_corpus.py"
  ], [
      "capsule:f937f4bb955d30d7a8cf747ec184edc246075808c73bc9e9c4e33495bea09ad9",
      "declaration:id_value",
      "element:python-point:7728d2a3a516d5f2ffb5e3e911d24519cfdb631a7b8de8e6c51bb27dc59bd087",
      "public-output:id_value",
      "raw-source:946f04cc434052d392aee33e00f079c9c0d37701e78811ab0fd3a2489eaa9e54",
      "source-context:tools/taxonomy/build_calibration_corpus.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:d05ba752ec37f7575331fddfa1ea57461db2953af3edb68df1b20d72b2fc936c",
      "source-context:tools/embedding/factor.py"
  ], [
      "capsule:e1b34eaaeef5a340232ba80089b982b43c4bc33d01cf316bdb29f048ebcb57da",
      "declaration:main",
      "element:python-point:775ea59a20819255d0ba1ee1aed8c75706555acccd81b719b01a9d4d4c0d86a3",
      "public-output:main",
      "raw-source:d05ba752ec37f7575331fddfa1ea57461db2953af3edb68df1b20d72b2fc936c",
      "source-context:tools/embedding/factor.py"
  ]),
  ([
      "declaration:split_raw",
      "public-output:split_raw",
      "raw-source:fafbeb5fd30a6a83155490653fe6c45d5bafda6a6dc183c5c629a5da802933fe"
  ], [
      "capsule:cac1c3e09e864b62ff97d3fff3259348e795ea9791958b66b1c89323de477dd0",
      "declaration:split_raw",
      "element:python-point:77df58b894d06dff38ba0632c124b57082a67e9207f8a7f841e954cc76951475",
      "public-output:split_raw",
      "raw-source:fafbeb5fd30a6a83155490653fe6c45d5bafda6a6dc183c5c629a5da802933fe",
      "source-context:tools/environment/shard.py"
  ]),
  ([
      "declaration:ReconstructedElement",
      "public-output:ReconstructedElement",
      "raw-source:367480b604a7f34ba51f0bef7b7f4a4ac6b273c28e51643f67db4abec0d56118"
  ], [
      "capsule:0b946bd891d84b821612961ee30abf769058314879e4ab09a30a508b39b1b166",
      "declaration:ReconstructedElement",
      "element:python-point:787e0c1e8d76c20f2a0f1b3f3475a47dc969587379b4062f0b4ccdec58a183bd",
      "public-output:ReconstructedElement",
      "raw-source:367480b604a7f34ba51f0bef7b7f4a4ac6b273c28e51643f67db4abec0d56118",
      "source-context:tools/oracle/reconstruction.py"
  ]),
  ([
      "declaration:path_ids",
      "public-output:path_ids",
      "raw-source:19b192a207fda3cfbbef9e4b79f47f8d09b7b1211507af358e499b75f8bf7d5f",
      "source-context:tools/taxonomy/coverage.py"
  ], [
      "capsule:73174076993c2f85e3e23be863705d38621f7fbe43ec239736a33bee47d7e1eb",
      "declaration:path_ids",
      "element:python-point:78a9e230a74b24411a9bf256e2625cfe088ef542aab9a4d01ba81d48a564ff2a",
      "public-output:path_ids",
      "raw-source:19b192a207fda3cfbbef9e4b79f47f8d09b7b1211507af358e499b75f8bf7d5f",
      "source-context:tools/taxonomy/coverage.py"
  ]),
  ([
      "declaration:file_digest",
      "public-output:file_digest",
      "raw-source:7ee391646212eb8f0128729d48bddab0b56a730a168866d8353bab616e1ea453",
      "source-context:tools/kernel/build_features.py"
  ], [
      "capsule:ca860f1616375b31c1f165b58da2e4095da2c7524e8191a75d29d5885d939cc1",
      "declaration:file_digest",
      "element:python-point:78c985b8a30b8fdd3c6f05099595f2e9e08bf8074f1b546a72376c7207a70bb9",
      "public-output:file_digest",
      "raw-source:7ee391646212eb8f0128729d48bddab0b56a730a168866d8353bab616e1ea453",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:walk",
      "public-output:walk",
      "raw-source:c2a99346c99d00c0aebc20899bb3ac9479371708d896db546e7b86f371d563de",
      "source-context:tools/proof-strategy/classify.py"
  ], [
      "capsule:be15d8c77b944baf121ce3d2cf96169d2263a17a7e3aff25d92eead79cee5dc3",
      "declaration:walk",
      "element:python-point:78d7163bfe96dea03cfdc4775f25029745b4b2cbad45755d61bd897ca4f7ba19",
      "public-output:walk",
      "raw-source:c2a99346c99d00c0aebc20899bb3ac9479371708d896db546e7b86f371d563de",
      "source-context:tools/proof-strategy/classify.py"
  ]),
  ([
      "declaration:_features",
      "public-output:_features",
      "raw-source:4d95315e28c473e8e181348b49dbbe73f3afa92750546ede2423e215ddd5b515"
  ], [
      "capsule:a2fc978f4c78bc54e6bfbeca8de5d882a5979a4f51da40dcb21be5524216f280",
      "declaration:_features",
      "element:python-point:790d9487c121b627c5813186fccf8aaa65259cca245c7727bc5e163ea6373d9a",
      "public-output:_features",
      "raw-source:4d95315e28c473e8e181348b49dbbe73f3afa92750546ede2423e215ddd5b515",
      "source-context:tools/oracle/event_complex.py"
  ]),
  ([
      "declaration:project",
      "public-output:project",
      "raw-source:fcc1919924f799676d6a2559047a4831dd700dfafda59e5205174307958d9071",
      "source-context:tools/environment/to_inventory.py"
  ], [
      "capsule:feaa3b7c22b1f49568d9a81d1b1bdd41e73269242bd2da49bbc16c8510b4bca5",
      "declaration:project",
      "element:python-point:79d1853be550d2b5ad21446ae3525fba2642addcc06f221551520188a69027d5",
      "public-output:project",
      "raw-source:fcc1919924f799676d6a2559047a4831dd700dfafda59e5205174307958d9071",
      "source-context:tools/environment/to_inventory.py"
  ]),
  ([
      "declaration:source_value",
      "public-output:source_value",
      "raw-source:0cf7016fe386622c063ed25d9c639da893ea077326de57e16c1197da8700c86b"
  ], [
      "capsule:4590eb1a870725f059fd5f693a9cb800e154df3f753964a700724e558dde0dcc",
      "declaration:source_value",
      "element:python-point:79ec69fbdb7bc79131fca7ecdafc02b243acf103c845122d373f8ae20937ee41",
      "public-output:source_value",
      "raw-source:0cf7016fe386622c063ed25d9c639da893ea077326de57e16c1197da8700c86b",
      "source-context:tools/tests/test_neighborhood_names.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:ba9001e614a2641f2f2bcd18de9855216656ff2744e139bc0e96863771f71443",
      "source-context:tools/taxonomy/scaffold_ledger.py"
  ], [
      "capsule:e6514e1036c52f5489b8d08fe7500568545573c284aa5e73c2a967f9a877e179",
      "declaration:main",
      "element:python-point:7a1009b2d0e70969944ed7ef18265e108ecc6c98ce5e953ce74c9f971ee77ab5",
      "public-output:main",
      "raw-source:ba9001e614a2641f2f2bcd18de9855216656ff2744e139bc0e96863771f71443",
      "source-context:tools/taxonomy/scaffold_ledger.py"
  ]),
  ([
      "declaration:build",
      "public-output:build",
      "raw-source:3ede957835a89bdba079e13e0ee10836952fe1950643327e78ad90bea95a4377",
      "source-context:tools/projection/labeled_tree.py"
  ], [
      "capsule:a038945fbba1ac826322a663f1ac0f7996d0536cea48adbd1daa691f55345262",
      "declaration:build",
      "element:python-point:7a1c310de94c26895a9afad6a2639d4dd01347add64e6a7fc328185c6d03b722",
      "public-output:build",
      "raw-source:3ede957835a89bdba079e13e0ee10836952fe1950643327e78ad90bea95a4377",
      "source-context:tools/projection/labeled_tree.py"
  ]),
  ([
      "declaration:load_ledger",
      "public-output:load_ledger",
      "raw-source:a26f15ed63b78cc67ea7ec3ae4d26864faf30ac94bbc78904ceefc75ca682ad8"
  ], [
      "capsule:c6d4817e835825c4aa7be3c3791f85a400c97d7cb04fe88dd89a5800e39cbc9f",
      "declaration:load_ledger",
      "element:python-point:7a2ea542e7542a258696d9536c75c49b1565614e17d521917de7c9be539ea815",
      "public-output:load_ledger",
      "raw-source:a26f15ed63b78cc67ea7ec3ae4d26864faf30ac94bbc78904ceefc75ca682ad8",
      "source-context:tools/environment/ledger.py"
  ]),
  ([
      "declaration:build_structure",
      "public-output:build_structure",
      "raw-source:5f18f772bac3e9d4a0bbb696436de2faebcdac4091cc69abf44bc8948fd0db84"
  ], [
      "capsule:1fd479d8260c5928cafa49a7544110bdfe0d05391ada9bc9f6b09351c426f13d",
      "declaration:build_structure",
      "element:python-point:7a4c25b77434d8423e446b3bcf67f75fc1912e8f272a2fe54d87ac8b81744566",
      "public-output:build_structure",
      "raw-source:5f18f772bac3e9d4a0bbb696436de2faebcdac4091cc69abf44bc8948fd0db84",
      "source-context:tools/projection/intrinsic_structure.py"
  ]),
  ([
      "declaration:_lean_is_context",
      "public-output:_lean_is_context",
      "raw-source:df76a7943ddefcc13dac597b32a186a523376aab23d7e3a9d2375db8f2b15823"
  ], [
      "capsule:08035a7c2a04f0ef95e746d2da0e549fa406165f7ea9c70b65243f4116192839",
      "declaration:_lean_is_context",
      "element:python-point:7aa4c1e612390107157abc0f2ec67280e34f6eca61371ef06c3b1016993f92d4",
      "public-output:_lean_is_context",
      "raw-source:df76a7943ddefcc13dac597b32a186a523376aab23d7e3a9d2375db8f2b15823",
      "source-context:tools/refactor/materialize.py"
  ]),
  ([
      "declaration:projection_relation",
      "public-output:projection_relation",
      "raw-source:5d0d4ac82254d614128e4bf03c2d831038d00d19bd3140de764bf9b043ab418a"
  ], [
      "capsule:ff2e0aff83bb818effcb2d79494f7ecd8070b95cc47f86af25a30fb8fa402082",
      "declaration:projection_relation",
      "element:python-point:7afa5cb3a52731836a748a79e6416f4c59e7b7a8465478e84e64c6c76c84cde3",
      "public-output:projection_relation",
      "raw-source:5d0d4ac82254d614128e4bf03c2d831038d00d19bd3140de764bf9b043ab418a",
      "source-context:tools/locality/check.py"
  ]),
  ([
      "declaration:sha256_bytes",
      "public-output:sha256_bytes",
      "raw-source:740f2357ee8f574a5f54f4560f64f25c49e41b59da10b4bcb0a657f50cdd7371",
      "source-context:tools/environment/canonical.py"
  ], [
      "capsule:88b4c81de573b484846939af7da09f6fb619a5b6ac2fb9517fb66cb4bb01b115",
      "declaration:sha256_bytes",
      "element:python-point:7b27679d6dbad4a26096ed9f4dcd8c4351d8eeba7c127edb838cf10d39adca33",
      "public-output:sha256_bytes",
      "raw-source:740f2357ee8f574a5f54f4560f64f25c49e41b59da10b4bcb0a657f50cdd7371",
      "source-context:tools/environment/canonical.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:22c77b9fe90d6e357204dea7eb2cef7441b40d9fd7610d2707179912b3f65768",
      "source-context:tools/embedding/freeze_fixture.py"
  ], [
      "capsule:1e7ca0e194c93b609e21fdb8a4b236d5573d57e0e751102b43964a6bd7ab5ac6",
      "declaration:main",
      "element:python-point:7b86b8f1fa30b7188c453146446e40647fba18813e65cae6578df48f4c377575",
      "public-output:main",
      "raw-source:22c77b9fe90d6e357204dea7eb2cef7441b40d9fd7610d2707179912b3f65768",
      "source-context:tools/embedding/freeze_fixture.py"
  ]),
  ([
      "declaration:query_declarations",
      "public-output:query_declarations",
      "raw-source:64c4bfb501291383781e74925d112e20d73266f0160efd65370decb27a6d5d5b"
  ], [
      "capsule:d759e3c77ca0494aad0c76765962705385476ff78b18047fd3b8b868aa9d7b37",
      "declaration:query_declarations",
      "element:python-point:7ba5b46b57d436568bff0c09b5bfc439e641f55cda5531402103f87e4305fe2b",
      "public-output:query_declarations",
      "raw-source:64c4bfb501291383781e74925d112e20d73266f0160efd65370decb27a6d5d5b",
      "source-context:tools/environment/query.py"
  ]),
  ([
      "declaration:id_value",
      "public-output:id_value",
      "raw-source:c1d6d15b34eaf9ed92bf9352f052167b4ec6527273b4476a05ac998ceb6d840d",
      "source-context:tools/embedding/common.py"
  ], [
      "capsule:99d93c58b7ba46bb5087f58296f4c1f05638d78080332b7af1a85707cd6b0579",
      "declaration:id_value",
      "element:python-point:7c1a5df003e477b3fdd706c7d24fac5e0f06cf564457ea3398d0a1d18080072f",
      "public-output:id_value",
      "raw-source:c1d6d15b34eaf9ed92bf9352f052167b4ec6527273b4476a05ac998ceb6d840d",
      "source-context:tools/embedding/common.py"
  ]),
  ([
      "declaration:add_children",
      "public-output:add_children",
      "raw-source:4901d575634ff7df1bec4505785a34442dcc80de2c7d5f021c28f79759189374"
  ], [
      "capsule:97cdf7334e7c17f5b47a9c2a3d84193ad45da4a6d160d90dbf974df8c4ea322f",
      "declaration:add_children",
      "element:python-point:7c1a5e89d1c5cb166363290a16e938d71c3d49ff64a2ab6ee03fc2728c69764f",
      "public-output:add_children",
      "raw-source:4901d575634ff7df1bec4505785a34442dcc80de2c7d5f021c28f79759189374",
      "source-context:tools/taxonomy/build_registry.py"
  ]),
  ([
      "declaration:canonical_sort_keys",
      "public-output:canonical_sort_keys",
      "raw-source:458e51df28a5fcf3042eb10f9d5c21929c63de8e06478a7c8aa83ab486a637f3"
  ], [
      "capsule:9d444b7b8f0d303c8921498502a8a8ee1f4c53a0b80e7a3e406924cece5a8427",
      "declaration:canonical_sort_keys",
      "element:python-point:7c48f2dea2de1180d06357510dcdfa68ada12027efa368b19e74d24685751102",
      "public-output:canonical_sort_keys",
      "raw-source:458e51df28a5fcf3042eb10f9d5c21929c63de8e06478a7c8aa83ab486a637f3",
      "source-context:tools/environment/verify.py"
  ]),
  ([
      "declaration:normalized_distances",
      "public-output:normalized_distances",
      "raw-source:f3f4307525e2a374726e689c4fcd8e90ede09be54670eb361f8927fdc25e2737"
  ], [
      "capsule:3d5c224d3787824f8fc8da0282c8fe50f68c97ecf268e2790711cc2ff388b6c3",
      "declaration:normalized_distances",
      "element:python-point:7c69b354d050159a09972a1b48d98f70bdd355850252071811f077a126fcd490",
      "public-output:normalized_distances",
      "raw-source:f3f4307525e2a374726e689c4fcd8e90ede09be54670eb361f8927fdc25e2737",
      "source-context:tools/organization/hierarchical.py"
  ]),
  ([
      "declaration:write_ndjson",
      "public-output:write_ndjson",
      "raw-source:40d21ae31f56a65e4bff06126f839891f26a2fa2696be388aca822b5e8272b84",
      "source-context:tools/refactor/canonical.py"
  ], [
      "capsule:dc8cc9ad26b03e12d5763760b9b8a218a1f3932b202b1ae03b639aada491f08a",
      "declaration:write_ndjson",
      "element:python-point:7d36b12b5972c847285df264c36b71751130b14b4953626a616de5c2fa7f01cc",
      "public-output:write_ndjson",
      "raw-source:40d21ae31f56a65e4bff06126f839891f26a2fa2696be388aca822b5e8272b84",
      "source-context:tools/refactor/canonical.py"
  ]),
  ([
      "declaration:parse_args",
      "public-output:parse_args",
      "raw-source:b9352e0b4a8738e54f152cc85e736f007bf873bf01e1e536c543a532ce6c2cba",
      "source-context:tools/environment/shard.py"
  ], [
      "capsule:f8445925e2fe4b5129ed336aafec50cc3e63b00063929e178bb468afee8ef81c",
      "declaration:parse_args",
      "element:python-point:7de23ad11b7540e79560d84a36eaba86b8280601380fefc67ae936bec655b039",
      "public-output:parse_args",
      "raw-source:b9352e0b4a8738e54f152cc85e736f007bf873bf01e1e536c543a532ce6c2cba",
      "source-context:tools/environment/shard.py"
  ]),
  ([
      "declaration:api_record",
      "public-output:api_record",
      "raw-source:fac0b8d25f157d56c87240e0a42b756937f1ddf4c94980c8338031ddac33b953"
  ], [
      "capsule:edcf2c6c619dabe2ab3263ed2ba0261dd67372bb9cc32f16758eaf7724cfea77",
      "declaration:api_record",
      "element:python-point:7ded12468e43e76867d7f2018a9b89a7254cb742d4c76fa856e5fc0b85ad40ca",
      "public-output:api_record",
      "raw-source:fac0b8d25f157d56c87240e0a42b756937f1ddf4c94980c8338031ddac33b953",
      "source-context:tools/tests/test_refactor.py"
  ]),
  ([
      "declaration:directory_bytes",
      "public-output:directory_bytes",
      "raw-source:52ca648e2ef00dc22c295433194db04bc282cfbd29fa2fd1e4d302329f3cedd4"
  ], [
      "capsule:5e7a2dd9d12ee65d422d900c48ffd024cac74413b7e6d47139279bb04700a9a8",
      "declaration:directory_bytes",
      "element:python-point:7e1900650cc37579ee1ffc40f823385d7c1bea5a5b9b754a37dbaa7268203f51",
      "public-output:directory_bytes",
      "raw-source:52ca648e2ef00dc22c295433194db04bc282cfbd29fa2fd1e4d302329f3cedd4",
      "source-context:tools/locality/check.py"
  ]),
  ([
      "declaration:_is_compiler_auxiliary",
      "public-output:_is_compiler_auxiliary",
      "raw-source:a95fa282b0d31ccdcc87d23b2f6fd165b74256def5374b032870d1c092fde073"
  ], [
      "capsule:9ee47302e9ba03a0057d0f8a07b560afffd372167a44c9a4f190a5424c6303b7",
      "declaration:_is_compiler_auxiliary",
      "element:python-point:7e4d4e3c020fc72c64f2c503b3de4c3fa53ac15a76750b5c6c4c6e94d721b167",
      "public-output:_is_compiler_auxiliary",
      "raw-source:a95fa282b0d31ccdcc87d23b2f6fd165b74256def5374b032870d1c092fde073",
      "source-context:tools/refactor/api_snapshot.py"
  ]),
  ([
      "declaration:solve",
      "public-output:solve",
      "raw-source:06752a2d53d1cf03c0bc7fcd062234dd788937f63cc3b666ed1cf2211b5387c4"
  ], [
      "capsule:01ab5b2208e4c3aa12d16275c444185e68b2ec9b2036f165adce2fa5c4854f37",
      "declaration:solve",
      "element:python-point:7efe08c84a5ecd305491706cb999a07f30bb7eeb6bd605c6a012bf90e00c9070",
      "public-output:solve",
      "raw-source:06752a2d53d1cf03c0bc7fcd062234dd788937f63cc3b666ed1cf2211b5387c4",
      "source-context:tools/refactor/module_plan.py"
  ]),
  ([
      "declaration:digest_record",
      "public-output:digest_record",
      "raw-source:699f43c516fe31c5b171567b7d38f07665058e36bcc343ae10525bc89e77138d",
      "source-context:tools/projection/project.py"
  ], [
      "capsule:ddc01a61c75299f4704ff9ab1d4f8674f333c07a238186bf9f3f2335500b7842",
      "declaration:digest_record",
      "element:python-point:7f67716c118c91806c956c91e01b3301e28a64bac91272a8d0c3e2e1519521fa",
      "public-output:digest_record",
      "raw-source:699f43c516fe31c5b171567b7d38f07665058e36bcc343ae10525bc89e77138d",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:incremental_assemble",
      "public-output:incremental_assemble",
      "raw-source:5da9e584717bd7ea9d5e7a3aae84d898e768aa69a7788d35701af9c611ff334e"
  ], [
      "capsule:d0fd4269ac84e06f632d8fd2473e8468cdf47970681d0612f05191a69cd52807",
      "declaration:incremental_assemble",
      "element:python-point:7f8de1c94a28e12afbd1d1ed7b12089bad94688fdb86f90f2f68dc94f0be2264",
      "public-output:incremental_assemble",
      "raw-source:5da9e584717bd7ea9d5e7a3aae84d898e768aa69a7788d35701af9c611ff334e",
      "source-context:tools/environment/canonical_cache.py"
  ]),
  ([
      "declaration:build",
      "public-output:build",
      "raw-source:834a595b842b9da23c8bda124782be70c60ef17505fcf007522c9cbab00990f7",
      "source-context:tools/kernel/build_features.py"
  ], [
      "capsule:5a50fd4fd1d8a615fa4f8a633db13416332ea7b5bc705643391dbf9c1bbb209a",
      "declaration:build",
      "element:python-point:7fa44a4298440c03180f6194a70e062e90e704e86532b3dcd3dcba11fe558cd9",
      "public-output:build",
      "raw-source:834a595b842b9da23c8bda124782be70c60ef17505fcf007522c9cbab00990f7",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:_manifest_files",
      "public-output:_manifest_files",
      "raw-source:957d6014d911e997679a0287937e223220f25aae09ed01c38d7d915425f8e2eb"
  ], [
      "capsule:570553bc8f829ab60a19f5eaabdc6cee9d4ce84498c1eb5327ebbc328af321bb",
      "declaration:_manifest_files",
      "element:python-point:80b4c43a96ed6ffeb62ca86e76767d243e5767a6fcaf8a51289e680a8c0ec864",
      "public-output:_manifest_files",
      "raw-source:957d6014d911e997679a0287937e223220f25aae09ed01c38d7d915425f8e2eb",
      "source-context:tools/refactor/preflight.py"
  ]),
  ([
      "declaration:evaluate_profile",
      "public-output:evaluate_profile",
      "raw-source:f1136756ac76a54d0db46c61bfa998aec56dad289ee6c4164f066f423e3932d9"
  ], [
      "capsule:091b734de52e9bb77210710b1a2568a9a9a2c4d86dcc767623d6130abfd1b1e0",
      "declaration:evaluate_profile",
      "element:python-point:80bf76b05bfaa26be435250d270e716de28f409469d22f3bf2f2322a2c789002",
      "public-output:evaluate_profile",
      "raw-source:f1136756ac76a54d0db46c61bfa998aec56dad289ee6c4164f066f423e3932d9",
      "source-context:tools/oracle/training_loop.py"
  ]),
  ([
      "declaration:edge",
      "public-output:edge",
      "raw-source:c16b72a4da8a3fd8b9e4dd96c4c7b4a5b4b3a86e927de08975a5b52e790bdf66",
      "source-context:tools/tests/test_refactor.py"
  ], [
      "capsule:722b4abe549e7172a684a892626a127b9aa249d2d74ba26dc169788caa5ca3b2",
      "declaration:edge",
      "element:python-point:80e0ea2e683548baa8b8d09f66b0a1b96a35e87f3bd999c683a173948fd42061",
      "public-output:edge",
      "raw-source:c16b72a4da8a3fd8b9e4dd96c4c7b4a5b4b3a86e927de08975a5b52e790bdf66",
      "source-context:tools/tests/test_refactor.py"
  ]),
  ([
      "declaration:_digest",
      "public-output:_digest",
      "raw-source:5ae31bf8435a41ce8f788460db835c15a3b2303bb79ebc9f23e13747f3c5256a",
      "source-context:tools/projection/formal_neighborhoods.py"
  ], [
      "capsule:0c1c39a6c98bd8a37791148d2363d43221104db14abaf877b2a9be6e4c3bada3",
      "declaration:_digest",
      "element:python-point:81498c5689a4591010de74fbafee1ccba354198ac8dc88ad9c75860b712fa680",
      "public-output:_digest",
      "raw-source:5ae31bf8435a41ce8f788460db835c15a3b2303bb79ebc9f23e13747f3c5256a",
      "source-context:tools/projection/formal_neighborhoods.py"
  ]),
  ([
      "declaration:compute_cached",
      "public-output:compute_cached",
      "raw-source:ea234076d196cbba3abfac84e21f2e6ab59aa2a6a5bbf367cea40853f04d77ed"
  ], [
      "capsule:b820407a275a5f73ece05198f378410ee6cb887b03e5d952e641b4bd8790b268",
      "declaration:compute_cached",
      "element:python-point:82510bbc54801a57c2b6ee50fdadf5232682316546f650b7055b4734afc1c093",
      "public-output:compute_cached",
      "raw-source:ea234076d196cbba3abfac84e21f2e6ab59aa2a6a5bbf367cea40853f04d77ed",
      "source-context:tools/kernel/gram_cache.py"
  ]),
  ([
      "declaration:admissible_turns",
      "public-output:admissible_turns",
      "raw-source:21037d1c27d9c65119f1fb2826f918a39b4ee55896dbe652bd78aa687123e491"
  ], [
      "capsule:771d9b254c835f80bdbf8523472703b1679b91a2c86f7d245fec3adce61770fb",
      "declaration:admissible_turns",
      "element:python-point:82d74ec23a61b27fd31edcf169441cf6e972a18e016922f60febee86c23ff86a",
      "public-output:admissible_turns",
      "raw-source:21037d1c27d9c65119f1fb2826f918a39b4ee55896dbe652bd78aa687123e491",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:_validate",
      "public-output:_validate",
      "raw-source:7ec4029dacd0a857693ddaf3d52682c53498b71707643e95a8e81fd742058e11",
      "source-context:tools/refactor/emit_shell.py"
  ], [
      "capsule:37fe9d353297887181995b4872eb79b59c23d24fe091236c585e70106adcca73",
      "declaration:_validate",
      "element:python-point:83c9f7d5df6bae8749f1b2cb3507ca151c6bfe8713c29cbf1e810c6de4a33720",
      "public-output:_validate",
      "raw-source:7ec4029dacd0a857693ddaf3d52682c53498b71707643e95a8e81fd742058e11",
      "source-context:tools/refactor/emit_shell.py"
  ]),
  ([
      "declaration:CanonicalCacheError",
      "public-output:CanonicalCacheError",
      "raw-source:c16860a48d14cfe4f47d7fc912f5d16adca44442e42a88028d5990e2ec85dd0f"
  ], [
      "capsule:1ad0099c8a1a6248a70d68496669b3ff6e5e9d2046f9040a460547738acd8cca",
      "declaration:CanonicalCacheError",
      "element:python-point:83fa457f4869e8afb2defd5bd4341aa96d70c373afcdfd7d3921ae4e151d95fc",
      "public-output:CanonicalCacheError",
      "raw-source:c16860a48d14cfe4f47d7fc912f5d16adca44442e42a88028d5990e2ec85dd0f",
      "source-context:tools/environment/canonical_cache.py"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L56445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
