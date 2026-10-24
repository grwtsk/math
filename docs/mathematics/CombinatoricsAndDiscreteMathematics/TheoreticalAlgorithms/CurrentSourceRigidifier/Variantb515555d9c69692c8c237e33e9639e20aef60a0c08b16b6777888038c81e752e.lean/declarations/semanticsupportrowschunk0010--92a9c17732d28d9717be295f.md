# semanticSupportRowsChunk0010

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42703fa018fda5e00efb08c2f6f51164d4b7c094adde97a5a1e429b567455b7c",
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
  "slug": "semanticsupportrowschunk0010--92a9c17732d28d9717be295f",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60411,
    "line": 59613,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92a9c17732d28d9717be295f06af4b805a5f07edba64e210625a7337556526bd",
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

Occurrence: `declaration:42703fa018fda5e00efb08c2f6f51164d4b7c094adde97a5a1e429b567455b7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59613–60411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def semanticSupportRowsChunk0010 : List (List String × List String) :=
[
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
  ]),
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
      "declaration:parse_exact_choice",
      "public-output:parse_exact_choice",
      "raw-source:f8c5c8b83559c2df64bca060b153faeff0cfb0c7f690b0d033bfb232c515dc6c"
  ], [
      "capsule:c7c4fde73a28d763b3cb6fddef29f22290706ad74831b90a2ad31b9a52d3ffc0",
      "declaration:parse_exact_choice",
      "element:python-point:c2e567d8c6855c381694ddcb21b59afdba9cc94f22968b23cb881ecc86933a3c",
      "public-output:parse_exact_choice",
      "raw-source:f8c5c8b83559c2df64bca060b153faeff0cfb0c7f690b0d033bfb232c515dc6c",
      "source-context:tools/oracle/selection_contract.py"
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
      "declaration:label_candidates",
      "public-output:label_candidates",
      "raw-source:56b8bf360c11b588430cd0da0ba1bb56f0f248bbda98db3b6efdb96c830b14ca"
  ], [
      "capsule:bd124de322f57e948e863445bf596c4a616824b05b046b4389595911949d2128",
      "declaration:label_candidates",
      "element:python-point:c3ccff32072c9f38acb7cdc239893904c36848598ee656e5636489fd0e98ba1a",
      "public-output:label_candidates",
      "raw-source:56b8bf360c11b588430cd0da0ba1bb56f0f248bbda98db3b6efdb96c830b14ca",
      "source-context:tools/oracle/name_neighborhoods.py"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L59613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
