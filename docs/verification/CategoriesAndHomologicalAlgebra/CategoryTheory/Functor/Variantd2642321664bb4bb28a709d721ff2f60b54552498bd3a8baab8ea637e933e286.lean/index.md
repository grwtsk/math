# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d79adaa9ccbfe79ba5bce497f38f888be4fa0e92",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d79adaa9ccbfe79ba5bce497f38f888be4fa0e92`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Triangulated.Opposite.Pretriangulated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Opposites` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [commShiftFunctorOpInt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/commshiftfunctoropint--6898ff9391b5e0cc49a5453e.md) | 45 | `declaration-track:6898ff9391b5e0cc49a5453e6fa4611651a0a0e3c0a6af7863a225866e72ab02` |
| 2 | `instance` | [commShift_natTrans_op_int](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/commshift-nattrans-op-int--43513343bc1ec52bff8643ae.md) | 52 | `declaration-track:43513343bc1ec52bff8643ae76d32c0bce53d625c459f46348afbf815ff3d77d` |
| 3 | `instance` | [commShift_adjunction_op_int](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/commshift-adjunction-op-int--8157068385807d3ad428a1fb.md) | 58 | `declaration-track:8157068385807d3ad428a1fb2c4fe2a1daeb2f023865745bd3eed9bbed840a37` |
| 4 | `lemma` | [op_commShiftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/op-commshiftiso-hom-app--74686c0de26ff26b7bfdba68.md) | 79 | `result-track:74686c0de26ff26b7bfdba68f4ab4bebe924a611458af647086f2d2f97838da4` |
| 5 | `lemma` | [op_commShiftIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/op-commshiftiso-inv-app--77dd35e03bf369ab8fbb313d.md) | 88 | `result-track:77dd35e03bf369ab8fbb313d36ff6ed388f11e991cd66ea502d89b5a2b1e732c` |
| 6 | `lemma` | [shift_map_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/shift-map-op--a2908e67e2ca11164bd12e3d.md) | 98 | `result-track:a2908e67e2ca11164bd12e3d5830c782f30c846df74a6a57183292bb07d593d2` |
| 7 | `lemma` | [map_shift_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/map-shift-unop--9555ca0913a110f391cec1ec.md) | 104 | `result-track:9555ca0913a110f391cec1ec816cc766cd6d304810421811670d2395dd561002` |
| 8 | `lemma` | [map_opShiftFunctorEquivalence_unitIso_hom_app_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/map-opshiftfunctorequivalence-unitiso-hom-app-unop--f36076d868c6ac18a9be03ec.md) | 110 | `result-track:f36076d868c6ac18a9be03ecefa646ca7c5fe41e8e93cc8f08b0bee5dc414bb3` |
| 9 | `lemma` | [map_opShiftFunctorEquivalence_unitIso_inv_app_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/map-opshiftfunctorequivalence-unitiso-inv-app-unop--d7dd81180c8159c8dcde2951.md) | 126 | `result-track:d7dd81180c8159c8dcde29515a0afa6e27345799a5704691573480e88d33652b` |
| 10 | `lemma` | [map_opShiftFunctorEquivalence_counitIso_hom_app_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/map-opshiftfunctorequivalence-counitiso-hom-app-unop--03e689abbff8db3a1ea76bdb.md) | 138 | `result-track:03e689abbff8db3a1ea76bdbbe581b9b0ab8f64ae85f0eaa411684cd45a8ae58` |
| 11 | `lemma` | [map_opShiftFunctorEquivalence_counitIso_inv_app_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/map-opshiftfunctorequivalence-counitiso-inv-app-unop--615275236dedee954c37c89b.md) | 150 | `result-track:615275236dedee954c37c89b60152a2d82558fddca20f8eb9c5480969ff95ef3` |
| 12 | `def` | [mapTriangleOpCompTriangleOpEquivalenceFunctorApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/maptriangleopcomptriangleopequivalencefunctorapp--d29a10f984d6bee95c631463.md) | 177 | `declaration-track:d29a10f984d6bee95c6314633e43209ff7cfd313847f9982eaaec01e5b15b3aa` |
| 13 | `def` | [mapTriangleOpCompTriangleOpEquivalenceFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/maptriangleopcomptriangleopequivalencefunctor--f1346037fa376bf7cdc604ca.md) | 192 | `declaration-track:f1346037fa376bf7cdc604ca4a2eabd062743b23dd055fe0215975a83cbad49c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/instance--e5f0a8c6b75d42c280da73eb.md) | 203 | `declaration-track:e5f0a8c6b75d42c280da73ebb8ddfa5038201df1018f8a61066b0b902d989af4` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/instance--f75a4e2abbed9d9fe946e1a3.md) | 212 | `declaration-track:f75a4e2abbed9d9fe946e1a3f7e68647ae25f68f7b47b9d25d4aa8d9a9621abf` |
| 16 | `def` | [opMapTriangleCompTriangleOpEquivalenceInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/opmaptrianglecomptriangleopequivalenceinverse--8fa44a904182bcb49896d7f7.md) | 222 | `declaration-track:8fa44a904182bcb49896d7f7795dba5916ee8de7abf0afb056e9e622f277ff6a` |
| 17 | `instance` | [functor_isTriangulated_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/functor-istriangulated-op--37fe2bd7416cc8987aa8d98d.md) | 235 | `declaration-track:37fe2bd7416cc8987aa8d98dde5c3066099ff260e097cb28e98fec8ccd778caa` |
| 18 | `lemma` | [isTriangulated_of_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/istriangulated-of-op--ee2f16f6d3256135494a0472.md) | 248 | `result-track:ee2f16f6d3256135494a04723bb061e0baf4a0bad60a53eaffcc06ba3db28179` |
| 19 | `lemma` | [op_isTriangulated_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/declarations/op-istriangulated-iff--4fc0d3ad338dc27573340c9b.md) | 265 | `result-track:4fc0d3ad338dc27573340c9b71452a68d3ec408d20230fa9c27a9a0e1edf0dc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
