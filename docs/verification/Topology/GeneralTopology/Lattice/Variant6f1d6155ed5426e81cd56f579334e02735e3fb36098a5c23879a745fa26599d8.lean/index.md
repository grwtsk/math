# Verification target: GRWTSK.Topology.GeneralTopology.Lattice.Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed2f5978f56ef0bda1418a676e913ca4f060e1be",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed2f5978f56ef0bda1418a676e913ca4f060e1be`.

Source path: `GRWTSK/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousInf](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/declarations/continuousinf--532d3a16605c34c418e60a83.md) | 38 | `declaration-track:532d3a16605c34c418e60a8393ad2655139e0ee8d6f4a55e2f09841c3aea3a27` |
| 2 | `class` | [ContinuousSup](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/declarations/continuoussup--f770d4a4101642892df8c3cc.md) | 47 | `declaration-track:f770d4a4101642892df8c3cc1ffc8018eaebd79dd08f38c6705f9f5f652d2703` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/declarations/instance--b9f8d36d1afd46f90f8b36e4.md) | 53 | `declaration-track:b9f8d36d1afd46f90f8b36e4d10f03ba4648941ede51f5e23f4c27856af11eeb` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/declarations/instance--5430a696a69e59d83346728e.md) | 59 | `declaration-track:5430a696a69e59d83346728eb2402f3664fa38508e2e38b2531a5a0eae32c5a5` |
| 5 | `class` | [TopologicalLattice](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/declarations/topologicallattice--c44e6c32cf21c90e421aab88.md) | 67 | `declaration-track:c44e6c32cf21c90e421aab885492077ec75a8962bd848359d81b09b5e5905558` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/declarations/instance--e6db256e17132e985a907bce.md) | 72 | `declaration-track:e6db256e17132e985a907bce3dd150b6bf6658b24dbbb9303ba9d1224aa60c11` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/declarations/instance--d9a7b018e02214d4808b0de9.md) | 77 | `declaration-track:d9a7b018e02214d4808b0de9e3478464f007f6ad8cebc50a8e0800124ae88b37` |
| 8 | `theorem` | [continuous_inf](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/declarations/continuous-inf--4a4fe93673bca75e7db30ae0.md) | 87 | `result-track:4a4fe93673bca75e7db30ae0f43e75b896f84c8b077ae7fc7e211f4890035b67` |
| 9 | `theorem` | [Continuous.inf](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/declarations/continuous-inf--5e92c44dccf29773ebed6d13.md) | 92 | `result-track:5e92c44dccf29773ebed6d133122099e630a4eea5ee744d26390f491eda449d9` |
| 10 | `theorem` | [continuous_sup](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/declarations/continuous-sup--00445c6db6480e185b647c5b.md) | 98 | `result-track:00445c6db6480e185b647c5b88bf06f2f10afe62e280f59173b437de4f04ac3b` |
| 11 | `theorem` | [Continuous.sup](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/declarations/continuous-sup--9113001a397d42f34c1945ea.md) | 103 | `result-track:9113001a397d42f34c1945ea20ed6b060ed821d60b2a80a1f5a4dda747e6e110` |
| 12 | `theorem` | [Filter.Tendsto.sup_right_nhds'](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/declarations/filter-tendsto-sup-right-nhds--fb8a5538902cbec60f098c1d.md) | 108 | `result-track:fb8a5538902cbec60f098c1ddb3fecf2f86c21cbc0053c448db4a6f051ab6bac` |
| 13 | `theorem` | [Filter.Tendsto.sup_right_nhds](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/declarations/filter-tendsto-sup-right-nhds--7c17b70a33d99c151678f983.md) | 114 | `result-track:7c17b70a33d99c151678f983d833a22f048b75d0ff06dd4b7c896f2cbbfe64cd` |
| 14 | `theorem` | [Filter.Tendsto.inf_right_nhds'](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/declarations/filter-tendsto-inf-right-nhds--1e5d1fe84be086807363dce7.md) | 120 | `result-track:1e5d1fe84be086807363dce7735de7d64561563a8f9261c4d23ab4a2a007efa6` |
| 15 | `theorem` | [Filter.Tendsto.inf_right_nhds](../../../../../mathematics/Topology/GeneralTopology/Lattice/Variant6f1d6155ed5426e81cd56f579334e02735e3fb36098a5c23879a745fa26599d8.lean/declarations/filter-tendsto-inf-right-nhds--961fe5790516a1911d1ad448.md) | 126 | `result-track:961fe5790516a1911d1ad448e3b3640fe357b78ba37539e26b87b45839f4ef89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
