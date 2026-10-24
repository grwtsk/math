# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Forget.Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10c8473198a943eb309de741cf97cabdb6386f8e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10c8473198a943eb309de741cf97cabdb6386f8e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.EqualizerProducts` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagramCompPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean/declarations/diagramcomppreserveslimits--6ab7ad829b9016b1a1d69055.md) | 74 | `declaration-track:6ab7ad829b9016b1a1d6905566cbc6ef7208518f1edd00e0c3624982c5081f79` |
| 2 | `def` | [mapConeFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean/declarations/mapconefork--1bec0dedea8717f5d794af18.md) | 111 | `declaration-track:1bec0dedea8717f5d794af186bc663d4667bad03e445eae81da243576703877f` |
| 3 | `theorem` | [isSheaf_iff_isSheaf_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean/declarations/issheaf-iff-issheaf-comp--94adc41f25a4402769f9eac8.md) | 168 | `result-track:94adc41f25a4402769f9eac8024045d1523fc8b422926051dc40b92d9c2f2da4` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant5e95cd2e40eb3e53e49eb6b9d0fed2caadd683e5ebdcc4f6433cec9d2d7b086d.lean/declarations/example--55b525bd57cb667339ba74c0.md) | 252 | `declaration-track:55b525bd57cb667339ba74c0baf8582cfee205fa8622fbd9bb24920ab55d8554` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
