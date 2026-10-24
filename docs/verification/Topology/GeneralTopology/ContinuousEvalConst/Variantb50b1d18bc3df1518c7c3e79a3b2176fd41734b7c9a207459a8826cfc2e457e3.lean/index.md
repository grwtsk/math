# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousEvalConst.Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d51c146c1080ba5fed30f5d490988cbbf1307e4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d51c146c1080ba5fed30f5d490988cbbf1307e4`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousEvalConst](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/declarations/continuousevalconst--eefc1e535a2b9d8c99399958.md) | 35 | `declaration-track:eefc1e535a2b9d8c9939995845a453f4d5acc5ba5f61661097ceb901db204ed7` |
| 2 | `theorem` | [ContinuousEvalConst.of_continuous_forget](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/declarations/continuousevalconst-of-continuous-forget--83f84bf4c9e33af0c90fffdd.md) | 51 | `result-track:83f84bf4c9e33af0c90fffddb9220d0d2e9fa5a8cd37fe21d1b8ad19c1d6f54e` |
| 3 | `theorem` | [Continuous.eval_const](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/declarations/continuous-eval-const--7a0c0ff8d3fa7df9767f6ceb.md) | 57 | `result-track:7a0c0ff8d3fa7df9767f6ceba512224c7d033b35a60b136e78121395f104313d` |
| 4 | `theorem` | [continuous_coeFun](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/declarations/continuous-coefun--9971158f1ec7b53c91254435.md) | 60 | `result-track:9971158f1ec7b53c9125443551da43ed9922efa1a16c01c6f2a3496224c3b4dc` |
| 5 | `theorem` | [Continuous.coeFun](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/declarations/continuous-coefun--90fcdd7e10ba6a0b2eaa4202.md) | 63 | `result-track:90fcdd7e10ba6a0b2eaa42021643858b9445de28698c0b63a90e1383d4298ba8` |
| 6 | `theorem` | [Filter.Tendsto.eval_const](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/declarations/filter-tendsto-eval-const--42ed6223de1a7848a78f8220.md) | 66 | `result-track:42ed6223de1a7848a78f8220c48f67550ba9367082972c12daceaf52b814e329` |
| 7 | `theorem` | [Filter.Tendsto.coeFun](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/declarations/filter-tendsto-coefun--66a091afcb0f898420d6b105.md) | 70 | `result-track:66a091afcb0f898420d6b105cdda68baf7f734a58bdbd61a836bd2393dd1005e` |
| 8 | `theorem` | [ContinuousAt.eval_const](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/declarations/continuousat-eval-const--5038329b88ee79c4240af711.md) | 74 | `result-track:5038329b88ee79c4240af711174575fdb49916470f8648cfc7488d61193b128f` |
| 9 | `theorem` | [ContinuousAt.coeFun](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/declarations/continuousat-coefun--33a8dc3b71b6506cfcd7bb88.md) | 78 | `result-track:33a8dc3b71b6506cfcd7bb887392114cb13a8f68849374519bd9336dbd4ebcda` |
| 10 | `theorem` | [ContinuousWithinAt.eval_const](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/declarations/continuouswithinat-eval-const--fa8f1712f203fc068e748ebc.md) | 82 | `result-track:fa8f1712f203fc068e748ebc1cd248617b5094b725d567e74f7e1aec7efa961e` |
| 11 | `theorem` | [ContinuousWithinAt.coeFun](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/declarations/continuouswithinat-coefun--1261d77004f78cf5a4d840f7.md) | 86 | `result-track:1261d77004f78cf5a4d840f7032ea6abc6b156ab09cc49160c478bd80f1f2bd1` |
| 12 | `theorem` | [ContinuousOn.eval_const](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/declarations/continuouson-eval-const--06bad6fe4b35a4623e21e90b.md) | 90 | `result-track:06bad6fe4b35a4623e21e90b60e396fa252a8f2a3700caa88bc1a87928781413` |
| 13 | `theorem` | [ContinuousOn.coeFun](../../../../../mathematics/Topology/GeneralTopology/ContinuousEvalConst/Variantb50b1d18bc3df1518c7c3e79a3b2176fd41734b7c9a207459a8826cfc2e457e3.lean/declarations/continuouson-coefun--2c23229a8d9ebb1267eed7f0.md) | 94 | `result-track:2c23229a8d9ebb1267eed7f03760fa0e3017892a96b617657d84341464c00274` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
