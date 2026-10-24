# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategories.Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "828fd93412072b52c9fb595da819e9c21530f244",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `828fd93412072b52c9fb595da819e9c21530f244`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Idempotents.Karoubi` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [app_idem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean/declarations/app-idem--eb72fa25e40ea4267a78d688.md) | 46 | `result-track:eb72fa25e40ea4267a78d6882e4468b40aa9e6c427fe3935d4508f92c4481b25` |
| 2 | `theorem` | [app_p_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean/declarations/app-p-comp--59ee4711db32fa1837206d43.md) | 53 | `result-track:59ee4711db32fa1837206d434c749d47af1685bbea827f513e71e77e183a2621` |
| 3 | `theorem` | [app_comp_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean/declarations/app-comp-p--0912a8d847daeb2d633fcc62.md) | 58 | `result-track:0912a8d847daeb2d633fcc62c65b9fcb2f135053014c5d9501d473841cab96c9` |
| 4 | `theorem` | [app_p_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean/declarations/app-p-comm--467e5f48731f6371834b3f39.md) | 63 | `result-track:467e5f48731f6371834b3f39a80848ad15e4f75cfa00d6a0f1e24dcfe4b6ba2b` |
| 5 | `instance` | [functor_category_isIdempotentComplete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean/declarations/functor-category-isidempotentcomplete--0b42d9de43bd27b5b75e44f3.md) | 69 | `declaration-track:0b42d9de43bd27b5b75e44f39cd9cc96a287da1e99af42f06edd068aa9419850` |
| 6 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean/declarations/obj--8107b89e689d8ad97f360a94.md) | 104 | `declaration-track:8107b89e689d8ad97f360a94f26a239d8e605e154d60ba880a5dc52ca09d4fbe` |
| 7 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean/declarations/map--4c90b21210bd9fe89a67d550.md) | 117 | `declaration-track:4c90b21210bd9fe89a67d550a8d5c7703a707e9b163c5a20343277442fa801a2` |
| 8 | `def` | [karoubiFunctorCategoryEmbedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean/declarations/karoubifunctorcategoryembedding--a413c33035ad20e412082bd9.md) | 125 | `declaration-track:a413c33035ad20e412082bd9ade13ad6b6c31dd4a469b7dbf99aa2e84458d9e5` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean/declarations/instance--574b0d886ad6c86ac75af4cf.md) | 130 | `declaration-track:574b0d886ad6c86ac75af4cf23373c0b71305a0d41fcd32aa4d0d5027b53553c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean/declarations/instance--1a0597cd978a29dd6290b9f4.md) | 145 | `declaration-track:1a0597cd978a29dd6290b9f430f2c9bd6373dbe861fec6ccf655ba2d38379b95` |
| 11 | `theorem` | [toKaroubi_comp_karoubiFunctorCategoryEmbedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant0c4354969cdea96730bc22a864c25263d2fc3e392fb2aa02a8e18731123a08cf.lean/declarations/tokaroubi-comp-karoubifunctorcategoryembedding--076bd6633c91c71c5ff4d554.md) | 153 | `result-track:076bd6633c91c71c5ff4d5542d24c283bbca6f88d00c52e3b25d502e9eea7d38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
