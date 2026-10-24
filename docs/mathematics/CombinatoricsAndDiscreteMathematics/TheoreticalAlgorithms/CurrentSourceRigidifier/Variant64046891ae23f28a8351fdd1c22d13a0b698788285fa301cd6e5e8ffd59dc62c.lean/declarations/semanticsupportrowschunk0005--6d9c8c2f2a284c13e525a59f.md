# semanticSupportRowsChunk0005

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0cef1ed966437c7244fc967736cc6e79232d442ae85e94dfa2ddc656a8a37a11",
  "kind": "def",
  "lexical_name": "semanticSupportRowsChunk0005",
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
  "slug": "semanticsupportrowschunk0005--6d9c8c2f2a284c13e525a59f",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69730,
    "line": 68937,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d9c8c2f2a284c13e525a59fd2fc2bf3862a47b31a9bbaee0a2666860fe7a98a",
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

Occurrence: `declaration:0cef1ed966437c7244fc967736cc6e79232d442ae85e94dfa2ddc656a8a37a11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68937–69730.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def semanticSupportRowsChunk0005 : List (List String × List String) :=
[
  ([
      "declaration:strip_comments_and_imports",
      "public-output:strip_comments_and_imports",
      "raw-source:6aead8570559449b940eda2daaa5ea80b1ba4af75b3a4520838c47018083ef6f"
  ], [
      "capsule:ffc2787e17df3952200de5d4432579a674683d9abb3480048ce76f8c7874acdd",
      "declaration:strip_comments_and_imports",
      "element:python-point:587b18e6a5533f6e3305dde084e9de5d6608e6da0a7772cc3c15c29353d82eda",
      "public-output:strip_comments_and_imports",
      "raw-source:6aead8570559449b940eda2daaa5ea80b1ba4af75b3a4520838c47018083ef6f",
      "source-context:tools/concept-audit/check_layout.py"
  ]),
  ([
      "declaration:module_explanation",
      "public-output:module_explanation",
      "raw-source:21c8fd943dcb4623f4cb1b34b89a402f9627a9fe4582802edf5fbbd999d7adec"
  ], [
      "capsule:b624a3451eaafd2e125c8cf268c68968b23bfc6f5917765e580974d46ee45f94",
      "declaration:module_explanation",
      "element:python-point:58928ab39f3908f7fb5b1f6a553cfcffe13fd20968296db6f5349f9438cfafcc",
      "public-output:module_explanation",
      "raw-source:21c8fd943dcb4623f4cb1b34b89a402f9627a9fe4582802edf5fbbd999d7adec",
      "source-context:tools/environment/query.py"
  ]),
  ([
      "declaration:region_centrality",
      "public-output:region_centrality",
      "raw-source:11ced40c59931119a3c960b9477034714979828d46ac0721c46c915a0da2a05d"
  ], [
      "capsule:af4d37adc88a87275bf7a2757f4a0fb935837f043ef8262852eca92a3099d82a",
      "declaration:region_centrality",
      "element:python-point:58f7101aa905464dec975e5bb759cb2c36ad3bb1d2422a7e91eec5a1ac388a9c",
      "public-output:region_centrality",
      "raw-source:11ced40c59931119a3c960b9477034714979828d46ac0721c46c915a0da2a05d",
      "source-context:tools/taxonomy/anchors.py"
  ]),
  ([
      "declaration:selection_contract",
      "public-output:selection_contract",
      "raw-source:4ac2fe315f383be2e4d45a53815aebebe4c0495505b72de30bff980f4db38928"
  ], [
      "capsule:208d636c938dc774a2174af0cb75012eeabafcb0d5b095297bf20ceb0e634e65",
      "declaration:selection_contract",
      "element:python-point:597aeef63e7eda1ea4f66215c0b10e7ab6e1929477c20772fb5284aa76725ae1",
      "public-output:selection_contract",
      "raw-source:4ac2fe315f383be2e4d45a53815aebebe4c0495505b72de30bff980f4db38928",
      "source-context:tools/oracle/selection_contract.py"
  ]),
  ([
      "declaration:run_cached",
      "public-output:run_cached",
      "raw-source:d03b537e6cbe85cd117e424f9b2a9b400468000f28eabb43023cff130d6d063d",
      "source-context:tools/projection/locality.py"
  ], [
      "capsule:e5e9d3e76c3d93dcd7149afe1274c2b75c3eb9b50cec088933be13f7c49a7ca4",
      "declaration:run_cached",
      "element:python-point:59b409158f96fbc63e705504d34f36e822b809119042b74cd1de3a9bded09df9",
      "public-output:run_cached",
      "raw-source:d03b537e6cbe85cd117e424f9b2a9b400468000f28eabb43023cff130d6d063d",
      "source-context:tools/projection/locality.py"
  ]),
  ([
      "declaration:infer",
      "public-output:infer",
      "raw-source:cbc5a6feccee2be49a1cd500a467383273dda738b895b1143986bf9815a644a1",
      "source-context:tools/oracle/name_neighborhoods.py"
  ], [
      "capsule:6e71b4c65abfe8956fd8a85c0db70f8d93c06b27c95997b8103fdcb447e88222",
      "declaration:infer",
      "element:python-point:59b4efade37fa6430c82b5735ba1c2e18386d3580c0dc36fe477cacdc9212207",
      "public-output:infer",
      "raw-source:cbc5a6feccee2be49a1cd500a467383273dda738b895b1143986bf9815a644a1",
      "source-context:tools/oracle/name_neighborhoods.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:1855745689c17bbdc607150957875dccb2c1236ac1fa1195188eb9789e3c676a",
      "source-context:tools/taxonomy/propose.py"
  ], [
      "capsule:9d0dccbf743c4d9af9e82db16f97fa43b632f87f29843a46a3161404c72f9c0b",
      "declaration:main",
      "element:python-point:59d747aa6c58da7e74d5a530a7f0be2b0f9b22ca8486ebf4403522483c8fe9a3",
      "public-output:main",
      "raw-source:1855745689c17bbdc607150957875dccb2c1236ac1fa1195188eb9789e3c676a",
      "source-context:tools/taxonomy/propose.py"
  ]),
  ([
      "declaration:rotate_bitfield",
      "public-output:rotate_bitfield",
      "raw-source:a674e051efa0c357ebd79a0f732b1ad93cf2c84f622db6d287b17a6b519fa7f9"
  ], [
      "capsule:6feb6ae2ae853a957d8b2227536d0012a44567dae446b69537bf34453e4cb569",
      "declaration:rotate_bitfield",
      "element:python-point:5a7cad484e0d403b9a9f29c95fa5c4de7448c4775a339c60b6262a1cfd8aedc1",
      "public-output:rotate_bitfield",
      "raw-source:a674e051efa0c357ebd79a0f732b1ad93cf2c84f622db6d287b17a6b519fa7f9",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:_materialize_lean",
      "public-output:_materialize_lean",
      "raw-source:a597ba79e55115678269329390bc48022de448f8790a05c5edb02c2e26b27da8"
  ], [
      "capsule:793703fbdcd2e2caa100fffa744fd767f09ccaf8b96dd70fc6bb7386c5cdde1b",
      "declaration:_materialize_lean",
      "element:python-point:5aa40aa5288b0707f6031e6d59f4c79a9175090e1e0711d32d1cb2e609e8a323",
      "public-output:_materialize_lean",
      "raw-source:a597ba79e55115678269329390bc48022de448f8790a05c5edb02c2e26b27da8",
      "source-context:tools/refactor/materialize.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:826907136c13b59a4cb2365cdbcd124f153ba019422df122e42793489fe1e8ea",
      "source-context:tools/projection/certify_projection.py"
  ], [
      "capsule:3d53a3f54ddcc450d889fe1fdc9c5e730e92ee0709413b0f8d4eb87af1d194e3",
      "declaration:main",
      "element:python-point:5b15ebdb78b0a3b44e4bebafa41973a586e16acec10d8b38dafebcf994395fa9",
      "public-output:main",
      "raw-source:826907136c13b59a4cb2365cdbcd124f153ba019422df122e42793489fe1e8ea",
      "source-context:tools/projection/certify_projection.py"
  ]),
  ([
      "declaration:_shell_words",
      "public-output:_shell_words",
      "raw-source:2be301bbe5e0ccf192af29fd762413ec21825ae69407d499446ccae46c8dffad"
  ], [
      "capsule:3e5e3a1263c22615769007355d273d7474631a408399a82bc193b571764c584c",
      "declaration:_shell_words",
      "element:python-point:5b1ed5503af65de96cca3778cffab0f62401b8443dfb3223f7ed25dd1b0742e1",
      "public-output:_shell_words",
      "raw-source:2be301bbe5e0ccf192af29fd762413ec21825ae69407d499446ccae46c8dffad",
      "source-context:tools/oracle/oracle_names.py"
  ]),
  ([
      "declaration:doctor",
      "public-output:doctor",
      "raw-source:7916168b1838515ed29d02459ea4678db9b287180d2756a0396a217ea21d2517"
  ], [
      "capsule:f568385405a759684101258b78b501dcf83334e5dde31b5eb535da5f0ab4c7bd",
      "declaration:doctor",
      "element:python-point:5b265e7e2ce3188a0a0fab7a374cf1438822945cbd5a3997fae671d1d5102a54",
      "public-output:doctor",
      "raw-source:7916168b1838515ed29d02459ea4678db9b287180d2756a0396a217ea21d2517",
      "source-context:tools/oracle/mlx_bootstrap.py"
  ]),
  ([
      "declaration:_legacy_tokens",
      "public-output:_legacy_tokens",
      "raw-source:3a29513f76e07a9ab1a6f1c20759028faa10d3eafcea25dfa272987bde015d89"
  ], [
      "capsule:5af75bd049d5e612c8484eac4250886ee74b16ea3c0a023506254c3cc6cc0b90",
      "declaration:_legacy_tokens",
      "element:python-point:5b727f894047c333670ebee4c315ce4a04b6adaf91a62c6cdc8f8ff98909eb32",
      "public-output:_legacy_tokens",
      "raw-source:3a29513f76e07a9ab1a6f1c20759028faa10d3eafcea25dfa272987bde015d89",
      "source-context:tools/environment/expression_tree.py"
  ]),
  ([
      "declaration:_string",
      "public-output:_string",
      "raw-source:850e5a5edb0b765a98c210dc1e1c2e3b414e87ae567b2219139d0f60fdbf9577"
  ], [
      "capsule:4294b2dbcd60e90b019c0889acaa1a6fbf60da0eeea96cc0727a07cad003d2f9",
      "declaration:_string",
      "element:python-point:5bfb6f420e51c62406e6f719c2390f3720d218e72c84abdf6fdc4708483da591",
      "public-output:_string",
      "raw-source:850e5a5edb0b765a98c210dc1e1c2e3b414e87ae567b2219139d0f60fdbf9577",
      "source-context:tools/oracle/public_tools.py"
  ]),
  ([
      "declaration:_reviewed_coordinates",
      "public-output:_reviewed_coordinates",
      "raw-source:621d1d54c590d949b5670feaa2a03918357c5edaa6540af1484e4a6d05192ac0"
  ], [
      "capsule:65b5fa484b705521982ee47939cd11feedba1abecc07dd3e3dce18ec8bf8371b",
      "declaration:_reviewed_coordinates",
      "element:python-point:5c83c7d303e895490e61de50247b72b1d003366c64722e3eb0e2e8922d1da7b5",
      "public-output:_reviewed_coordinates",
      "raw-source:621d1d54c590d949b5670feaa2a03918357c5edaa6540af1484e4a6d05192ac0",
      "source-context:tools/refactor/point_corpus.py"
  ]),
  ([
      "declaration:_digest_text",
      "public-output:_digest_text",
      "raw-source:b99c3c54f103e4aee300fbd57e56f00a7834833992454e87628a232344b2f114",
      "source-context:tools/projection/certified_tree_paths.py"
  ], [
      "capsule:a71ffd1ef4d92416a773315169a9f8a0bda622ef7fe321b843e4d3cd5a8890e1",
      "declaration:_digest_text",
      "element:python-point:5c84e2921bdc96c3242238f245e17e794769df577fbccaed416566077e161733",
      "public-output:_digest_text",
      "raw-source:b99c3c54f103e4aee300fbd57e56f00a7834833992454e87628a232344b2f114",
      "source-context:tools/projection/certified_tree_paths.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:2f80e663de58d4882006b114220e0c2829dac1e7f13beffcf6b3f51e9a16894e",
      "source-context:tools/embedding/benchmark.py"
  ], [
      "capsule:35557e164045fc443b1bdc7edbf67ce39071f342de303abc6167972fb42e2876",
      "declaration:main",
      "element:python-point:5c9804b4e050e24b3d190c94b6de95b8c22053c5547ea4f0a4791f8ee7d64fab",
      "public-output:main",
      "raw-source:2f80e663de58d4882006b114220e0c2829dac1e7f13beffcf6b3f51e9a16894e",
      "source-context:tools/embedding/benchmark.py"
  ]),
  ([
      "declaration:build",
      "public-output:build",
      "raw-source:c71488850d683b6cbdb278b67e9ef781a2134a6765fbf8c7d58e1b375b33b13a",
      "source-context:tools/organization/multiscale.py"
  ], [
      "capsule:759a8cb7bc0a6224466ff84aaa3ac826b4e575a0cb37b99d09cf0d5bb667a634",
      "declaration:build",
      "element:python-point:5ca960fe272b1713bbc8c04a14f0270dfc8e766512045eb884268439e8a78b10",
      "public-output:build",
      "raw-source:c71488850d683b6cbdb278b67e9ef781a2134a6765fbf8c7d58e1b375b33b13a",
      "source-context:tools/organization/multiscale.py"
  ]),
  ([
      "declaration:aggregate_files",
      "public-output:aggregate_files",
      "raw-source:c5dfd004455aea7906f752a8dbda01c0c296e5b0d274c3f686a828e0bccbca18"
  ], [
      "capsule:96de32c3aaf7fb70c9494e9ecc9f23f154125ff2dd0f7419ccf24c6f8febbdf6",
      "declaration:aggregate_files",
      "element:python-point:5ed71e00d7ce2402f9ae8cbcfc48ea2147421c3ab4e52f8cc6142283b46a36e3",
      "public-output:aggregate_files",
      "raw-source:c5dfd004455aea7906f752a8dbda01c0c296e5b0d274c3f686a828e0bccbca18",
      "source-context:tools/oracle/canonical.py"
  ]),
  ([
      "declaration:stable_id",
      "public-output:stable_id",
      "raw-source:8fa1efe38f672b56b5e29a3aec26c6efb0d6a7a7deba32e0e91a16acaa56e7f0",
      "source-context:tools/organization/persistent.py"
  ], [
      "capsule:2148ce113007dd14fbcdca22118400b1777da796f085843ea7ca6238677ca3ba",
      "declaration:stable_id",
      "element:python-point:5f1c71e976e77e99ed9a04fcb2e28b8494f4db61408c015756556024346eacfe",
      "public-output:stable_id",
      "raw-source:8fa1efe38f672b56b5e29a3aec26c6efb0d6a7a7deba32e0e91a16acaa56e7f0",
      "source-context:tools/organization/persistent.py"
  ]),
  ([
      "declaration:_phase_evidence",
      "public-output:_phase_evidence",
      "raw-source:62bbfa5e5ffe686c1caba36af5614610b59fec1a5d83a88494ac08fa96f29c43",
      "source-context:tools/oracle/public_tools.py"
  ], [
      "capsule:b3880579b3974ce08e070cc13a2690a086b10439f9599ddb08a40b334c145ff9",
      "declaration:_phase_evidence",
      "element:python-point:5f37a9735ccb0c40c52ff21c64b9c7f962e81de6f9016fc450b41e2d57c9b960",
      "public-output:_phase_evidence",
      "raw-source:62bbfa5e5ffe686c1caba36af5614610b59fec1a5d83a88494ac08fa96f29c43",
      "source-context:tools/oracle/public_tools.py"
  ]),
  ([
      "declaration:dependency_index",
      "public-output:dependency_index",
      "raw-source:faf00456e94a73dcc39bf7889613f87e58282d5f8f1d4a717e3ad32bc07ecb80"
  ], [
      "capsule:469047e12e021a27cf89f518caf82c83fdb3f046db4989daf5f8592342cc58e1",
      "declaration:dependency_index",
      "element:python-point:5fe559d6fcb943ca1b91e2fbb5d5850bab16df9d3db1a22307c6a82526fed518",
      "public-output:dependency_index",
      "raw-source:faf00456e94a73dcc39bf7889613f87e58282d5f8f1d4a717e3ad32bc07ecb80",
      "source-context:tools/environment/diff.py"
  ]),
  ([
      "declaration:AdapterProfile",
      "public-output:AdapterProfile",
      "raw-source:947b74fe910e88725a288780c8e7120555644c4976a3bd36f0764fc855f055ec"
  ], [
      "capsule:47d4ea3f48e9823aabb9d70a8594b4dbca851a9deab021381572394d81ed6147",
      "declaration:AdapterProfile",
      "element:python-point:5ffc423c36f1e4cd8c474fba8e607e6eadb09d94c2a08aa236ea2df23ff369ab",
      "public-output:AdapterProfile",
      "raw-source:947b74fe910e88725a288780c8e7120555644c4976a3bd36f0764fc855f055ec",
      "source-context:tools/oracle/training_loop.py"
  ]),
  ([
      "declaration:strongly_connected_components",
      "public-output:strongly_connected_components",
      "raw-source:64b33cf95995700558e1ac95240df602e85485456a15fb735125d835b77d2d1b"
  ], [
      "capsule:449e6c03cda92eb7a773dcaec44b91f338347187483e70bdec66ea1b9e629425",
      "declaration:strongly_connected_components",
      "element:python-point:603d24702ea0839d17581d390637521879aae768950a20642d41be80bb6011d5",
      "public-output:strongly_connected_components",
      "raw-source:64b33cf95995700558e1ac95240df602e85485456a15fb735125d835b77d2d1b",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:normalized_boundary",
      "public-output:normalized_boundary",
      "raw-source:67d06c243169d3a1289084a478f3921fdf0716b9f03ae2140e180d0811cea788"
  ], [
      "capsule:e32c44ede6f1e6248ea0171c0f4dec7acb1171689852281335d950690c98b24c",
      "declaration:normalized_boundary",
      "element:python-point:611b19abc7f48c620f497b05298604fc4eeeea418bc1347c1cd8353708201797",
      "public-output:normalized_boundary",
      "raw-source:67d06c243169d3a1289084a478f3921fdf0716b9f03ae2140e180d0811cea788",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:acceptance",
      "public-output:acceptance",
      "raw-source:77b9ff819efe2d54bf6839022e9efc339b5dda0426863b6d851894b1b0149d83",
      "source-context:tools/refactor/report.py"
  ], [
      "capsule:7f5c494ac5cad75c8b41688f9b52d5cfa4dd57a94541beb14ac1b286288e3a0d",
      "declaration:acceptance",
      "element:python-point:61268a110c5c10eba67b5942b1859f2254eda60182c2a4c09aec349107570105",
      "public-output:acceptance",
      "raw-source:77b9ff819efe2d54bf6839022e9efc339b5dda0426863b6d851894b1b0149d83",
      "source-context:tools/refactor/report.py"
  ]),
  ([
      "declaration:_path_module",
      "public-output:_path_module",
      "raw-source:74acab7280ea6d7e7a1deca5d66b3e4740eda2743132648784916747dfe07e33"
  ], [
      "capsule:264e880f9a12420e8564018d8728e89683cc285264b7f97ab7c959713355670f",
      "declaration:_path_module",
      "element:python-point:6189e6a4c1b6459a2c64952033c5d7d8215e4cf00e4f29cf7de6c52887e14a19",
      "public-output:_path_module",
      "raw-source:74acab7280ea6d7e7a1deca5d66b3e4740eda2743132648784916747dfe07e33",
      "source-context:tools/refactor/obsolete_facades.py"
  ]),
  ([
      "declaration:parse_args",
      "public-output:parse_args",
      "raw-source:1fb7e746c4c2fe031155a32408a1e13678b58bf84c4170290fb89b41a2bcd569",
      "source-context:tools/refactor/cli.py"
  ], [
      "capsule:ce94bca1b8902d36509e21d4d5cd8145f74159e83af53cf06ece53d3f9488f23",
      "declaration:parse_args",
      "element:python-point:619403b2dd42c8a4d9f2601ac9ca48ee9487d3fa5e8708b4a13ed6eba38e367e",
      "public-output:parse_args",
      "raw-source:1fb7e746c4c2fe031155a32408a1e13678b58bf84c4170290fb89b41a2bcd569",
      "source-context:tools/refactor/cli.py"
  ]),
  ([
      "declaration:SurgeryRequest",
      "public-output:SurgeryRequest",
      "raw-source:5187feb06cf37ffff869cf156d0948a427b94f92e5512d9f3d53c89537d81c82"
  ], [
      "capsule:19e330d4c27c751626e44e1b8d215ae1e721b528d43e78474fc6f56bba7b5479",
      "declaration:SurgeryRequest",
      "element:python-point:61f2f2b72f15ba2348fdda05bf2c1fdcf803769f9a245530ac8b37b33c831a29",
      "public-output:SurgeryRequest",
      "raw-source:5187feb06cf37ffff869cf156d0948a427b94f92e5512d9f3d53c89537d81c82",
      "source-context:tools/oracle/surgery.py"
  ]),
  ([
      "declaration:_offset",
      "public-output:_offset",
      "raw-source:337cedb3464d67dd78305c3d953da60ca7bafdadda465b9901f5b07697ee5f53"
  ], [
      "capsule:2af1d448a2b44c2a6a69eb439537033f10e5293ec9051719abfc7ccad0433a0f",
      "declaration:_offset",
      "element:python-point:62a98d479372637a6a9e504eb14171a324cb71df3150e777701cc7f3679a40e2",
      "public-output:_offset",
      "raw-source:337cedb3464d67dd78305c3d953da60ca7bafdadda465b9901f5b07697ee5f53",
      "source-context:tools/refactor/emit_python.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:6d88ed42938a2a78064caf58facc3dd9871df5cd0235ca1c4877dfae9cf4dfb0",
      "source-context:tools/environment/diff.py"
  ], [
      "capsule:125b65570f90eb923a11cb97f4dff4b79e663216c5ec7667c55b92fea3ff1331",
      "declaration:main",
      "element:python-point:62da45ee0bf3d886bd5d6c6ca0c7d508b7e2e282cc44365c97dcbc6ceff9ea6e",
      "public-output:main",
      "raw-source:6d88ed42938a2a78064caf58facc3dd9871df5cd0235ca1c4877dfae9cf4dfb0",
      "source-context:tools/environment/diff.py"
  ]),
  ([
      "declaration:canonical_digest",
      "public-output:canonical_digest",
      "raw-source:312644e36cc4f4f9fc66503301726b764d016b67c00f13553c95816da84abce0",
      "source-context:tools/concept-audit/audit.py"
  ], [
      "capsule:b4062eebd22f497c5382ced18a334264fcdf3d582723bcbae1b4b8896311427e",
      "declaration:canonical_digest",
      "element:python-point:6301c43327579b3acb6fc80bfd6ca151d433fd6761df4c43221813ed8047e87f",
      "public-output:canonical_digest",
      "raw-source:312644e36cc4f4f9fc66503301726b764d016b67c00f13553c95816da84abce0",
      "source-context:tools/concept-audit/audit.py"
  ]),
  ([
      "declaration:refresh_manifest",
      "public-output:refresh_manifest",
      "raw-source:e5ad3ec2178371537529862cf85e6b7510b20a6d3dde089fac8a88b388355886"
  ], [
      "capsule:e1ad6c48edf54af8922174783ca890ca7198540ea5717117345b8716b7a7a256",
      "declaration:refresh_manifest",
      "element:python-point:631a98a45088756cddbcd3c7b00e7fde96fe1cb9270c17d1027c6964fb3278e8",
      "public-output:refresh_manifest",
      "raw-source:e5ad3ec2178371537529862cf85e6b7510b20a6d3dde089fac8a88b388355886",
      "source-context:tools/refactor/candidate.py"
  ]),
  ([
      "declaration:record_activation_trace",
      "public-output:record_activation_trace",
      "raw-source:66e311df6eaf939383d56ae48f54a8f6d51f66cc3e6982f2884033854140a28b"
  ], [
      "capsule:02b102357c12247fa9ad38068b5d58a0fe49e7d620cf0d0ca1c7e65be2dd2722",
      "declaration:record_activation_trace",
      "element:python-point:631ec42e849f3856f5a31d8cdd95fdbf4babfe7c04c912600a9b9f354b74268e",
      "public-output:record_activation_trace",
      "raw-source:66e311df6eaf939383d56ae48f54a8f6d51f66cc3e6982f2884033854140a28b",
      "source-context:tools/mlx/activation_trace.py"
  ]),
  ([
      "declaration:_replay_ndjson",
      "public-output:_replay_ndjson",
      "raw-source:ec647e7bab1b6c979e79a2e4f426f2dcd160cbf28a907cf33fd35381b53e9a0a"
  ], [
      "capsule:4c2e7426f82aff8eb57b9fdd5d9e9df85dd99fa33e65f5c8e26d5738cb14f137",
      "declaration:_replay_ndjson",
      "element:python-point:637af776236167c5146d22d70d2c976cf480f5cb6b6f6b24168eaa58de7b248d",
      "public-output:_replay_ndjson",
      "raw-source:ec647e7bab1b6c979e79a2e4f426f2dcd160cbf28a907cf33fd35381b53e9a0a",
      "source-context:tools/environment/replay.py"
  ]),
  ([
      "declaration:_dot",
      "public-output:_dot",
      "raw-source:1e85a77b35a936c8713863c0526f903432394ee0de270cb717b410408bbc13d3",
      "source-context:tools/mlx/contrastive_directions.py"
  ], [
      "capsule:5cf9f428bf2c22a2962a87b2293cb75ecd0b0b9c5b5d364b75f71c6ff38c1073",
      "declaration:_dot",
      "element:python-point:63f86bbd2ed026f0a7c33b9b7ee6d48bb33e12860f96cdfcb20f8b988d45e437",
      "public-output:_dot",
      "raw-source:1e85a77b35a936c8713863c0526f903432394ee0de270cb717b410408bbc13d3",
      "source-context:tools/mlx/contrastive_directions.py"
  ]),
  ([
      "declaration:bucket_count",
      "public-output:bucket_count",
      "raw-source:94a8b38834a3d2d8a729f42817101f372f1706585bbd3b723ee24e4ac6f7a23b"
  ], [
      "capsule:d9334a9e93a5ae6e270a06f805da7d4fb2b1a9d207ca2e889621c7ee58ea946b",
      "declaration:bucket_count",
      "element:python-point:6409163441a7b005e1aea956f369f378a5faf4d8bfe90e4e17a79dd1bf33f0e5",
      "public-output:bucket_count",
      "raw-source:94a8b38834a3d2d8a729f42817101f372f1706585bbd3b723ee24e4ac6f7a23b",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:canonical_json_bytes",
      "public-output:canonical_json_bytes",
      "raw-source:311b9713cd360ba7e3b744f04fa890b417de757676e7b6171ca060fc44263778",
      "source-context:tools/taxonomy/propose.py"
  ], [
      "capsule:4808f7d02bf121450984e3659bab282f433fef8df31e276834b1812a15ad3ae4",
      "declaration:canonical_json_bytes",
      "element:python-point:649f89a40bef8d39bf4992789310ad9bef64aac32145964f19a0c8dfd5d7d7a9",
      "public-output:canonical_json_bytes",
      "raw-source:311b9713cd360ba7e3b744f04fa890b417de757676e7b6171ca060fc44263778",
      "source-context:tools/taxonomy/propose.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:d31047c79987b9eb07f7865e35ebe738e6593c2e08f47aaa875f10994dc60291",
      "source-context:tools/organization/hierarchical.py"
  ], [
      "capsule:cf6680f86c60fe5668d61422ec0c54bf9f93790538bcb0ce52c653a29261770a",
      "declaration:main",
      "element:python-point:64cf6ba4ac257ae885512b90330f179e4d1c1222a846dfe0132e7d538b87a05f",
      "public-output:main",
      "raw-source:d31047c79987b9eb07f7865e35ebe738e6593c2e08f47aaa875f10994dc60291",
      "source-context:tools/organization/hierarchical.py"
  ]),
  ([
      "declaration:run",
      "public-output:run",
      "raw-source:5e904586f5adaeb5de99aef4895450593850ab296bdd358877bef3fbd55a8116",
      "source-context:tools/oracle/neighborhood_training.py"
  ], [
      "capsule:88711ee65c4fd54067fe7be3e5ad772f181862ada8e5565f0afbde4be5a1176f",
      "declaration:run",
      "element:python-point:65082078c5b122042d4ffbf2ada4a8d134d17e0c081da7cf0c8813751cde7479",
      "public-output:run",
      "raw-source:5e904586f5adaeb5de99aef4895450593850ab296bdd358877bef3fbd55a8116",
      "source-context:tools/oracle/neighborhood_training.py"
  ]),
  ([
      "declaration:build_event_artifacts",
      "public-output:build_event_artifacts",
      "raw-source:9a1f234ed58624a7a086a31172a073c16cfa9ef52c0b8b3bac2f917681d8e6cd"
  ], [
      "capsule:83b6fb82d78752bd9de370754ae5df4139b12da6f2133602763e8e924cb54b83",
      "declaration:build_event_artifacts",
      "element:python-point:6519cf8f91a97e38dd5aae642cee7ed1e9ee42659ac8d6a5b3ab09efc45ad16f",
      "public-output:build_event_artifacts",
      "raw-source:9a1f234ed58624a7a086a31172a073c16cfa9ef52c0b8b3bac2f917681d8e6cd",
      "source-context:tools/oracle/event_complex.py"
  ]),
  ([
      "declaration:validate",
      "public-output:validate",
      "raw-source:a28eabde75a664d3116d7835c9783f9b89cf9b4beaac2acceb69531da90f2ad3",
      "source-context:tools/embedding/validate.py"
  ], [
      "capsule:a0f5daf9f604f414a826b58cc161482eb64a02540dc06bf6829dfeca9b9cef6c",
      "declaration:validate",
      "element:python-point:6594ce68cfa13ea138a2011a37648573bcd3b03e3ebfa7e2b14cfdb425f48a36",
      "public-output:validate",
      "raw-source:a28eabde75a664d3116d7835c9783f9b89cf9b4beaac2acceb69531da90f2ad3",
      "source-context:tools/embedding/validate.py"
  ]),
  ([
      "declaration:_line_starts",
      "public-output:_line_starts",
      "raw-source:c6bed2e180aa1fa9967ca9e61072595e42158271f035c6c6a7255a74f1878e78"
  ], [
      "capsule:0aaf9575ec18fceb8482aea2161103230fee35dd25efda3baada6cd65c409e80",
      "declaration:_line_starts",
      "element:python-point:65a75eae82088b7a4b5762e555ebec6ab2c56c35dfc720480d965137698333fd",
      "public-output:_line_starts",
      "raw-source:c6bed2e180aa1fa9967ca9e61072595e42158271f035c6c6a7255a74f1878e78",
      "source-context:tools/refactor/emit_python.py"
  ]),
  ([
      "declaration:prefix_free_nat",
      "public-output:prefix_free_nat",
      "raw-source:b78e0fa7725ce08448743b2434bd79852f9e861b523c3f9c114fb184437ee993"
  ], [
      "capsule:049865c892e7f98d1f3af3484d2be2b82025567eee6e1188fcd495b121f1e1e1",
      "declaration:prefix_free_nat",
      "element:python-point:65aff58df27d6e39b520ade5fe6aeb126354daa4f2622f1d9fa3cf7c0a3adc28",
      "public-output:prefix_free_nat",
      "raw-source:b78e0fa7725ce08448743b2434bd79852f9e861b523c3f9c114fb184437ee993",
      "source-context:tools/projection/canonical_quotient.py"
  ]),
  ([
      "declaration:_rewrite_lean_imports",
      "public-output:_rewrite_lean_imports",
      "raw-source:55dcf581a0dc1938b914ed95935f6f9210e9388c4a3bd4348c8642d85eb3abe2"
  ], [
      "capsule:a376689b3b6bfd39872514e5987432e94ef89324577f2509c42d54b169bef266",
      "declaration:_rewrite_lean_imports",
      "element:python-point:65ef7e1e45d5012f79fd78b8f97f5e109742aaadb4e1158a993b530c736fcb2e",
      "public-output:_rewrite_lean_imports",
      "raw-source:55dcf581a0dc1938b914ed95935f6f9210e9388c4a3bd4348c8642d85eb3abe2",
      "source-context:tools/refactor/obsolete_facades.py"
  ]),
  ([
      "declaration:id_record",
      "public-output:id_record",
      "raw-source:a18eef26d58e317736af17958622f319872722474790a9bb9d84a5ab2abf815f"
  ], [
      "capsule:51f0ac4787f5305d3870ae500d2cf84137620cd7702b7d16421d9be5c6f5dacc",
      "declaration:id_record",
      "element:python-point:6682447123cf7be93f2a9749ca1a2b5fd8694e3838e3628a76b9864c7b3df168",
      "public-output:id_record",
      "raw-source:a18eef26d58e317736af17958622f319872722474790a9bb9d84a5ab2abf815f",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:select_concept",
      "public-output:select_concept",
      "raw-source:1a630ccdc080afc7d668132f836bda74a56cf2bea00b016c4eb2e26eb428bb8d"
  ], [
      "capsule:6ea413cc98305d27a4d7551b20aa7deb513932bad96f140e3d667fd62e886563",
      "declaration:select_concept",
      "element:python-point:668db596fdeb9b20d8e2eb7782f5694850841a7f3e74ada83e2e44bc02ee0a0c",
      "public-output:select_concept",
      "raw-source:1a630ccdc080afc7d668132f836bda74a56cf2bea00b016c4eb2e26eb428bb8d",
      "source-context:tools/taxonomy/review_self_ledger.py"
  ]),
  ([
      "declaration:canonical_bytes",
      "public-output:canonical_bytes",
      "raw-source:2649701f493d7c7eca0cb57548a12f3c6407898c0674661d5300cebd0b95b4c3",
      "source-context:tools/oracle/canonical.py"
  ], [
      "capsule:d1a6c1bd6e5d39d275db1e31b85817bdb0b20b431bbe37df4e4a65bf62cf2d51",
      "declaration:canonical_bytes",
      "element:python-point:66c1a08089bcbe1a02b77167fd6d9f32634b3289cfbead5b6b8389c8dc7b2d41",
      "public-output:canonical_bytes",
      "raw-source:2649701f493d7c7eca0cb57548a12f3c6407898c0674661d5300cebd0b95b4c3",
      "source-context:tools/oracle/canonical.py"
  ]),
  ([
      "declaration:_post_assurance_checks",
      "public-output:_post_assurance_checks",
      "raw-source:2582143e874c48e27312c5260125e4a627e5dbe656bb13e84ac7c1da9f77d20a"
  ], [
      "capsule:d613ef280ef4ed46334d342cf091f6d64226ba9acd677c3c5b1e46ca8be46a22",
      "declaration:_post_assurance_checks",
      "element:python-point:671fd84dcea738e76072600702abc49efdf11ceec46a8dc40c226948aa2fd979",
      "public-output:_post_assurance_checks",
      "raw-source:2582143e874c48e27312c5260125e4a627e5dbe656bb13e84ac7c1da9f77d20a",
      "source-context:tools/oracle/cli.py"
  ]),
  ([
      "declaration:value_of_id",
      "public-output:value_of_id",
      "raw-source:0cf058f3433ab286c2dcd92c62f62cad183cba3c160200e2da92f791f0b50d1a"
  ], [
      "capsule:a762dbc878ee027f03f14a8ba7f9030acfce3785468f8ef843fde3b47ec0d534",
      "declaration:value_of_id",
      "element:python-point:673316db08d82259d3ed0c2b63b2f187518c7a221e42abe481cc96a5a530588b",
      "public-output:value_of_id",
      "raw-source:0cf058f3433ab286c2dcd92c62f62cad183cba3c160200e2da92f791f0b50d1a",
      "source-context:tools/concept-audit/audit.py"
  ]),
  ([
      "declaration:parse_args",
      "public-output:parse_args",
      "raw-source:0a86502e576f08fe401a7edcc7e953d01a7292581dfc6f7bfae65b580344ea87",
      "source-context:tools/environment/query.py"
  ], [
      "capsule:24ce208069873e7461f4e177ca1a6da6b6bc574431bd9f1d121ebd8c9db836ed",
      "declaration:parse_args",
      "element:python-point:673a2d15bdca13ad9decb1b7292ade3d507f436a4918b08d59dd241b13cd0c87",
      "public-output:parse_args",
      "raw-source:0a86502e576f08fe401a7edcc7e953d01a7292581dfc6f7bfae65b580344ea87",
      "source-context:tools/environment/query.py"
  ]),
  ([
      "declaration:OracleState",
      "public-output:OracleState",
      "raw-source:bfe7aa9d6ac896fef0c7a1bf109bb2a3eb160839cc9d7db558a9ed926ffe7cdf"
  ], [
      "capsule:93b47b7ef8a4ee867400ccad3cbd1668bc0dfac320fa167154857ba2c988ccae",
      "declaration:OracleState",
      "element:python-point:678f6de643ec4c557ad1b3c086ada213c8025372152ae38d156b81185a941a63",
      "public-output:OracleState",
      "raw-source:bfe7aa9d6ac896fef0c7a1bf109bb2a3eb160839cc9d7db558a9ed926ffe7cdf",
      "source-context:tools/oracle/progression.py"
  ]),
  ([
      "declaration:enrich_lean_elements",
      "public-output:enrich_lean_elements",
      "raw-source:bd9ece6d709818941380c0888e041c1586ba3c682def6fdee077df8d5eaa78d4"
  ], [
      "capsule:ddc91c3f5d31d50f7afbdba8a97a4b89fb16caa100373b2e4779b9c616e730ce",
      "declaration:enrich_lean_elements",
      "element:python-point:67f83a3bd623bd960e6981ee8b9099cbf3343ba8f968312d4d460f461df5e49a",
      "public-output:enrich_lean_elements",
      "raw-source:bd9ece6d709818941380c0888e041c1586ba3c682def6fdee077df8d5eaa78d4",
      "source-context:tools/refactor/point_corpus.py"
  ]),
  ([
      "declaration:constant_match",
      "public-output:constant_match",
      "raw-source:f9c0e4ac6c5f3930e6e79ec6ea9d7b9774b3041e8eb950696d64a6abe90fe8d2"
  ], [
      "capsule:003a1a02f2b2be740e7bd84568e10d72362e78fa1102090770183e41ddcd4bf6",
      "declaration:constant_match",
      "element:python-point:6837af1cdcd8d5c84733e5c5bf32f949d13bdeaedbe8b93c2f4659db60f0bcd3",
      "public-output:constant_match",
      "raw-source:f9c0e4ac6c5f3930e6e79ec6ea9d7b9774b3041e8eb950696d64a6abe90fe8d2",
      "source-context:tools/proof-strategy/classify.py"
  ]),
  ([
      "declaration:entry_body",
      "public-output:entry_body",
      "raw-source:abe6c4756d5dd9e68448a887e4320ecf3dbf9e371dbe05d4bff344e350e1f07e",
      "source-context:tools/projection/locality.py"
  ], [
      "capsule:bfb3df627aedc7968b57d5918fa6f556938eab527b453e1bf231731434299de4",
      "declaration:entry_body",
      "element:python-point:689ee3e69b30ba97eff955652bd08f1ef6b7d64acb3983157d8b2f5b8ccfde11",
      "public-output:entry_body",
      "raw-source:abe6c4756d5dd9e68448a887e4320ecf3dbf9e371dbe05d4bff344e350e1f07e",
      "source-context:tools/projection/locality.py"
  ]),
  ([
      "declaration:compute_direction",
      "public-output:compute_direction",
      "raw-source:9ea5b9cb58cd797660bb15b3252945ff5aeba0304b343def2492f7ac0e406a3b"
  ], [
      "capsule:c51ebd2722e3a6d5a390bbc34e87761caea5b93e6a1b1742bbc5292e4dc44039",
      "declaration:compute_direction",
      "element:python-point:695feedad69dda111b869f524eab3b3af65ec665e57fb98a3254c171335a3320",
      "public-output:compute_direction",
      "raw-source:9ea5b9cb58cd797660bb15b3252945ff5aeba0304b343def2492f7ac0e406a3b",
      "source-context:tools/oracle/naming_direction.py"
  ]),
  ([
      "declaration:_remove_empty_ancestors",
      "public-output:_remove_empty_ancestors",
      "raw-source:cc8994241eda9b3f4eb5e5455d4f6f569bb67673f0a02a249ba641d1c9d32fe0"
  ], [
      "capsule:c9cf92d1fe0c78c900ce88b16ca992156f0ec0d3f36b94ddefeeb348626aba5b",
      "declaration:_remove_empty_ancestors",
      "element:python-point:697166390d5205b96efcf37561907e73af63a01734b86bedf3f229f99b8ea760",
      "public-output:_remove_empty_ancestors",
      "raw-source:cc8994241eda9b3f4eb5e5455d4f6f569bb67673f0a02a249ba641d1c9d32fe0",
      "source-context:tools/refactor/obsolete_facades.py"
  ]),
  ([
      "declaration:collect_candidates",
      "public-output:collect_candidates",
      "raw-source:b9bf49d6a8ade04abdf57fbc367cb2d2535e0f686111f7971f37a372c2542897"
  ], [
      "capsule:9d158625e9892e7e93b71239c37ce0d8fbe75ba737db20a58e9d33199fc8a7dd",
      "declaration:collect_candidates",
      "element:python-point:69d7dd3919ae3eee1fd72f4e516676d178023b3a76592b12676f89c25a1ead62",
      "public-output:collect_candidates",
      "raw-source:b9bf49d6a8ade04abdf57fbc367cb2d2535e0f686111f7971f37a372c2542897",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:train_continuation_grid",
      "public-output:train_continuation_grid",
      "raw-source:e6ef5a1dd59f7948c40b073101b56eeab21ba4e39c706858dd71dda6c5ed3d63"
  ], [
      "capsule:fe04c81cba445eadfce832d1df70d1debfd658d83da0ee43821197c319b0503a",
      "declaration:train_continuation_grid",
      "element:python-point:6a0af611acfd301b5385de82562c3c6e0dc8620d8d06b9890c485ff439c962da",
      "public-output:train_continuation_grid",
      "raw-source:e6ef5a1dd59f7948c40b073101b56eeab21ba4e39c706858dd71dda6c5ed3d63",
      "source-context:tools/oracle/neighborhood_training.py"
  ]),
  ([
      "declaration:validate_candidate",
      "public-output:validate_candidate",
      "raw-source:bd74894a6cdd85bf87b996c027df13f1f36913e0d99fb9e6fc2b213401cd0c9d"
  ], [
      "capsule:2ad3a8dc1cb28358d51f997963e9cc088a6714d4e184a2a8a3e5dd09eb125d41",
      "declaration:validate_candidate",
      "element:python-point:6a12ffa5ad08cde0771aa89f9dc11aa298d81934d5ff650495d5a21a8d86f778",
      "public-output:validate_candidate",
      "raw-source:bd74894a6cdd85bf87b996c027df13f1f36913e0d99fb9e6fc2b213401cd0c9d",
      "source-context:tools/refactor/candidate.py"
  ]),
  ([
      "declaration:domain_path",
      "public-output:domain_path",
      "raw-source:a5e1dd4750bec089aca54a4a6d19c0154dbb95b23e5629e7660513a77e4be595",
      "source-context:tools/tests/test_projection.py"
  ], [
      "capsule:c07523bb9974843355aafff1f4742821404fdcb45256fab42881a8f9eb2b544f",
      "declaration:domain_path",
      "element:python-point:6a196671a191b3f54f5da9646090f03f4f417781c0221d27b99655de32135d11",
      "public-output:domain_path",
      "raw-source:a5e1dd4750bec089aca54a4a6d19c0154dbb95b23e5629e7660513a77e4be595",
      "source-context:tools/tests/test_projection.py"
  ]),
  ([
      "declaration:incident",
      "public-output:incident",
      "raw-source:8174e1690d4c5a2e241c3980df9d69a6d75eb1889d1a5c81577e3101c868afd7"
  ], [
      "capsule:b64bfc7c3496bfcf19566817c3e4bd37fcd1065786996b4535714ff7641a0ea0",
      "declaration:incident",
      "element:python-point:6a23d652055dfbc9a6cddaa690a943832d012600fdf53d14afba1fddcbb15b20",
      "public-output:incident",
      "raw-source:8174e1690d4c5a2e241c3980df9d69a6d75eb1889d1a5c81577e3101c868afd7",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:children",
      "public-output:children",
      "raw-source:d8614eb822e662048641d6cbc2f2148cdbfcaf21d815220d7b103b9b360d75f1"
  ], [
      "capsule:faf8604eed8a55a2f91618d4cbc9f11218055c0615ac3fb07b68f5039703b57c",
      "declaration:children",
      "element:python-point:6ab3a444370113fabf1b235b841ce027c491fda7f97ae732890f86a66a6ca1f9",
      "public-output:children",
      "raw-source:d8614eb822e662048641d6cbc2f2148cdbfcaf21d815220d7b103b9b360d75f1",
      "source-context:tools/proof-strategy/classify.py"
  ]),
  ([
      "declaration:FeatureCacheError",
      "public-output:FeatureCacheError",
      "raw-source:f6e3931a6a0a3b19282e5f5870e7fc8e59f6baedea4ab702909845a780e1aa99"
  ], [
      "capsule:3152646e996fee49bfc57086a003ff9849212cdc23c2175e031d8971820bfb26",
      "declaration:FeatureCacheError",
      "element:python-point:6b18bbf825601915790b860de761f6c19ce2a1d7b8047d27a7dd06f6a4cf88de",
      "public-output:FeatureCacheError",
      "raw-source:f6e3931a6a0a3b19282e5f5870e7fc8e59f6baedea4ab702909845a780e1aa99",
      "source-context:tools/kernel/build_features.py"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L68937).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
