# Verification target: GRWTSK.Topology.GeneralTopology.Field.Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b46bdd2d8108efe0e15b812ebdbb559b387affd5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b46bdd2d8108efe0e15b812ebdbb559b387affd5`.

Source path: `GRWTSK/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Subfield.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Pointwise.Interval` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.GroupWithZero` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LocalExtr` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.tendsto_cocompact_mul_left₀](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/filter-tendsto-cocompact-mul-left--3f5d109ee77eb77aad235033.md) | 25 | `result-track:3f5d109ee77eb77aad235033ae2c27a616af47aa3354474a590bee86d856566b` |
| 2 | `theorem` | [Filter.tendsto_cocompact_mul_right₀](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/filter-tendsto-cocompact-mul-right--ce4e4e840c4190a433f857f0.md) | 31 | `result-track:ce4e4e840c4190a433f857f08b90f315bc508bd72dd2c7def46c870cd96dfce6` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/instance--98b9d035f83c44d1d5cdeab1.md) | 36 | `declaration-track:98b9d035f83c44d1d5cdeab19ccaf447ef6754ca281a1e8177cdcab0ccd21281` |
| 4 | `class` | [IsTopologicalDivisionRing](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/istopologicaldivisionring--2aafd9336d4a4063823d72aa.md) | 47 | `declaration-track:2aafd9336d4a4063823d72aa33e358774afc7f1b59d911b3ca2fae06abbda530` |
| 5 | `def` | [Subfield.topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/subfield-topologicalclosure--acfc2146b96d98fab6538325.md) | 57 | `declaration-track:acfc2146b96d98fab6538325a744ce06b2122c89276f5121ac70ece353eb042c` |
| 6 | `theorem` | [Subfield.le_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/subfield-le-topologicalclosure--965720b3d8227a475666a4fa.md) | 66 | `result-track:965720b3d8227a475666a4fa3b38fb39b2b66f4f4490ebf876f4f9de76cf1a36` |
| 7 | `theorem` | [Subfield.isClosed_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/subfield-isclosed-topologicalclosure--f1249de36a7d50279881bac3.md) | 69 | `result-track:f1249de36a7d50279881bac3bbc6082d98845dbdfab058cab9b4b344a409e1eb` |
| 8 | `theorem` | [Subfield.topologicalClosure_minimal](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/subfield-topologicalclosure-minimal--c67c82850d6ac7681be75d9c.md) | 73 | `result-track:c67c82850d6ac7681be75d9cf6db0dbfe13f8d17ae8c11609bafd8169ce5f4c3` |
| 9 | `def` | [affineHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/affinehomeomorph--8350b2266058a6651b1317ff.md) | 95 | `declaration-track:8350b2266058a6651b1317ff9b2b930a0be3d3d552f8c371ffb2a138344c6d2c` |
| 10 | `theorem` | [affineHomeomorph_image_Icc](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/affinehomeomorph-image-icc--38e24c99c1917618930a65c2.md) | 103 | `result-track:38e24c99c1917618930a65c276170091c6cda8cea8e91f21f337e9a417feaefb` |
| 11 | `theorem` | [affineHomeomorph_image_Ico](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/affinehomeomorph-image-ico--d16b7a95b3eeda66ccf26809.md) | 109 | `result-track:d16b7a95b3eeda66ccf26809d1f3fb6946ff8f55deb4a6212b7aba9782dd54aa` |
| 12 | `theorem` | [affineHomeomorph_image_Ioc](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/affinehomeomorph-image-ioc--01a89e48ec37445faf7ff20b.md) | 115 | `result-track:01a89e48ec37445faf7ff20b49df86a9a75ef8c696940acad8a55061f1342534` |
| 13 | `theorem` | [affineHomeomorph_image_Ioo](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/affinehomeomorph-image-ioo--e189cf8557d6191eaba24525.md) | 121 | `result-track:e189cf8557d6191eaba245253f7a915f124cac6df98dec29421e050cdc22303e` |
| 14 | `theorem` | [IsLocalMin.inv](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/islocalmin-inv--080ba1660495b9aee12b163e.md) | 136 | `result-track:080ba1660495b9aee12b163e501ca66c356c8d612163f91a5c9c2a24315ddb89` |
| 15 | `theorem` | [IsPreconnected.eq_one_or_eq_neg_one_of_sq_eq](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/ispreconnected-eq-one-or-eq-neg-one-of-sq-eq--9494eda32c2366a050d0f196.md) | 153 | `result-track:9494eda32c2366a050d0f196c24109d694d8fbe26549fad012d9b183947eb2f0` |
| 16 | `theorem` | [IsPreconnected.eq_or_eq_neg_of_sq_eq](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/ispreconnected-eq-or-eq-neg-of-sq-eq--89045d4bdc4c0252b1e84e93.md) | 164 | `result-track:89045d4bdc4c0252b1e84e931f10928bda67549ce7514d7bb60c845154455820` |
| 17 | `theorem` | [IsPreconnected.eq_of_sq_eq](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/ispreconnected-eq-of-sq-eq--8d99141e25a6203fad0642da.md) | 176 | `result-track:8d99141e25a6203fad0642da1ff662659758d11b5e23a5faf56fc8646df23fde` |
| 18 | `instance` | [Subfield.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/declarations/subfield-continuoussmul--7a63b701b08c751f29c754e5.md) | 192 | `declaration-track:7a63b701b08c751f29c754e504c6ca926e310dde85c4410b029a60100c8eb156` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
