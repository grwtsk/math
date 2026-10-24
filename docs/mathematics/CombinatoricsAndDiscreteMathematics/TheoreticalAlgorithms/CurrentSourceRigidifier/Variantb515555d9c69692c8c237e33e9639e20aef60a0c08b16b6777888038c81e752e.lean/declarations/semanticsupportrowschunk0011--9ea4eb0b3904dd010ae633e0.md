# semanticSupportRowsChunk0011

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ffdfbec338a33a7317ace694dab8f5e1d141f8e37b71c70dceaca346d14cb25",
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
  "slug": "semanticsupportrowschunk0011--9ea4eb0b3904dd010ae633e0",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61203,
    "line": 60412,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ea4eb0b3904dd010ae633e077343e759afb46a8763bc914627ff4af2d169a94",
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

Occurrence: `declaration:7ffdfbec338a33a7317ace694dab8f5e1d141f8e37b71c70dceaca346d14cb25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60412–61203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def semanticSupportRowsChunk0011 : List (List String × List String) :=
[
  ([
      "declaration:_lean_support_rows",
      "public-output:_lean_support_rows",
      "raw-source:06bf97bc42e7ceee32bc4f31c3ca87831655c25d82bfbb26f0330a6eb367d72f"
  ], [
      "capsule:544b1ad53db5af108aaa912669b267ea0ac28fa2f5c548c16f366e231cbcbd9a",
      "declaration:_lean_support_rows",
      "element:python-point:c4d8cab0f8a8e6947d3769d212ddb7ba5be94599a4d8067512d1aa2615344b23",
      "public-output:_lean_support_rows",
      "raw-source:06bf97bc42e7ceee32bc4f31c3ca87831655c25d82bfbb26f0330a6eb367d72f",
      "source-context:tools/projection/external_rigidifier.py"
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
      "declaration:_lean_string",
      "public-output:_lean_string",
      "raw-source:68e2349674596dbfca5ea6a27c3ac93898fbb191ae109dac34daa4f15368cef6"
  ], [
      "capsule:53ceda2eedd2ba1d265b8bb965cabf9113d1b7acd47f02eca477e3cda4f9a58d",
      "declaration:_lean_string",
      "element:python-point:c90b9b262b351a990fe609a2c6b134e8f5a28962ecc2d66a450deefda7eeabd9",
      "public-output:_lean_string",
      "raw-source:68e2349674596dbfca5ea6a27c3ac93898fbb191ae109dac34daa4f15368cef6",
      "source-context:tools/projection/external_rigidifier.py"
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
      "declaration:CertifiedNeighborhoodLabel",
      "public-output:CertifiedNeighborhoodLabel",
      "raw-source:327c09900c5ce6cbabec4b83fff945ed000e9eb5223d0377d72fa4070a7dabec"
  ], [
      "capsule:16e69f1cf4431e2f4fc6b25d31c82d4044cd20f5aa2d60761c5484ea1251228d",
      "declaration:CertifiedNeighborhoodLabel",
      "element:python-point:cc5c34d0a7ad9a48d5cb7e22270cbdd53965d60ee4af1f97487cae6cb7b4bf9c",
      "public-output:CertifiedNeighborhoodLabel",
      "raw-source:327c09900c5ce6cbabec4b83fff945ed000e9eb5223d0377d72fa4070a7dabec",
      "source-context:tools/projection/certified_tree_paths.py"
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
  ]),
  ([
      "declaration:validate",
      "public-output:validate",
      "raw-source:7551c9e1b3fef69e24498407113993af6b2aa96cdb0fd0457b9a6d8ea0488294",
      "source-context:tools/taxonomy/validate_registry.py"
  ], [
      "capsule:ab467211dbdc0276dc2e7df0520dbf626541c0c5cc175b83a0f8122b673d0457",
      "declaration:validate",
      "element:python-point:cd57b4e5f10db2f787270f3d3243ad87f42262244821f3c99f3474f954e3b4b8",
      "public-output:validate",
      "raw-source:7551c9e1b3fef69e24498407113993af6b2aa96cdb0fd0457b9a6d8ea0488294",
      "source-context:tools/taxonomy/validate_registry.py"
  ]),
  ([
      "declaration:sorted_ids",
      "public-output:sorted_ids",
      "raw-source:d46c30f45e8cfe3398bd9b20af939355a99a760567e775ea1c09897490cf6fc6"
  ], [
      "capsule:491549d26b304edb2b4376101bb495ab6ad14bb5505ef25f159131230c4a74d6",
      "declaration:sorted_ids",
      "element:python-point:cde8696f4c855a4f98b5182f52ca508468ccf2c224eaf15590dc59d31800bbd1",
      "public-output:sorted_ids",
      "raw-source:d46c30f45e8cfe3398bd9b20af939355a99a760567e775ea1c09897490cf6fc6",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:write_outputs",
      "public-output:write_outputs",
      "raw-source:eba5a58a96601a71833e131497a28a8ed18556e99960db02b1720c229345cd5d"
  ], [
      "capsule:e04197c11a9f28d43fdc9e31c79019e7997bb205c66134e0c5a3b47e9d808ef6",
      "declaration:write_outputs",
      "element:python-point:ce54d417875f9658ad8189d8cf34b3ee114dbc8a9743e3ec62ccd94c5e19b51b",
      "public-output:write_outputs",
      "raw-source:eba5a58a96601a71833e131497a28a8ed18556e99960db02b1720c229345cd5d",
      "source-context:tools/refactor/source_trace.py"
  ]),
  ([
      "declaration:_id_text",
      "public-output:_id_text",
      "raw-source:869a9b7593e8d3019053551ad764a5aff3e4cdb17bc66d82d3a63d554064e41f",
      "source-context:tools/projection/intrinsic_structure.py"
  ], [
      "capsule:301874248756eb9a9c792fef5d0cdccfefca403c037e06d0fe681bf883f97be3",
      "declaration:_id_text",
      "element:python-point:ce9088e5e03e08cee632c83a3b22acfcb68833eabef8ac1e061e6fb971e59151",
      "public-output:_id_text",
      "raw-source:869a9b7593e8d3019053551ad764a5aff3e4cdb17bc66d82d3a63d554064e41f",
      "source-context:tools/projection/intrinsic_structure.py"
  ]),
  ([
      "declaration:cache_entry_body",
      "public-output:cache_entry_body",
      "raw-source:b203d57a9148d5f60a8f3e925c4d6c149abbc3642a03690100128aa0734a6209",
      "source-context:tools/kernel/build_features.py"
  ], [
      "capsule:0d7a1f7e8a358bc5e64417f82feff96e7d85d0e17bc1bc95597af4c9cd4a517c",
      "declaration:cache_entry_body",
      "element:python-point:cee1839095183214dd7700912d0327fd6238c0c02ea23eeb3349bffe6fc3f7c2",
      "public-output:cache_entry_body",
      "raw-source:b203d57a9148d5f60a8f3e925c4d6c149abbc3642a03690100128aa0734a6209",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:GramCacheError",
      "public-output:GramCacheError",
      "raw-source:6cb1bf49f577f164fc2449196ae47cfacbb92bae48c058dbce54eac34d93e523"
  ], [
      "capsule:c0fdbf4a7c5b63640cfaffb0e7e28b9a7d6f2eacad0163ecb8830ea5cf17b758",
      "declaration:GramCacheError",
      "element:python-point:cf41bf5c717e648b72e09bf48b07984242a577e9631118d6bf9de3ddd22dac3c",
      "public-output:GramCacheError",
      "raw-source:6cb1bf49f577f164fc2449196ae47cfacbb92bae48c058dbce54eac34d93e523",
      "source-context:tools/kernel/gram_cache.py"
  ]),
  ([
      "declaration:_is_generated_declaration",
      "public-output:_is_generated_declaration",
      "raw-source:3011925e892a51d3af7276842f93481389ec0a8524c70759a643583d1eb694fb"
  ], [
      "capsule:4c811edf32d273521aa40d0462927de7f38f821db779dd1c0f4479a99ac6282a",
      "declaration:_is_generated_declaration",
      "element:python-point:cf88f735dcc8253be0dfef2a383fc87a60652416569d77084cc9d603b36a4bb7",
      "public-output:_is_generated_declaration",
      "raw-source:3011925e892a51d3af7276842f93481389ec0a8524c70759a643583d1eb694fb",
      "source-context:tools/oracle/oracle_names.py"
  ]),
  ([
      "declaration:_fragment_text",
      "public-output:_fragment_text",
      "raw-source:68e659c04351399771b132d474fd38b091366da5b44548db9db39555ec03843a"
  ], [
      "capsule:4f9c5a5c969ccc94ef2fa1b0d69d1c12c939fb0d13ce265ceb81f820739a1270",
      "declaration:_fragment_text",
      "element:python-point:d033bc403f36bafc1b8a9f6f0de9fca2c50435b4dd298b658b5e868b6c472dc0",
      "public-output:_fragment_text",
      "raw-source:68e659c04351399771b132d474fd38b091366da5b44548db9db39555ec03843a",
      "source-context:tools/oracle/evidence.py"
  ]),
  ([
      "declaration:digest",
      "public-output:digest",
      "raw-source:e56ec135d1ca65cbfd5cd10109130f553d8b7f8b3c5257ec30cb6f004b6721ab",
      "source-context:tools/environment/canonical.py"
  ], [
      "capsule:a6c03d84a41b31397cac71153662b058babae9878e986e975db265ac38891238",
      "declaration:digest",
      "element:python-point:d059af1c4be06684dfe138e720e1e051449f671193cd4a4d15fe39d8b687bd94",
      "public-output:digest",
      "raw-source:e56ec135d1ca65cbfd5cd10109130f553d8b7f8b3c5257ec30cb6f004b6721ab",
      "source-context:tools/environment/canonical.py"
  ]),
  ([
      "declaration:UnionFind",
      "public-output:UnionFind",
      "raw-source:3c2edec3e0380b9723f0b21041edfad312cae53cbca9272ec3b3b258c8c30039",
      "source-context:tools/refactor/coalesce.py"
  ], [
      "capsule:fa4f6c3186528b9320cca96548d82b28e944f8d78326bad8172aa168e4a9a5ba",
      "declaration:UnionFind",
      "element:python-point:d0d46f7a8cb8ee6e899ce88e7d838ebd3ffc0e2f68e33b55d6f3c5f890cc0e6d",
      "public-output:UnionFind",
      "raw-source:3c2edec3e0380b9723f0b21041edfad312cae53cbca9272ec3b3b258c8c30039",
      "source-context:tools/refactor/coalesce.py"
  ]),
  ([
      "declaration:parse_args",
      "public-output:parse_args",
      "raw-source:fe2157411a59141d6c0c55b820164c0a5c9350d09dc1441ede5368a4f2d2a900",
      "source-context:tools/concept-audit/audit.py"
  ], [
      "capsule:95968e275b3d3be8d64a83b113db6fd0897d9e03c3c00ab30ed7b21ee2d33a55",
      "declaration:parse_args",
      "element:python-point:d144a94cb37dd9c95851e02b0576704d1f6eb09e0c84227f6b497c02a2429457",
      "public-output:parse_args",
      "raw-source:fe2157411a59141d6c0c55b820164c0a5c9350d09dc1441ede5368a4f2d2a900",
      "source-context:tools/concept-audit/audit.py"
  ]),
  ([
      "declaration:_logical_source_context",
      "public-output:_logical_source_context",
      "raw-source:c06033c600c655f725ee2a51e859b2fd865cb148f5c6aac1e7a24f8a2fe1855d"
  ], [
      "capsule:5dc892eb55b9829886615fa07d05a5780fef8c03dc74d30da13022f7159a96d3",
      "declaration:_logical_source_context",
      "element:python-point:d1b2b38c573f4574404b4267b402d60e763a30c7ff84208af0c6f1dd7842107c",
      "public-output:_logical_source_context",
      "raw-source:c06033c600c655f725ee2a51e859b2fd865cb148f5c6aac1e7a24f8a2fe1855d",
      "source-context:tools/oracle/evidence_points/logical_source_context.py"
  ]),
  ([
      "declaration:nfc",
      "public-output:nfc",
      "raw-source:a85f3cae96f2826bf085700f488c9e719b301b70a2d2bbdea86500dd8c0dc85a",
      "source-context:tools/projection/project.py"
  ], [
      "capsule:c26ced294cc4020fcbf522f58a3684235954b93e0394c06668010d45938c2538",
      "declaration:nfc",
      "element:python-point:d20a535fde8b28071cc5c441d6d210e0d7264e4974dd456b32aae8a2b45d2ff3",
      "public-output:nfc",
      "raw-source:a85f3cae96f2826bf085700f488c9e719b301b70a2d2bbdea86500dd8c0dc85a",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:_make_ir",
      "public-output:_make_ir",
      "raw-source:a4132cfea545bdce5c42b6beb38fa620af3aa5f0cfae3a28b9c6f8f5897531f9"
  ], [
      "capsule:07e6adc76993a16259bbdbed80aab729a48a6d1617ee4495d26e3c2d35902af0",
      "declaration:_make_ir",
      "element:python-point:d231460e31ec2e1d39575092ee23babb15fda04b913bce293133b3335382e833",
      "public-output:_make_ir",
      "raw-source:a4132cfea545bdce5c42b6beb38fa620af3aa5f0cfae3a28b9c6f8f5897531f9",
      "source-context:tools/oracle/oracle_names.py"
  ]),
  ([
      "declaration:compute",
      "public-output:compute",
      "raw-source:c97c6825659ed71ba74ee60980a292de08852d1f92dd611b678f0c59f082ddd6",
      "source-context:tools/kernel/compute_gram.py"
  ], [
      "capsule:0dcba747b877d7e53c9121136cd6014999656347587264062e1799f8cb64bed8",
      "declaration:compute",
      "element:python-point:d255271888f4bc882b0d1832761c77ff449a4186f8320027023e153d84e6a44c",
      "public-output:compute",
      "raw-source:c97c6825659ed71ba74ee60980a292de08852d1f92dd611b678f0c59f082ddd6",
      "source-context:tools/kernel/compute_gram.py"
  ]),
  ([
      "declaration:build_direction",
      "public-output:build_direction",
      "raw-source:cca489d082a87367324432386e6d72d873efde51cd15411bad7b3a00c1cf4d70"
  ], [
      "capsule:2a40bfe391cf2a230a73867c2da4066d469d77ed53f54f546d825e584f4e28ee",
      "declaration:build_direction",
      "element:python-point:d2b11f04d27b36e9c744c098c7bc5a59bf3c9d3463d73a0e415f7a1c39fbb604",
      "public-output:build_direction",
      "raw-source:cca489d082a87367324432386e6d72d873efde51cd15411bad7b3a00c1cf4d70",
      "source-context:tools/mlx/contrastive_directions.py"
  ]),
  ([
      "declaration:UnionFind",
      "public-output:UnionFind",
      "raw-source:9278843d0a6cf07a13ba892e9120e3807a05b7201dd5db4e1b78f7bbfa8f0c5e",
      "source-context:tools/projection/project.py"
  ], [
      "capsule:f8fe9a880585ea2afd90fdfb567a16aa72ba90d997a178e4a944eee7f466843d",
      "declaration:UnionFind",
      "element:python-point:d342e815c37801e8be34b9016fd55536f0e84a5d550e831f0c810c94acd4e452",
      "public-output:UnionFind",
      "raw-source:9278843d0a6cf07a13ba892e9120e3807a05b7201dd5db4e1b78f7bbfa8f0c5e",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:unique_records",
      "public-output:unique_records",
      "raw-source:e7deab5669ef53cad7c894283f904d12eb44774a0f9af94bc626739231200b0b"
  ], [
      "capsule:971f0cc08ec99eb142b9e441728d949c34fdf92f2e377d4580a2aaa07c6e5713",
      "declaration:unique_records",
      "element:python-point:d35306a360570334dd4466bb412ca487f991922a22b9d0c08a461691ca69247e",
      "public-output:unique_records",
      "raw-source:e7deab5669ef53cad7c894283f904d12eb44774a0f9af94bc626739231200b0b",
      "source-context:tools/environment/canonical_cache.py"
  ]),
  ([
      "declaration:_python_targets",
      "public-output:_python_targets",
      "raw-source:bf24c5f9f8ee6a306d0cf9aa71b959ac83e13db2ffac834914c6fc7f1f2cf8bc"
  ], [
      "capsule:b964c84e3ad8f14eea90dbf35896f1bc53b736ef7f77875cfe6ecbedf30f85c1",
      "declaration:_python_targets",
      "element:python-point:d35ff0ed3831c2135d2efb73396dc1e4f8d541cd9525793db4ae8e3a6c6354be",
      "public-output:_python_targets",
      "raw-source:bf24c5f9f8ee6a306d0cf9aa71b959ac83e13db2ffac834914c6fc7f1f2cf8bc",
      "source-context:tools/refactor/obsolete_facades.py"
  ]),
  ([
      "declaration:merge_bundles",
      "public-output:merge_bundles",
      "raw-source:6b8fc5653de9f4de95cfd5ddbab887fcbf4a05205c1a175014a2440f2e02170e"
  ], [
      "capsule:bb64941cf1d8871e12436b31ec75d4d1b8eb0002f7a80939da4d2d90973f2735",
      "declaration:merge_bundles",
      "element:python-point:d369c9f2f8bdd8198ed71df4a99afeb39c58aa26d967e5e823ff231b13cdfb3a",
      "public-output:merge_bundles",
      "raw-source:6b8fc5653de9f4de95cfd5ddbab887fcbf4a05205c1a175014a2440f2e02170e",
      "source-context:tools/environment/canonical_cache.py"
  ]),
  ([
      "declaration:load_module",
      "public-output:load_module",
      "raw-source:179ba9cb7cbf2cef4fe7c2cd59ea6f067224ef0b30f7781907ed95d6670584bd",
      "source-context:tools/tests/test_review_completion.py"
  ], [
      "capsule:893996d819207627c5e64abb0a22aac0e96c5e3213f6ccd73ed2b652af4f89a7",
      "declaration:load_module",
      "element:python-point:d36ee746feb2ab631768d3503ebb8c1a370d15797faa7f46e3086bc1f535284c",
      "public-output:load_module",
      "raw-source:179ba9cb7cbf2cef4fe7c2cd59ea6f067224ef0b30f7781907ed95d6670584bd",
      "source-context:tools/tests/test_review_completion.py"
  ]),
  ([
      "declaration:digest",
      "public-output:digest",
      "raw-source:9ff618e9a48231b08d920ed841ac79e76d810d73d1790ef66e23a927f33e224c",
      "source-context:tools/embedding/common.py"
  ], [
      "capsule:78ea919e50f0ad2dd57bebb0d514ff4538d6b9711107cd3b975107ca0e80e0ef",
      "declaration:digest",
      "element:python-point:d3832f3bb8859550fb4d39a043bcac9ac462aabd4601f0db5e7430307be925cc",
      "public-output:digest",
      "raw-source:9ff618e9a48231b08d920ed841ac79e76d810d73d1790ef66e23a927f33e224c",
      "source-context:tools/embedding/common.py"
  ]),
  ([
      "declaration:validate_entry",
      "public-output:validate_entry",
      "raw-source:4cae4a1bdff8c0320d01079da4f7dd64f90cb5277936d1e7a931ceb958b630e2"
  ], [
      "capsule:82fe65dcd04fae50d3a8ffbc8ec8e6f238b6319af36cc85cf0cdba98781c67b7",
      "declaration:validate_entry",
      "element:python-point:d52ce75eec68409ac06401c9c881348c5fffbacbc3d80db32aeb633b35d6c8ee",
      "public-output:validate_entry",
      "raw-source:4cae4a1bdff8c0320d01079da4f7dd64f90cb5277936d1e7a931ceb958b630e2",
      "source-context:tools/environment/local_extract.py"
  ]),
  ([
      "declaration:check_module_caches",
      "public-output:check_module_caches",
      "raw-source:ef780b05085aa08fcf30a24d89ba205d258262879dac38ce05e67ff41d277329"
  ], [
      "capsule:3e55c4dff6c7b2b276b6f1ead6b21c20977d0bf97475b38c735b8d3333ff3f40",
      "declaration:check_module_caches",
      "element:python-point:d574aec759883aeb191174aca4cf132d900a780006e749b237aa594d5f03fd04",
      "public-output:check_module_caches",
      "raw-source:ef780b05085aa08fcf30a24d89ba205d258262879dac38ce05e67ff41d277329",
      "source-context:tools/locality/check.py"
  ]),
  ([
      "declaration:build_all",
      "public-output:build_all",
      "raw-source:02ad013edf9e36a7a3632801ed5c172435957d8a98f3b4974db68dada9309d4d"
  ], [
      "capsule:9873350b0c7932257beac081e97a214630bda7ccab97fde2ecf416a6d874fcd4",
      "declaration:build_all",
      "element:python-point:d5c0312b886493503bc16ab0868f8130b54343f40494d4f5e2f16e7edefb9797",
      "public-output:build_all",
      "raw-source:02ad013edf9e36a7a3632801ed5c172435957d8a98f3b4974db68dada9309d4d",
      "source-context:tools/taxonomy/build_anchor_packs.py"
  ]),
  ([
      "declaration:sort_records",
      "public-output:sort_records",
      "raw-source:1546cf2de2eb993a36ada47e59f4916934f6750c397897d275e2c1d7542d3713"
  ], [
      "capsule:6421516dd511ce77730ce590faea75b72bfbf3f2233aca5fd8d761bda58e3de6",
      "declaration:sort_records",
      "element:python-point:d5ca4df580bbb9471ada4d20a119a50d3eb18bbdd6a37ef471bf1229e68a4ab1",
      "public-output:sort_records",
      "raw-source:1546cf2de2eb993a36ada47e59f4916934f6750c397897d275e2c1d7542d3713",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:_verify_in_isolated_process",
      "public-output:_verify_in_isolated_process",
      "raw-source:e8438f6685de81b9728bdf5d788f5d52c1581ab564f88943ac6d799f61a6dfaa"
  ], [
      "capsule:2187e5a977b17aa7d0b5c49bec7efcf83ff396526eb8e026c7b6c1cd665a1ede",
      "declaration:_verify_in_isolated_process",
      "element:python-point:d5cdbe8126da51078b80dd3cdf03f31f5f906496a27b65607cbc7e2ad19555d4",
      "public-output:_verify_in_isolated_process",
      "raw-source:e8438f6685de81b9728bdf5d788f5d52c1581ab564f88943ac6d799f61a6dfaa",
      "source-context:tools/environment/replay.py"
  ]),
  ([
      "declaration:_generate",
      "public-output:_generate",
      "raw-source:63707c67e7be513342d9ff1933f1dda1aa678f6686d514a5fdc4d8fc7fd4d0f1"
  ], [
      "capsule:2fae8c455742477c06427aa705a25ece2d9c4e67ede88e24e27ba4527fb2d3eb",
      "declaration:_generate",
      "element:python-point:d5d6fffeab1a2beb7dba99b1c3af78451acae7812044f1a634a832e859354323",
      "public-output:_generate",
      "raw-source:63707c67e7be513342d9ff1933f1dda1aa678f6686d514a5fdc4d8fc7fd4d0f1",
      "source-context:tools/oracle/mlx_backend.py"
  ]),
  ([
      "declaration:ContrastiveDirection",
      "public-output:ContrastiveDirection",
      "raw-source:4e7a37158fa0d4d1d6382d7bc1ae10c59b6267d65d70be53d22b46e1b0ccd04a"
  ], [
      "capsule:00ef845579b22fc850f35e2aec5a70dc743ff274f7ca67b401f74d15dc0ded46",
      "declaration:ContrastiveDirection",
      "element:python-point:d62784b6282f693d55a72ddafe98b3b45e400e130c28c307896e04962c1f94f2",
      "public-output:ContrastiveDirection",
      "raw-source:4e7a37158fa0d4d1d6382d7bc1ae10c59b6267d65d70be53d22b46e1b0ccd04a",
      "source-context:tools/mlx/contrastive_directions.py"
  ]),
  ([
      "declaration:write_json",
      "public-output:write_json",
      "raw-source:44147df218da00befb415b38d7377a53105d84207b8f0ad070a9bd11f8265577",
      "source-context:tools/oracle/canonical.py"
  ], [
      "capsule:ad017282451005764e20e108860a601fae53990ec4eeff3ca6d61490c2725482",
      "declaration:write_json",
      "element:python-point:d6447850ec9c53fb5295bc78a6be92bb3814734bd5737aec4f690396b6b7fb3f",
      "public-output:write_json",
      "raw-source:44147df218da00befb415b38d7377a53105d84207b8f0ad070a9bd11f8265577",
      "source-context:tools/oracle/canonical.py"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L60412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
