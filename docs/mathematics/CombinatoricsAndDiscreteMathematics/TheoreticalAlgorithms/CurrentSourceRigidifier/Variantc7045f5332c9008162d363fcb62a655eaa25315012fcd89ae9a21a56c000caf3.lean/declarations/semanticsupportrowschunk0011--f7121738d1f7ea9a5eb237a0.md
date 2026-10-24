# semanticSupportRowsChunk0011

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5088304a8d634eda22b0d79308510e40d49fd96de466e61769d648e6c4c389d",
  "kind": "def",
  "lexical_name": "semanticSupportRowsChunk0011",
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
  "slug": "semanticsupportrowschunk0011--f7121738d1f7ea9a5eb237a0",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74491,
    "line": 73699,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7121738d1f7ea9a5eb237a0e517f5ac8d4e8bbf3eb0ada7e33d3160db78ef39",
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

Occurrence: `declaration:f5088304a8d634eda22b0d79308510e40d49fd96de466e61769d648e6c4c389d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73699–74491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def semanticSupportRowsChunk0011 : List (List String × List String) :=
[
  ([
      "declaration:check_ndjson_canonical",
      "public-output:check_ndjson_canonical",
      "raw-source:f5bc91acefca46512942244f2bcc977921b05ebeccb7b9ee5d39b9c057e3fa66"
  ], [
      "capsule:b4e7ccd4ec042bf7aff8df2afb518b716e266d520bc12b2b4d5b2b439d9e5cdf",
      "declaration:check_ndjson_canonical",
      "element:python-point:be7e5c83d9dc2e7df7aa1a172fc4d805fe25faa3f9710efc36476531fceded3e",
      "public-output:check_ndjson_canonical",
      "raw-source:f5bc91acefca46512942244f2bcc977921b05ebeccb7b9ee5d39b9c057e3fa66",
      "source-context:tools/environment/verify.py"
  ]),
  ([
      "declaration:canonical_bytes",
      "public-output:canonical_bytes",
      "raw-source:7ebb9050652f3ae77b5516983b14d405b6e699e605795e74273f380bddf6b536",
      "source-context:tools/proof-strategy/classify.py"
  ], [
      "capsule:648b622abcdd416d0788a8897cfdd5e9a8982c8f6423f7838c5b389acc474ea6",
      "declaration:canonical_bytes",
      "element:python-point:be8cc9e0cdcc15ed40411e4636870ed682f0905252c4c77b64853b607178392b",
      "public-output:canonical_bytes",
      "raw-source:7ebb9050652f3ae77b5516983b14d405b6e699e605795e74273f380bddf6b536",
      "source-context:tools/proof-strategy/classify.py"
  ]),
  ([
      "declaration:incidence_from_quotient",
      "public-output:incidence_from_quotient",
      "raw-source:f92f350452f470860d605913ce1eacf2f4c6b73ec75c505b147f1ff0a570d252"
  ], [
      "capsule:ecea58c2a70eeb908834226869599aa19a75881b96e2e0a2ab4501a1e2ede894",
      "declaration:incidence_from_quotient",
      "element:python-point:beac7424b34b22e7c011b3e46d3001ab9090e84341f5052c4ef75cd57a0dfd1d",
      "public-output:incidence_from_quotient",
      "raw-source:f92f350452f470860d605913ce1eacf2f4c6b73ec75c505b147f1ff0a570d252",
      "source-context:tools/projection/formal_neighborhoods.py"
  ]),
  ([
      "declaration:_existing_imports",
      "public-output:_existing_imports",
      "raw-source:4ede18bf3e52356874dc6c46d24d7798c955ed8c8d1cf89ae5d3b73dc21ba290"
  ], [
      "capsule:8e530374cb55e75f8864cfa4babec2d1ee71b71db234ea3b8ef780e4e9d5db4c",
      "declaration:_existing_imports",
      "element:python-point:bed468904f529d2059254b71cc1b01777dfaab4c0f17fa7ecb527418160c6689",
      "public-output:_existing_imports",
      "raw-source:4ede18bf3e52356874dc6c46d24d7798c955ed8c8d1cf89ae5d3b73dc21ba290",
      "source-context:tools/refactor/materialize.py"
  ]),
  ([
      "declaration:require",
      "public-output:require",
      "raw-source:a0188ff353ca906b9c19881de5880eb1b75a34aaf3a0ddcb62fc69484a361498"
  ], [
      "capsule:32ec798d44bcba30f7c7630482ccf883c9b3caeef3b9bb91cdb53126dd7d39e0",
      "declaration:require",
      "element:python-point:bee640823bdb69f0e6b769567251133960142c266899bd04b7a1b423f48854f4",
      "public-output:require",
      "raw-source:a0188ff353ca906b9c19881de5880eb1b75a34aaf3a0ddcb62fc69484a361498",
      "source-context:tools/locality/check.py"
  ]),
  ([
      "declaration:_external_context_words",
      "public-output:_external_context_words",
      "raw-source:87a283238a5415d2711baee9a0580bb3ce9da073f1b6fbb2fcb8f01bd344ece3"
  ], [
      "capsule:b0cb97debfeb4f48abb3d068ec83cf92ffe05615506141472fd98980e33661bd",
      "declaration:_external_context_words",
      "element:python-point:bfd0976e50c3c596446e098e5d17165da35a445f84d5eb548d74f0c701479995",
      "public-output:_external_context_words",
      "raw-source:87a283238a5415d2711baee9a0580bb3ce9da073f1b6fbb2fcb8f01bd344ece3",
      "source-context:tools/oracle/oracle_names_points/external_context_words.py"
  ]),
  ([
      "declaration:_normalize",
      "public-output:_normalize",
      "raw-source:e2613181f17501c6d66a6fcbdd5e0c6e76147cfc89e7f31ac16ad07acaa667ea",
      "source-context:tools/oracle/naming_direction.py"
  ], [
      "capsule:7277f263bb6a086047548c6af23d1d83187db50eacffeceea2df1d8de58fc855",
      "declaration:_normalize",
      "element:python-point:c00e5ca1efa526f003c1ce5881c6b409a5f65e991a983685fe715d2320e476a2",
      "public-output:_normalize",
      "raw-source:e2613181f17501c6d66a6fcbdd5e0c6e76147cfc89e7f31ac16ad07acaa667ea",
      "source-context:tools/oracle/naming_direction.py"
  ]),
  ([
      "declaration:ExtractionError",
      "public-output:ExtractionError",
      "raw-source:af2177ffb1b49778ed0081773106e30043ee7e24cac4dff2183a1413b1408bcc"
  ], [
      "capsule:3dba3fd465b42430fbdb2e36c35b2a21d17bc7ce90db7b297b357fdfdf90befe",
      "declaration:ExtractionError",
      "element:python-point:c03869043a1031289dd5704ba8d800c3c2355c9b829454408d3533e11e7cfe45",
      "public-output:ExtractionError",
      "raw-source:af2177ffb1b49778ed0081773106e30043ee7e24cac4dff2183a1413b1408bcc",
      "source-context:tools/environment/assemble.py"
  ]),
  ([
      "declaration:_safe_target",
      "public-output:_safe_target",
      "raw-source:648a68a43f9c5a63b83f8e5eea8996af17c34f1d60e471854362e132b3023237"
  ], [
      "capsule:2996bc5d48e0e004b176c91a44a1b88e6671801e4d41a7d05f9f4ee05d12abd4",
      "declaration:_safe_target",
      "element:python-point:c03afa23f6edc9c80b38632cb22088be351291c023c035cc6fcfcc9834ea0bde",
      "public-output:_safe_target",
      "raw-source:648a68a43f9c5a63b83f8e5eea8996af17c34f1d60e471854362e132b3023237",
      "source-context:tools/refactor/apply.py"
  ]),
  ([
      "declaration:write_json",
      "public-output:write_json",
      "raw-source:8f578f2f4aba54cce854f5b0011bb13ebffcbd0adf15429b2766552ae689918f",
      "source-context:tools/oracle/name_neighborhoods.py"
  ], [
      "capsule:9d3a181f98f8c9da766ee876da0c74bacc811d0fbaee0083810d2e254c0baca7",
      "declaration:write_json",
      "element:python-point:c03fa42421373f1c7bbf5db5b530835e218baf937547acccdf582d6d317be049",
      "public-output:write_json",
      "raw-source:8f578f2f4aba54cce854f5b0011bb13ebffcbd0adf15429b2766552ae689918f",
      "source-context:tools/oracle/name_neighborhoods.py"
  ]),
  ([
      "declaration:canonical_text",
      "public-output:canonical_text",
      "raw-source:493281f89e9ffc803016dadd03d24b288d97b2b591fb98c6bd851818213e5b68",
      "source-context:tools/projection/build_profiles.py"
  ], [
      "capsule:05361036e30df201668ab4215e5abb7770d032188577022642a6dda841f7c159",
      "declaration:canonical_text",
      "element:python-point:c07c01e92d33b09441f2d63ed6ce0f962dbbb7091f737ae35dd7071d99c2017e",
      "public-output:canonical_text",
      "raw-source:493281f89e9ffc803016dadd03d24b288d97b2b591fb98c6bd851818213e5b68",
      "source-context:tools/projection/build_profiles.py"
  ]),
  ([
      "declaration:PhaseEvidence",
      "public-output:PhaseEvidence",
      "raw-source:8cc9a7423a855419b7a1f772d00e33c52c7991522f37e1e5124e15870cc5d63a",
      "source-context:tools/oracle/orbit.py"
  ], [
      "capsule:636fcf94083ed436ce7feabf68d1c46c89983434d92fa7d0be2cd3e95066e153",
      "declaration:PhaseEvidence",
      "element:python-point:c084a0af03d270809d8a7de3fa0a09bc1fe8a4f446b4c82d3c5b61e483ce707c",
      "public-output:PhaseEvidence",
      "raw-source:8cc9a7423a855419b7a1f772d00e33c52c7991522f37e1e5124e15870cc5d63a",
      "source-context:tools/oracle/orbit.py"
  ]),
  ([
      "declaration:derive_paths",
      "public-output:derive_paths",
      "raw-source:c669a27d475730df2b2abfdeea4e6c3903dec3c998cf023c8a6ae2413fc6b219"
  ], [
      "capsule:4276202aba6bde301557167885d4c0d133ad94b953c8a227d1796bf6be30e5f8",
      "declaration:derive_paths",
      "element:python-point:c09fa370cc60877c31fcc323bbfd7c103f2ce61d7596a9425d0906f44c481c3a",
      "public-output:derive_paths",
      "raw-source:c669a27d475730df2b2abfdeea4e6c3903dec3c998cf023c8a6ae2413fc6b219",
      "source-context:tools/projection/certified_tree_paths.py"
  ]),
  ([
      "declaration:common",
      "public-output:common",
      "raw-source:996933044eea5761e3b0668a68bb7714a252148734a330b525863b23db69c7bf"
  ], [
      "capsule:fa8367a49fb0e08bd53c41000e0914be655e588e846e4605b682a4b9ba0b69e7",
      "declaration:common",
      "element:python-point:c0a938fc9c2521e3b45ca83f7dc3eb29aaa8297d7ff8b03e1d0ee21bf3206273",
      "public-output:common",
      "raw-source:996933044eea5761e3b0668a68bb7714a252148734a330b525863b23db69c7bf",
      "source-context:tools/projection/build_profiles.py"
  ]),
  ([
      "declaration:file_digest",
      "public-output:file_digest",
      "raw-source:03b57f80aaf1fc32ac613a56a0ad95184a1dab3c4cb7b78b36cfd6e21eb3f5fd",
      "source-context:tools/oracle/canonical.py"
  ], [
      "capsule:53a2d4ec37901eed1e715bf580a3ceab0e5ae9b4d173f91039b0e7945d0d96a5",
      "declaration:file_digest",
      "element:python-point:c0ed43c1e5c004ddb20002e32523da50fe5a7f6c795822642711dba142848211",
      "public-output:file_digest",
      "raw-source:03b57f80aaf1fc32ac613a56a0ad95184a1dab3c4cb7b78b36cfd6e21eb3f5fd",
      "source-context:tools/oracle/canonical.py"
  ]),
  ([
      "declaration:invalidation_report",
      "public-output:invalidation_report",
      "raw-source:deb8d2088245d343b5613d005cb50befc95088ca33aa82a01552cb242c98d91d"
  ], [
      "capsule:bb904a0ab501d65ae8283558ce48613518609eff98a7c7eab262b3dc4968c132",
      "declaration:invalidation_report",
      "element:python-point:c18940894fc81597616c953530809a9c5f81ff552947a14dc01be4b03289fa32",
      "public-output:invalidation_report",
      "raw-source:deb8d2088245d343b5613d005cb50befc95088ca33aa82a01552cb242c98d91d",
      "source-context:tools/projection/locality.py"
  ]),
  ([
      "declaration:_shared_context_tokens",
      "public-output:_shared_context_tokens",
      "raw-source:680c69096d8f2b1aa2db95d054bf975442a1cbda33d10d00752b1f019c62ec7c"
  ], [
      "capsule:b76761f49f622a256cf45562e1c9b838cf2fd796992faa36aac246cbb5184598",
      "declaration:_shared_context_tokens",
      "element:python-point:c18d0154728f5027093d4350c40025b06a672bff4ad76cb0d13511f964fdf7f5",
      "public-output:_shared_context_tokens",
      "raw-source:680c69096d8f2b1aa2db95d054bf975442a1cbda33d10d00752b1f019c62ec7c",
      "source-context:tools/oracle/name_neighborhoods.py"
  ]),
  ([
      "declaration:parse_args",
      "public-output:parse_args",
      "raw-source:7184dbb3809fd569d358fe15f7b9c5a87bc4e109da2092628413d10f98002f14",
      "source-context:tools/concept-audit/check_layout.py"
  ], [
      "capsule:615b1dbfaa153af83abf2048ec63708c81f4adb09224aadbce128742e6c2f666",
      "declaration:parse_args",
      "element:python-point:c1c0852cb0711c622435071b9bc802a65e5d5a4dca99fac63a8f8438315fa650",
      "public-output:parse_args",
      "raw-source:7184dbb3809fd569d358fe15f7b9c5a87bc4e109da2092628413d10f98002f14",
      "source-context:tools/concept-audit/check_layout.py"
  ]),
  ([
      "declaration:shard_raw",
      "public-output:shard_raw",
      "raw-source:36cab1cf910095a2cd6000f9d6affff2c136fee8258ac528ca609d6d037c6c7b"
  ], [
      "capsule:29acac329b2a76b2fa3d8d6de9144c6c5851e969a2a2b48e30b8e9e520f7d66d",
      "declaration:shard_raw",
      "element:python-point:c258106d35f6d368e9713337854021d712093bc1502784f7c5444b30bf69cd96",
      "public-output:shard_raw",
      "raw-source:36cab1cf910095a2cd6000f9d6affff2c136fee8258ac528ca609d6d037c6c7b",
      "source-context:tools/environment/shard.py"
  ]),
  ([
      "declaration:_digest_bytes",
      "public-output:_digest_bytes",
      "raw-source:cdd7e5be5f633fc562ff63b5aa11bfc13111ae5c1b92fe7a99c6fea04cf89344",
      "source-context:tools/oracle/reconstruction.py"
  ], [
      "capsule:67d45dafd16a69b3f20883e2b9d1e86316ce3f7d6b7e180b99994485de5f8d91",
      "declaration:_digest_bytes",
      "element:python-point:c274026b9e14613e61796d8f68cd1d541e83d38a838d59685e67b9bcd92b6a3a",
      "public-output:_digest_bytes",
      "raw-source:cdd7e5be5f633fc562ff63b5aa11bfc13111ae5c1b92fe7a99c6fea04cf89344",
      "source-context:tools/oracle/reconstruction.py"
  ]),
  ([
      "declaration:_legal_choice_contract",
      "public-output:_legal_choice_contract",
      "raw-source:7089ce37e1cfa3a797aea9eaf6f3ca2fb0adb7df5df486f4b8739c11810b4567"
  ], [
      "capsule:7bfa198c5b0787d33d51bb4489708e9b0480ec821010f84003914e412dc82017",
      "declaration:_legal_choice_contract",
      "element:python-point:c28576eba237f7b316bec7b25672c2618de7476ef3f09d10d39be75e430a8716",
      "public-output:_legal_choice_contract",
      "raw-source:7089ce37e1cfa3a797aea9eaf6f3ca2fb0adb7df5df486f4b8739c11810b4567",
      "source-context:tools/oracle/neighborhood_training.py"
  ]),
  ([
      "declaration:_node_start",
      "public-output:_node_start",
      "raw-source:74b9f57bf2236eeb55a5646c79d4eb84c094f8804bd3fbbea1983245ab444107"
  ], [
      "capsule:108f932a7a790c663c01af6c296cb7f1bd177cdb2eecb46be286ca9ca508b476",
      "declaration:_node_start",
      "element:python-point:c2b44a10c92338db29e9deae726aa6ca60ec3154175760d286e2fa16fd816264",
      "public-output:_node_start",
      "raw-source:74b9f57bf2236eeb55a5646c79d4eb84c094f8804bd3fbbea1983245ab444107",
      "source-context:tools/refactor/emit_python.py"
  ]),
  ([
      "declaration:evidence_coordinates",
      "public-output:evidence_coordinates",
      "raw-source:65961a3738c991da79782ad5ab8640550adc721abcabbef16b6fe71bdd7d8bc6"
  ], [
      "capsule:dbf44440eb56ce3e6bdb2ed98fef5d3bdd4ecd20c16341b6554c747488339e43",
      "declaration:evidence_coordinates",
      "element:python-point:c2e1dfbd946786a3c82563bbc5a61ff43e0a613407e02020552f8aeedb65cf24",
      "public-output:evidence_coordinates",
      "raw-source:65961a3738c991da79782ad5ab8640550adc721abcabbef16b6fe71bdd7d8bc6",
      "source-context:tools/taxonomy/coverage.py"
  ]),
  ([
      "declaration:module_source_path",
      "public-output:module_source_path",
      "raw-source:805924d400c9d20f7bb77b7465ea6abc9a9c08ff18d7baecb260a5838c1d8d28"
  ], [
      "capsule:fc2d56e0259ccc7a93c271c27a5f65dae6498987f752aa797751f5ba77fbe6f9",
      "declaration:module_source_path",
      "element:python-point:c319ae57e98e948111bdec4bb3f4cb6440a9bdc8878148b1df95e8d4e0e4ddda",
      "public-output:module_source_path",
      "raw-source:805924d400c9d20f7bb77b7465ea6abc9a9c08ff18d7baecb260a5838c1d8d28",
      "source-context:tools/concept-inventory/enrich.py"
  ]),
  ([
      "declaration:search",
      "public-output:search",
      "raw-source:e8f86dc128695797c4fea60acdd8dd2d3316e6e56b4e38e9224e067d421ecb38"
  ], [
      "capsule:fdf4f54f6360f271b3c7f16b66d39f3ef56fb4b7d906b35fdeb3d70632dbb092",
      "declaration:search",
      "element:python-point:c34444786628eaa6b89ee1b1da33711803b786701a9b02e099dba58a273cfa77",
      "public-output:search",
      "raw-source:e8f86dc128695797c4fea60acdd8dd2d3316e6e56b4e38e9224e067d421ecb38",
      "source-context:tools/oracle/navigation.py"
  ]),
  ([
      "declaration:sha256_bytes",
      "public-output:sha256_bytes",
      "raw-source:3a4cabfaef2b7a8cfc65a428ee953c442e33fe34525a77d5ecbe79ca68203251",
      "source-context:tools/refactor/canonical.py"
  ], [
      "capsule:16a0bf08cd1582b02a3e090b72ec8f9315f4a5aa7e5cbb11e5349f845a832324",
      "declaration:sha256_bytes",
      "element:python-point:c42233daadbabffbd170ed48a22977d7d18ebba99880eb3724dc9da1729fb34d",
      "public-output:sha256_bytes",
      "raw-source:3a4cabfaef2b7a8cfc65a428ee953c442e33fe34525a77d5ecbe79ca68203251",
      "source-context:tools/refactor/canonical.py"
  ]),
  ([
      "declaration:_normalize_bitfield",
      "public-output:_normalize_bitfield",
      "raw-source:caba8e579c6dedc3e3fe934ddb814258a047d55f605913eff95f71abddfd9ef9"
  ], [
      "capsule:d10975fc7fa9335f2552f727d11b610a2ac0cd2bf9aa47bd8f9622bce2dda3ea",
      "declaration:_normalize_bitfield",
      "element:python-point:c470702143bb0a62ef9cd8e88833fd246432fc64ba7069f628eaf328bd871ea8",
      "public-output:_normalize_bitfield",
      "raw-source:caba8e579c6dedc3e3fe934ddb814258a047d55f605913eff95f71abddfd9ef9",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:EvidenceRecord",
      "public-output:EvidenceRecord",
      "raw-source:c1eb5208bfe9cebbc6c87b47ddf95a61a7975972caedb08d8e184caa51b5862d"
  ], [
      "capsule:203b9fde205adf117fe1560943e864c5d1f31534fcbf0191cdcf28e85fab9efb",
      "declaration:EvidenceRecord",
      "element:python-point:c4ab05aeb188cb37866091d9cea5b138004c2871d3df6c3cda003b4686defaa7",
      "public-output:EvidenceRecord",
      "raw-source:c1eb5208bfe9cebbc6c87b47ddf95a61a7975972caedb08d8e184caa51b5862d",
      "source-context:tools/oracle/contracts.py"
  ]),
  ([
      "declaration:canonical_bytes",
      "public-output:canonical_bytes",
      "raw-source:5a741b3c59c2d1e03fb38ae285dd97ce81e00ee76719e9fe46996daaad86c9c2",
      "source-context:tools/projection/canonical_quotient.py"
  ], [
      "capsule:ef78c7c23e26a4e5317a8b349b2cf866a7c84160feefdcbb80fe18594e04b898",
      "declaration:canonical_bytes",
      "element:python-point:c4adecca55998f07b7bc30876db8d3915c1a50afefbbcb9130a9807be19f4c8a",
      "public-output:canonical_bytes",
      "raw-source:5a741b3c59c2d1e03fb38ae285dd97ce81e00ee76719e9fe46996daaad86c9c2",
      "source-context:tools/projection/canonical_quotient.py"
  ]),
  ([
      "declaration:id_value",
      "public-output:id_value",
      "raw-source:04e34ee03c13220b21b10edc156a70c919dc52d4b05c9dd74d9e2cc3c07d5540",
      "source-context:tools/environment/canonical.py"
  ], [
      "capsule:f356b83c8d034ea2236e8e4f93cb226228919d836dc3ba7a714e4372d1609998",
      "declaration:id_value",
      "element:python-point:c4b0fd946e8a78f404372bcb5fa3b33efffaab239ee8bb55cadedb1b962d2c5f",
      "public-output:id_value",
      "raw-source:04e34ee03c13220b21b10edc156a70c919dc52d4b05c9dd74d9e2cc3c07d5540",
      "source-context:tools/environment/canonical.py"
  ]),
  ([
      "declaration:select_best_profile",
      "public-output:select_best_profile",
      "raw-source:1fb2b400c577ad2f124cc9ceff14821dd717f26234d0403c9fc8075f08eb77a6"
  ], [
      "capsule:51a08a410537b5fe542410bced25b2a6501b2e75def3ad5abd6b15a9b24c7c04",
      "declaration:select_best_profile",
      "element:python-point:c4e69df310459ed0e63f778c0b944e8b412974b626455aae0cfcb1e170a1d2a0",
      "public-output:select_best_profile",
      "raw-source:1fb2b400c577ad2f124cc9ceff14821dd717f26234d0403c9fc8075f08eb77a6",
      "source-context:tools/oracle/training_loop.py"
  ]),
  ([
      "declaration:run",
      "public-output:run",
      "raw-source:7082ab12cd57d80700407f67ce5bd2be09249f47698e7c2f88934681ae25b3fc",
      "source-context:tools/refactor/preflight.py"
  ], [
      "capsule:bd91f8bbdeadc9f4e0a551e7d56be49aef59db41bbdde741be342c2c827c5339",
      "declaration:run",
      "element:python-point:c54dba6c5caf7692f3fbd30c1b3ea683f947b0995ca384f48f7901b381096653",
      "public-output:run",
      "raw-source:7082ab12cd57d80700407f67ce5bd2be09249f47698e7c2f88934681ae25b3fc",
      "source-context:tools/refactor/preflight.py"
  ]),
  ([
      "declaration:_minimal_period",
      "public-output:_minimal_period",
      "raw-source:dc470a83a6c0aa7e8caf54ac6e043ac8ae38f68fb7fb1a88f615756b012d64a8"
  ], [
      "capsule:5a72de5087b55ff8e5b652359ca491a37b80e0872d3c45e8857a7cc644191129",
      "declaration:_minimal_period",
      "element:python-point:c560ecaf9cb15d1b79865871fd7801d75a9eb7c7fefc3d2d84068ce9407b1b59",
      "public-output:_minimal_period",
      "raw-source:dc470a83a6c0aa7e8caf54ac6e043ac8ae38f68fb7fb1a88f615756b012d64a8",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:domain_path",
      "public-output:domain_path",
      "raw-source:528e2486fb83ca84882bd9e71508851408cd54f4faa3cd310b98c5f7d6d994a3",
      "source-context:tools/taxonomy/review_self_ledger.py"
  ], [
      "capsule:21ad305988246d09b3b5470ccc848646482c8bddf47557312da22bfb4ed8d6fc",
      "declaration:domain_path",
      "element:python-point:c562fc890371b5f3eb0d78e252744586c2a83031c3439d6751a4630074ecb80e",
      "public-output:domain_path",
      "raw-source:528e2486fb83ca84882bd9e71508851408cd54f4faa3cd310b98c5f7d6d994a3",
      "source-context:tools/taxonomy/review_self_ledger.py"
  ]),
  ([
      "declaration:_context_transition_digest",
      "public-output:_context_transition_digest",
      "raw-source:3a9ebc69dd9e26f4cc01b03497f6d0cb8b29a61f1fdc29350b0d5fa0a22a8561"
  ], [
      "capsule:b8b6b6dea2442bd482e4ebd89bfe787c3f266687d52ec06244ce7d73e6880796",
      "declaration:_context_transition_digest",
      "element:python-point:c5717f0cc7240b46226b332dffdc7a6700614b83437b6a410343e34cb5ec9d7b",
      "public-output:_context_transition_digest",
      "raw-source:3a9ebc69dd9e26f4cc01b03497f6d0cb8b29a61f1fdc29350b0d5fa0a22a8561",
      "source-context:tools/refactor/source_trace.py"
  ]),
  ([
      "declaration:normalize_owned_records",
      "public-output:normalize_owned_records",
      "raw-source:13d0c97d7207d186a945fe31274f938a227cb79083540b3a23699218fa0d6c6d"
  ], [
      "capsule:595ea39581447a8dbd07293ab4343c2222fd065aa95ffe90d5403f898962cf4b",
      "declaration:normalize_owned_records",
      "element:python-point:c60717602459610bc4eddace701af3d91f700c2cfdc3d1c73d35cf35aedc87ea",
      "public-output:normalize_owned_records",
      "raw-source:13d0c97d7207d186a945fe31274f938a227cb79083540b3a23699218fa0d6c6d",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:validate_event_artifacts",
      "public-output:validate_event_artifacts",
      "raw-source:156b5a4b6a02b5d83203e8041cce7fa9a863610e7e88de8bd24dbc45f0daddfc"
  ], [
      "capsule:50095b20bc5523d46ad8b2a7473507ffd48dc7f22533aa589b2623175cbba404",
      "declaration:validate_event_artifacts",
      "element:python-point:c622b52b7fe80e855f6c055932f58f583c208b24b748dac220af15d0f8e4be68",
      "public-output:validate_event_artifacts",
      "raw-source:156b5a4b6a02b5d83203e8041cce7fa9a863610e7e88de8bd24dbc45f0daddfc",
      "source-context:tools/oracle/event_complex.py"
  ]),
  ([
      "declaration:_digest_text",
      "public-output:_digest_text",
      "raw-source:8176fa47b1dacd5516a711609d86b02c2e8a357ab52f1b622b430bc0e0819bda",
      "source-context:tools/projection/external_rigidifier.py"
  ], [
      "capsule:3e9a84de2d7d5a7b7e8c0968297a656f3ebc9cd8335fa849f267b45a12e31b9e",
      "declaration:_digest_text",
      "element:python-point:c71152b374a2867ec3ce984df4c002890b6a1bd96b1d07cad1b37f395297a8cf",
      "public-output:_digest_text",
      "raw-source:8176fa47b1dacd5516a711609d86b02c2e8a357ab52f1b622b430bc0e0819bda",
      "source-context:tools/projection/external_rigidifier.py"
  ]),
  ([
      "declaration:coalesce",
      "public-output:coalesce",
      "raw-source:be49cebcde95b13b77ab8e1ad2ccca9a00088ce696c9ce6045296aacaf12a644"
  ], [
      "capsule:7676eac2359e12921ecee418e1f4eefe54dc2047e64a6b663c68a17652169b3c",
      "declaration:coalesce",
      "element:python-point:c71a89feba9222c8ee0f9ce40579a2c4fc0bcecf04834ddbe6818ce0b2cb24dc",
      "public-output:coalesce",
      "raw-source:be49cebcde95b13b77ab8e1ad2ccca9a00088ce696c9ce6045296aacaf12a644",
      "source-context:tools/refactor/coalesce.py"
  ]),
  ([
      "declaration:diff_ledgers",
      "public-output:diff_ledgers",
      "raw-source:cd77182e7806efe0aad77c02de6f6769aa8516a241a246ca39425ea0e10284f8"
  ], [
      "capsule:ecbea6f5d616fe91bf834a2f9d3eb46cf8a7c8a54dc03db41ab72f8d3ebcddb0",
      "declaration:diff_ledgers",
      "element:python-point:c755f255d00670f8565dbe81190a165da5f74a7343d273ad6a55b272636f954e",
      "public-output:diff_ledgers",
      "raw-source:cd77182e7806efe0aad77c02de6f6769aa8516a241a246ca39425ea0e10284f8",
      "source-context:tools/environment/diff.py"
  ]),
  ([
      "declaration:cache_entry_body",
      "public-output:cache_entry_body",
      "raw-source:2c4d6666ad6c67de085369f03d5995ad85fcd2707fc67e619708dfc50bdf1ee2",
      "source-context:tools/environment/canonical_cache.py"
  ], [
      "capsule:f5e489c1b565499d021b798411ba35d88d7b377716c8825f7d8fa880d71958e6",
      "declaration:cache_entry_body",
      "element:python-point:c765a8aef89799eaac618fe2d7c3646dbc19d6bf1bd2553e616d96b2ac40680c",
      "public-output:cache_entry_body",
      "raw-source:2c4d6666ad6c67de085369f03d5995ad85fcd2707fc67e619708dfc50bdf1ee2",
      "source-context:tools/environment/canonical_cache.py"
  ]),
  ([
      "declaration:extract_shell_points",
      "public-output:extract_shell_points",
      "raw-source:d070d89f4708dbcd4616e83c4541d7ad2a9e48ffbde5069a257714a6e6c015b7"
  ], [
      "capsule:67d8904844f994a42c7b0948dbaa94b8c3f412f53b0f1b562c6bb3b8bdc178f3",
      "declaration:extract_shell_points",
      "element:python-point:c7a7ec4423dd8fddbc100eb1a4b3ba5be86d3de90cec03ca37d71f7f99b4ac27",
      "public-output:extract_shell_points",
      "raw-source:d070d89f4708dbcd4616e83c4541d7ad2a9e48ffbde5069a257714a6e6c015b7",
      "source-context:tools/refactor/emit_shell.py"
  ]),
  ([
      "declaration:_legacy_node",
      "public-output:_legacy_node",
      "raw-source:3fdbbd94d1fb82ad62d7be6a912ae32b5259f3c92f3ec0a469dd72a83f214c3f"
  ], [
      "capsule:510c307500037b208a156ec3cd654cbe2771832fa2ad00a1d9672329f59f8272",
      "declaration:_legacy_node",
      "element:python-point:c7bc221cd391d339b7a14ceae38e33060d675c76354dc8afc2f06b8b111c684f",
      "public-output:_legacy_node",
      "raw-source:3fdbbd94d1fb82ad62d7be6a912ae32b5259f3c92f3ec0a469dd72a83f214c3f",
      "source-context:tools/environment/expression_tree.py"
  ]),
  ([
      "declaration:command_version",
      "public-output:command_version",
      "raw-source:3fac26d8f4e340653f205e7fee4a093b9296b8109e97ef78b0638de39d330bdd"
  ], [
      "capsule:70a579e47149b8a74d9d8954e175fc8d4d3c8323109c68a47e2a24724447d166",
      "declaration:command_version",
      "element:python-point:c7e6d4fc9eecdb48435c3014b85cd7073e3abb5a221638394a69101b37cc12ae",
      "public-output:command_version",
      "raw-source:3fac26d8f4e340653f205e7fee4a093b9296b8109e97ef78b0638de39d330bdd",
      "source-context:tools/environment/build_receipt.py"
  ]),
  ([
      "declaration:encoded_raw_counts",
      "public-output:encoded_raw_counts",
      "raw-source:8c71647ebb08fa4b9b9fe22adb554ee48218b1dbfeea17b610887ad9c612ee0e"
  ], [
      "capsule:3804c4293fca0eec056a8745d60efdfc218086894650b924e3c62d1a0be18b92",
      "declaration:encoded_raw_counts",
      "element:python-point:c80f52c3d643de2a9d1be33195d48f9cb384a0a139ea8b2824411c065e072244",
      "public-output:encoded_raw_counts",
      "raw-source:8c71647ebb08fa4b9b9fe22adb554ee48218b1dbfeea17b610887ad9c612ee0e",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:domain_record",
      "public-output:domain_record",
      "raw-source:b3d5001b634b87e6a6d0a1cea1a7a07c27ff5423bef148afba801bafcbad203f"
  ], [
      "capsule:a10c0709f5ef5f52ed22d6160f359a5308943942a7b353413775c29a9381c7ed",
      "declaration:domain_record",
      "element:python-point:c873ccb0470bdbcefc0d8fc4d8d900e869fb78c21cb4ebf13039e57536e8a085",
      "public-output:domain_record",
      "raw-source:b3d5001b634b87e6a6d0a1cea1a7a07c27ff5423bef148afba801bafcbad203f",
      "source-context:tools/taxonomy/build_anchor_packs.py"
  ]),
  ([
      "declaration:_pascal",
      "public-output:_pascal",
      "raw-source:0961811868e026fe4eb82fa755ed40e7f35602c3c6335433ade518895f0ca0d6",
      "source-context:tools/oracle/oracle_names.py"
  ], [
      "capsule:847b2ca76f2fcc6fdea0c5ea168c32cc661037da42980a366835e43a921c5be2",
      "declaration:_pascal",
      "element:python-point:c88adc7c4ae55edb688dbe3f267abe73830d4d9557b79d065f43d48ef80a3697",
      "public-output:_pascal",
      "raw-source:0961811868e026fe4eb82fa755ed40e7f35602c3c6335433ade518895f0ca0d6",
      "source-context:tools/oracle/oracle_names.py"
  ]),
  ([
      "declaration:canonical_json_bytes",
      "public-output:canonical_json_bytes",
      "raw-source:64875e3470f92b98d290e05d31757b1f66b01882fb83707bde656dee79200273",
      "source-context:tools/organization/hierarchical.py"
  ], [
      "capsule:eae6cf8437caff022a78748269fd610680c47e3666f60c4a9c9dc4646a4af984",
      "declaration:canonical_json_bytes",
      "element:python-point:c8bb28854d0189ce445ad2c31653df3018fc8f9f6eb5eef97151917da753e59c",
      "public-output:canonical_json_bytes",
      "raw-source:64875e3470f92b98d290e05d31757b1f66b01882fb83707bde656dee79200273",
      "source-context:tools/organization/hierarchical.py"
  ]),
  ([
      "declaration:raw_counts_for_entity",
      "public-output:raw_counts_for_entity",
      "raw-source:8bbbb96f86d2fa373274dfefb1b10bc93ef32a7a7fd2b413107d3901cee85d55"
  ], [
      "capsule:692a2b11b6ca6b6fa50752bf3574a7ce05a188c969287c09186de0f27c7c2344",
      "declaration:raw_counts_for_entity",
      "element:python-point:c8e7abfdd6788bf4630f6b937149a920887d03592d6b34a2fa5a73b93a8958fc",
      "public-output:raw_counts_for_entity",
      "raw-source:8bbbb96f86d2fa373274dfefb1b10bc93ef32a7a7fd2b413107d3901cee85d55",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:_family",
      "public-output:_family",
      "raw-source:393e101f17754d794f0ed2a6cdfe13ae3ebfa5500ad951e2f1c332ac6b4771ea"
  ], [
      "capsule:8e8db22480ea8c5e6332fd7a0cf3893c7e60fd184c362094f47c154f0f567540",
      "declaration:_family",
      "element:python-point:c8ed89b3528b136e940268baadcf8abb73a0918cbe2555b1e9556e55186c740d",
      "public-output:_family",
      "raw-source:393e101f17754d794f0ed2a6cdfe13ae3ebfa5500ad951e2f1c332ac6b4771ea",
      "source-context:tools/oracle/dataset.py"
  ]),
  ([
      "declaration:selected_entities",
      "public-output:selected_entities",
      "raw-source:28b6867b122cdd35191f5a9e765ac5d4e81bff4d4c4c64b0f8b5a64cf1e2b7ea"
  ], [
      "capsule:89b7e8191fe26d20e0b67e6d97e8e8fb10e94e6de108d2028a76481dd9a0781e",
      "declaration:selected_entities",
      "element:python-point:c98eaee0953b504da24fac32499c44586851c4ea6b7cb8a9eb5b2bd0f1fcce06",
      "public-output:selected_entities",
      "raw-source:28b6867b122cdd35191f5a9e765ac5d4e81bff4d4c4c64b0f8b5a64cf1e2b7ea",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:remove_cycle_internal_candidates",
      "public-output:remove_cycle_internal_candidates",
      "raw-source:06ff72dc00847a5a3a4f4989bafbdd9e30f82cf9a724a74996ecad774245a22d"
  ], [
      "capsule:df2f98d6403c67652d5ad9f761305a4699924d66c111dc7bd469a49f238dd11d",
      "declaration:remove_cycle_internal_candidates",
      "element:python-point:c9c46ef13d77b203218a82153a87d1aedf7d1eb18a6f11ff82a30ae2153affe6",
      "public-output:remove_cycle_internal_candidates",
      "raw-source:06ff72dc00847a5a3a4f4989bafbdd9e30f82cf9a724a74996ecad774245a22d",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:construction_profile",
      "public-output:construction_profile",
      "raw-source:fe027f473980e8cc50c7b2afae0ca0f52ed7b0816a424a12c62ce799f3bbd046"
  ], [
      "capsule:ef28f15a9f5aaf0ebb031ae767a11bec7c8fd5b06edde8cfc7d7906f71d261d6",
      "declaration:construction_profile",
      "element:python-point:c9dc5c15bb5bfbe5bcece415c443c685ad7dea9fdf0c5a18ba7e639d87c37e21",
      "public-output:construction_profile",
      "raw-source:fe027f473980e8cc50c7b2afae0ca0f52ed7b0816a424a12c62ce799f3bbd046",
      "source-context:tools/projection/build_profiles.py"
  ]),
  ([
      "declaration:role_compatibility_rank",
      "public-output:role_compatibility_rank",
      "raw-source:55403be60713db3562198aebf90bd71dcf1242e824ca551b1441020087909441"
  ], [
      "capsule:54c0aa6435c5416701c08e4a316c691421e29c920c57f69abb27e4acb4da0e79",
      "declaration:role_compatibility_rank",
      "element:python-point:ca1a189a38eeab99d9945e4fdb0eb16549ac92589dee2c42ca93a45e640842d5",
      "public-output:role_compatibility_rank",
      "raw-source:55403be60713db3562198aebf90bd71dcf1242e824ca551b1441020087909441",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:propose_all",
      "public-output:propose_all",
      "raw-source:09f77bba02a1d06da05330407c6c8be598f1d5d69f7dc61fcfdb9592b0d7ed73"
  ], [
      "capsule:2aaaf9783181f03c23ea5a4ef0c13348350ddd08740fb67a07608654f75c4564",
      "declaration:propose_all",
      "element:python-point:ca2a1c7849cec22ddfd2ed8c2a8d905a8c0734126bab48d6ac3dc10563192372",
      "public-output:propose_all",
      "raw-source:09f77bba02a1d06da05330407c6c8be598f1d5d69f7dc61fcfdb9592b0d7ed73",
      "source-context:tools/oracle/mlx_backend.py"
  ]),
  ([
      "declaration:_emit_balanced_all_proofs",
      "public-output:_emit_balanced_all_proofs",
      "raw-source:9a2e33f3d1ce181649e28f431a18d1a2e2f9b385bb638c2e7a619ed38666e20c"
  ], [
      "capsule:9cc8e1c843365ea49227d44adb86e3d810d41aa6f5f39f5213b5fec6c8e30996",
      "declaration:_emit_balanced_all_proofs",
      "element:python-point:ca52dd23133808746529faf452cbf0467feedf420987ed2db2afd9e0b6fb45c4",
      "public-output:_emit_balanced_all_proofs",
      "raw-source:9a2e33f3d1ce181649e28f431a18d1a2e2f9b385bb638c2e7a619ed38666e20c",
      "source-context:tools/projection/external_rigidifier.py"
  ]),
  ([
      "declaration:records_by_id",
      "public-output:records_by_id",
      "raw-source:f4bcb4f75285b98aa5e84ff24610e58b6a9f8d8531ef35ad203f65bd0463de86"
  ], [
      "capsule:17961623ce08eb57549306b2b7df71add5529ea328233365de9eec1995334504",
      "declaration:records_by_id",
      "element:python-point:cad1c1aead267119edfbed56a03c68b4b69133073f210405fab685c071386090",
      "public-output:records_by_id",
      "raw-source:f4bcb4f75285b98aa5e84ff24610e58b6a9f8d8531ef35ad203f65bd0463de86",
      "source-context:tools/projection/locality.py"
  ]),
  ([
      "declaration:MathematicsToolSurface",
      "public-output:MathematicsToolSurface",
      "raw-source:cdf7936401c10600eae12b8e851400d71b347659d7cde181fb73b42a703694d7"
  ], [
      "capsule:0ee8e6ecb9913d47f08130226a4f9b15946e37a1759f698a1a52302d092c606a",
      "declaration:MathematicsToolSurface",
      "element:python-point:cbdb964d3a6c3bc4a24e5f45336ed1f4c1ca81e995b1ae5bdf1464f4761e7aba",
      "public-output:MathematicsToolSurface",
      "raw-source:cdf7936401c10600eae12b8e851400d71b347659d7cde181fb73b42a703694d7",
      "source-context:tools/oracle/public_tools.py"
  ]),
  ([
      "declaration:thaw_value",
      "public-output:thaw_value",
      "raw-source:f203903a5534581b3420c843a1d434bc099f5dfddf6dfac01b065427bd9ca3f8"
  ], [
      "capsule:bc6889ef78617384d9d8fd23cfc3f94593d8711699ed5be2bb961fed61072f1a",
      "declaration:thaw_value",
      "element:python-point:cbfd9e9d506d2e567f3be69487a5c9b155ed3060fc58ab03f24e5dacf07dee72",
      "public-output:thaw_value",
      "raw-source:f203903a5534581b3420c843a1d434bc099f5dfddf6dfac01b065427bd9ca3f8",
      "source-context:tools/oracle/contracts.py"
  ]),
  ([
      "declaration:load_module",
      "public-output:load_module",
      "raw-source:179ba9cb7cbf2cef4fe7c2cd59ea6f067224ef0b30f7781907ed95d6670584bd",
      "source-context:tools/tests/test_environment_extractor.py"
  ], [
      "capsule:d986a32a5f530697ed8e85f3c0bd79606a57e6f3404b85db5c8c0b0961f69eb1",
      "declaration:load_module",
      "element:python-point:cc12c7fbecdf9d8f331ce31ccd5375a8743b969b068a0bc92278613aa23d8f9d",
      "public-output:load_module",
      "raw-source:179ba9cb7cbf2cef4fe7c2cd59ea6f067224ef0b30f7781907ed95d6670584bd",
      "source-context:tools/tests/test_environment_extractor.py"
  ]),
  ([
      "declaration:_atomic_write",
      "public-output:_atomic_write",
      "raw-source:1dd4166164a70bf6549c389be2c538b55cc78a23acfa6d8489949565f4bd5914",
      "source-context:tools/oracle/neighborhood_training.py"
  ], [
      "capsule:7193a269299640f69dea7c7c2f4e1ad6980a82518d75e6b774f8bb9f1609a439",
      "declaration:_atomic_write",
      "element:python-point:cc5907b30891d7e7540fefacc9108cbb52bce8cab093271ba808917131840689",
      "public-output:_atomic_write",
      "raw-source:1dd4166164a70bf6549c389be2c538b55cc78a23acfa6d8489949565f4bd5914",
      "source-context:tools/oracle/neighborhood_training.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:1e35d583c286734802475c5be9e35909776606e3c06e54f11c06460ada0f6d6a",
      "source-context:tools/projection/all.py"
  ], [
      "capsule:f837bb09d6a5a9d4643a1ca0b3951fcafe3413ef1c3093fb647ee6d08c9ee242",
      "declaration:main",
      "element:python-point:ccde218fa96ca4bceccc6d2098d4a24e139523e591535da8a315548092cd328c",
      "public-output:main",
      "raw-source:1e35d583c286734802475c5be9e35909776606e3c06e54f11c06460ada0f6d6a",
      "source-context:tools/projection/all.py"
  ]),
  ([
      "declaration:digest_matches",
      "public-output:digest_matches",
      "raw-source:aedd2c1703ea61376e5da129d7c26aa1ea1e766e2f5a37741c2a66833b43d867"
  ], [
      "capsule:e070e820cac89367ef17f6538efa4d74fca14910f84a4a6802e2c7d908f03447",
      "declaration:digest_matches",
      "element:python-point:cce792460b477e068069edd05a79e4b73f52007f7d3a2109a2b026e39c430285",
      "public-output:digest_matches",
      "raw-source:aedd2c1703ea61376e5da129d7c26aa1ea1e766e2f5a37741c2a66833b43d867",
      "source-context:tools/environment/canonical.py"
  ]),
  ([
      "declaration:canonical_text",
      "public-output:canonical_text",
      "raw-source:863907d2e59255eb489130828461c8cda1e2adda0390f7e2e32d7f399a7642a0",
      "source-context:tools/refactor/canonical.py"
  ], [
      "capsule:93a5b9eac8cf4783037da29923c067d7f976f71e6811586bdf2c110f23886b7f",
      "declaration:canonical_text",
      "element:python-point:cd2c18249b717c64824b68928202d074fff9815219d13c4973762746e99b9d97",
      "public-output:canonical_text",
      "raw-source:863907d2e59255eb489130828461c8cda1e2adda0390f7e2e32d7f399a7642a0",
      "source-context:tools/refactor/canonical.py"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L73699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
