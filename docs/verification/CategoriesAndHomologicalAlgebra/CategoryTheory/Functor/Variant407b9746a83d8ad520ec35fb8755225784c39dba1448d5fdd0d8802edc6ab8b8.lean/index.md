# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83454ecd64c197f147f1760a7d3f5cd2d23afb4e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83454ecd64c197f147f1760a7d3f5cd2d23afb4e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Triangulated.Opposite.Pretriangulated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Opposites` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [commShiftFunctorOpInt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/commshiftfunctoropint--d42783da627a713dbb1f4132.md) | 37 | `declaration-track:d42783da627a713dbb1f4132e8ced88014dabadec9409ffbb10151cb45b636f6` |
| 2 | `instance` | [commShift_natTrans_op_int](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/commshift-nattrans-op-int--a1d17e9249cf3ab37bd058e0.md) | 44 | `declaration-track:a1d17e9249cf3ab37bd058e0a77895fcc37da4b776ff340331bff36b5d93c6b9` |
| 3 | `instance` | [commShift_adjunction_op_int](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/commshift-adjunction-op-int--4f05c41c3302fa85bdb73872.md) | 50 | `declaration-track:4f05c41c3302fa85bdb738729c6bad2df4e76eb8552766c4f16a59d776e3a574` |
| 4 | `lemma` | [op_commShiftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/op-commshiftiso-hom-app--c5ee5ed99667ae0bade80b48.md) | 71 | `result-track:c5ee5ed99667ae0bade80b4882db0666f426015d84328a240c7d936fdd9790b8` |
| 5 | `lemma` | [op_commShiftIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/op-commshiftiso-inv-app--1ddc980537dd4162305aaa66.md) | 80 | `result-track:1ddc980537dd4162305aaa66889e5d894a47e8c433e8314b7aead2f1d4144fbd` |
| 6 | `lemma` | [shift_map_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/shift-map-op--fc44882cad74489b1db36725.md) | 90 | `result-track:fc44882cad74489b1db36725d36ddb32a5677ab1cf5bd1797b063cb5639d15f0` |
| 7 | `lemma` | [map_shift_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/map-shift-unop--fbdd9248fe1b49b2480ca2fa.md) | 96 | `result-track:fbdd9248fe1b49b2480ca2faca1bed533d0042907b900ec8d5aad8addf9fd4e3` |
| 8 | `lemma` | [map_opShiftFunctorEquivalence_unitIso_hom_app_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/map-opshiftfunctorequivalence-unitiso-hom-app-unop--39339252b23551f2108aaf7d.md) | 102 | `result-track:39339252b23551f2108aaf7d51e80b7c58501fc3904951c0edb3b089f61a7b30` |
| 9 | `lemma` | [map_opShiftFunctorEquivalence_unitIso_inv_app_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/map-opshiftfunctorequivalence-unitiso-inv-app-unop--6b0cc89219b31b4649419c97.md) | 118 | `result-track:6b0cc89219b31b4649419c97812af34b49a40a1c5c5cd039d50e81472697331b` |
| 10 | `lemma` | [map_opShiftFunctorEquivalence_counitIso_hom_app_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/map-opshiftfunctorequivalence-counitiso-hom-app-unop--8cdf8e547bfaa0b1c5f77e35.md) | 130 | `result-track:8cdf8e547bfaa0b1c5f77e35671cdd9df1b78f0cdc587c35d529a97173bca57e` |
| 11 | `lemma` | [map_opShiftFunctorEquivalence_counitIso_inv_app_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/map-opshiftfunctorequivalence-counitiso-inv-app-unop--4f1d0f0455677eec73bee9bd.md) | 142 | `result-track:4f1d0f0455677eec73bee9bd693faaed4dbeb37b8f3f7c647f601a6a0d897e39` |
| 12 | `def` | [mapTriangleOpCompTriangleOpEquivalenceFunctorApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/maptriangleopcomptriangleopequivalencefunctorapp--502ee4621991f8ee57b1bb0d.md) | 169 | `declaration-track:502ee4621991f8ee57b1bb0dafef8b04ec5d177733107fd913a769c9621df4c8` |
| 13 | `def` | [mapTriangleOpCompTriangleOpEquivalenceFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/maptriangleopcomptriangleopequivalencefunctor--d4c468728ba493f8a5c559a6.md) | 184 | `declaration-track:d4c468728ba493f8a5c559a69f76d151cafd02ab81d1d771adfc8e4d8c6801f7` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/instance--5daea70b89307a16fcdc2fb6.md) | 195 | `declaration-track:5daea70b89307a16fcdc2fb6a1d1cd20e2808e95b86e053e73115cf373321103` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/instance--f04f7de654299d2a3e4292d1.md) | 204 | `declaration-track:f04f7de654299d2a3e4292d188932bfe43fd7a3fff1548a6c046b48e99329b9e` |
| 16 | `def` | [opMapTriangleCompTriangleOpEquivalenceInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/opmaptrianglecomptriangleopequivalenceinverse--93240c0232f3e87c08409197.md) | 214 | `declaration-track:93240c0232f3e87c084091973eeb6470e20ead4a9a6851518f1960ddab1db3ac` |
| 17 | `instance` | [functor_isTriangulated_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/functor-istriangulated-op--d3cc24c620f5448b96c43e58.md) | 227 | `declaration-track:d3cc24c620f5448b96c43e585fec5bc2fcfdc4bc811dff70cd10a7b00e8e8ce1` |
| 18 | `lemma` | [isTriangulated_of_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/istriangulated-of-op--5fc11160ee1121907c46b8f9.md) | 240 | `result-track:5fc11160ee1121907c46b8f97c28793a9fed8b00d9eba40af45f661ee51c9f5e` |
| 19 | `lemma` | [op_isTriangulated_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant407b9746a83d8ad520ec35fb8755225784c39dba1448d5fdd0d8802edc6ab8b8.lean/declarations/op-istriangulated-iff--28b49c6cd8df9f3fe88db83b.md) | 257 | `result-track:28b49c6cd8df9f3fe88db83b7d14993946806d3a334b812f25c073b6410bf20f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
