# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SubboxInduction.Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df28dab9542547f0eb2105551860525af83f9474",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df28dab9542547f0eb2105551860525af83f9474`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Box.SubboxInduction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Partition.Tagged` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitCenter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/splitcenter--7f452acf0bf067ad256ac45f.md) | 51 | `declaration-track:7f452acf0bf067ad256ac45f9ec3e1db1a54ce0a446cfc7bb35b4de338e952f6` |
| 2 | `theorem` | [mem_splitCenter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/mem-splitcenter--a5747181fb5b9dc74f508fea.md) | 60 | `result-track:a5747181fb5b9dc74f508fea8be16a80e4a97f1c90a45d5535ee5d128cbb1d63` |
| 3 | `theorem` | [isPartition_splitCenter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/ispartition-splitcenter--6a16519e4ce029138787d1cf.md) | 62 | `result-track:6a16519e4ce029138787d1cf3f32ad45c593e2cb42544c22ed405272727191e5` |
| 4 | `theorem` | [upper_sub_lower_of_mem_splitCenter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/upper-sub-lower-of-mem-splitcenter--9c8b1ea9e7cff66f01016c6f.md) | 65 | `result-track:9c8b1ea9e7cff66f01016c6fb8b106a1c640881db4c91780dc8722816b97bf1d` |
| 5 | `theorem` | [subbox_induction_on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/subbox-induction-on--49331f0734a202898096a24f.md) | 88 | `result-track:49331f0734a202898096a24fae6405ec774ce67d7e615397f9513208b103f4b3` |
| 6 | `theorem` | [exists_taggedPartition_isHenstock_isSubordinate_homothetic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/exists-taggedpartition-ishenstock-issubordinate-homothetic--69f2508603746449d979fd73.md) | 107 | `result-track:69f2508603746449d979fd73f2ca35c84b15c2dd3c4d9adbd0880dcc17bfe4b2` |
| 7 | `theorem` | [exists_tagged_le_isHenstock_isSubordinate_iUnion_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/exists-tagged-le-ishenstock-issubordinate-iunion-eq--76a07d5c6dd6c0d72a9aa195.md) | 152 | `result-track:76a07d5c6dd6c0d72a9aa1951b05c325d0d0f37cb489102e21402501d41a53dd` |
| 8 | `def` | [toSubordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/tosubordinate--390bade53b6aee79b3de2c77.md) | 172 | `declaration-track:390bade53b6aee79b3de2c77beacd3938c3a40b16e65d288d726e9e3b29222c6` |
| 9 | `theorem` | [toSubordinate_toPrepartition_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/tosubordinate-toprepartition-le--96b9ea28c251d84bbf6cceb2.md) | 175 | `result-track:96b9ea28c251d84bbf6cceb2d7c1fe093e28b72beb1fa90c5b81956d191a871c` |
| 10 | `theorem` | [isHenstock_toSubordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/ishenstock-tosubordinate--84f5054526eb47f9d7964b5e.md) | 179 | `result-track:84f5054526eb47f9d7964b5ed2ec44039343dbf4434edcb92165d3d194b1b36b` |
| 11 | `theorem` | [isSubordinate_toSubordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/issubordinate-tosubordinate--fca51d54fe2b0c4c36d25465.md) | 183 | `result-track:fca51d54fe2b0c4c36d254650dd537caf937f34f1b73fc26ceead13d629f7467` |
| 12 | `theorem` | [distortion_toSubordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/distortion-tosubordinate--68c4dcc82144a25e3cf42cad.md) | 188 | `result-track:68c4dcc82144a25e3cf42cad3e581ba4fcc5ab76bdb75ff4b975177e8772e4e7` |
| 13 | `theorem` | [iUnion_toSubordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/iunion-tosubordinate--50a1b4cccb327bb67960ab73.md) | 193 | `result-track:50a1b4cccb327bb67960ab73ad551a2cdcbe1830286f06f22e629c2081678cfe` |
| 14 | `def` | [unionComplToSubordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/unioncompltosubordinate--48d73e2fa6d5888667fe831d.md) | 212 | `declaration-track:48d73e2fa6d5888667fe831de205bfc399602210ab3a8d200a1447f07013a4ca` |
| 15 | `theorem` | [isPartition_unionComplToSubordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/ispartition-unioncompltosubordinate--cff3cee2ca1bad54e6031de2.md) | 217 | `result-track:cff3cee2ca1bad54e6031de2cf13ff8502cce84a44a36dde911036a215c0e45e` |
| 16 | `theorem` | [unionComplToSubordinate_boxes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/unioncompltosubordinate-boxes--2373164b88fd43b909dc848b.md) | 224 | `result-track:2373164b88fd43b909dc848b57d6a66b0536279bde4e075f93e5025532baa859` |
| 17 | `theorem` | [iUnion_unionComplToSubordinate_boxes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/iunion-unioncompltosubordinate-boxes--e2ad0ce7c5aae880dc8b5dc7.md) | 229 | `result-track:e2ad0ce7c5aae880dc8b5dc750367f8ff46eee224b30e9e8775e20f638f57d07` |
| 18 | `theorem` | [distortion_unionComplToSubordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb.lean/declarations/distortion-unioncompltosubordinate--ecd0e4075e53ba844e67b40f.md) | 235 | `result-track:ecd0e4075e53ba844e67b40f1644ddc2d5a2d2a950d177c29139acdee2cf1636` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
