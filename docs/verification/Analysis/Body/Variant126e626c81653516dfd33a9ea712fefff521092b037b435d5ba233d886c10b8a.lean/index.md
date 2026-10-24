# Verification target: GRWTSK.Analysis.Body.Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ac710bee56a3f5a70ec0b8741b527a1f207ad09",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/index.md) · [Full source](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ac710bee56a3f5a70ec0b8741b527a1f207ad09`.

Source path: `GRWTSK/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ConvexBody](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/convexbody--14c8f6081a2058ad5b07a0dd.md) | 44 | `declaration-track:14c8f6081a2058ad5b07a0dd63a0b610dc04b62787cf13f2b20684f33eebda39` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/instance--3ce254626b082d4d64fbc56e.md) | 57 | `declaration-track:3ce254626b082d4d64fbc56e692fa7fef8ace88d45859ba3ff91c103f1f7ce67` |
| 3 | `theorem` | [convex](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/convex--48d0a85b7b19d390f2d0a786.md) | 64 | `result-track:48d0a85b7b19d390f2d0a7864588ac1c3b7dc2b0df5db271fa23ca6f0bead316` |
| 4 | `theorem` | [isCompact](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/iscompact--9e29bd0df0e9906f2e198068.md) | 68 | `result-track:9e29bd0df0e9906f2e198068f20b3bcea54920d9714937f3ee2594df4fb96831` |
| 5 | `theorem` | [isClosed](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/isclosed--1ff68affc9f98e4dd622ad51.md) | 73 | `result-track:1ff68affc9f98e4dd622ad5193952f82b49a26c1cc15067f754b86e00990c63b` |
| 6 | `theorem` | [nonempty](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/nonempty--2b981f73654325e40c05b24f.md) | 76 | `result-track:2b981f73654325e40c05b24fc9b4eaca96ab65b6347d5dc6df0e86dfdde87b2f` |
| 7 | `theorem` | [ext](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/ext--b3848f204ed8eb853b57d528.md) | 81 | `result-track:b3848f204ed8eb853b57d5288dcee33e620771f3a75176c2881db434c6f87007` |
| 8 | `theorem` | [coe_mk](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/coe-mk--95e9105e8b86e1ad6c73834f.md) | 86 | `result-track:95e9105e8b86e1ad6c73834f16fd56d5874e49cfbfccdb1047ab946839099bd5` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/instance--29ea836d3a03f644b23c398f.md) | 96 | `declaration-track:29ea836d3a03f644b23c398fe339d36f640482621f050236b7b48ada385d239d` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/instance--92a769a58e7672f7e57eab33.md) | 101 | `declaration-track:92a769a58e7672f7e57eab338e9866fdd41260cc47ff45f15d234a67f42c89c2` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/instance--49be007f7b1844851f43d7a3.md) | 104 | `declaration-track:49be007f7b1844851f43d7a3a6633804cd1c41a0ed1d439246e36222b44ee8e0` |
| 12 | `theorem` | [coe_nsmul](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/coe-nsmul--3d0db53617eb2d8071bc6ea7.md) | 108 | `result-track:3d0db53617eb2d8071bc6ea7a9e932d805f372c633df508a2af6a1c62fa7126a` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/instance--db1644ee1f4fe49fdf197319.md) | 112 | `declaration-track:db1644ee1f4fe49fdf197319a26455318121fd09a23787111241cd467d33c148` |
| 14 | `theorem` | [coe_add](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/coe-add--f3db561b9beaa2c8a52a7f0d.md) | 116 | `result-track:f3db561b9beaa2c8a52a7f0d9c69451521edfae03ce5e1ede6726faa5f8adcda` |
| 15 | `theorem` | [coe_zero](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/coe-zero--6d03a53b78d7bd48b0a5b918.md) | 121 | `result-track:6d03a53b78d7bd48b0a5b91859018772ca85a0372d6e60b70b863e729f0a5b0a` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/instance--7f3d1ce413ccea1f14728ed0.md) | 125 | `declaration-track:7f3d1ce413ccea1f14728ed099219f709941f964c87b44bf74f1dcdd2ea45a9d` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/instance--629d2bea5c676ddfe150e5e2.md) | 128 | `declaration-track:629d2bea5c676ddfe150e5e25344c03c952df458910413bb08771a119b1136df` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/instance--c008d8b304abc7606e33805c.md) | 135 | `declaration-track:c008d8b304abc7606e33805c21890494c245debb7c59824a023f9c77352e6703` |
| 19 | `theorem` | [coe_smul](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/coe-smul--52c98c49cd1286b6719595f1.md) | 139 | `result-track:52c98c49cd1286b6719595f10fdf20c05798159c269351fa6c048fc0fe50bbe0` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/instance--0c63e0e2dddfd56b8b3eced3.md) | 145 | `declaration-track:0c63e0e2dddfd56b8b3eced3294a677cc2ad6fd00721917c02fa4fdf47b65232` |
| 21 | `theorem` | [coe_smul'](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/coe-smul--ebeb1ace2a49d1956ff0751c.md) | 149 | `result-track:ebeb1ace2a49d1956ff0751c702807b639480812e21fad80f97b4d52a85a23b2` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/instance--ea6da0d6d43b300ff1a70191.md) | 155 | `declaration-track:ea6da0d6d43b300ff1a7019156df83af9d4861e632f302c6762f3e531682efdf` |
| 23 | `theorem` | [bounded](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/bounded--eca879890317363ef8f32822.md) | 165 | `result-track:eca879890317363ef8f328224738536aea9eb0cdfc3d5082871fa4e129e6ceac` |
| 24 | `theorem` | [hausdorffEdist_ne_top](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/hausdorffedist-ne-top--8b1ba5786d33a22b31de6567.md) | 169 | `result-track:8b1ba5786d33a22b31de6567e9085ab6f36378956518aeb78c42afdda716d9f8` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/instance--f1f2be719e86c3586f3bb01b.md) | 176 | `declaration-track:f1f2be719e86c3586f3bb01bfed221d046efcecc6dd8bcc12378a9b436d9956d` |
| 26 | `theorem` | [hausdorffDist_coe](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/hausdorffdist-coe--925a66a2c6e49ac592532642.md) | 184 | `result-track:925a66a2c6e49ac5925326426af6b583cfcfa33a1ef0a38b0990a867169cbb03` |
| 27 | `theorem` | [hausdorffEdist_coe](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/hausdorffedist-coe--baa5d0945af895650a700221.md) | 189 | `result-track:baa5d0945af895650a70022140747fef71ecdfd90039bcc1a96536e511b725f6` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant126e626c81653516dfd33a9ea712fefff521092b037b435d5ba233d886c10b8a.lean/declarations/instance--0aa1eda91336322298c4cb9a.md) | 201 | `declaration-track:0aa1eda91336322298c4cb9a63aa336c2fca754fef487ae683b135638225cc8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
