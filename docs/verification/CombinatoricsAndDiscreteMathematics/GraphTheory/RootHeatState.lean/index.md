# Verification target: GRWTSK.Combinatorics.GraphTheory.RootHeatState

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7a6f6c42a5d8653de39ccce9a608d6ee2aaf9b3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/GraphTheory/RootHeatState.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7a6f6c42a5d8653de39ccce9a608d6ee2aaf9b3`.

Source path: `GRWTSK/Combinatorics/GraphTheory/RootHeatState.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/GraphTheory/RootHeatState.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.BigOperators` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [aggregate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/aggregate--0ad37dc76110562113257f1e.md) | 31 | `declaration-track:0ad37dc76110562113257f1e375f8104dbbb81c442cc649fedfe031a1fae3634` |
| 2 | `theorem` | [aggregate_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/aggregate-nonneg--8bc520361c79e32565cfe4e6.md) | 35 | `result-track:8bc520361c79e32565cfe4e688b795416d90cd0115380fe06aa433cd6f224e4a` |
| 3 | `theorem` | [aggregate_mass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/aggregate-mass--a4687b7e20c1f658fe96c242.md) | 43 | `result-track:a4687b7e20c1f658fe96c242f6a11be2b2b687e07a9c82db0ba2faf00b3f7c8b` |
| 4 | `structure` | [HeatKernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/heatkernel--a8c0ce89df4e522df9b374fc.md) | 54 | `declaration-track:a8c0ce89df4e522df9b374fc4c71b32e5fbdfa8eff1e0f7348942f9dc2f2be45` |
| 5 | `def` | [step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/step--ca0fd2082d041d438fab1f10.md) | 64 | `declaration-track:ca0fd2082d041d438fab1f101692562bf1c163e90f6272bdc9acad628bea862b` |
| 6 | `theorem` | [step_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/step-nonneg--c5b28c81f7ddcfb536ed07cb.md) | 67 | `result-track:c5b28c81f7ddcfb536ed07cb79071057e2127c5f810828396f89eec8fdd60177` |
| 7 | `theorem` | [step_mass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/step-mass--b3cecc8fa16214e76b4ba36a.md) | 74 | `result-track:b3cecc8fa16214e76b4ba36a5cea62a0ae6949111a95e124805763aabeae4c1d` |
| 8 | `def` | [evolve](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/evolve--0eb39b8ac0741766cb4ae668.md) | 83 | `declaration-track:0eb39b8ac0741766cb4ae6683751c985e84f4cd3ea59882e2626af8b16804157` |
| 9 | `theorem` | [evolve_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/evolve-nonneg--037180fb870a080cd51fb586.md) | 87 | `result-track:037180fb870a080cd51fb5860e6a37c8a652cc28041eb62e9c3c982baa6279a2` |
| 10 | `theorem` | [evolve_mass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/evolve-mass--0a6b810652693789c6455ec2.md) | 94 | `result-track:0a6b810652693789c6455ec24a9c5fc159c460ead7778ad7cceff5b654e39aa4` |
| 11 | `structure` | [State](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/state--7837531b0fae98c7d4b73ac3.md) | 103 | `declaration-track:7837531b0fae98c7d4b73ac36f4d1656c242936a58649e6807211d6eab0d71e8` |
| 12 | `def` | [advance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/advance--a9b4d6488102b4ee570afd1b.md) | 112 | `declaration-track:a9b4d6488102b4ee570afd1b68cd04afab1aa36b5dd85bd558a64aa3b790ff08` |
| 13 | `def` | [Prioritizes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/prioritizes--f5f72dfdccd053928148591a.md) | 117 | `declaration-track:f5f72dfdccd053928148591ae8f2a116727061a7d2a06e761e6072ab6a40ce52` |
| 14 | `theorem` | [prioritizes_total](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/prioritizes-total--e79d58f532716e983bf9d382.md) | 121 | `result-track:e79d58f532716e983bf9d382c1b5704cd7ee9be91a47a89c0bb39df5aab924de` |
| 15 | `theorem` | [prioritizes_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/prioritizes-trans--0b042e9d80fe0e15af11b238.md) | 126 | `result-track:0b042e9d80fe0e15af11b238a62d5c7bbd99fa817476cbe91e05836189628b35` |
| 16 | `def` | [active](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/active--0b3e10b63159277bc5f732a9.md) | 132 | `declaration-track:0b3e10b63159277bc5f732a980267be04f11df3d87a45d9758e860fed5a63b30` |
| 17 | `theorem` | [active_heat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/active-heat--670e37c3a53f64d00c3060f1.md) | 136 | `result-track:670e37c3a53f64d00c3060f196ad5ecee0a9b2cae8f6b306802f722be316f9f5` |
| 18 | `theorem` | [active_mass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/active-mass--b49cc27eff2647807bb3d4ca.md) | 141 | `result-track:b49cc27eff2647807bb3d4cab90c08cbbe83dbef67e2a087a861cd35a39d657a` |
| 19 | `theorem` | [active_iff_positive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/active-iff-positive--fc0b2d1c8ec76f3b69248a39.md) | 150 | `result-track:fc0b2d1c8ec76f3b69248a39f2fea99335a4f4f858da772b79031c2a48b7cf0b` |
| 20 | `def` | [ofForest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/offorest--f8b20630ae2eaab4ccdef1c2.md) | 156 | `declaration-track:f8b20630ae2eaab4ccdef1c23c867f7fa91c5c65d3ab529c4632ca6bbf20c0e1` |
| 21 | `theorem` | [forest_evolve_mass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/declarations/forest-evolve-mass--275ccd86cfacde0417741588.md) | 162 | `result-track:275ccd86cfacde0417741588830389cd0843ef429d72f9210577b69d4e0e0ea7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
