# semanticSupportRowsChunk0009

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c159dc712da77e72d7e773ad3d9271f4d48b673c80f361314c083ac5c6452fad",
  "kind": "def",
  "lexical_name": "semanticSupportRowsChunk0009",
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
  "slug": "semanticsupportrowschunk0009--0c6650a09db56fb2ea2c712c",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72893,
    "line": 72106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c6650a09db56fb2ea2c712c34426f732081595f700041cfeae599b4004b54fc",
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

Occurrence: `declaration:c159dc712da77e72d7e773ad3d9271f4d48b673c80f361314c083ac5c6452fad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72106–72893.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def semanticSupportRowsChunk0009 : List (List String × List String) :=
[
  ([
      "declaration:load_entry",
      "public-output:load_entry",
      "raw-source:2feae2a9926a1b8e41bc8b077a791521dc1f2e29ee02a0f52a1eb3c4d9dc7ea2",
      "source-context:tools/kernel/gram_cache.py"
  ], [
      "capsule:27d1fa02208c379542b5c65b24f1605061f37871c16f21d8dd53a640eb93c859",
      "declaration:load_entry",
      "element:python-point:a0aa68c56733bb777aced03ed3a82fc5dca05fa9b3719fecb4d702f52a5c0ef9",
      "public-output:load_entry",
      "raw-source:2feae2a9926a1b8e41bc8b077a791521dc1f2e29ee02a0f52a1eb3c4d9dc7ea2",
      "source-context:tools/kernel/gram_cache.py"
  ]),
  ([
      "declaration:extract",
      "public-output:extract",
      "raw-source:0603aa7105104e3b12dd3b9467050bea1982d3876b6361ab18ccbff326a70fee"
  ], [
      "capsule:0354068783a23381f78f50a927f627ea34cb05df19db0986aec9763e90d17e5e",
      "declaration:extract",
      "element:python-point:a0b8593623494ad55ab9ec50cbdead294d00c4e833530c7b65955a193426039c",
      "public-output:extract",
      "raw-source:0603aa7105104e3b12dd3b9467050bea1982d3876b6361ab18ccbff326a70fee",
      "source-context:tools/environment/local_extract.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:923a1afbce189ffadc024ebdd4cad0f8c83a0e3948667fe838c43302050d604e",
      "source-context:tools/locality/check.py"
  ], [
      "capsule:9ad558a298956b8159e27335dd3dc6b3c792c3bb2fa1c7d8ae5cd446343999dd",
      "declaration:main",
      "element:python-point:a103bb35dec7e9af5193f01455741cc7da3fe6c519aa62ad17ee9ec8cb1be463",
      "public-output:main",
      "raw-source:923a1afbce189ffadc024ebdd4cad0f8c83a0e3948667fe838c43302050d604e",
      "source-context:tools/locality/check.py"
  ]),
  ([
      "declaration:build_region",
      "public-output:build_region",
      "raw-source:3850f21645e23a82b446f92e51dfb0598bc773555fdea5d02995c324d95213c3"
  ], [
      "capsule:acf9037f80423434aa5aeaeba404976c604431643a3c11a9611e8c89555598dd",
      "declaration:build_region",
      "element:python-point:a10556eb9eca613a623a7782823fdc8a03145fdfb281a479cf8543d92a2216db",
      "public-output:build_region",
      "raw-source:3850f21645e23a82b446f92e51dfb0598bc773555fdea5d02995c324d95213c3",
      "source-context:tools/organization/cache.py"
  ]),
  ([
      "declaration:fallback_selector_value",
      "public-output:fallback_selector_value",
      "raw-source:757913118e6b71053f1529e88dbb722813ece05d65b654741b265b608859eb2f"
  ], [
      "capsule:dc4b701e17444a46c37507cf732206d3fd67b5147c70e4c94e774fd47aad2a76",
      "declaration:fallback_selector_value",
      "element:python-point:a1c5a1dafa41e8be5d6168da9a4d89385dde50069f71f3f77c71cf901c18beb6",
      "public-output:fallback_selector_value",
      "raw-source:757913118e6b71053f1529e88dbb722813ece05d65b654741b265b608859eb2f",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:evaluate_grid",
      "public-output:evaluate_grid",
      "raw-source:096435fba247234cdd9a661ab723f5dbe36b9ca16ba1e6359e1cba0435d1dfb8"
  ], [
      "capsule:c9c6eb34084babbf1346d71fc72cf79b9ffa6e4f42059aca304d0a2afa578cb3",
      "declaration:evaluate_grid",
      "element:python-point:a1d53c39f878897519c2fa3ebab79ce7a4635d3d24a9b52b01839b7632b2bc11",
      "public-output:evaluate_grid",
      "raw-source:096435fba247234cdd9a661ab723f5dbe36b9ca16ba1e6359e1cba0435d1dfb8",
      "source-context:tools/oracle/neighborhood_training.py"
  ]),
  ([
      "declaration:face_dimension",
      "public-output:face_dimension",
      "raw-source:aa48038504dc0dfa85fe42ae32b785237337832e18f8dd7b2581674d7da48c45"
  ], [
      "capsule:84e9129b0a7ebae73ee5095bbbc72f65da2b7ea26687b26d6f0ed8dd5a04c0a4",
      "declaration:face_dimension",
      "element:python-point:a22d37dd7c0cb10b7d2ea76120bd0da2bf20f354dd25568042dc7c8e2f62c31b",
      "public-output:face_dimension",
      "raw-source:aa48038504dc0dfa85fe42ae32b785237337832e18f8dd7b2581674d7da48c45",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:orbit_size",
      "public-output:orbit_size",
      "raw-source:dab54e1cbca6e407b1e9f6a43f60607d3733a5457a04829ef73e06787e3bb156"
  ], [
      "capsule:7fe8da0bd9254c5bd9f691bf4e8e7b089afbd571c2057e5828fa106d6159d495",
      "declaration:orbit_size",
      "element:python-point:a261ba41e25c48973f6f00e37df3cd7a16974b72c7d5710eeb3ba52da2a2293d",
      "public-output:orbit_size",
      "raw-source:dab54e1cbca6e407b1e9f6a43f60607d3733a5457a04829ef73e06787e3bb156",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:child_nodes",
      "public-output:child_nodes",
      "raw-source:a476e8284ad80e2290f45bce6d16b2d8f7f005812eb9fe3c5199bde1ba00b5b0"
  ], [
      "capsule:fa9c9ccbfbda0b17c1912675d3871247a04f7cb01ccd60f65e27cefc87267758",
      "declaration:child_nodes",
      "element:python-point:a28343bd340888b87704970ebd6b31c7294a468cffddc27487efe63b7ac0d73a",
      "public-output:child_nodes",
      "raw-source:a476e8284ad80e2290f45bce6d16b2d8f7f005812eb9fe3c5199bde1ba00b5b0",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:fixture_progression",
      "public-output:fixture_progression",
      "raw-source:2c3d69c3962a963dd1b3d9fa04179f3ac86e2e533b3f50d71a4813a2a1da32fc"
  ], [
      "capsule:998b340def895c2f05ddcd6712d0303ef935a46dca2b6c97f37a63ea89142135",
      "declaration:fixture_progression",
      "element:python-point:a288334cd50f7e47ffce645fcb183b92e1bfb0ab6859df8ddcea7af686271b3c",
      "public-output:fixture_progression",
      "raw-source:2c3d69c3962a963dd1b3d9fa04179f3ac86e2e533b3f50d71a4813a2a1da32fc",
      "source-context:tools/tests/test_mathematics_oracle.py"
  ]),
  ([
      "declaration:parse_args",
      "public-output:parse_args",
      "raw-source:314ad64706058519229060e757cb848fca60de786f69aefe4c32b9c5dd42edcd",
      "source-context:tools/environment/cone.py"
  ], [
      "capsule:1e1a43873520d6e31b0ff453f8035b72b12d3c3e816ab06ea367bcadb9266caf",
      "declaration:parse_args",
      "element:python-point:a2d74a0b031f1aa9e83aa9063a4b32f44e2500993d9e754cfe0b22f6f833613d",
      "public-output:parse_args",
      "raw-source:314ad64706058519229060e757cb848fca60de786f69aefe4c32b9c5dd42edcd",
      "source-context:tools/environment/cone.py"
  ]),
  ([
      "declaration:digest_value",
      "public-output:digest_value",
      "raw-source:f35e5cf3562de88dad32261aaacf03765c7635561b6d58745f8c7703a71d8c62",
      "source-context:tools/concept-audit/audit.py"
  ], [
      "capsule:afbb7092ed8b3c5c86755589e72455fa87426b5c7545fb187d245ebab626d6be",
      "declaration:digest_value",
      "element:python-point:a2db2e5d00f86d4d67a87c503938499c72559ff03f00730aded77737fbd83fca",
      "public-output:digest_value",
      "raw-source:f35e5cf3562de88dad32261aaacf03765c7635561b6d58745f8c7703a71d8c62",
      "source-context:tools/concept-audit/audit.py"
  ]),
  ([
      "declaration:_extension",
      "public-output:_extension",
      "raw-source:1d9008d61045b2b5b5d650e37c834e9c4acd8922a8d25c07a03663ea7db06b6d"
  ], [
      "capsule:a8679e9352a1e34327b1a446a69ac9e3b9028ea29f55d32b74887024c378d3bf",
      "declaration:_extension",
      "element:python-point:a331fcf618e7282b5350377017d66547df8de1a547c1625c5782b13f6e695f1a",
      "public-output:_extension",
      "raw-source:1d9008d61045b2b5b5d650e37c834e9c4acd8922a8d25c07a03663ea7db06b6d",
      "source-context:tools/projection/external_rigidifier.py"
  ]),
  ([
      "declaration:slug",
      "public-output:slug",
      "raw-source:cda0a99857974e309f2e6e0776504a538362ae16b44d599e3825f19f7656dcd1",
      "source-context:tools/taxonomy/build_registry.py"
  ], [
      "capsule:e79e834aa5fa823e6e2320c25c0527ccc528f7b3b63598c8c6291dee690ad152",
      "declaration:slug",
      "element:python-point:a341a921f312cb994873068231d71ae03190157b8777c5b4cb7415e268cfb2be",
      "public-output:slug",
      "raw-source:cda0a99857974e309f2e6e0776504a538362ae16b44d599e3825f19f7656dcd1",
      "source-context:tools/taxonomy/build_registry.py"
  ]),
  ([
      "declaration:projection_case",
      "public-output:projection_case",
      "raw-source:3ffe5d0f91deec835d1549b9bafbe895eb459f01b9c8dcf57426e8f41f24049e"
  ], [
      "capsule:b9f245bb00d72b7b949433b686cbc5407d9c2f60bf872356bf2064af0e22ac68",
      "declaration:projection_case",
      "element:python-point:a38f1affcf26d9176f8a7822af26f8d58ff70a5a3ceec47daf1a003abbade02f",
      "public-output:projection_case",
      "raw-source:3ffe5d0f91deec835d1549b9bafbe895eb459f01b9c8dcf57426e8f41f24049e",
      "source-context:tools/locality/check.py"
  ]),
  ([
      "declaration:_replay_json",
      "public-output:_replay_json",
      "raw-source:c15e69c67d05544abbb0572d362e03a508460bf5e9f3a52ab7b5f2aeaf48e807"
  ], [
      "capsule:2700b8a2901f4327eb3255a7ad277026123a8b42eb82c07f84d281102e3105a7",
      "declaration:_replay_json",
      "element:python-point:a3ad810573a25305b1ec413e1fe224dc8f8edc456fa7f240800ff0a0ec94ba66",
      "public-output:_replay_json",
      "raw-source:c15e69c67d05544abbb0572d362e03a508460bf5e9f3a52ab7b5f2aeaf48e807",
      "source-context:tools/environment/replay.py"
  ]),
  ([
      "declaration:extract_python_points",
      "public-output:extract_python_points",
      "raw-source:1fea07681a85488e4ba52cfb4e16ac11006c553b4ac43fd9d0427d080ae9bbd7"
  ], [
      "capsule:213e6557041c612f9acba46b2976cca44496c1a15263e518c0446d1c384a3751",
      "declaration:extract_python_points",
      "element:python-point:a3cafccda772d7e5efad06666cf0838b9904c3dd402b8c81c2cbece7be506982",
      "public-output:extract_python_points",
      "raw-source:1fea07681a85488e4ba52cfb4e16ac11006c553b4ac43fd9d0427d080ae9bbd7",
      "source-context:tools/refactor/emit_python.py"
  ]),
  ([
      "declaration:relation_endpoints",
      "public-output:relation_endpoints",
      "raw-source:7c4cf42a2813f4d183f98e6730c6eff0a9c1d3a3f68b3fe33a8e0d16d306a1c5"
  ], [
      "capsule:ea2512b3f486814acda88ccad3585a9f2d83a33641576c9972867af92d374085",
      "declaration:relation_endpoints",
      "element:python-point:a42e0c28725bd7c290caa28623714eb977e5ebebbdde3c2aa258e605ba3a8836",
      "public-output:relation_endpoints",
      "raw-source:7c4cf42a2813f4d183f98e6730c6eff0a9c1d3a3f68b3fe33a8e0d16d306a1c5",
      "source-context:tools/projection/locality.py"
  ]),
  ([
      "declaration:digest",
      "public-output:digest",
      "raw-source:9ff618e9a48231b08d920ed841ac79e76d810d73d1790ef66e23a927f33e224c",
      "source-context:tools/proof-strategy/classify.py"
  ], [
      "capsule:6c016667aa5c78483019ce1b1f2d2774887d527652c7d49225b9c4b0e93d3fcf",
      "declaration:digest",
      "element:python-point:a43da1619306ec9abaae51ef4530d7e54e60036ddcd4c8d986ae92704c024432",
      "public-output:digest",
      "raw-source:9ff618e9a48231b08d920ed841ac79e76d810d73d1790ef66e23a927f33e224c",
      "source-context:tools/proof-strategy/classify.py"
  ]),
  ([
      "declaration:LocalExtractionError",
      "public-output:LocalExtractionError",
      "raw-source:b6cb12c17b38fd2881eeebc57844729b122acd32a9c53efe18405b2d71c608d4"
  ], [
      "capsule:bbb6d22ce0fd69db7eac9a0349eef73c665d1000312ca852eb0c8473ccee93ee",
      "declaration:LocalExtractionError",
      "element:python-point:a48805854931dc0d6517056983a8e61490714ad43a792d09bdff1e39f39582d6",
      "public-output:LocalExtractionError",
      "raw-source:b6cb12c17b38fd2881eeebc57844729b122acd32a9c53efe18405b2d71c608d4",
      "source-context:tools/environment/local_extract.py"
  ]),
  ([
      "declaration:entry_body",
      "public-output:entry_body",
      "raw-source:abe6c4756d5dd9e68448a887e4320ecf3dbf9e371dbe05d4bff344e350e1f07e",
      "source-context:tools/organization/cache.py"
  ], [
      "capsule:d8e035023ee6721fc048efb7014e0b997ec248b9721445be0fd7a8010215e0a0",
      "declaration:entry_body",
      "element:python-point:a48bb0892548dee051aba0fa17aae561cae9e30e3482d14be8b44759a53351a0",
      "public-output:entry_body",
      "raw-source:abe6c4756d5dd9e68448a887e4320ecf3dbf9e371dbe05d4bff344e350e1f07e",
      "source-context:tools/organization/cache.py"
  ]),
  ([
      "declaration:parse_semantic_encoding",
      "public-output:parse_semantic_encoding",
      "raw-source:a3754520518b17a170f7b2def2fafd7a294914f723ca7afba0fd8918f6ebc8cc"
  ], [
      "capsule:88b726ca23f4c0967733a38fd5a6d98176166a1031b796fac17f02af421dfa14",
      "declaration:parse_semantic_encoding",
      "element:python-point:a494d18c3f44febb42ba9bfc3ed7f1041b95b8a717ffdbad5987522b32895dac",
      "public-output:parse_semantic_encoding",
      "raw-source:a3754520518b17a170f7b2def2fafd7a294914f723ca7afba0fd8918f6ebc8cc",
      "source-context:tools/environment/expression_tree.py"
  ]),
  ([
      "declaration:probe_materialized_points",
      "public-output:probe_materialized_points",
      "raw-source:e9945b601133f26ee64d46598db431b3fa10421addbc29fcff3d9c4a2a0d12c8"
  ], [
      "capsule:2461c9bd62155b414f91104fce4794193c3d0ee9d1208f2b8614e3353db2f754",
      "declaration:probe_materialized_points",
      "element:python-point:a4df98361dc6fa9cb1bd511755448e90532b374a0f8b14fd0ec83a4ead7a44bf",
      "public-output:probe_materialized_points",
      "raw-source:e9945b601133f26ee64d46598db431b3fa10421addbc29fcff3d9c4a2a0d12c8",
      "source-context:tools/refactor/probe.py"
  ]),
  ([
      "declaration:parse_args",
      "public-output:parse_args",
      "raw-source:6c5bbd2578fd1bc11be18e56408d224efe31205c68298ccd147a574b2334ca3a",
      "source-context:tools/organization/hierarchical.py"
  ], [
      "capsule:9068f49f483e53be9f22513669971c623b0658a16c49040a7ee16e9419d822ab",
      "declaration:parse_args",
      "element:python-point:a51e87bc07ae1261ae600e001b0436bbebd6004560a89041dce00e72a4faee9e",
      "public-output:parse_args",
      "raw-source:6c5bbd2578fd1bc11be18e56408d224efe31205c68298ccd147a574b2334ca3a",
      "source-context:tools/organization/hierarchical.py"
  ]),
  ([
      "declaration:compare_declaration",
      "public-output:compare_declaration",
      "raw-source:77e8e8f23d4734ff26a07fb0dbbcd25456a06b6429905386936e14ebc9ee1405"
  ], [
      "capsule:d98952812d22ca72ee1c365f3a0225c4528d5268517b0f3e21dfd524812b559e",
      "declaration:compare_declaration",
      "element:python-point:a52728eb648f758026f06348b0cde4c3c84d397b4640542b8106965fbffbe115",
      "public-output:compare_declaration",
      "raw-source:77e8e8f23d4734ff26a07fb0dbbcd25456a06b6429905386936e14ebc9ee1405",
      "source-context:tools/environment/diff.py"
  ]),
  ([
      "declaration:rank_questions",
      "public-output:rank_questions",
      "raw-source:361305da31b6247a0fa87797cb1775d426c8761c70a5e5476495c6923bf5f2b0"
  ], [
      "capsule:9baf8d36afe2f476b11d498c0bf30b71547a9d32153ad5cf3ab438e69a3b2eff",
      "declaration:rank_questions",
      "element:python-point:a55976ccdbf40ac0743825c68a516934781e01a2109f0232836aab6abd307413",
      "public-output:rank_questions",
      "raw-source:361305da31b6247a0fa87797cb1775d426c8761c70a5e5476495c6923bf5f2b0",
      "source-context:tools/oracle/question_flow.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:c82b368da938ec765c7ed88e55243061c3578f6139930a842033616ff32a451b",
      "source-context:tools/environment/verify.py"
  ], [
      "capsule:ebaca07f6f3945897e22d62bd2378289a3f60b65328e43c9799c55a6d36fc3bf",
      "declaration:main",
      "element:python-point:a5c97ef40baedfe5878d2ce72c7ffc79b65105ea85540385146d4ac01194ef27",
      "public-output:main",
      "raw-source:c82b368da938ec765c7ed88e55243061c3578f6139930a842033616ff32a451b",
      "source-context:tools/environment/verify.py"
  ]),
  ([
      "declaration:normalize_python_syntax",
      "public-output:normalize_python_syntax",
      "raw-source:91afb6847367b0d33af176aa32c86fcb270a136ef3798edcdfce5f13a9e16cd2"
  ], [
      "capsule:c9de09316e9d06c019f359b3521b79e5be9edfcbd0f4ca5f48751a4535a5684f",
      "declaration:normalize_python_syntax",
      "element:python-point:a6de1cf329a5964ad27a8460604e75a7e3e69ca28dc8dfd21151483e696f443c",
      "public-output:normalize_python_syntax",
      "raw-source:91afb6847367b0d33af176aa32c86fcb270a136ef3798edcdfce5f13a9e16cd2",
      "source-context:tools/projection/intrinsic_structure.py"
  ]),
  ([
      "declaration:semantic_children",
      "public-output:semantic_children",
      "raw-source:c90c8d17663d3c20128c16adab07975eb818e44078f68b9811b78287112beb4a"
  ], [
      "capsule:44767301caba6992a0dd490e562c94cf6713577b126fc5c8574023ef6940a408",
      "declaration:semantic_children",
      "element:python-point:a6f22ade0fd5f4a1ce8d9b70d3f4ebc49e1b25fcb3eb35a64c4d5ef28a4c8131",
      "public-output:semantic_children",
      "raw-source:c90c8d17663d3c20128c16adab07975eb818e44078f68b9811b78287112beb4a",
      "source-context:tools/projection/locality.py"
  ]),
  ([
      "declaration:_declaration_words",
      "public-output:_declaration_words",
      "raw-source:e53c2fbf84daccd89b260fc8c1df665318d39a8c279539211232421b76425dfe"
  ], [
      "capsule:746fab82b8ba549a47b0b4fa2a87c1eff3a67cadede996b2b9152056e6afa7ac",
      "declaration:_declaration_words",
      "element:python-point:a75b36e4ecee7e99b5fb7ec37cd20d8bf65e33555d3d4c0236294f69e03ddbf4",
      "public-output:_declaration_words",
      "raw-source:e53c2fbf84daccd89b260fc8c1df665318d39a8c279539211232421b76425dfe",
      "source-context:tools/oracle/oracle_names.py"
  ]),
  ([
      "declaration:write_ndjson",
      "public-output:write_ndjson",
      "raw-source:d68a0d5f60b5467c50ccdbdb487e581cb4acaa6157a0c624f72e95ffd70adc04",
      "source-context:tools/oracle/name_neighborhoods.py"
  ], [
      "capsule:8c15105010384351f15c67f45477154c28e9b730b169355eaaa5cd82abe35acc",
      "declaration:write_ndjson",
      "element:python-point:a7744ffaff953404f9c047d629f115f4330ad17567a1bdd206fece931fe2556e",
      "public-output:write_ndjson",
      "raw-source:d68a0d5f60b5467c50ccdbdb487e581cb4acaa6157a0c624f72e95ffd70adc04",
      "source-context:tools/oracle/name_neighborhoods.py"
  ]),
  ([
      "declaration:_display",
      "public-output:_display",
      "raw-source:fda6ed2f421f736a9867857cc463d0cba334910a19c31d04d9faf35316100e7f",
      "source-context:tools/oracle/oracle_names.py"
  ], [
      "capsule:604ebde7badab66a31ccbfefce090e387a22cfa29a161dedbf1919f375d6b304",
      "declaration:_display",
      "element:python-point:a77f61ab928c1723fb5dc00f8fb095f7edd7586557d0e54e0fbe1fbfedb86c63",
      "public-output:_display",
      "raw-source:fda6ed2f421f736a9867857cc463d0cba334910a19c31d04d9faf35316100e7f",
      "source-context:tools/oracle/oracle_names.py"
  ]),
  ([
      "declaration:_infer",
      "public-output:_infer",
      "raw-source:22760c070a4f195d439b72d9d92718f640e7e0554bbb8638efaebcbd09157b50",
      "source-context:tools/oracle/oracle_names.py"
  ], [
      "capsule:835727837528e92138bb75e82b39d8260d8e5b03dddf04664b20cdfa0b232957",
      "declaration:_infer",
      "element:python-point:a77fc6aebe0016adb3133a4c8c1e8e399599a33f991e120e08f60c2bf75f93e5",
      "public-output:_infer",
      "raw-source:22760c070a4f195d439b72d9d92718f640e7e0554bbb8638efaebcbd09157b50",
      "source-context:tools/oracle/oracle_names.py"
  ]),
  ([
      "declaration:CyclicCubicalOracleTests",
      "public-output:CyclicCubicalOracleTests",
      "raw-source:3b0d63dd77819d398468f5494ff1f74256216e01015ac5c644d62ed45973d286"
  ], [
      "capsule:a827751f2709a1a7d3ff8e6a84e626f562d631ac000f6e67eeb25e5eb544fdac",
      "declaration:CyclicCubicalOracleTests",
      "element:python-point:a7d126ac793708b478d69c1dc79bb5777b291946b9db655a428415a46646129d",
      "public-output:CyclicCubicalOracleTests",
      "raw-source:3b0d63dd77819d398468f5494ff1f74256216e01015ac5c644d62ed45973d286",
      "source-context:tools/tests/test_oracle_cyclic_cubical.py"
  ]),
  ([
      "declaration:all_degree_face_agreement",
      "public-output:all_degree_face_agreement",
      "raw-source:34e0653422d582afc8ceea209233e3b94faf7fa7ac2d0c64c42ac802d0dc3005"
  ], [
      "capsule:6bd0e0a630964df2041a708b7dde46e1f7e9263549797c01cb991281ca7a9b58",
      "declaration:all_degree_face_agreement",
      "element:python-point:a7e3d9c0030b712192e88b56b37329987e854554fc4b1cc1b21124db7e1ac353",
      "public-output:all_degree_face_agreement",
      "raw-source:34e0653422d582afc8ceea209233e3b94faf7fa7ac2d0c64c42ac802d0dc3005",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:evaluate_domain",
      "public-output:evaluate_domain",
      "raw-source:3f2f9634e52722c52d7459582a8a39117e137380250f12d80a9162d82f79fd93"
  ], [
      "capsule:4f2b041d9295b91a12b579b62031e4e5adfc66fe7bf2d7a3a1a201161982b1d8",
      "declaration:evaluate_domain",
      "element:python-point:a80c81af1419a9addb4934fdfbee24f2c9635efcb2c46a6293ba27fa56db11a1",
      "public-output:evaluate_domain",
      "raw-source:3f2f9634e52722c52d7459582a8a39117e137380250f12d80a9162d82f79fd93",
      "source-context:tools/taxonomy/anchors.py"
  ]),
  ([
      "declaration:match_rule",
      "public-output:match_rule",
      "raw-source:21562da9517cddf51ad7f0b2b77294a2ef4feeb5c19168e9c9cff05f8913be18"
  ], [
      "capsule:5093d83747d4b6dc8cc9ec775f32f4cd933456bd1cae3a1dbfdacc639ca83d2c",
      "declaration:match_rule",
      "element:python-point:a81824afa2e3122d9c6bfaf1c1f513fb827afdbc517b4e8ea788a4d95907ea62",
      "public-output:match_rule",
      "raw-source:21562da9517cddf51ad7f0b2b77294a2ef4feeb5c19168e9c9cff05f8913be18",
      "source-context:tools/taxonomy/anchors.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:6cc16452f9db22ecff29e4a967e0e956253116255ae1c930883eabdbbfcc40d1",
      "source-context:tools/environment/theorem_seeds.py"
  ], [
      "capsule:da016c99d8f26cff6c38d2e39656b76b444f948d3d713c5c078d1d56b36aa38f",
      "declaration:main",
      "element:python-point:a8455cec30f19d394fec2d77ac9d788764dd9881bf862f64a63d1d1b439bd6f3",
      "public-output:main",
      "raw-source:6cc16452f9db22ecff29e4a967e0e956253116255ae1c930883eabdbbfcc40d1",
      "source-context:tools/environment/theorem_seeds.py"
  ]),
  ([
      "declaration:generate_candidates",
      "public-output:generate_candidates",
      "raw-source:14f36bc66a542ccf5e28afbdd9e28de66ece14a601c4d3e8207c0e422c4acf80"
  ], [
      "capsule:8ddcc967f4b8d14b5af31c6a55977b4fcc0324cba22e83a60d62bf23dd110feb",
      "declaration:generate_candidates",
      "element:python-point:a862604c131426eee4794836ec8d5c23d1a11cbd40ef8d2fa9a91c5f898073be",
      "public-output:generate_candidates",
      "raw-source:14f36bc66a542ccf5e28afbdd9e28de66ece14a601c4d3e8207c0e422c4acf80",
      "source-context:tools/oracle/oracle_names.py"
  ]),
  ([
      "declaration:all_face_dirichlet_residual",
      "public-output:all_face_dirichlet_residual",
      "raw-source:95c79a7e4f6c8fb8b39060b03a188a55def90dcf3f71e4924a1624b3a058cda1"
  ], [
      "capsule:5a4bc3f2e992a4520e4c1717cd68c8f29a890e6fe0d22942d129e3f779f26a13",
      "declaration:all_face_dirichlet_residual",
      "element:python-point:a88a9894762feadbf6daa245ee52654d6063912622b984950933c019bace8ecd",
      "public-output:all_face_dirichlet_residual",
      "raw-source:95c79a7e4f6c8fb8b39060b03a188a55def90dcf3f71e4924a1624b3a058cda1",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:_gamma",
      "public-output:_gamma",
      "raw-source:7a938e9f8e89a8be88a4ee97760f3392215e3737c904472a9a4cf1cc1c201b41"
  ], [
      "capsule:21c672c6d8358232c76320e7ba2e83222126bbd424af0dffaa6c7cdc8b4c416f",
      "declaration:_gamma",
      "element:python-point:a8a468e858f7c5bd44dedf90be98ab5cef66044caafd6cc81106802819021b98",
      "public-output:_gamma",
      "raw-source:7a938e9f8e89a8be88a4ee97760f3392215e3737c904472a9a4cf1cc1c201b41",
      "source-context:tools/projection/canonical_quotient.py"
  ]),
  ([
      "declaration:_evaluate_rows",
      "public-output:_evaluate_rows",
      "raw-source:67374c79ffb28a963dbfc3d3034053d7272f56639d46c980ed884bd16c41a489"
  ], [
      "capsule:d162d643bcfb4f21d1dda22716df4058dd05289ab23befdd68f6754575129b63",
      "declaration:_evaluate_rows",
      "element:python-point:a8bff58fb409d33a41f9b6230d8edca30b9d4f7ef6e57345c93949c2dc33f578",
      "public-output:_evaluate_rows",
      "raw-source:67374c79ffb28a963dbfc3d3034053d7272f56639d46c980ed884bd16c41a489",
      "source-context:tools/oracle/neighborhood_training.py"
  ]),
  ([
      "declaration:expression_map",
      "public-output:expression_map",
      "raw-source:ca873cbdf864be0d836f0ab829bca69b0b9cb3253c483a5b00142c203dc945bd"
  ], [
      "capsule:195dd8ebc1d72e04ead5262ff990280308ce54a02824900a21af9acd51012934",
      "declaration:expression_map",
      "element:python-point:a8ebef55288882cc3e3ff9bba353a87dd40e1e756869c9ce131999bd983ddbeb",
      "public-output:expression_map",
      "raw-source:ca873cbdf864be0d836f0ab829bca69b0b9cb3253c483a5b00142c203dc945bd",
      "source-context:tools/environment/ledger.py"
  ]),
  ([
      "declaration:trust_record",
      "public-output:trust_record",
      "raw-source:b9b0a4a5cb6616a58c34c238301eaaa07d1d0b56b9d329d017eeddaa253ad7a1"
  ], [
      "capsule:55481033d494ab5e1d6b8d9ba9f64b4ad5f4d3887c8dc860bad72ff10456dcac",
      "declaration:trust_record",
      "element:python-point:a8fa287223e7aa28c184149fed18ed8698a32308651460fcf10d85d732ddac88",
      "public-output:trust_record",
      "raw-source:b9b0a4a5cb6616a58c34c238301eaaa07d1d0b56b9d329d017eeddaa253ad7a1",
      "source-context:tools/tests/test_refactor.py"
  ]),
  ([
      "declaration:CheckFailure",
      "public-output:CheckFailure",
      "raw-source:44d1c1c84cd4c6c13a5fcb512f42fe25e2317246b3d51dc3c556ae4f49a91a06"
  ], [
      "capsule:d42ffccce2ad15f2f76640492bede2a7212072b6397cea3a7e044ba19e0995ae",
      "declaration:CheckFailure",
      "element:python-point:a92d8d0e792815edba0a47985e58aba31ef151cda23109727f85944209c62bb1",
      "public-output:CheckFailure",
      "raw-source:44d1c1c84cd4c6c13a5fcb512f42fe25e2317246b3d51dc3c556ae4f49a91a06",
      "source-context:tools/locality/check.py"
  ]),
  ([
      "declaration:canonical",
      "public-output:canonical",
      "raw-source:5b2955f0323cccc7a10202c011315b0dad56b0a2146985401a75cc98893af66d",
      "source-context:tools/taxonomy/build_anchor_packs.py"
  ], [
      "capsule:c2577b89c04c8f8f0a98f2b99acac7cc07fbe6db14115e870cafb2ff05dd57c9",
      "declaration:canonical",
      "element:python-point:a995f903000f4071c636674e6b600e5dd95d10749da114367827974a97622448",
      "public-output:canonical",
      "raw-source:5b2955f0323cccc7a10202c011315b0dad56b0a2146985401a75cc98893af66d",
      "source-context:tools/taxonomy/build_anchor_packs.py"
  ]),
  ([
      "declaration:validate_plan",
      "public-output:validate_plan",
      "raw-source:3076c067ab0b92b22170f519728f95f88a30f7b3d0df88674c3c7b07a573770b"
  ], [
      "capsule:61255111ca805abeaa50f767fccd54ca086e58ec59c23d62acc8208f4effe690",
      "declaration:validate_plan",
      "element:python-point:aa2a5d2014e02aa6a8848bc08c337978e8de133d0c0364396cecb2999be83d0b",
      "public-output:validate_plan",
      "raw-source:3076c067ab0b92b22170f519728f95f88a30f7b3d0df88674c3c7b07a573770b",
      "source-context:tools/refactor/constraints.py"
  ]),
  ([
      "declaration:run_clean_assurance",
      "public-output:run_clean_assurance",
      "raw-source:e0843fa6d55800c81c17cf78fa686467ebc3485d63973823d737cc15541c125f"
  ], [
      "capsule:db0adcd1f8161ddb74545a7ee8c07571b71bd143585f7b8ffc4e46a5a333de17",
      "declaration:run_clean_assurance",
      "element:python-point:aa4fbcd4aa0bc665732c2968bcac86d7a91ebbaffcf8a013f0951099c914cc71",
      "public-output:run_clean_assurance",
      "raw-source:e0843fa6d55800c81c17cf78fa686467ebc3485d63973823d737cc15541c125f",
      "source-context:tools/refactor/cli.py"
  ]),
  ([
      "declaration:OracleProgression",
      "public-output:OracleProgression",
      "raw-source:6b7cf3371ad5fe15d2407a68512d68637a3b18626a5bed7f33d68c2d646eece9"
  ], [
      "capsule:568a4fdd218453ce788a9a6f1794f0a07a3773e6b8ba5d1dda752cea5769205c",
      "declaration:OracleProgression",
      "element:python-point:aa67a8c58062bdc5439981e28005bbe48b3668e5e64ddb17e8b986d6b227cca4",
      "public-output:OracleProgression",
      "raw-source:6b7cf3371ad5fe15d2407a68512d68637a3b18626a5bed7f33d68c2d646eece9",
      "source-context:tools/oracle/progression.py"
  ]),
  ([
      "declaration:translate_import",
      "public-output:translate_import",
      "raw-source:dbf11b62e49360baa046d13c7ccb2bf6fe4fb20b458b48e6b99f09a1609cce19"
  ], [
      "capsule:7365978775ba0104a1205f6ae1461896857d999d48551e0c2288babec1812d31",
      "declaration:translate_import",
      "element:python-point:aaf0bd7eadffe218fb0e824b248674481199a0b727d9469a6191b1b8e752dc18",
      "public-output:translate_import",
      "raw-source:dbf11b62e49360baa046d13c7ccb2bf6fe4fb20b458b48e6b99f09a1609cce19",
      "source-context:tools/environment/assemble.py"
  ]),
  ([
      "declaration:authority",
      "public-output:authority",
      "raw-source:ea72f1aa8667dd297a8518fa6f81c199c27a146445b25b30e692cafe114b2032",
      "source-context:tools/taxonomy/review_self_ledger.py"
  ], [
      "capsule:5c0247fd6774562ca67ac473e1a0f4d4f85bc61b33110a34d4d7ff9314774107",
      "declaration:authority",
      "element:python-point:ab5f55e5c5dc10e0f8f984bd0e4f81c39ca3fd9830d388c19da8c1739fe32884",
      "public-output:authority",
      "raw-source:ea72f1aa8667dd297a8518fa6f81c199c27a146445b25b30e692cafe114b2032",
      "source-context:tools/taxonomy/review_self_ledger.py"
  ]),
  ([
      "declaration:is_zero_level",
      "public-output:is_zero_level",
      "raw-source:b8e6ae3b39ec47ef7bff0ab28620d5102e994da25fbb10b02ae13e4a872976cc"
  ], [
      "capsule:c6001b3abf93f30e2ce399c272c570c7f88e6722dfcfbda36d284a617918c87c",
      "declaration:is_zero_level",
      "element:python-point:ac12caf15b9f4ae67f25302ae8b96ad5bc94688c77840a91c2dd06855e4042a7",
      "public-output:is_zero_level",
      "raw-source:b8e6ae3b39ec47ef7bff0ab28620d5102e994da25fbb10b02ae13e4a872976cc",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:incremental_extract",
      "public-output:incremental_extract",
      "raw-source:8b6dfced51f48bda2a855c27ed6fbad1e618a40d81c723b04d6c8bbe3b3fcff9"
  ], [
      "capsule:5474f556d0a09c1dffffc8f66f3ca64b410668530fddc6274ab657756b225851",
      "declaration:incremental_extract",
      "element:python-point:ac1a74ce7b2d72a6b3976c33d1360e4151d5af6773768d5968116825b0ca1dd0",
      "public-output:incremental_extract",
      "raw-source:8b6dfced51f48bda2a855c27ed6fbad1e618a40d81c723b04d6c8bbe3b3fcff9",
      "source-context:tools/environment/shard.py"
  ]),
  ([
      "declaration:ConceptDocument",
      "public-output:ConceptDocument",
      "raw-source:235faff731612c5abdaa5e986f52ae8331914777a10811368e39e4e05b5c6461"
  ], [
      "capsule:74899bb04dd1edc08788db839b9365c43ff350ad617a6db40fe0a0adecc29561",
      "declaration:ConceptDocument",
      "element:python-point:ad0b053e7d9f40f95eb68f47795582c0c35a0b16994517cbeef9ffbea0d0064a",
      "public-output:ConceptDocument",
      "raw-source:235faff731612c5abdaa5e986f52ae8331914777a10811368e39e4e05b5c6461",
      "source-context:tools/oracle/navigation.py"
  ]),
  ([
      "declaration:face_vector",
      "public-output:face_vector",
      "raw-source:76cf80787975750608c836a5163e771724154b2e646e4e252faa6047a7a10de8"
  ], [
      "capsule:33e83a5ac839f3d5fb57ee476f8803bd20274ed26004882cb7705d4e773ca0e5",
      "declaration:face_vector",
      "element:python-point:ad37be632a1a8e3e26eedf135a2b88846d357420d8e1ea8eced9c058f863e042",
      "public-output:face_vector",
      "raw-source:76cf80787975750608c836a5163e771724154b2e646e4e252faa6047a7a10de8",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:fraction_payload",
      "public-output:fraction_payload",
      "raw-source:5f348dc50518581fe21d32f5b2f086eaa5c75f6b6e64bae9b8132fbbc805d941"
  ], [
      "capsule:799d0cd5559a6fa72a9a05c29ff5dc522db7b43340169b8c635d04f8f0244778",
      "declaration:fraction_payload",
      "element:python-point:ad3b1867b1a60d5ddbd9eaa5cd18a4ae353711e3eb356efaf80ce9c617aaa8fe",
      "public-output:fraction_payload",
      "raw-source:5f348dc50518581fe21d32f5b2f086eaa5c75f6b6e64bae9b8132fbbc805d941",
      "source-context:tools/oracle/contracts.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:971e7b80ba3109ec62f12f4ab1ec486c8b45ac521b5cb7f00101c4137667e3c6",
      "source-context:tools/taxonomy/build_calibration_corpus.py"
  ], [
      "capsule:a3f1a33894fcb589d29cb0b485ad8433ba1db56438497dfe6e876c790ab6bf4f",
      "declaration:main",
      "element:python-point:adb27c936969d65fdef9228bbdf13e3d1c6e9d5059a5e76161b34907e72dd1b0",
      "public-output:main",
      "raw-source:971e7b80ba3109ec62f12f4ab1ec486c8b45ac521b5cb7f00101c4137667e3c6",
      "source-context:tools/taxonomy/build_calibration_corpus.py"
  ]),
  ([
      "declaration:canonical_candidate_and_model_choice",
      "public-output:canonical_candidate_and_model_choice",
      "raw-source:ab32b6736fd2c25ef6f1d907b28526fd9e463b942a9dda7bb8288a27ab861db1"
  ], [
      "capsule:fd8552851936cdf2b2d841d93dbd467bfbacdba1044261b331d0c465d2914d26",
      "declaration:canonical_candidate_and_model_choice",
      "element:python-point:adcc390063345e135e8749a7f1e3269612ba827c8bc2f718f0511adf3a9dee65",
      "public-output:canonical_candidate_and_model_choice",
      "raw-source:ab32b6736fd2c25ef6f1d907b28526fd9e463b942a9dda7bb8288a27ab861db1",
      "source-context:tools/oracle/selection_contract.py"
  ]),
  ([
      "declaration:semantic_occurrence_id",
      "public-output:semantic_occurrence_id",
      "raw-source:8040911b0c2b5d7be87cbed8c08105db2f899170cd9797b62ceb49ac638eab01"
  ], [
      "capsule:70ba9d01463f05c7e26174f6c1d69f14f095faf86e36a78e252190e725534fe8",
      "declaration:semantic_occurrence_id",
      "element:python-point:ae278fcdb4a978a13559b18a73a14d047ddaed1ef4d7eadab55875be923d3906",
      "public-output:semantic_occurrence_id",
      "raw-source:8040911b0c2b5d7be87cbed8c08105db2f899170cd9797b62ceb49ac638eab01",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:typeclass_requirement_features",
      "public-output:typeclass_requirement_features",
      "raw-source:a19f275d2e4cac95666c6a818b95c57945ddad18cb0f15d1e749eb5c59a9d742"
  ], [
      "capsule:4e9b318c576ae18303626df463ce100a13733c6abd03b3774c9ecdd5ae93e99e",
      "declaration:typeclass_requirement_features",
      "element:python-point:ae4456867764c37ee0a6df517e17b8438bd253f641106c7613064174f752c55f",
      "public-output:typeclass_requirement_features",
      "raw-source:a19f275d2e4cac95666c6a818b95c57945ddad18cb0f15d1e749eb5c59a9d742",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:compute_traversal",
      "public-output:compute_traversal",
      "raw-source:0b1e10ab7c112dad0d74b9323ecffdc006d3265ed07ec5242b4e0287acd2d3b4"
  ], [
      "capsule:477d08920d0a7c6c55439d4a32177d273c80f5d70ef6376a47563c38eeba2784",
      "declaration:compute_traversal",
      "element:python-point:ae9321d51413c8449e7e037100da5158fefbc40fbefbdc862cfadf1658a2b589",
      "public-output:compute_traversal",
      "raw-source:0b1e10ab7c112dad0d74b9323ecffdc006d3265ed07ec5242b4e0287acd2d3b4",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:_delta",
      "public-output:_delta",
      "raw-source:8f336184b4cba082f4cf4abeaad0c565c422261ec4adaf62fb49e62acb021a47"
  ], [
      "capsule:6d56c43271452bc66ce0388ee6c6aa15ff6a7f7599fb607518905d7610aaf5a1",
      "declaration:_delta",
      "element:python-point:aea305c13bd17105fb020e5799c557dc0dc3125bd2fd03b395a8b96d2e6cfb7d",
      "public-output:_delta",
      "raw-source:8f336184b4cba082f4cf4abeaad0c565c422261ec4adaf62fb49e62acb021a47",
      "source-context:tools/oracle/event_complex.py"
  ]),
  ([
      "declaration:_source_words",
      "public-output:_source_words",
      "raw-source:cfbaa44b6f024b40a0ee065fd05b506ffb99b128dc3c7f7481e257147dc2e794"
  ], [
      "capsule:1b404fdba37690964ba098dba16b21de7676608023a8ea0fa259199fdc5030b0",
      "declaration:_source_words",
      "element:python-point:af5c255012b72ef6b0bb9c194277473f6db861fe4be16b690a8d61a9013fa536",
      "public-output:_source_words",
      "raw-source:cfbaa44b6f024b40a0ee065fd05b506ffb99b128dc3c7f7481e257147dc2e794",
      "source-context:tools/oracle/name_neighborhoods.py"
  ]),
  ([
      "declaration:request_surgery",
      "public-output:request_surgery",
      "raw-source:b3f54908dbade0a919179aa067d12caa8c7e61a40c59ca9e366dea5490d50231"
  ], [
      "capsule:13da72f778c97188ca89c1cafabb40405f7077423db23b8ee36a82d446ad0ad9",
      "declaration:request_surgery",
      "element:python-point:afb38be11db514ab69514e661923ad36084f8edb244ac9c023d8d18c86c06ce1",
      "public-output:request_surgery",
      "raw-source:b3f54908dbade0a919179aa067d12caa8c7e61a40c59ca9e366dea5490d50231",
      "source-context:tools/oracle/surgery.py"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L72106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
