# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FullSubcategory.Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e64c00bb2b9c0bc72f0102d060083dabe93595ab",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e64c00bb2b9c0bc72f0102d060083dabe93595ab`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Creates` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ClosedUnderLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/declarations/closedunderlimitsofshape--847c85588ecb4f0d4d9ea097.md) | 30 | `declaration-track:847c85588ecb4f0d4d9ea097ab3636209989abcff4db273cf0b23ef061482039` |
| 2 | `def` | [ClosedUnderColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/declarations/closedundercolimitsofshape--81778a0ce85fc9c164ffe488.md) | 37 | `declaration-track:81778a0ce85fc9c164ffe488470973758a3d3fbe765880ae7f89d60144e7f250` |
| 3 | `theorem` | [ClosedUnderLimitsOfShape.limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/declarations/closedunderlimitsofshape-limit--e0eba0116728a639f4b29482.md) | 46 | `result-track:e0eba0116728a639f4b29482aa336d2f755e2754079e7628a4c0ff64f107f020` |
| 4 | `theorem` | [ClosedUnderColimitsOfShape.colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/declarations/closedundercolimitsofshape-colimit--3caab77897ac144db06c018c.md) | 51 | `result-track:3caab77897ac144db06c018ccb078345a709019d0d111dfbac5717c5e58224d6` |
| 5 | `def` | [createsLimitFullSubcategoryInclusion'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/declarations/createslimitfullsubcategoryinclusion--a9b9a243bbe0ee6a87caa5f4.md) | 64 | `declaration-track:a9b9a243bbe0ee6a87caa5f4c9ff418c0c48a7f1d00523e7e4cd47c61c38c7f2` |
| 6 | `def` | [createsLimitFullSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/declarations/createslimitfullsubcategoryinclusion--c32aad4097b6a40eee8d06e5.md) | 72 | `declaration-track:c32aad4097b6a40eee8d06e570e9d889fd13e641c440a73b83e3e0d0d5440bcc` |
| 7 | `def` | [createsColimitFullSubcategoryInclusion'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/declarations/createscolimitfullsubcategoryinclusion--eee41fbdfbc77aefa2f7b06f.md) | 80 | `declaration-track:eee41fbdfbc77aefa2f7b06fde6ec980a843a18527f9f5dc23477a212b2be90e` |
| 8 | `def` | [createsColimitFullSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/declarations/createscolimitfullsubcategoryinclusion--852de461cc054d09b1a4d3f9.md) | 88 | `declaration-track:852de461cc054d09b1a4d3f979739f6be0ceb5cc4a5c2bf2743e61ac13631757` |
| 9 | `def` | [createsLimitFullSubcategoryInclusionOfClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/declarations/createslimitfullsubcategoryinclusionofclosed--1c6fa9dc84aad8fc3d31bb10.md) | 96 | `declaration-track:1c6fa9dc84aad8fc3d31bb10d82d7e76056ce89afe44aaa5109cc0cd060ee848` |
| 10 | `def` | [createsLimitsOfShapeFullSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/declarations/createslimitsofshapefullsubcategoryinclusion--32a176ff686cd0fce47e8e18.md) | 103 | `declaration-track:32a176ff686cd0fce47e8e18afd24ae0134aa7a29cef670d241d8d5e7a32f2cc` |
| 11 | `theorem` | [hasLimit_of_closed_under_limits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/declarations/haslimit-of-closed-under-limits--f7a3ad3563fd4671a86d28f4.md) | 108 | `result-track:f7a3ad3563fd4671a86d28f48c0442f8fdbe56469a12c998470b4894739dea38` |
| 12 | `theorem` | [hasLimitsOfShape_of_closed_under_limits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/declarations/haslimitsofshape-of-closed-under-limits--0006d747b284817d1498622b.md) | 115 | `result-track:0006d747b284817d1498622b018d93309946d06acf1ff50dc9a0de97ebc26096` |
| 13 | `def` | [createsColimitFullSubcategoryInclusionOfClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/declarations/createscolimitfullsubcategoryinclusionofclosed--16eb1b6967f78367f5888874.md) | 121 | `declaration-track:16eb1b6967f78367f58888741f3387d22a431dd2ae689d281f49c2fc9c00d78e` |
| 14 | `def` | [createsColimitsOfShapeFullSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/declarations/createscolimitsofshapefullsubcategoryinclusion--773062075a35430decfad80c.md) | 128 | `declaration-track:773062075a35430decfad80c7c2b1150cbf3349f4f5aeb951351e51d8681a5f2` |
| 15 | `theorem` | [hasColimit_of_closed_under_colimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/declarations/hascolimit-of-closed-under-colimits--f380345b06637cf1a7e17ff2.md) | 133 | `result-track:f380345b06637cf1a7e17ff2512785789f934fc7eb65f49a33d2cbf028e9327e` |
| 16 | `theorem` | [hasColimitsOfShape_of_closed_under_colimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant24370f0683b6b24584e5fce2abe94216534151775832c167d3b653b03efc3ed9.lean/declarations/hascolimitsofshape-of-closed-under-colimits--279fd4d39039eb9a7d99a7a4.md) | 140 | `result-track:279fd4d39039eb9a7d99a7a4157cffff313543504d98a0ac9477e173eea23ca2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
