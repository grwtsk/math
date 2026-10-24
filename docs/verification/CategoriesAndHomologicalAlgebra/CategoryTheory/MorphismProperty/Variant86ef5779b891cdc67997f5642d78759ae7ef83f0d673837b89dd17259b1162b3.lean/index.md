# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MorphismProperty.Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "decdeb5317c240d0fdfefca4af560341cf5ea117",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `decdeb5317c240d0fdfefca4af560341cf5ea117`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Comma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Over.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FullSubcategory` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Comma` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forgetCreatesLimitOfClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/declarations/forgetcreateslimitofclosed--69e81fef0d354fdad837e3d9.md) | 38 | `declaration-track:69e81fef0d354fdad837e3d9e9227f09535c1be1fa0cef91adef3ef130f1e83c` |
| 2 | `def` | [forgetCreatesLimitsOfShapeOfClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/declarations/forgetcreateslimitsofshapeofclosed--3b720208c6b92bfdb7b67612.md) | 48 | `declaration-track:3b720208c6b92bfdb7b67612fdae8b4034a0a3b361389cbb212816449325a08c` |
| 3 | `lemma` | [hasLimit_of_closedUnderLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/declarations/haslimit-of-closedunderlimitsofshape--47634989f70ebff452417f91.md) | 53 | `result-track:47634989f70ebff452417f913c4e4f24cd573d5c0121c6decee7ea7eaea6cf11` |
| 4 | `lemma` | [hasLimitsOfShape_of_closedUnderLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/declarations/haslimitsofshape-of-closedunderlimitsofshape--908b8ec05d2372f6372f1b06.md) | 60 | `result-track:908b8ec05d2372f6372f1b0657f09bae9bd7ed50f3f7c25d5340a5d7dc20f164` |
| 5 | `lemma` | [CostructuredArrow.closedUnderLimitsOfShape_discrete_empty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/declarations/costructuredarrow-closedunderlimitsofshape-discrete-empty--8c44132230e04ca3909eb69a.md) | 71 | `result-track:8c44132230e04ca3909eb69a6b79075248514a310e9354014efa7f013ea15abd` |
| 6 | `lemma` | [Over.closedUnderLimitsOfShape_discrete_empty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/declarations/over-closedunderlimitsofshape-discrete-empty--af36f0b732ba57c7642c99e7.md) | 89 | `result-track:af36f0b732ba57c7642c99e73083a111e9e447b7ce196b678e5abf7e9c968680` |
| 7 | `lemma` | [Over.closedUnderLimitsOfShape_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/declarations/over-closedunderlimitsofshape-pullback--a47ed067eeeb845d3b7d2447.md) | 98 | `result-track:a47ed067eeeb845d3b7d2447f27acdcd8e3c4ba59980e6c3a0aa073f88c6f3e6` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/declarations/instance--e1393ad3fe597edc32561bc9.md) | 115 | `declaration-track:e1393ad3fe597edc32561bc9dc3e72ae348f4e32fa0d5fb5dcd2e16b0665f652` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/declarations/instance--264a29521b667da49944a2b2.md) | 124 | `declaration-track:264a29521b667da49944a2b221b005fd7238dcb02cb087a8208b8b6fd391e3d1` |
| 10 | `def` | [mkIdTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/declarations/mkidterminal--e01742448604b9d43570866d.md) | 134 | `declaration-track:e01742448604b9d43570866d84e56b909c9a61e32c00e6afef64ac9502a080a0` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/declarations/instance--333aa3194a2c9efb495800b9.md) | 138 | `declaration-track:333aa3194a2c9efb495800b9f9a65aeaae64cb17d3e9fc2dcc376f755e18a1ba` |
| 12 | `instance` | [createsLimitsOfShape_walkingCospan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/declarations/createslimitsofshape-walkingcospan--03b4d40fe46d3eb99f2a08d7.md) | 144 | `declaration-track:03b4d40fe46d3eb99f2a08d7bf8b536467bae7659d3067bf556e734f031e1dce` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/declarations/instance--d296e287b82f37f86ab4e740.md) | 154 | `declaration-track:d296e287b82f37f86ab4e740ce1ca7e15d4816471427c6d7adacc450242c466b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
