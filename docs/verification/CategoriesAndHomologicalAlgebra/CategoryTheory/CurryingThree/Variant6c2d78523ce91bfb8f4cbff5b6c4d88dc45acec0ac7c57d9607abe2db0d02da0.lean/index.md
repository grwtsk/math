# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CurryingThree.Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aed51ed10826ee814791d444bcdf76d58712d867",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aed51ed10826ee814791d444bcdf76d58712d867`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Currying` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Trifunctor` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Associator` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [currying₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean/declarations/currying--43e021cec5f1c3f7d1ab9856.md) | 35 | `declaration-track:43e021cec5f1c3f7d1ab9856a07e6b888362f590b2d6220bd4382dfefba809e3` |
| 2 | `abbrev` | [uncurry₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean/declarations/uncurry--c7112f295bb7b9e30d057336.md) | 39 | `declaration-track:c7112f295bb7b9e30d05733605d90b56fec9697d9bc54a4654a5efc45ae7f1cc` |
| 3 | `abbrev` | [curry₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean/declarations/curry--3dc3199ac886b32d66ae4fd3.md) | 42 | `declaration-track:3dc3199ac886b32d66ae4fd35bc4e79f8c7fd853aa9c7c2459f7e474a60028c5` |
| 4 | `def` | [fullyFaithfulUncurry₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean/declarations/fullyfaithfuluncurry--84d3a9d0ed8067b7b81182a4.md) | 45 | `declaration-track:84d3a9d0ed8067b7b81182a4b095fa593a8b3a7dc6be0c723dab590ed6fa6263` |
| 5 | `lemma` | [curry₃_obj_map_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean/declarations/curry-obj-map-app-app--0294d94ab37b7adb4de8ea2c.md) | 50 | `result-track:0294d94ab37b7adb4de8ea2c4ba038aef804166985ef012d95a5a77858dfbe2e` |
| 6 | `lemma` | [curry₃_obj_obj_map_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean/declarations/curry-obj-obj-map-app--c64e42bb014ebe118503713e.md) | 55 | `result-track:c64e42bb014ebe118503713e4b7bba86fdce21e564bc83e1a7e716714e027ff7` |
| 7 | `lemma` | [curry₃_obj_obj_obj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean/declarations/curry-obj-obj-obj-map--584deec2c93d9a33b4b8a244.md) | 60 | `result-track:584deec2c93d9a33b4b8a244bc3991cae746da34d8f4d49c2192a7e8f934f4cd` |
| 8 | `lemma` | [curry₃_map_app_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean/declarations/curry-map-app-app-app--d9d0294466e870a2e54c5927.md) | 65 | `result-track:d9d0294466e870a2e54c5927b88ac57a7d79480fb3fe781db0bcaba0535f92ba` |
| 9 | `lemma` | [currying₃_unitIso_hom_app_app_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean/declarations/currying-unitiso-hom-app-app-app-app--233b6009d030a7a92fc032bd.md) | 70 | `result-track:233b6009d030a7a92fc032bd8d7d719fcdfb1b63a0a8c470129ed37c1a19616f` |
| 10 | `lemma` | [currying₃_unitIso_inv_app_app_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean/declarations/currying-unitiso-inv-app-app-app-app--19ae870a0831fd761a771654.md) | 76 | `result-track:19ae870a0831fd761a771654e389e0db4136175e2fa99b4fc5e0dd158a68d0a1` |
| 11 | `def` | [curry₃ObjProdComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean/declarations/curry-objprodcomp--63f5ebe8e5ae33da64a41d9b.md) | 86 | `declaration-track:63f5ebe8e5ae33da64a41d9baa979743dab74dae3854c4216ebb530db4926773` |
| 12 | `def` | [bifunctorComp₁₂Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean/declarations/bifunctorcomp-iso--1e775d1ee94bfa9158212089.md) | 95 | `declaration-track:1e775d1ee94bfa9158212089195676ab4540153eb20df43f10cf98ca642f07b0` |
| 13 | `def` | [bifunctorComp₂₃Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CurryingThree/Variant6c2d78523ce91bfb8f4cbff5b6c4d88dc45acec0ac7c57d9607abe2db0d02da0.lean/declarations/bifunctorcomp-iso--1aa482e64ebac690ba081654.md) | 101 | `declaration-track:1aa482e64ebac690ba081654497240e313eda306c00ddea8fd6cae5847811f05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
