# semanticSupportRowsChunk0008

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe43c995c89047de67f20a91cd3d9265852a0a5f84de2e7929b8ee0052daf37a",
  "kind": "def",
  "lexical_name": "semanticSupportRowsChunk0008",
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
  "slug": "semanticsupportrowschunk0008--d10cfc9840001795b795bed7",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72105,
    "line": 71319,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d10cfc9840001795b795bed715c8769ddd64513b99dd268cef3b65868afc34fa",
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

Occurrence: `declaration:fe43c995c89047de67f20a91cd3d9265852a0a5f84de2e7929b8ee0052daf37a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71319–72105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def semanticSupportRowsChunk0008 : List (List String × List String) :=
[
  ([
      "declaration:_files",
      "public-output:_files",
      "raw-source:7997fdc24b1e5851b4052be88c164eae95bf3b746312a491a83755f59835b37d"
  ], [
      "capsule:f298a49bd9e3beea3150d0ebb2191d17fd2fb205e563a4d50029998181d8c7b2",
      "declaration:_files",
      "element:python-point:9312fc202ed906a670ccb45f0c3260e7aeaf14779fe81b2b7852b42b42c6c25c",
      "public-output:_files",
      "raw-source:7997fdc24b1e5851b4052be88c164eae95bf3b746312a491a83755f59835b37d",
      "source-context:tools/refactor/apply.py"
  ]),
  ([
      "declaration:normalize_authority",
      "public-output:normalize_authority",
      "raw-source:49778598d1ed734b1ff3a65da3280939a96ea60528a68916faac961849548113"
  ], [
      "capsule:f6768868fe4f2068d2cbe739441f69f1314721cc26f0305b045313ae67b67a7d",
      "declaration:normalize_authority",
      "element:python-point:931c1ccdd8acabb70186332a3ad8647c2353ebce3446a8a2ef3db9234bc5a5eb",
      "public-output:normalize_authority",
      "raw-source:49778598d1ed734b1ff3a65da3280939a96ea60528a68916faac961849548113",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:_stage",
      "public-output:_stage",
      "raw-source:7721068f1f78072094958d737181bb889061525e971fb06b15805b05abb1ba3b"
  ], [
      "capsule:9f15e00efc0d5fd6bfd5298a3a54859b1b9976bcfb496422414174ce14227bd5",
      "declaration:_stage",
      "element:python-point:933d43c7c1924d6ad377b82218904c136e4731dd67a4e336fd38ebf20a1b91c4",
      "public-output:_stage",
      "raw-source:7721068f1f78072094958d737181bb889061525e971fb06b15805b05abb1ba3b",
      "source-context:tools/oracle/apply_names.py"
  ]),
  ([
      "declaration:run_lean_tracer",
      "public-output:run_lean_tracer",
      "raw-source:6d64be5256bda32c8e29909d28f6f17f0ff9b443d60b7f734e3f038e1112a7aa"
  ], [
      "capsule:2dc1822fbde74d10d39c32838b5256855cee348701e856f5c21fa7b1193246c6",
      "declaration:run_lean_tracer",
      "element:python-point:93480e1228dea0e64f35f5d57e920fa267834e448f20e13475e58d3ebb795bf6",
      "public-output:run_lean_tracer",
      "raw-source:6d64be5256bda32c8e29909d28f6f17f0ff9b443d60b7f734e3f038e1112a7aa",
      "source-context:tools/refactor/source_trace.py"
  ]),
  ([
      "declaration:_code_files",
      "public-output:_code_files",
      "raw-source:1030acff85810d7d7aa0dd72f090974534bf40c80ac485f47eba18e153bc8962"
  ], [
      "capsule:b751980bcf9067f02fa5912257124a560060b2a3564467c9890765884728ace8",
      "declaration:_code_files",
      "element:python-point:944e3f64915c0c1c953b26b5f3dd10854b449dbd79fa9cd779176e7f44727c72",
      "public-output:_code_files",
      "raw-source:1030acff85810d7d7aa0dd72f090974534bf40c80ac485f47eba18e153bc8962",
      "source-context:tools/oracle/apply_names.py"
  ]),
  ([
      "declaration:included_concepts",
      "public-output:included_concepts",
      "raw-source:a1c171050f6e2925867d5de443828ab9d996e642d7c257a7ebf48d2cf07a7c29"
  ], [
      "capsule:9dc60b78aab9bfca9b013fe87e45766ccbe25887f6b811d203c15b165ab9fb9c",
      "declaration:included_concepts",
      "element:python-point:9454fdf63e051268a15bdf4225a43d3c49e70a74b57d025589ab00521fc9073c",
      "public-output:included_concepts",
      "raw-source:a1c171050f6e2925867d5de443828ab9d996e642d7c257a7ebf48d2cf07a7c29",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:parse_args",
      "public-output:parse_args",
      "raw-source:52b4199623812ad8af1ae27bc65390587866eb7957665eeb6e56114404f2c1fd",
      "source-context:tools/environment/theorem_seeds.py"
  ], [
      "capsule:9a1f0d2f43965de27d83fc1f2ecaa0bb44001d5b5b36f723db78fc65c0c2a8b4",
      "declaration:parse_args",
      "element:python-point:949bbff98b1b613b9023ee4fa90dc669f58b5807daccea2881b4bba201ff95b7",
      "public-output:parse_args",
      "raw-source:52b4199623812ad8af1ae27bc65390587866eb7957665eeb6e56114404f2c1fd",
      "source-context:tools/environment/theorem_seeds.py"
  ]),
  ([
      "declaration:clause",
      "public-output:clause",
      "raw-source:04068dd7a178b0a35b839f75b2fce4be2dcea2bf65e28e71fc098e3cbdb757f8"
  ], [
      "capsule:79e1c9bdcf51c7a84af14cbb71db51dd92a3b22bc42115f70230fa63893f7b1a",
      "declaration:clause",
      "element:python-point:94ae03d90041f94f7df0a454767479621b24a08585018be95dcd64258bfac142",
      "public-output:clause",
      "raw-source:04068dd7a178b0a35b839f75b2fce4be2dcea2bf65e28e71fc098e3cbdb757f8",
      "source-context:tools/environment/to_inventory.py"
  ]),
  ([
      "declaration:OracleNamingTests",
      "public-output:OracleNamingTests",
      "raw-source:ef1fbf7c39ac8adad83a481f462c4a0e48008f407f159677fec59db281d63490"
  ], [
      "capsule:493bf996acd824a71ca08baefa8e01b53a0f1e1228cafb1fad83744369751fcf",
      "declaration:OracleNamingTests",
      "element:python-point:94ba406e4c9c8c12ba9ef41c4f60dd96f5fedd9e1dc66ab0d544a337d0ea1a06",
      "public-output:OracleNamingTests",
      "raw-source:ef1fbf7c39ac8adad83a481f462c4a0e48008f407f159677fec59db281d63490",
      "source-context:tools/tests/test_oracle_naming.py"
  ]),
  ([
      "declaration:changed_record_ids",
      "public-output:changed_record_ids",
      "raw-source:f5493183f3e83a716d47857c7372c198294e2e4afeef792b7406488843e4410a"
  ], [
      "capsule:138d8d018765009b99f8e602c1be817f823cd25a19df0493f1adabc0407b0953",
      "declaration:changed_record_ids",
      "element:python-point:94d59a25727efbfcb9119bcd2fd3bdcb463f71150047d7d6df0771405ff93148",
      "public-output:changed_record_ids",
      "raw-source:f5493183f3e83a716d47857c7372c198294e2e4afeef792b7406488843e4410a",
      "source-context:tools/projection/locality.py"
  ]),
  ([
      "declaration:_target_path",
      "public-output:_target_path",
      "raw-source:06cd95555f26a7fa6dc6676768df60047d8cfb0446c7e4e1c37e029faf31702d"
  ], [
      "capsule:320cb257a2d3d0cd89b801c23ca125d31a07c4dac438b3b2509d3c2bf2c1b497",
      "declaration:_target_path",
      "element:python-point:94e8544cf6c10eff0a7fa54a897d9ff8b14298277a66c935b2289252d14aa151",
      "public-output:_target_path",
      "raw-source:06cd95555f26a7fa6dc6676768df60047d8cfb0446c7e4e1c37e029faf31702d",
      "source-context:tools/oracle/name_plan.py"
  ]),
  ([
      "declaration:_canonical_set",
      "public-output:_canonical_set",
      "raw-source:582822bbdd3b3330155afc36194729cea70668c654a1d68384c26f0adb9f3c3f"
  ], [
      "capsule:eaf4c2a09df182547684d0478022739461368f6e83a05d492c39610261de2416",
      "declaration:_canonical_set",
      "element:python-point:9554f9066d52072e3b7bfa655aea3163f075f0ec60ceaaa0e6d40e10fbc0ef18",
      "public-output:_canonical_set",
      "raw-source:582822bbdd3b3330155afc36194729cea70668c654a1d68384c26f0adb9f3c3f",
      "source-context:tools/refactor/api_snapshot.py"
  ]),
  ([
      "declaration:main",
      "public-output:main",
      "raw-source:5645ac2ebbfb7db38f623a888fcb04eac4822065f460e9a1e95f89ff2936a420",
      "source-context:tools/proof-strategy/evaluate.py"
  ], [
      "capsule:733b493155fabe3f2293047b5e51ba5e4657b36dd55a75f7a6747444b35fd4e0",
      "declaration:main",
      "element:python-point:959457b9fb3a9c11a31694d33791cf7d2b56e05f9fe13ccb3801fdec5873198f",
      "public-output:main",
      "raw-source:5645ac2ebbfb7db38f623a888fcb04eac4822065f460e9a1e95f89ff2936a420",
      "source-context:tools/proof-strategy/evaluate.py"
  ]),
  ([
      "declaration:normalize_graph",
      "public-output:normalize_graph",
      "raw-source:7ac754527ad01f515409c98073cc715cfc776df3b68b21d8aa212237e4a78791"
  ], [
      "capsule:011c502a199ce82e67fbc584bfa60d491b5d58463e0a16d910e18a874a512ca5",
      "declaration:normalize_graph",
      "element:python-point:9596f513cdfce027716c81dda1b4048b6f67b690cff0edad2ed9af6a82e3f34d",
      "public-output:normalize_graph",
      "raw-source:7ac754527ad01f515409c98073cc715cfc776df3b68b21d8aa212237e4a78791",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:_has_facade_header",
      "public-output:_has_facade_header",
      "raw-source:62c7afa91f6e56f5c3a43bca630e6845360e32acfce92946e31ad543215d577b"
  ], [
      "capsule:94787e8092fad606df4ef25e03bb73689f99970dce71bbd4c66e90d17b0a5451",
      "declaration:_has_facade_header",
      "element:python-point:95c6d8b07f0a7883bc16f534388d35673c78e5dcd4b94482c519eac5ca0e4c75",
      "public-output:_has_facade_header",
      "raw-source:62c7afa91f6e56f5c3a43bca630e6845360e32acfce92946e31ad543215d577b",
      "source-context:tools/refactor/obsolete_facades.py"
  ]),
  ([
      "declaration:build_hierarchy",
      "public-output:build_hierarchy",
      "raw-source:ac1e60dd91d0257da21a3c50ce11dd14e3897870f892e3e93153e62436b27e60"
  ], [
      "capsule:ac0465a191d5a096299682b81d819f82a690c0cc98d07b1d12662444adc3791b",
      "declaration:build_hierarchy",
      "element:python-point:95f69f5edbbe1882fca85bded107402f7475d436c67c8ff379bd29abf77c8f4f",
      "public-output:build_hierarchy",
      "raw-source:ac1e60dd91d0257da21a3c50ce11dd14e3897870f892e3e93153e62436b27e60",
      "source-context:tools/organization/hierarchical.py"
  ]),
  ([
      "declaration:authority",
      "public-output:authority",
      "raw-source:11bf4a34c8d4cab6e725c3aae3ec245dc10df93c141124dbb10617ca84ffe57d",
      "source-context:tools/tests/test_projection.py"
  ], [
      "capsule:b16c075276a695749b84f4ca0b01fd2fb6bfd2e0d2a27d16cb5c68c3e190274d",
      "declaration:authority",
      "element:python-point:968f4545824f96a5b16fd1f212dfb4e0ab17ab5571788995f1b042497436fc48",
      "public-output:authority",
      "raw-source:11bf4a34c8d4cab6e725c3aae3ec245dc10df93c141124dbb10617ca84ffe57d",
      "source-context:tools/tests/test_projection.py"
  ]),
  ([
      "declaration:_walk_without_symlinks",
      "public-output:_walk_without_symlinks",
      "raw-source:bdaf7c76ed5dde9e1eb4ea227885d4b90efe34db19f2fdd15cccad292433ca15"
  ], [
      "capsule:6a8bc6fc93d31b7bd8daa1bc64da2c8013c933693f80d36fa1ba0173cafbadec",
      "declaration:_walk_without_symlinks",
      "element:python-point:96dcc7e182cd7f97762980dac7a0255e0961695f5ec491f53aef0f85f1bde6ae",
      "public-output:_walk_without_symlinks",
      "raw-source:bdaf7c76ed5dde9e1eb4ea227885d4b90efe34db19f2fdd15cccad292433ca15",
      "source-context:tools/refactor/canonical.py"
  ]),
  ([
      "declaration:_totient",
      "public-output:_totient",
      "raw-source:4679450511171c16e7d89ece6654c893aa346d346de09c0b95b6214448ee17ee"
  ], [
      "capsule:a466803860b2b1a8d37113c8fa1e977edfc76d43d29890f35090961af8edbf80",
      "declaration:_totient",
      "element:python-point:96ea4a03b59162ec8539979ecd930e32d36608d7ec9c39bf3d5fcbbc8dd92b17",
      "public-output:_totient",
      "raw-source:4679450511171c16e7d89ece6654c893aa346d346de09c0b95b6214448ee17ee",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:compare",
      "public-output:compare",
      "raw-source:ff791a956ec21d8a14f8a07ad5f508e1e1ebf85253648c1035d68da3dedbb384",
      "source-context:tools/refactor/api_snapshot.py"
  ], [
      "capsule:6e019114feefe8fb39c0275fd62e8a9aabdce52ec244198325637db9c30e85ee",
      "declaration:compare",
      "element:python-point:972926356088721e51ea221b243853dae1cd60c5ab59ec05586f9d96ff4a25b8",
      "public-output:compare",
      "raw-source:ff791a956ec21d8a14f8a07ad5f508e1e1ebf85253648c1035d68da3dedbb384",
      "source-context:tools/refactor/api_snapshot.py"
  ]),
  ([
      "declaration:folder_stem",
      "public-output:folder_stem",
      "raw-source:9b2cb5a3894ca5b76ba0acdccfc39af5fb631c9d4af0b1b28a053c85f1679d11"
  ], [
      "capsule:090d0b63dec39e50676868840767f85aee88e8ac82a6dbc093b5c2f1d2b5acfe",
      "declaration:folder_stem",
      "element:python-point:974177e0aea2d0905c143e45a6b0eadaacd6aed26c9d53b3acdc620f5fd519d0",
      "public-output:folder_stem",
      "raw-source:9b2cb5a3894ca5b76ba0acdccfc39af5fb631c9d4af0b1b28a053c85f1679d11",
      "source-context:tools/oracle/name_neighborhoods.py"
  ]),
  ([
      "declaration:project",
      "public-output:project",
      "raw-source:cee1211f070778cd06d89f0abcf02d4447c644d145e04468a4d07064df13ce7a",
      "source-context:tools/projection/project.py"
  ], [
      "capsule:8f4c28914159a8c503d343253baca5667d386f92df5680b75deb478601320e98",
      "declaration:project",
      "element:python-point:975108e6d99101104d3f2aea347977bd76f4746b6ef6bb4882bc8520293c0f00",
      "public-output:project",
      "raw-source:cee1211f070778cd06d89f0abcf02d4447c644d145e04468a4d07064df13ce7a",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:file_digest",
      "public-output:file_digest",
      "raw-source:40cab0f66d6604874cb8b86a3cc1f4bc00966d7ade9f846fcfaf45344ed323d3",
      "source-context:tools/projection/locality.py"
  ], [
      "capsule:e064c4bd5a3771b210d072591b8710bfcc8d73d657c69e2b659c71eb0d3544d8",
      "declaration:file_digest",
      "element:python-point:97a63d535d1c67a7acbece0f9418c2ab03349c16bbbde6260ad013e6abf968c9",
      "public-output:file_digest",
      "raw-source:40cab0f66d6604874cb8b86a3cc1f4bc00966d7ade9f846fcfaf45344ed323d3",
      "source-context:tools/projection/locality.py"
  ]),
  ([
      "declaration:domain_path_ids",
      "public-output:domain_path_ids",
      "raw-source:3b72c0ca2d2f03c46ca827b4a9b17157e1c06475cff6be0f8035c0d5d956701a"
  ], [
      "capsule:71a16a05a5364fe89e5ad8a52a428668043bee79366b6f754cb35bc8ecb37916",
      "declaration:domain_path_ids",
      "element:python-point:97fe1ebd7eaa96a719c7e8abf2bf6c24c5b8507ab2f80e509fe547bf801401ab",
      "public-output:domain_path_ids",
      "raw-source:3b72c0ca2d2f03c46ca827b4a9b17157e1c06475cff6be0f8035c0d5d956701a",
      "source-context:tools/concept-audit/audit.py"
  ]),
  ([
      "declaration:entry_without_digest",
      "public-output:entry_without_digest",
      "raw-source:704f94ec6aaf63fb7d2321182d8e61bddf31378c33f7ddc029462fef2013b9cf"
  ], [
      "capsule:fa8e4f48fbbc9b104bbe14b0dfaa1990ef866f2c3c20cb815c666dedb190d270",
      "declaration:entry_without_digest",
      "element:python-point:9831a35d41557556804ca7331af5b84976afd27d9ced803a3187cb6754f4dbfc",
      "public-output:entry_without_digest",
      "raw-source:704f94ec6aaf63fb7d2321182d8e61bddf31378c33f7ddc029462fef2013b9cf",
      "source-context:tools/environment/local_extract.py"
  ]),
  ([
      "declaration:_shell_segment_facade",
      "public-output:_shell_segment_facade",
      "raw-source:0b33518bcecb3ee62503b472068080b279165bdabb40900f30fe19bf9c9c7ab2"
  ], [
      "capsule:48a57711036175a426860fc1c550334f91c0c06df31aceefa800959156d38f88",
      "declaration:_shell_segment_facade",
      "element:python-point:9832ded28e8dd644b85040315e7e7e88692fabce20022278ee2f2dd7c9487151",
      "public-output:_shell_segment_facade",
      "raw-source:0b33518bcecb3ee62503b472068080b279165bdabb40900f30fe19bf9c9c7ab2",
      "source-context:tools/refactor/obsolete_facades.py"
  ]),
  ([
      "declaration:load_module",
      "public-output:load_module",
      "raw-source:179ba9cb7cbf2cef4fe7c2cd59ea6f067224ef0b30f7781907ed95d6670584bd",
      "source-context:tools/tests/test_projection.py"
  ], [
      "capsule:2cc6ba08577eb24752a6913ea29f6931cfa7e665fa13aa2c87c0575b704cc7c1",
      "declaration:load_module",
      "element:python-point:984511ceb940ab3cc973eafb5471c0f643cf471e0d47b4e41e07a0b0efdf0b20",
      "public-output:load_module",
      "raw-source:179ba9cb7cbf2cef4fe7c2cd59ea6f067224ef0b30f7781907ed95d6670584bd",
      "source-context:tools/tests/test_projection.py"
  ]),
  ([
      "declaration:_build_balanced_lean_list_certificate",
      "public-output:_build_balanced_lean_list_certificate",
      "raw-source:62858ec48be5c1ce4ae93900c38ef11c5e3d8f472fc59205ad80fbf286674331"
  ], [
      "capsule:b38e275b67bdec3cefa32be60738e31dd969b3e1dcef6484ae38222edd3e01d4",
      "declaration:_build_balanced_lean_list_certificate",
      "element:python-point:986c0501c29a911b13063532588118cf20cdd5d29c8e6de4502138cf2e0f24ef",
      "public-output:_build_balanced_lean_list_certificate",
      "raw-source:62858ec48be5c1ce4ae93900c38ef11c5e3d8f472fc59205ad80fbf286674331",
      "source-context:tools/projection/external_rigidifier.py"
  ]),
  ([
      "declaration:Edge",
      "public-output:Edge",
      "raw-source:67b5b97603893b89a3a503af930fc9745439145c253664c24b6e359f551698e2",
      "source-context:tools/projection/canonical_quotient.py"
  ], [
      "capsule:34fafe79ff58e47ddea8d506231a5c79fa0712a8008b351186c34b3d73f5d3a3",
      "declaration:Edge",
      "element:python-point:987db5418d9e0953418cbf72d1def13a0f382cca366260a2d627a46d58bb8235",
      "public-output:Edge",
      "raw-source:67b5b97603893b89a3a503af930fc9745439145c253664c24b6e359f551698e2",
      "source-context:tools/projection/canonical_quotient.py"
  ]),
  ([
      "declaration:read_modules",
      "public-output:read_modules",
      "raw-source:03b1cee406712b673b74986dceecb63ef30333c447f032bfa14e9c8e6395bca2"
  ], [
      "capsule:372f5b9c8258d314c330f19280f4eb5469ab8018b132d23df3860148f18df1a4",
      "declaration:read_modules",
      "element:python-point:988b1c2c2202e2acf6975c1fedf611752a9660a52bfe1d8a4d8d0147652f6a44",
      "public-output:read_modules",
      "raw-source:03b1cee406712b673b74986dceecb63ef30333c447f032bfa14e9c8e6395bca2",
      "source-context:tools/environment/local_extract.py"
  ]),
  ([
      "declaration:module_relative",
      "public-output:module_relative",
      "raw-source:9a44941badb9302cf0fbb174bd185d65bf5366afa2d7f2b86d3a583aae123dd6"
  ], [
      "capsule:f38f66d5d178e32e5dc04f4b4c48a0ebeeddbbab545f5bc88aea7257f466b01d",
      "declaration:module_relative",
      "element:python-point:98fab5a8f681d8f21c0685cbbbb362024f4d46ae4819e90f30b81025f79798a6",
      "public-output:module_relative",
      "raw-source:9a44941badb9302cf0fbb174bd185d65bf5366afa2d7f2b86d3a583aae123dd6",
      "source-context:tools/environment/local_extract.py"
  ]),
  ([
      "declaration:ProofStrategyCompletionTests",
      "public-output:ProofStrategyCompletionTests",
      "raw-source:c1046c56180d4b7b915f115166fa4db0a1275a2956dbc0e5bcdecccb5d2b8a8e"
  ], [
      "capsule:fd6a3d0dbe8dacb57fa42f0d3a307076161979ed2b803983ab8405d2fe5e30db",
      "declaration:ProofStrategyCompletionTests",
      "element:python-point:9924cd49c6c36c8451023aded0fab889ed557b12cd78b6b8cfe1613fa3838784",
      "public-output:ProofStrategyCompletionTests",
      "raw-source:c1046c56180d4b7b915f115166fa4db0a1275a2956dbc0e5bcdecccb5d2b8a8e",
      "source-context:tools/tests/test_review_completion.py"
  ]),
  ([
      "declaration:receipt_fingerprint",
      "public-output:receipt_fingerprint",
      "raw-source:4a68138e277559dc71c4c30250f1cfb63738db09ad1199ea69724e4f1992130c",
      "source-context:tools/environment/shard.py"
  ], [
      "capsule:6850ffed7023559f7909c5ccbe5e9a8fa0c9a1c9e75b8744065be678aa562c6d",
      "declaration:receipt_fingerprint",
      "element:python-point:99fea3673f25f87cbf46ddad9ba3255f221c892e55a2b107c25e5b939a891457",
      "public-output:receipt_fingerprint",
      "raw-source:4a68138e277559dc71c4c30250f1cfb63738db09ad1199ea69724e4f1992130c",
      "source-context:tools/environment/shard.py"
  ]),
  ([
      "declaration:apply_plan",
      "public-output:apply_plan",
      "raw-source:85a78bc9a97a091dd67fddba29afc93558e75c600d15c0d58c3667941b4e7b6a"
  ], [
      "capsule:f39272a047ff24cd06522ec8e8c392bc4d793a5e06b6cd58c2872ba2d7a84fb5",
      "declaration:apply_plan",
      "element:python-point:9a9a63a7c28ea581152effe1d2f522f62fc05b8d1b41a35b62728dd6cfdfbdf0",
      "public-output:apply_plan",
      "raw-source:85a78bc9a97a091dd67fddba29afc93558e75c600d15c0d58c3667941b4e7b6a",
      "source-context:tools/oracle/apply_names.py"
  ]),
  ([
      "declaration:persistent_region",
      "public-output:persistent_region",
      "raw-source:c6ed2de1d0aa46fb71ba00d5d74b676359f1805f2bba3012f2f9247e02d56b3a"
  ], [
      "capsule:5eec05c3e088e8da26f21f01b8d97aa28da98f9ea2046a9b125c839756f5872c",
      "declaration:persistent_region",
      "element:python-point:9a9f708ebdea71cec46a8330a3ac4026f9a779bd01a622034d9a8e8af9a2f5da",
      "public-output:persistent_region",
      "raw-source:c6ed2de1d0aa46fb71ba00d5d74b676359f1805f2bba3012f2f9247e02d56b3a",
      "source-context:tools/taxonomy/coverage.py"
  ]),
  ([
      "declaration:segment_match",
      "public-output:segment_match",
      "raw-source:5026fb8de13f520e220b5088de5d96759d615a64815f8bba91e8b9f131f8d2f8"
  ], [
      "capsule:f8580ca382b58a7534fdf61b618d1c0b48f3d02bbf4dfd44520362ef765735c4",
      "declaration:segment_match",
      "element:python-point:9aae5a708380ca357ee5f135e22a2268c31495550534120bf6aec1e111922b04",
      "public-output:segment_match",
      "raw-source:5026fb8de13f520e220b5088de5d96759d615a64815f8bba91e8b9f131f8d2f8",
      "source-context:tools/taxonomy/anchors.py"
  ]),
  ([
      "declaration:module_map",
      "public-output:module_map",
      "raw-source:7ec4f520441a530f09c893b5c18fc773842c2908db90337956083bcc9947d3ef"
  ], [
      "capsule:5857f0d189b55501f7bc4f222df49d0123d24e9a21e327be56e26012a3d2cd87",
      "declaration:module_map",
      "element:python-point:9ad01e2ce26a67cdc330f663623cef0defd018a947817cf5db1dd20fb965ce64",
      "public-output:module_map",
      "raw-source:7ec4f520441a530f09c893b5c18fc773842c2908db90337956083bcc9947d3ef",
      "source-context:tools/environment/ledger.py"
  ]),
  ([
      "declaration:EnvironmentExtractorTests",
      "public-output:EnvironmentExtractorTests",
      "raw-source:ff1fe94074fbbba7d4a1f5d1172338a48da272b7145fc47aaddbe9df511df749"
  ], [
      "capsule:c3e8712a09c326abf76c65adc1491ca3ab60d157e1857d1ff1ba689669432084",
      "declaration:EnvironmentExtractorTests",
      "element:python-point:9ad11a026d16cb1dfb6eea80f3cd635e9b6a87899369a4ac2caffaa61dc2a472",
      "public-output:EnvironmentExtractorTests",
      "raw-source:ff1fe94074fbbba7d4a1f5d1172338a48da272b7145fc47aaddbe9df511df749",
      "source-context:tools/tests/test_environment_extractor.py"
  ]),
  ([
      "declaration:module_name",
      "public-output:module_name",
      "raw-source:84614fc3d2d44daf800cb6e0809b32121ba32feb7fd79a09c0909b25b0f2c78b"
  ], [
      "capsule:fdb147296175b4f5e82bcb5254c90ad41881cea54e91d81328089d52f14635d6",
      "declaration:module_name",
      "element:python-point:9ad8b2ef099b8844de8721940e956cea80c3ad8102b68ecb90ccc8ad6c0c3ab3",
      "public-output:module_name",
      "raw-source:84614fc3d2d44daf800cb6e0809b32121ba32feb7fd79a09c0909b25b0f2c78b",
      "source-context:tools/concept-audit/check_layout.py"
  ]),
  ([
      "declaration:_compiled_metadata",
      "public-output:_compiled_metadata",
      "raw-source:40937552935fb9149585fb1700aa90e4e4da12c931505474e11135bc19564b9a"
  ], [
      "capsule:20d29f703508fc104db4655164a8c6deded10d9d0b3c80af0d23e272b1fd220f",
      "declaration:_compiled_metadata",
      "element:python-point:9b20cfba91b51434da23682c164de96a6ab88682c83c1766f80e09857e591baa",
      "public-output:_compiled_metadata",
      "raw-source:40937552935fb9149585fb1700aa90e4e4da12c931505474e11135bc19564b9a",
      "source-context:tools/refactor/point_corpus.py"
  ]),
  ([
      "declaration:stabilizer",
      "public-output:stabilizer",
      "raw-source:8febe4fa6ef05d0ca211db8e1efab141c7396975da01ccdb7354d499554c255c"
  ], [
      "capsule:c97bb49e96e7591f37761f066390f15ca4c3551dd9242d164874ce649b74bd56",
      "declaration:stabilizer",
      "element:python-point:9b5705bed7865dfe58cb8bf420cfbebf6397f1b02765dd81f5a141e7afb7356c",
      "public-output:stabilizer",
      "raw-source:8febe4fa6ef05d0ca211db8e1efab141c7396975da01ccdb7354d499554c255c",
      "source-context:tools/oracle/cyclic_cubical.py"
  ]),
  ([
      "declaration:canonical_paths",
      "public-output:canonical_paths",
      "raw-source:97a6e48668aa14cfa3ab5175284b499d8de93c5c66a8a3e4c6adc51034ad8b6d"
  ], [
      "capsule:e3ba355c84ffc40e8bad8eff539a596488d7df7a47b6dedaa102778ec8c4f497",
      "declaration:canonical_paths",
      "element:python-point:9bc3dfad6f64b192b234067e76277d9e0d9a7abeac76b5558263d82ff67af472",
      "public-output:canonical_paths",
      "raw-source:97a6e48668aa14cfa3ab5175284b499d8de93c5c66a8a3e4c6adc51034ad8b6d",
      "source-context:tools/taxonomy/propose.py"
  ]),
  ([
      "declaration:_command",
      "public-output:_command",
      "raw-source:46ec95d49239c74c2fe684e7392793d9bfa28971e2b7eccdb68c7d572e4188e5",
      "source-context:tools/oracle/mlx_bootstrap.py"
  ], [
      "capsule:3aa130929950742ed3a91b196c926264e85480707aeb667da4535f393bb74a1b",
      "declaration:_command",
      "element:python-point:9be2e33e170852efc3c0a0bd3ab7e19aed0f538a360ab768692fc3e6bc2679f3",
      "public-output:_command",
      "raw-source:46ec95d49239c74c2fe684e7392793d9bfa28971e2b7eccdb68c7d572e4188e5",
      "source-context:tools/oracle/mlx_bootstrap.py"
  ]),
  ([
      "declaration:_add",
      "public-output:_add",
      "raw-source:de3c4e9b6c74cb0b73a5cbcab87351b3f73ec4cd921076174ec6f41d6d36d5ca",
      "source-context:tools/refactor/features.py"
  ], [
      "capsule:985d1eeb4dd837de40293d009bfe171158d5e8647a976c9aac7602a8086c77d8",
      "declaration:_add",
      "element:python-point:9c1c27bd4fd782cd4fdcba01b572b59646d9e1eb15043bb3efa1cb15980263ab",
      "public-output:_add",
      "raw-source:de3c4e9b6c74cb0b73a5cbcab87351b3f73ec4cd921076174ec6f41d6d36d5ca",
      "source-context:tools/refactor/features.py"
  ]),
  ([
      "declaration:read_ndjson",
      "public-output:read_ndjson",
      "raw-source:cfbb7967ce2396a1fe69197047f315158dbd2e574aa96afaa99e4404269fa1cd",
      "source-context:tools/projection/certify_projection.py"
  ], [
      "capsule:f677b0b5d613805e9665a65c2afe08411c7712cee3150907eb76351edc8a8213",
      "declaration:read_ndjson",
      "element:python-point:9c24c5437786792654cd98aa60ce0d0d4d42c61eec933ca09a2249f6406b1cd5",
      "public-output:read_ndjson",
      "raw-source:cfbb7967ce2396a1fe69197047f315158dbd2e574aa96afaa99e4404269fa1cd",
      "source-context:tools/projection/certify_projection.py"
  ]),
  ([
      "declaration:words",
      "public-output:words",
      "raw-source:8cdff6b0a63e13716e59e96b7939174f5368c5a525c0570225503b9a8fe14961",
      "source-context:tools/oracle/name_neighborhoods.py"
  ], [
      "capsule:3c01cb434d18f3eb1d9f1521b1521d0da65a1bb3af3e871d3e75856a66ebc843",
      "declaration:words",
      "element:python-point:9c2c366777330a7a966b7a69bc846c8bf88e50785cb7449e05e1ec7c8d6f15f6",
      "public-output:words",
      "raw-source:8cdff6b0a63e13716e59e96b7939174f5368c5a525c0570225503b9a8fe14961",
      "source-context:tools/oracle/name_neighborhoods.py"
  ]),
  ([
      "declaration:_python_words",
      "public-output:_python_words",
      "raw-source:af35cfa760c86ad66fe1d43da824c247e04517765174a494fde85369f2e74cf6"
  ], [
      "capsule:a84d6e6d496ab1bad7026e894358e308cfdccf6234b2f4b99121f9bde3cb56d9",
      "declaration:_python_words",
      "element:python-point:9c8eadb72f1622b15f8c966d1e1d79a756afb1dff7a5d4dbad95df518dc9f226",
      "public-output:_python_words",
      "raw-source:af35cfa760c86ad66fe1d43da824c247e04517765174a494fde85369f2e74cf6",
      "source-context:tools/oracle/oracle_names.py"
  ]),
  ([
      "declaration:compute",
      "public-output:compute",
      "raw-source:1ce67844a989bc9eb175d9ca029ee7a12eb279c01ae2c9878e204284b37d75ed",
      "source-context:tools/projection/intrinsic_projection.py"
  ], [
      "capsule:10322a343ffdb47461e30b13e7ccabe6ea9d67be4ab0b470da39eff6eea22301",
      "declaration:compute",
      "element:python-point:9cd8fd54301cc8ede83fcd3a4928842a96033bb6fc51342e0632ab12b0024739",
      "public-output:compute",
      "raw-source:1ce67844a989bc9eb175d9ca029ee7a12eb279c01ae2c9878e204284b37d75ed",
      "source-context:tools/projection/intrinsic_projection.py"
  ]),
  ([
      "declaration:_vectors",
      "public-output:_vectors",
      "raw-source:995a99397dbfa245e616183565025b083c38cddb6d7b087b1afb82abb4c3463f"
  ], [
      "capsule:c3f22b2516b239987508ed907905a6f1a29e5f239c78909b21b403c724b835cf",
      "declaration:_vectors",
      "element:python-point:9df5f4f65b0cfc281b6e22eab102fe6cf0abd18cdb060c716075d2d6d231d9d2",
      "public-output:_vectors",
      "raw-source:995a99397dbfa245e616183565025b083c38cddb6d7b087b1afb82abb4c3463f",
      "source-context:tools/mlx/contrastive_directions.py"
  ]),
  ([
      "declaration:raw_feature_policy",
      "public-output:raw_feature_policy",
      "raw-source:1ba23f6a97b987f19e65ad90e8eb96187a8a4a95a862cbf8546426dbc20af02e"
  ], [
      "capsule:b9893e393402e4ce4ec81fb91fd0c012fb9bba98ff86eebc69abf87437627d44",
      "declaration:raw_feature_policy",
      "element:python-point:9df6712cdcfc3563ed22681c322f977223f4088a3bb44efd7c6edc5b66f22bf8",
      "public-output:raw_feature_policy",
      "raw-source:1ba23f6a97b987f19e65ad90e8eb96187a8a4a95a862cbf8546426dbc20af02e",
      "source-context:tools/kernel/build_features.py"
  ]),
  ([
      "declaration:normalize_supersessions",
      "public-output:normalize_supersessions",
      "raw-source:d9fcb625f2f2d27b56dca4a2c2f6a4394749b2e5a7c179dbc7ff6d03d201e285"
  ], [
      "capsule:e6e80b8cf170c7965cefe300131f2d90883c641407bcdaec76c15f05f33c6670",
      "declaration:normalize_supersessions",
      "element:python-point:9e0d40af438779250f32e1e3dd1469a5e8c0bc9208508fbd50f28a19f4e6c060",
      "public-output:normalize_supersessions",
      "raw-source:d9fcb625f2f2d27b56dca4a2c2f6a4394749b2e5a7c179dbc7ff6d03d201e285",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:_lean_selection_rows",
      "public-output:_lean_selection_rows",
      "raw-source:9f6de96f0e6a2807eb934005ab72b763b5c070437856936e341567d82574819a"
  ], [
      "capsule:c4994179ed9a791fe13e387c6bca4605e673bcfe6d17d725cc2eb07cff4d5422",
      "declaration:_lean_selection_rows",
      "element:python-point:9e1886fc4cf189dd2ff10280a91de6c71cc9e7e43a8705bf98713bc7a77e29c1",
      "public-output:_lean_selection_rows",
      "raw-source:9f6de96f0e6a2807eb934005ab72b763b5c070437856936e341567d82574819a",
      "source-context:tools/projection/external_rigidifier.py"
  ]),
  ([
      "declaration:_lean_imported_modules",
      "public-output:_lean_imported_modules",
      "raw-source:3d9a8ca287b022ce536feb9eb58b6ff4b1317ad8e250cb00bf4eb31138983f26"
  ], [
      "capsule:03dfda266fab0f98ebf640d88d2a83f917d1a9766223ded1bdc5b415cfaf224c",
      "declaration:_lean_imported_modules",
      "element:python-point:9e1abd21ac62b5407df13d6b3da14bb5bbf218824bd401200d1ec181bf2e8fce",
      "public-output:_lean_imported_modules",
      "raw-source:3d9a8ca287b022ce536feb9eb58b6ff4b1317ad8e250cb00bf4eb31138983f26",
      "source-context:tools/refactor/obsolete_facades.py"
  ]),
  ([
      "declaration:_profile_path",
      "public-output:_profile_path",
      "raw-source:578eec5a02b0abca95cc947a157211654c088d24073c0b58cec8fa2a7e590961"
  ], [
      "capsule:0458f6605293361c12d003afcac12e871604d6e34c94783c83a3736277a45774",
      "declaration:_profile_path",
      "element:python-point:9e2d84f280133d5ecf33aaa91ae4e8c7e066d678d4e10761c69003d8d780611c",
      "public-output:_profile_path",
      "raw-source:578eec5a02b0abca95cc947a157211654c088d24073c0b58cec8fa2a7e590961",
      "source-context:tools/oracle/neighborhood_training.py"
  ]),
  ([
      "declaration:compare_trajectories",
      "public-output:compare_trajectories",
      "raw-source:a0df25679e6a96b403eb686aa80247cf51376754004b2373befd2da5c3d68c9b"
  ], [
      "capsule:19c6b7f14f06ce0153afe29c6ffb547c1dab686e89aff21322f290cdb9616642",
      "declaration:compare_trajectories",
      "element:python-point:9e2e9d255caaa9a18255f537eeed11585a455751fc8811310845ca3f750f2be9",
      "public-output:compare_trajectories",
      "raw-source:a0df25679e6a96b403eb686aa80247cf51376754004b2373befd2da5c3d68c9b",
      "source-context:tools/oracle/trajectory.py"
  ]),
  ([
      "declaration:byte_digest",
      "public-output:byte_digest",
      "raw-source:7bfb7114f067d5caa770fa0aee3044ce68369ce63da87fa84ba60a3121260243"
  ], [
      "capsule:71a2c5e9e018167ff320303f44cca62209b792871b39a5484d4a51bd0d799f25",
      "declaration:byte_digest",
      "element:python-point:9e4c66d958de8d794e3e4710494515a7fdec35de98796668edad71dfe42bfbd5",
      "public-output:byte_digest",
      "raw-source:7bfb7114f067d5caa770fa0aee3044ce68369ce63da87fa84ba60a3121260243",
      "source-context:tools/refactor/canonical.py"
  ]),
  ([
      "declaration:file_digest",
      "public-output:file_digest",
      "raw-source:360fef643b5a2bd1b43617eaad4eba27c0bcdd274b876ea30edb23748d757b8b",
      "source-context:tools/kernel/gram_cache.py"
  ], [
      "capsule:749bc99ed9d0b8050571ad5b48ec4c9c2037f92b01f52db8f8f55db6eac6ca3f",
      "declaration:file_digest",
      "element:python-point:9efbb0bf4eddadf1992129a88b6f47ffbd3c7bd16d73c2000e6a3b47dce7e109",
      "public-output:file_digest",
      "raw-source:360fef643b5a2bd1b43617eaad4eba27c0bcdd274b876ea30edb23748d757b8b",
      "source-context:tools/kernel/gram_cache.py"
  ]),
  ([
      "declaration:_lean_list",
      "public-output:_lean_list",
      "raw-source:578f71c285c0550183d2a324b45ce26463c36c64c16293e0344f7bcf3e4aa65b"
  ], [
      "capsule:8d83d12e85eedba69427138511c6d163fce9623131a7021370aa74cc1a70fb23",
      "declaration:_lean_list",
      "element:python-point:9f0e8b4d23baea67b1b2976b6a3d373c986765985ccaec38aa418e1404a1eed2",
      "public-output:_lean_list",
      "raw-source:578f71c285c0550183d2a324b45ce26463c36c64c16293e0344f7bcf3e4aa65b",
      "source-context:tools/projection/external_rigidifier.py"
  ]),
  ([
      "declaration:profiles",
      "public-output:profiles",
      "raw-source:fc9a3bab5b5bf8a0b7416154ca1d615e7d2c1b31ebbfde63cb9d91b0d62ff4c4"
  ], [
      "capsule:cd3215bec5fbf01916d063b2a0e838793c6526863a7c1128a445a2074e22fef7",
      "declaration:profiles",
      "element:python-point:9ffc923016b2e69b9b4f5a84c7684709f42a4740b0020b0d2b2af3666ccdf053",
      "public-output:profiles",
      "raw-source:fc9a3bab5b5bf8a0b7416154ca1d615e7d2c1b31ebbfde63cb9d91b0d62ff4c4",
      "source-context:tools/projection/build_profiles.py"
  ]),
  ([
      "declaration:_BalancedLeanAppendNode",
      "public-output:_BalancedLeanAppendNode",
      "raw-source:594c464e1dbaba0ed315dcda175af2a974d7fdc7c4e74da20d6c73117403fc90"
  ], [
      "capsule:3ddce148cd3e67991eb594544f1a7ed07e889ce0a469a54cfcb39b51d30ae361",
      "declaration:_BalancedLeanAppendNode",
      "element:python-point:a01b640bb123da2684bfbaa592392b24d2aee27a130f7f37ab4b4f2111c7782e",
      "public-output:_BalancedLeanAppendNode",
      "raw-source:594c464e1dbaba0ed315dcda175af2a974d7fdc7c4e74da20d6c73117403fc90",
      "source-context:tools/projection/external_rigidifier.py"
  ]),
  ([
      "declaration:ModulePlanPathTests",
      "public-output:ModulePlanPathTests",
      "raw-source:a02b3b671c3efd3dab0c39e681e23858384501722cc6bb32606fed7a0cfc42b7"
  ], [
      "capsule:86f24a49f1e899b071c863e96275be5424ac19d353656eefeec070c81bbd7030",
      "declaration:ModulePlanPathTests",
      "element:python-point:a04675fec5977f35447a607052ee683c08fde43e1e5c551f2ad4b21c3c04c168",
      "public-output:ModulePlanPathTests",
      "raw-source:a02b3b671c3efd3dab0c39e681e23858384501722cc6bb32606fed7a0cfc42b7",
      "source-context:tools/tests/test_module_plan_paths.py"
  ]),
  ([
      "declaration:authority_rank",
      "public-output:authority_rank",
      "raw-source:a1b110c73f13a69483d8804a0afbd085c9ad508c390112f3ae9939db3fb6f7ed"
  ], [
      "capsule:944b7e04c4ab753b382575b472063e797c6dfbfb50fdaefc774198d71d53b1c9",
      "declaration:authority_rank",
      "element:python-point:a08e6cf45e85d4eddd93d18e9fa6ffd1c3ac3505e746a5e6005d928d276ac1ba",
      "public-output:authority_rank",
      "raw-source:a1b110c73f13a69483d8804a0afbd085c9ad508c390112f3ae9939db3fb6f7ed",
      "source-context:tools/projection/project.py"
  ]),
  ([
      "declaration:tree_children",
      "public-output:tree_children",
      "raw-source:0cbbed3dcb22a18df01604e0a7988f9022908238276ad68c1d578ca3dd5feaab"
  ], [
      "capsule:ebd30d09f5f80427ed51c536078634cba2bd8405b0889ff25e72a8e641510e1d",
      "declaration:tree_children",
      "element:python-point:a09cb700ca242ce7d9f206615755de2947f303d59e78bbafe5ec7e839e2c8d2d",
      "public-output:tree_children",
      "raw-source:0cbbed3dcb22a18df01604e0a7988f9022908238276ad68c1d578ca3dd5feaab",
      "source-context:tools/taxonomy/anchors.py"
  ]),
  ([
      "declaration:_kebab",
      "public-output:_kebab",
      "raw-source:dcaa2211402a3d8fab61f87d77c25a2a7f2c0ed775bcd0508428adc8b083b3a1"
  ], [
      "capsule:9bb46feb442170e9b89ee642076b5710389b6728886af11f6e98fea8f1dbabb9",
      "declaration:_kebab",
      "element:python-point:a0a262df37770f602a333ed3fc169eaf5a7976550e438d2b8e1fc7420a04dffc",
      "public-output:_kebab",
      "raw-source:dcaa2211402a3d8fab61f87d77c25a2a7f2c0ed775bcd0508428adc8b083b3a1",
      "source-context:tools/oracle/oracle_names.py"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L71319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
