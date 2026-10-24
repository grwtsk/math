# semanticSupportRowsChunk0010

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a895dda5b980596de5adaf25dfc45925fe72e91c7a22d1055b9a8944781d1acb",
  "kind": "def",
  "lexical_name": "semanticSupportRowsChunk0010",
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
  "slug": "semanticsupportrowschunk0010--82ce4b1267cc1919cb884078",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73698,
    "line": 72902,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82ce4b1267cc1919cb8840782a1fd31b89153386994bf3092acdfbaaab35c05b",
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

Occurrence: `declaration:a895dda5b980596de5adaf25dfc45925fe72e91c7a22d1055b9a8944781d1acb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72902–73698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def semanticSupportRowsChunk0010 : List (List String × List String) :=
[
  ([
      "declaration:dependency_cone",
      "public-output:dependency_cone",
      "raw-source:3353e7ccb81012d965358823d30a07043d4b4bcae20e2fce349e7b4c5276f19a"
  ], [
      "capsule:4d227a9c62507155741eb704e245c7895ea538a35ddc52d15804e23368785a48",
      "declaration:dependency_cone",
      "element:python-point:afdc5f6d6c054f561d7410988546d9c30e993b8496d14905012f3f6cf15a5507",
      "public-output:dependency_cone",
      "raw-source:3353e7ccb81012d965358823d30a07043d4b4bcae20e2fce349e7b4c5276f19a",
      "source-context:tools/environment/cone.py"
  ]),
  ([
      "declaration:CertifiedNeighborhoodLabel",
      "public-output:CertifiedNeighborhoodLabel",
      "raw-source:5889604209590ecec91035aace33e7551764e5f5a1c5a76ec86577ec11cd80af"
  ], [
      "capsule:885d048b958055c37db50fe043b252d66b932166968ff8ec340bdadb8974e26b",
      "declaration:CertifiedNeighborhoodLabel",
      "element:python-point:affd815c463724e123ea91837288b838f15cf8831ef70e883e9c54336debdadb",
      "public-output:CertifiedNeighborhoodLabel",
      "raw-source:5889604209590ecec91035aace33e7551764e5f5a1c5a76ec86577ec11cd80af",
      "source-context:tools/projection/certified_tree_paths.py"
  ]),
  ([
      "declaration:id_value",
      "public-output:id_value",
      "raw-source:c1d6d15b34eaf9ed92bf9352f052167b4ec6527273b4476a05ac998ceb6d840d",
      "source-context:tools/taxonomy/review_self_ledger.py"
  ], [
      "capsule:974eb998ab65a102d223a78677f79393fa564e792cd651c03911994d933a454a",
      "declaration:id_value",
      "element:python-point:b0cad358ed95f3e25222857d0574d7c66718ad45b19c5da68aa05ca6aeed1b92",
      "public-output:id_value",
      "raw-source:c1d6d15b34eaf9ed92bf9352f052167b4ec6527273b4476a05ac998ceb6d840d",
      "source-context:tools/taxonomy/review_self_ledger.py"
  ]),
  ([
      "declaration:build",
      "public-output:build",
      "raw-source:4347ab9f6ea60560ae4947289afddd39ef561f31c00c58996c08ca9cc3a2218d",
      "source-context:tools/embedding/freeze_fixture.py"
  ], [
      "capsule:bac702ae0a48c32ce6270741794d2a2c8eb1ab59dc7ba347e6a399737ae6f00c",
      "declaration:build",
      "element:python-point:b0dab7fe57440b5cf89e3963acb55f6323ff8226b7cbb4553741c50da42f035f",
      "public-output:build",
      "raw-source:4347ab9f6ea60560ae4947289afddd39ef561f31c00c58996c08ca9cc3a2218d",
      "source-context:tools/embedding/freeze_fixture.py"
  ]),
  ([
      "declaration:declaration_map",
      "public-output:declaration_map",
      "raw-source:5186dc9c1d11ff3720a4c6c80fcde0298e31f5febed85087078b146a7a5e42b9"
  ], [
      "capsule:0117316f6b2d9acad9a39822be5a7a99e215918d32ae642e747ce057735a0fec",
      "declaration:declaration_map",
      "element:python-point:b0e3cafc562de7a2d32451be550b2ea4a95ac27470c32d7e16196fba7036eb47",
      "public-output:declaration_map",
      "raw-source:5186dc9c1d11ff3720a4c6c80fcde0298e31f5febed85087078b146a7a5e42b9",
      "source-context:tools/environment/ledger.py"
  ]),
  ([
      "declaration:parse_args",
      "public-output:parse_args",
      "raw-source:9a0de14a19db3cfb8075fc0ae905e9726c5b2547941261f12e6cfb64b31db8ec",
      "source-context:tools/environment/replay.py"
  ], [
      "capsule:9f963a8b7d0a5152933b4b56a75623bae303e49d587a5090bb6ebe629bbc7037",
      "declaration:parse_args",
      "element:python-point:b122b5c0289ade8db8144b944b3034b484d516e8af18912529133d62b5a189f9",
      "public-output:parse_args",
      "raw-source:9a0de14a19db3cfb8075fc0ae905e9726c5b2547941261f12e6cfb64b31db8ec",
      "source-context:tools/environment/replay.py"
  ]),
  ([
      "declaration:build_name_plan",
      "public-output:build_name_plan",
      "raw-source:3ba99d4626c3e6ee3f5b80ffea04422844af794788ff677e7c5bb934c3cf8abd"
  ], [
      "capsule:4724f0958631fe23450e857ef2b8a0d6d939ad2582e046ed3cda2b98d80858a1",
      "declaration:build_name_plan",
      "element:python-point:b135acf3c1969e517e3eefbc8214eb1f5fc6143c21e69a28c71e1341f2c27658",
      "public-output:build_name_plan",
      "raw-source:3ba99d4626c3e6ee3f5b80ffea04422844af794788ff677e7c5bb934c3cf8abd",
      "source-context:tools/oracle/name_plan.py"
  ]),
  ([
      "declaration:smoke_test",
      "public-output:smoke_test",
      "raw-source:d3b4b55d0563260bfdaea890444fbb34d1c83a7efbbfa9282d5b7d09b6addf72"
  ], [
      "capsule:eb535242a3c020ce78ce070113e90b17c9e046d04ae37db8ad4ef044da774d7e",
      "declaration:smoke_test",
      "element:python-point:b16d9c4c02433a755fb2e52cd25fcdbe825ab614b14aee819cbbb518825376d3",
      "public-output:smoke_test",
      "raw-source:d3b4b55d0563260bfdaea890444fbb34d1c83a7efbbfa9282d5b7d09b6addf72",
      "source-context:tools/oracle/mlx_backend.py"
  ]),
  ([
      "declaration:_element_ranges",
      "public-output:_element_ranges",
      "raw-source:fc63feb15662dfab8fb0022345b5df5dc36175612b08bf9b94128a4885ce5fa0"
  ], [
      "capsule:fd6df1379a5392e4db3471ed499056832a8c65a9134cc8ea63712bd798be3f3a",
      "declaration:_element_ranges",
      "element:python-point:b181d2b4489fcadd79910b27cc2137b533faab6f6bde8a0b199586ab41313543",
      "public-output:_element_ranges",
      "raw-source:fc63feb15662dfab8fb0022345b5df5dc36175612b08bf9b94128a4885ce5fa0",
      "source-context:tools/refactor/point_corpus.py"
  ]),
  ([
      "declaration:parse_args",
      "public-output:parse_args",
      "raw-source:3371bc7c8568711f0d5b7bda7fdfd85c3f57973b4510c6e146684206ccf4e8e5",
      "source-context:tools/environment/build_receipt.py"
  ], [
      "capsule:7089cef13b252636d73a196d642d843a99163f87b52144db7031a9cf2971c629",
      "declaration:parse_args",
      "element:python-point:b1c46621263875d6c2fe3f218b19c9ff336cc5c686b898890e9fb4e4fd18a783",
      "public-output:parse_args",
      "raw-source:3371bc7c8568711f0d5b7bda7fdfd85c3f57973b4510c6e146684206ccf4e8e5",
      "source-context:tools/environment/build_receipt.py"
  ]),
  ([
      "declaration:validate_element_name_ir",
      "public-output:validate_element_name_ir",
      "raw-source:1148f9b3b3855c8d62a11128cfb288a29f29b842496f39573ae84fa1562d52f2"
  ], [
      "capsule:133b3e882e9e0a0621669e09ec68a51f37989b810529ca0ca53ee8c79abff124",
      "declaration:validate_element_name_ir",
      "element:python-point:b236fcaa3fdd78d1e7c1ea9ff73aa64ba91cd69bdc78dcd51d084919a0cde31b",
      "public-output:validate_element_name_ir",
      "raw-source:1148f9b3b3855c8d62a11128cfb288a29f29b842496f39573ae84fa1562d52f2",
      "source-context:tools/oracle/schema.py"
  ]),
  ([
      "declaration:_arity",
      "public-output:_arity",
      "raw-source:aa7ea9f38e16068c255c4a2d7ca10ec3c8d53268edd9de948bead67c3b7a793f"
  ], [
      "capsule:a592a6dd47b1f25b079d12625a804e47709d153e24937022bfcc3c2f6dec1b4e",
      "declaration:_arity",
      "element:python-point:b242a2f7b3ac8fb67f58564460e4f8ad21e36d8b777482268ae81d754306ab30",
      "public-output:_arity",
      "raw-source:aa7ea9f38e16068c255c4a2d7ca10ec3c8d53268edd9de948bead67c3b7a793f",
      "source-context:tools/environment/expression_tree.py"
  ]),
  ([
      "declaration:_run",
      "public-output:_run",
      "raw-source:5c357a540157e315c3bc242e2c52aa718471ef46c138d25ec17d7552768411ea",
      "source-context:tools/oracle/apply_names.py"
  ], [
      "capsule:ef634a9b5c245f3ceacd1266f12a840e7ae81e9d685814644adad5ea82926595",
      "declaration:_run",
      "element:python-point:b2899a63065d24e904e9f3479d4c2ec705e2900be53af3cdb4bc8618ea38a117",
      "public-output:_run",
      "raw-source:5c357a540157e315c3bc242e2c52aa718471ef46c138d25ec17d7552768411ea",
      "source-context:tools/oracle/apply_names.py"
  ]),
  ([
      "declaration:reconcile",
      "public-output:reconcile",
      "raw-source:3295c5acc642bdb631c37560e72cb53f114fc221dced6fe47909913239c87232"
  ], [
      "capsule:6ae71ebe78ebbe7d7814d793132565fd892ddfcc8fe1b6a516bb6412c969f5e9",
      "declaration:reconcile",
      "element:python-point:b302124a9fdb642139e1a37e6502af97d59c9f691fe39415d9f9e1509fb328cf",
      "public-output:reconcile",
      "raw-source:3295c5acc642bdb631c37560e72cb53f114fc221dced6fe47909913239c87232",
      "source-context:tools/oracle/reconcile.py"
  ]),
  ([
      "declaration:average_linkage_distance",
      "public-output:average_linkage_distance",
      "raw-source:82a2e3cc98746525d31712225e4344347b2adc2ce4c971a8cf572ad5d0aa7caa"
  ], [
      "capsule:1d0ee6cbf79618908fc2190094f9193e1e230f81cc7fdaedb56ce6a3858ea636",
      "declaration:average_linkage_distance",
      "element:python-point:b35e9ebb59a1b3493012007b7d5f288584ae5e938133556473db3924a59e230b",
      "public-output:average_linkage_distance",
      "raw-source:82a2e3cc98746525d31712225e4344347b2adc2ce4c971a8cf572ad5d0aa7caa",
      "source-context:tools/organization/hierarchical.py"
  ]),
  ([
      "declaration:ExpressionSyntaxError",
      "public-output:ExpressionSyntaxError",
      "raw-source:b6334730088bad66ce04cb50c619c9878c3906fcc63483ca32d5eb2103bf63f4"
  ], [
      "capsule:d53c4129a209f4e3e271da17ed7b584dec4dd3563c2d0c528e64ca0a6ede6fdd",
      "declaration:ExpressionSyntaxError",
      "element:python-point:b38ceb3ff6e9f3c6094288e2819de5b9db01ec6bf5d154e0b4bada4912fafb9a",
      "public-output:ExpressionSyntaxError",
      "raw-source:b6334730088bad66ce04cb50c619c9878c3906fcc63483ca32d5eb2103bf63f4",
      "source-context:tools/environment/expression_tree.py"
  ]),
  ([
      "declaration:_lean_physical_rows",
      "public-output:_lean_physical_rows",
      "raw-source:bdfb541182b3f16225e7964aa5465182468f627be89960f6b088a81555e20197"
  ], [
      "capsule:33050a8e31a95457bad7670204f86e9005c97261ae01b06213c3b261a45e659d",
      "declaration:_lean_physical_rows",
      "element:python-point:b405332f94b01db78aaaaef67352692037cd6beccb94a31f25994341746c5e35",
      "public-output:_lean_physical_rows",
      "raw-source:bdfb541182b3f16225e7964aa5465182468f627be89960f6b088a81555e20197",
      "source-context:tools/projection/external_rigidifier.py"
  ]),
  ([
      "declaration:check_feature_caches",
      "public-output:check_feature_caches",
      "raw-source:ea011e6daf812d4af9ade74da6a3996c7548148d25306c35c071f252cc89d58e"
  ], [
      "capsule:5bc19f41ae1223c0cc2e35fd9fcbc60f6f0ea205a41d78773b99c3dfa2e220dc",
      "declaration:check_feature_caches",
      "element:python-point:b4213c479a3a353e4b32b8d658b49a2053b8796d733b9fbfc7419d085e1f5919",
      "public-output:check_feature_caches",
      "raw-source:ea011e6daf812d4af9ade74da6a3996c7548148d25306c35c071f252cc89d58e",
      "source-context:tools/locality/check.py"
  ]),
  ([
      "declaration:command",
      "public-output:command",
      "raw-source:13adb99ba9e26b27cc20c5a46a598b983b50c243d447d834d5f2456dcf775a44",
      "source-context:tools/tests/test_refactor.py"
  ], [
      "capsule:d7f28d416e1141f2063c9690130a42224fb1ae5be33ea799c53ea464827c214e",
      "declaration:command",
      "element:python-point:b5757cc944d120393588dd18ff8ce2fbd988dccf7bc2c21720997e6c33ff17e1",
      "public-output:command",
      "raw-source:13adb99ba9e26b27cc20c5a46a598b983b50c243d447d834d5f2456dcf775a44",
      "source-context:tools/tests/test_refactor.py"
  ]),
  ([
      "declaration:kind_map",
      "public-output:kind_map",
      "raw-source:4406c99492c817c1341b0ac38304bb0b7defa8bc205df7f4cd4e5d22cb1bbc7d"
  ], [
      "capsule:ee77bc996fa5157b7cdfb0a52451f2f8304c64b015c4ae7735d06eb027864bfa",
      "declaration:kind_map",
      "element:python-point:b57c8c4d820afac1389cc4bf6c7a779a45dacddf5bc2ccd5926dbb4a8887d478",
      "public-output:kind_map",
      "raw-source:4406c99492c817c1341b0ac38304bb0b7defa8bc205df7f4cd4e5d22cb1bbc7d",
      "source-context:tools/environment/assemble.py"
  ]),
  ([
      "declaration:build_witnesses",
      "public-output:build_witnesses",
      "raw-source:eb1e355908b11ffb3ef327db1d730ede2c51c4f3028b128f35a18af91ad94511"
  ], [
      "capsule:92e21d71157aa8227ddaa14e0f498f6eca281f4053ad0507508a107223916161",
      "declaration:build_witnesses",
      "element:python-point:b57f7e3064a0488efc832fa85452cb8877a90ea87e0188e0b0394d8c56fd09c8",
      "public-output:build_witnesses",
      "raw-source:eb1e355908b11ffb3ef327db1d730ede2c51c4f3028b128f35a18af91ad94511",
      "source-context:tools/refactor/collapse_witness.py"
  ]),
  ([
      "declaration:canonical_json_bytes",
      "public-output:canonical_json_bytes",
      "raw-source:64875e3470f92b98d290e05d31757b1f66b01882fb83707bde656dee79200273",
      "source-context:tools/kernel/build_features.py"
  ], [
      "capsule:cd578afa07e2d053fb3160ec3d2ea9d6bb88d155b08c78a7a430d2643d84c1b2",
      "declaration:canonical_json_bytes",
      "element:python-point:b5bbda646fb3e6e62273f94261f1c708d119f63489d8f51150d35acd1d37714f",
      "public-output:canonical_json_bytes",
      "raw-source:64875e3470f92b98d290e05d31757b1f66b01882fb83707bde656dee79200273",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:TrajectoryTests",
      "public-output:TrajectoryTests",
      "raw-source:6c1fe16b64ad00bebabc4e5c230e9f9e242c3354f4ff311e7ce89a8797483b5e"
  ], [
      "capsule:99f19b82433c00b7b96381b76b639e83cc4c60eb76af5bf98954f54dc8b89406",
      "declaration:TrajectoryTests",
      "element:python-point:b5c3cd2508952a96f058e97513dad01384523af0283d34b5446943ecedf339b1",
      "public-output:TrajectoryTests",
      "raw-source:6c1fe16b64ad00bebabc4e5c230e9f9e242c3354f4ff311e7ce89a8797483b5e",
      "source-context:tools/tests/test_mathematics_oracle.py"
  ]),
  ([
      "declaration:context_prelude",
      "public-output:context_prelude",
      "raw-source:f5f02ed5bb029e0a32333fea0023f952f09d12c9a78ab428eb1514de199475fa"
  ], [
      "capsule:359f92923bd860c7631629b01e547995ba68e1d3f1727902678e5abae983ac37",
      "declaration:context_prelude",
      "element:python-point:b64818e2d40731e0d253eb23088a381da14353c97a9705a3919aaf3e2e49a083",
      "public-output:context_prelude",
      "raw-source:f5f02ed5bb029e0a32333fea0023f952f09d12c9a78ab428eb1514de199475fa",
      "source-context:tools/refactor/emit_lean.py"
  ]),
  ([
      "declaration:load_module",
      "public-output:load_module",
      "raw-source:179ba9cb7cbf2cef4fe7c2cd59ea6f067224ef0b30f7781907ed95d6670584bd",
      "source-context:tools/projection/all.py"
  ], [
      "capsule:68c838159881887dfd67f61fe160f5c65c84b01539c0f38b3ca390b0ec45f6ae",
      "declaration:load_module",
      "element:python-point:b653275bd0e538f211abcc6edc8b604165b2551d0e7a33c1e82e632386101c08",
      "public-output:load_module",
      "raw-source:179ba9cb7cbf2cef4fe7c2cd59ea6f067224ef0b30f7781907ed95d6670584bd",
      "source-context:tools/projection/all.py"
  ]),
  ([
      "declaration:_function_starts",
      "public-output:_function_starts",
      "raw-source:f017322faa717ea03ca8b9f7c3587a23e1835e0da765d0cec9b7598745d5410a"
  ], [
      "capsule:4f4b5693d9bf3cdd505d006c4a50038b1a53580b0e78d49f66e0da4cbc05819a",
      "declaration:_function_starts",
      "element:python-point:b65e9068f58c5642f85946093dba06b15f8d692f2b4b77f17cd9f1e4d5e354b7",
      "public-output:_function_starts",
      "raw-source:f017322faa717ea03ca8b9f7c3587a23e1835e0da765d0cec9b7598745d5410a",
      "source-context:tools/refactor/emit_shell.py"
  ]),
  ([
      "declaration:read_ndjson",
      "public-output:read_ndjson",
      "raw-source:954dc21181d3631db719f6e8da6b0857bb283df345067bedf72c1902d078fee5",
      "source-context:tools/proof-strategy/classify.py"
  ], [
      "capsule:d8ea2db8dcfb34fa8fd20145267928bba21c36feef5b87dd449c7d39562ffcc2",
      "declaration:read_ndjson",
      "element:python-point:b694943dea6dd28dee52d04cbb56d27d120b11db0d5dbbc7bc723e222f59aa50",
      "public-output:read_ndjson",
      "raw-source:954dc21181d3631db719f6e8da6b0857bb283df345067bedf72c1902d078fee5",
      "source-context:tools/proof-strategy/classify.py"
  ]),
  ([
      "declaration:canonical_json_bytes",
      "public-output:canonical_json_bytes",
      "raw-source:64875e3470f92b98d290e05d31757b1f66b01882fb83707bde656dee79200273",
      "source-context:tools/concept-inventory/enrich.py"
  ], [
      "capsule:84ec71072504c1e9df9fba9496e2e8177e7d7479223871eb3e7cd413cb4c10b0",
      "declaration:canonical_json_bytes",
      "element:python-point:b6fb0ed856e06519acf5b943766ca2662ccc1d42b66d92629a8a9fb41a0616a2",
      "public-output:canonical_json_bytes",
      "raw-source:64875e3470f92b98d290e05d31757b1f66b01882fb83707bde656dee79200273",
      "source-context:tools/concept-inventory/enrich.py"
  ]),
  ([
      "declaration:ProjectionLocalityError",
      "public-output:ProjectionLocalityError",
      "raw-source:56ee6e320ef6b3be4c4e57c82a2426b9a4b8927c2d441a9198c1abb304e730fe"
  ], [
      "capsule:eb32cead5b1293ed7e3c906150059189236827d7c24c4406fc486a7f731f0c0f",
      "declaration:ProjectionLocalityError",
      "element:python-point:b73922b8e4093c018972a87d3ff1f4682ff7d6858065a196d884a94985967e31",
      "public-output:ProjectionLocalityError",
      "raw-source:56ee6e320ef6b3be4c4e57c82a2426b9a4b8927c2d441a9198c1abb304e730fe",
      "source-context:tools/projection/locality.py"
  ]),
  ([
      "declaration:build",
      "public-output:build",
      "raw-source:6e30eedc832371e041054017de82b92e7dd61974b658d6a43062a787e95e016b",
      "source-context:tools/taxonomy/review_self_ledger.py"
  ], [
      "capsule:87d0e2c878909ea0673e3f282b6c21a790dbdbd7fd0cd555a228ab4486f8a7f1",
      "declaration:build",
      "element:python-point:b75d956d316199e6a8acece8c641667f0c51568d5fa71afaf1f137a3153ebede",
      "public-output:build",
      "raw-source:6e30eedc832371e041054017de82b92e7dd61974b658d6a43062a787e95e016b",
      "source-context:tools/taxonomy/review_self_ledger.py"
  ]),
  ([
      "declaration:id_text",
      "public-output:id_text",
      "raw-source:cb89eb88a1f24a1a08e0498c69a84f464e4e3c654a6cbc9cbf8cc01afdd90fab",
      "source-context:tools/oracle/canonical.py"
  ], [
      "capsule:1ea8f3a58862b0ab2539c666fd8eb8eb906f3ba9e582a25a798ba07ac7d3f1b0",
      "declaration:id_text",
      "element:python-point:b7b45b2f06d403220ed14c63c54e761d7947af682c8a104dca456bc91904ccda",
      "public-output:id_text",
      "raw-source:cb89eb88a1f24a1a08e0498c69a84f464e4e3c654a6cbc9cbf8cc01afdd90fab",
      "source-context:tools/oracle/canonical.py"
  ]),
  ([
      "declaration:canonical_bytes",
      "public-output:canonical_bytes",
      "raw-source:7ebb9050652f3ae77b5516983b14d405b6e699e605795e74273f380bddf6b536",
      "source-context:tools/embedding/common.py"
  ], [
      "capsule:d74c34feba3e7a2a5ebc1483c191e470090eb3fddd34e5e103cec13cc71c3b95",
      "declaration:canonical_bytes",
      "element:python-point:b7b68fc3474c84a6701f8edf5fb813d53df58b5dd330bb126f5cbea66b30449d",
      "public-output:canonical_bytes",
      "raw-source:7ebb9050652f3ae77b5516983b14d405b6e699e605795e74273f380bddf6b536",
      "source-context:tools/embedding/common.py"
  ]),
  ([
      "declaration:relation_display_disposition",
      "public-output:relation_display_disposition",
      "raw-source:74dcd6fc6912714582bc661718cd5b56d02153f067c443837a44a738414d45c5"
  ], [
      "capsule:44c725003f6b328454c1df3f5ef1f69cd7676346052b78782f08abc293d6773d",
      "declaration:relation_display_disposition",
      "element:python-point:b7bb36356746dacec68397d0ec630cb986497b4c4ede8e83728a6b67df82b3ce",
      "public-output:relation_display_disposition",
      "raw-source:74dcd6fc6912714582bc661718cd5b56d02153f067c443837a44a738414d45c5",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:compute_canonical_paths",
      "public-output:compute_canonical_paths",
      "raw-source:abd46c15dafc4123073e3cfdfb6d2df5b955e0679b5993c256d4979e5b2d3cfb"
  ], [
      "capsule:06e0195b774c8847ac47c1c8bd9c4a1a3d23e41df057f6234067b06f7a52e37f",
      "declaration:compute_canonical_paths",
      "element:python-point:b801d08b2ce79e5873ca13828c946804ff6a461a8e55bdbd45e7c65905efc15f",
      "public-output:compute_canonical_paths",
      "raw-source:abd46c15dafc4123073e3cfdfb6d2df5b955e0679b5993c256d4979e5b2d3cfb",
      "source-context:tools/taxonomy/build_registry.py"
  ]),
  ([
      "declaration:digest",
      "public-output:digest",
      "raw-source:9ff618e9a48231b08d920ed841ac79e76d810d73d1790ef66e23a927f33e224c",
      "source-context:tools/organization/cache.py"
  ], [
      "capsule:9d289005b882cbe73bdcaff9bf1f17dab40a63d4d40778f7e4be5c3c54e9e724",
      "declaration:digest",
      "element:python-point:b8137028f74c305c76ca20e78c1e586d3ba6fcfb7e05a6e0796c36cb6d1fb0db",
      "public-output:digest",
      "raw-source:9ff618e9a48231b08d920ed841ac79e76d810d73d1790ef66e23a927f33e224c",
      "source-context:tools/organization/cache.py"
  ]),
  ([
      "declaration:write_json",
      "public-output:write_json",
      "raw-source:8f578f2f4aba54cce854f5b0011bb13ebffcbd0adf15429b2766552ae689918f",
      "source-context:tools/environment/canonical.py"
  ], [
      "capsule:8ea01412e5063b8b0e000d1b51727548a39ebaeb5e4527c0a43240d6589cae22",
      "declaration:write_json",
      "element:python-point:b8372dd0903fd78785f37f2c080a94527d7a837877f39f50e02b27bd87c680b7",
      "public-output:write_json",
      "raw-source:8f578f2f4aba54cce854f5b0011bb13ebffcbd0adf15429b2766552ae689918f",
      "source-context:tools/environment/canonical.py"
  ]),
  ([
      "declaration:_python_assembly_targets",
      "public-output:_python_assembly_targets",
      "raw-source:e1126214b510e3024b101e53ace1d05b71fa82278aabcd885cdbc93c37d7ddc8"
  ], [
      "capsule:d8e81b9b38b1de10c1352ae1959a1b44be60869ff806a8d0a4bece08c922db81",
      "declaration:_python_assembly_targets",
      "element:python-point:b840ed23ec0099994c2e6161e89df989e89696190f57baed3011555ec9d189e0",
      "public-output:_python_assembly_targets",
      "raw-source:e1126214b510e3024b101e53ace1d05b71fa82278aabcd885cdbc93c37d7ddc8",
      "source-context:tools/projection/intrinsic_structure.py"
  ]),
  ([
      "declaration:file_digest",
      "public-output:file_digest",
      "raw-source:00bd77ef9d3e0260a064552a91a14ef97f2ff8ce377378695c7179399900481a",
      "source-context:tools/environment/canonical.py"
  ], [
      "capsule:e26a02b6072642a5c1246a6bccbd7b4759c2418793452ca0a24fc794c05884f9",
      "declaration:file_digest",
      "element:python-point:b92dcc2934d4a0ebd3653eab31c5a137406bc2157becd96718a00bfa23ef6290",
      "public-output:file_digest",
      "raw-source:00bd77ef9d3e0260a064552a91a14ef97f2ff8ce377378695c7179399900481a",
      "source-context:tools/environment/canonical.py"
  ]),
  ([
      "declaration:authority",
      "public-output:authority",
      "raw-source:e0f0ed44263829b52c6ed046cbc515d2d3de61f14bbb6a0c621c1ad6fcfa6676",
      "source-context:tools/tests/test_pipeline.py"
  ], [
      "capsule:feb1c7b9880cad4c4831c84bb5981bb7588bbb9df49fa0fb6ad7d8eff804f67b",
      "declaration:authority",
      "element:python-point:b9462e7199c4cc70eae264e60c2fb6b0c90a1236aab49a9435d2146d8055e236",
      "public-output:authority",
      "raw-source:e0f0ed44263829b52c6ed046cbc515d2d3de61f14bbb6a0c621c1ad6fcfa6676",
      "source-context:tools/tests/test_pipeline.py"
  ]),
  ([
      "declaration:receipt_fingerprint",
      "public-output:receipt_fingerprint",
      "raw-source:b3c015c2ebdf8161cdaf42b257db08b5182d72ee85ed521bb671a439df9e6e1a",
      "source-context:tools/environment/canonical_cache.py"
  ], [
      "capsule:c86887aa9eca4061b66b8a7d297037f37f622213c71eb5a553166a97fc7a3391",
      "declaration:receipt_fingerprint",
      "element:python-point:b97819335339b5da0c736dec92b851f9965e4c066e8bde3872d259e99119f1a9",
      "public-output:receipt_fingerprint",
      "raw-source:b3c015c2ebdf8161cdaf42b257db08b5182d72ee85ed521bb671a439df9e6e1a",
      "source-context:tools/environment/canonical_cache.py"
  ]),
  ([
      "declaration:digest",
      "public-output:digest",
      "raw-source:9b7df60771a0ace43e5e5a52bfd439e21fcd1c79cce957342b0ce9cbe829192d",
      "source-context:tools/projection/project.py"
  ], [
      "capsule:d502198e462a45b9ccd7b0889b27243bab0cb42c8594f8a7c947631a02f26004",
      "declaration:digest",
      "element:python-point:b98a1643ea53cc7bdd86d30053d2ac47f3491b552159f0f5f61c25a387ed0001",
      "public-output:digest",
      "raw-source:9b7df60771a0ace43e5e5a52bfd439e21fcd1c79cce957342b0ce9cbe829192d",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:build_requests",
      "public-output:build_requests",
      "raw-source:f4a77666fd3ad1efad2a8b1472069de40c06a5374929ed0f910cae22ab5adab5"
  ], [
      "capsule:a4379304016fdd479af138f414aa767cc7dd9532cf64e4b6d6081227f694d2ed",
      "declaration:build_requests",
      "element:python-point:b98ba586fdf6d020f3fa214a108acf7c365cea7afb50ed397061d06ec03666f4",
      "public-output:build_requests",
      "raw-source:f4a77666fd3ad1efad2a8b1472069de40c06a5374929ed0f910cae22ab5adab5",
      "source-context:tools/oracle/name_neighborhoods.py"
  ]),
  ([
      "declaration:build",
      "public-output:build",
      "raw-source:1f42ddd9ba6cb6eecef7a2f96637987be7188f642f792c790567cb3452814106",
      "source-context:tools/embedding/factor.py"
  ], [
      "capsule:0ab4dcf0aa360c51d7d4abb84bd0896ec63daeb24fe68a716bc8c6154b5e3eef",
      "declaration:build",
      "element:python-point:b995f7456b1b2ac321db42be8d6e8401ad6f5ab3e67854e487d21ea971964d15",
      "public-output:build",
      "raw-source:1f42ddd9ba6cb6eecef7a2f96637987be7188f642f792c790567cb3452814106",
      "source-context:tools/embedding/factor.py"
  ]),
  ([
      "declaration:_clear_assurance_state",
      "public-output:_clear_assurance_state",
      "raw-source:ff3e38381add3958c8b3457e1fff35eadc6fe75f3ca1dba9d2cd38843d8584eb"
  ], [
      "capsule:b07cf7e372232b73661516483c64cfadca996d421013d4023b4b3c775ba82dcc",
      "declaration:_clear_assurance_state",
      "element:python-point:b9b603272c4e1a8e30022b7008d17b4ec6c10aaac0d5f2953d00d5b6641e79ce",
      "public-output:_clear_assurance_state",
      "raw-source:ff3e38381add3958c8b3457e1fff35eadc6fe75f3ca1dba9d2cd38843d8584eb",
      "source-context:tools/refactor/cli.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:93c1efc39d955681fccd1c24e463084fa2f41a0941517b7536ae0c08e8670764",
      "source-context:tools/oracle/cli.py"
  ], [
      "capsule:25f32a8b09a97c9b0c8b1501f3c0f800c319eb8e04bc558de29d3b6f71bdf6c0",
      "declaration:main",
      "element:python-point:ba21dc6fb22b59a526c274b84c67006582453dbf465c6515f6ff2f06fcbe6ae0",
      "public-output:main",
      "raw-source:93c1efc39d955681fccd1c24e463084fa2f41a0941517b7536ae0c08e8670764",
      "source-context:tools/oracle/cli.py"
  ]),
  ([
      "declaration:build_seeds",
      "public-output:build_seeds",
      "raw-source:1d8ad798025a4524654fcedf36ed25688426c63fc4d22e018a0a9b067a8881a2"
  ], [
      "capsule:cc6e0af0a5021691c5e9cef16bf76e3b4ffe29a1c1844f26f0fd5e8498dcf3d0",
      "declaration:build_seeds",
      "element:python-point:ba9b1592932606f967bd0b52c3de8c545d7765f7a7a562c830ceebcbc98baedf",
      "public-output:build_seeds",
      "raw-source:1d8ad798025a4524654fcedf36ed25688426c63fc4d22e018a0a9b067a8881a2",
      "source-context:tools/environment/theorem_seeds.py"
  ]),
  ([
      "declaration:source_evidence",
      "public-output:source_evidence",
      "raw-source:7d51a9090251dc97175f6d67c83c0f16a0b688dc78b02f67edd213130e62c764"
  ], [
      "capsule:dc5333e20d427b8b150088cb3958ced8f3bbbf9e1df1453a7dbada51986eb1b4",
      "declaration:source_evidence",
      "element:python-point:ba9f0207c19fc96863b08f4b6159a3531933a10c51a16b6c367b851d35eabe17",
      "public-output:source_evidence",
      "raw-source:7d51a9090251dc97175f6d67c83c0f16a0b688dc78b02f67edd213130e62c764",
      "source-context:tools/tests/test_neighborhood_names.py"
  ]),
  ([
      "declaration:_canonical_bytes",
      "public-output:_canonical_bytes",
      "raw-source:f4b3a86c13c905318714becf5496ce79bcff46f76917db5d52cf5cada2f498de",
      "source-context:tools/projection/formal_neighborhoods.py"
  ], [
      "capsule:10dce4e400b8696dbb97a5231dae3deb2478d72a2e5df6aacc7ae43cbe1c713d",
      "declaration:_canonical_bytes",
      "element:python-point:bae5cab2e32eabfe71827f7409a031235e7529e19f055984711f24a988b8fb8b",
      "public-output:_canonical_bytes",
      "raw-source:f4b3a86c13c905318714becf5496ce79bcff46f76917db5d52cf5cada2f498de",
      "source-context:tools/projection/formal_neighborhoods.py"
  ]),
  ([
      "declaration:TrajectorySample",
      "public-output:TrajectorySample",
      "raw-source:62f5dfa972d6c8cc2d701a16b48187e2469c02df4cf3c3baaa9e21087f4325db"
  ], [
      "capsule:c83c3daafa3b5ecf857516317120962c5903fb9b7d3b928f753a4e28c3fd99c0",
      "declaration:TrajectorySample",
      "element:python-point:bb3ea8f28d2746fd76bf15acb4762258c506a1657394080c80505435234e0638",
      "public-output:TrajectorySample",
      "raw-source:62f5dfa972d6c8cc2d701a16b48187e2469c02df4cf3c3baaa9e21087f4325db",
      "source-context:tools/oracle/trajectory.py"
  ]),
  ([
      "declaration:decisive_field",
      "public-output:decisive_field",
      "raw-source:ff3872b944d14b73c7561e09c4dd24c6f5c07bfde280819b754b806b2651bf08"
  ], [
      "capsule:6ea917ac37c28c8c1ee17b83cbf160f441dee0e61b948d490ac34358cf992339",
      "declaration:decisive_field",
      "element:python-point:bb694920e124b95e3b7d77e57aa7ca867c22f78ad1e1b50ac5867a8457dcee38",
      "public-output:decisive_field",
      "raw-source:ff3872b944d14b73c7561e09c4dd24c6f5c07bfde280819b754b806b2651bf08",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:_write",
      "public-output:_write",
      "raw-source:547d0fc78e339e420420c987a7dcd1c2a95611d22b0498a592fb583a187fab0c"
  ], [
      "capsule:a4e11fddffb0e15d26685e9da6e82c3631f406413c9ad16c382e3285aa880541",
      "declaration:_write",
      "element:python-point:bb777a632bb25a0ca05665cf3edfeae8a3fabedd8e40d748b70d38bb8b2cb8fb",
      "public-output:_write",
      "raw-source:547d0fc78e339e420420c987a7dcd1c2a95611d22b0498a592fb583a187fab0c",
      "source-context:tools/refactor/materialize.py"
  ]),
  ([
      "declaration:specificity_rank",
      "public-output:specificity_rank",
      "raw-source:0cfea8054891025a5337ab453584a16c70331624a16506004423c540ee1be53c"
  ], [
      "capsule:1d4554328f742bf4bf4a9d77531159c6007b59dc101283254c9362cf05200fa9",
      "declaration:specificity_rank",
      "element:python-point:bbeff1bbf05fe84aea3213598b48fc13042f55b76042b07547d5a573dbe6122c",
      "public-output:specificity_rank",
      "raw-source:0cfea8054891025a5337ab453584a16c70331624a16506004423c540ee1be53c",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:status_candidates",
      "public-output:status_candidates",
      "raw-source:92d75ffbb357325cdd3be085600056ffaa0181d4c43270e3ccacc518e2bff26a"
  ], [
      "capsule:b723bc16d102287801a7e824da15e6ed5b6c704343d01a51af334a43c1380d12",
      "declaration:status_candidates",
      "element:python-point:bc5c73699757d1c3997c3266a77310faf959dfafb085de9c943c6b46c92e1d0b",
      "public-output:status_candidates",
      "raw-source:92d75ffbb357325cdd3be085600056ffaa0181d4c43270e3ccacc518e2bff26a",
      "source-context:tools/taxonomy/propose.py"
  ]),
  ([
      "declaration:OracleSelectionContractTests",
      "public-output:OracleSelectionContractTests",
      "raw-source:80b999326950dba0dd64b3f1f9ccd6ca85832f2d9004bb799b76b87876ff55d2"
  ], [
      "capsule:d1b6fa0e8bae437a1983e15bb6526c79cd374b7d16e38e56155ee6c5f1ee837d",
      "declaration:OracleSelectionContractTests",
      "element:python-point:bc91bbc03ad62ae03d93dc2cb71d941b09b1ce29f9e61920c77c87a00f9de252",
      "public-output:OracleSelectionContractTests",
      "raw-source:80b999326950dba0dd64b3f1f9ccd6ca85832f2d9004bb799b76b87876ff55d2",
      "source-context:tools/tests/test_oracle_selection_contract.py"
  ]),
  ([
      "declaration:_string_list",
      "public-output:_string_list",
      "raw-source:f4b56716b90540b2ff804615dbb67831b03e6a4c44a71a474b1dd2e49146fcb2"
  ], [
      "capsule:46e9e319a0a0826ff8cda6486b2fbc21427a23e94f42a2f999f79bbf14fe76d5",
      "declaration:_string_list",
      "element:python-point:bce1a41907d03b28127856eddc0b3c9aaa4c637a71446f87a531fe804dc94b5a",
      "public-output:_string_list",
      "raw-source:f4b56716b90540b2ff804615dbb67831b03e6a4c44a71a474b1dd2e49146fcb2",
      "source-context:tools/oracle/public_tools.py"
  ]),
  ([
      "declaration:declaration_shape_features",
      "public-output:declaration_shape_features",
      "raw-source:6a7ac5b840b8519dc1026d5490d7dc3f8cdc5f8461e5be2beed0bc3002ccbb2d"
  ], [
      "capsule:dbd1105ba6973a689caea78ed3a0fb80d08d094238334b851d4efc5eea9d02ab",
      "declaration:declaration_shape_features",
      "element:python-point:bd3b3bfde2d34f88796ec127ddef56a1602d8c399511d39fbcbf3b78740420fa",
      "public-output:declaration_shape_features",
      "raw-source:6a7ac5b840b8519dc1026d5490d7dc3f8cdc5f8461e5be2beed0bc3002ccbb2d",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:load_module",
      "public-output:load_module",
      "raw-source:179ba9cb7cbf2cef4fe7c2cd59ea6f067224ef0b30f7781907ed95d6670584bd",
      "source-context:tools/tests/test_pipeline.py"
  ], [
      "capsule:790ee216482775546949f50c556448d7829b414b7419a674e9ec17161174ea0c",
      "declaration:load_module",
      "element:python-point:bd47211f28aa4dcdc99cdfded529f8e095e038517e3e44f8be1c06c70126f3ea",
      "public-output:load_module",
      "raw-source:179ba9cb7cbf2cef4fe7c2cd59ea6f067224ef0b30f7781907ed95d6670584bd",
      "source-context:tools/tests/test_pipeline.py"
  ]),
  ([
      "declaration:canonical_type",
      "public-output:canonical_type",
      "raw-source:f2807141d46b18b1862a48ff1e0a221cfdb9ebd6195038c1f9aed58d1ac94e4d"
  ], [
      "capsule:de70ad01e5bcb1311bf73a2e3f74a83d235edff02f4487800faab73fd39bc7b3",
      "declaration:canonical_type",
      "element:python-point:bd5b11bbbbcf23128a222de3aebd18a162d8ec370744fa4914c79bb3e7ca852a",
      "public-output:canonical_type",
      "raw-source:f2807141d46b18b1862a48ff1e0a221cfdb9ebd6195038c1f9aed58d1ac94e4d",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:parse_args",
      "public-output:parse_args",
      "raw-source:9e88b387ffda1ff82c76ca3bc0a5ade23e746a2d2ca479faddf8a07f1fe41c9f",
      "source-context:tools/taxonomy/coverage.py"
  ], [
      "capsule:549f796476c71360735c7e17aa6d18fb7c94d3f878cc0e8219f58e24fa47ec7d",
      "declaration:parse_args",
      "element:python-point:bd8b2f4e4992b966f4701c7f9fc2f570d547cc6397192631c133de9bd82acb6e",
      "public-output:parse_args",
      "raw-source:9e88b387ffda1ff82c76ca3bc0a5ade23e746a2d2ca479faddf8a07f1fe41c9f",
      "source-context:tools/taxonomy/coverage.py"
  ]),
  ([
      "declaration:ProjectionError",
      "public-output:ProjectionError",
      "raw-source:a2bf3b713e11d001e92896ab507555726f1864b8762254c6dba6b21d945a9898"
  ], [
      "capsule:cb1110349887e4feb47d66258054e3914d867210332e0ea71473c737516fc0d8",
      "declaration:ProjectionError",
      "element:python-point:bdbaa519bf5e95a806cff26f6c524eae83e5b82952a2097fc0555494050546ba",
      "public-output:ProjectionError",
      "raw-source:a2bf3b713e11d001e92896ab507555726f1864b8762254c6dba6b21d945a9898",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:parse_exact_choice",
      "public-output:parse_exact_choice",
      "raw-source:1e3920b92c3900ecdcb3b1c6de2e26077285b6263615f80ee11c22c687af4411"
  ], [
      "capsule:7f166e266f0acc529d1f229b493af4119eeed4bf95d73a6a22a902278f1f4b92",
      "declaration:parse_exact_choice",
      "element:python-point:bdffb70e1ced25a3edb387e4f9abf714b17cc17df0c7308b448b8f88f27835d8",
      "public-output:parse_exact_choice",
      "raw-source:1e3920b92c3900ecdcb3b1c6de2e26077285b6263615f80ee11c22c687af4411",
      "source-context:tools/oracle/selection_contract.py"
  ]),
  ([
      "declaration:canonical_value",
      "public-output:canonical_value",
      "raw-source:9f502bdcba591b234a09b6ab13981faf6f153d35b685bcde5377ada29492873c"
  ], [
      "capsule:efb8a59d24936ae4a91c2075b1e87e6df3d6e624e934a34d70fd67f4b8247c59",
      "declaration:canonical_value",
      "element:python-point:be00f32fd0d848dec85a70803731f6ffc2adb133ae3166f90a55d4148e326f79",
      "public-output:canonical_value",
      "raw-source:9f502bdcba591b234a09b6ab13981faf6f153d35b685bcde5377ada29492873c",
      "source-context:tools/oracle/contracts.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:ac0533ebbd9b8c047a99dcc9c574b7c58012d0cb012337de48ed6ad4080e59db",
      "source-context:tools/proof-strategy/explain.py"
  ], [
      "capsule:bd1446f05b7668ea0339f45a5866600f5651a61b6aa9f34f8f8cf1b703df3270",
      "declaration:main",
      "element:python-point:be0b88fbdc9125d36e3fe72add4393fff50a7f004faa50486c6483431fe15858",
      "public-output:main",
      "raw-source:ac0533ebbd9b8c047a99dcc9c574b7c58012d0cb012337de48ed6ad4080e59db",
      "source-context:tools/proof-strategy/explain.py"
  ]),
  ([
      "declaration:_assembly_targets",
      "public-output:_assembly_targets",
      "raw-source:1216058e2f9153adebf5c5c35857658a030c8612695160b14eec1c5e183daec2"
  ], [
      "capsule:03b30bd702ac8bd5545ae239b5ac8268e22c77a3b32f09fad18681d80fd50577",
      "declaration:_assembly_targets",
      "element:python-point:be16ff1c6b6f18349e7264b45124b2ccaa128f6f53753f8c7b56c0e35d802eb4",
      "public-output:_assembly_targets",
      "raw-source:1216058e2f9153adebf5c5c35857658a030c8612695160b14eec1c5e183daec2",
      "source-context:tools/projection/intrinsic_structure.py"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L72902).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
