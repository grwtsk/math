# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7bbac7a10808e3da24f1d6b4121f06e099f19d2",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7bbac7a10808e3da24f1d6b4121f06e099f19d2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Const` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/tensorobj--52d711cff71676317fb01fb3.md) | 39 | `declaration-track:52d711cff71676317fb01fb3e8bc4e1ef4979af15c97b6cb56f18ecf5a9bf833` |
| 2 | `def` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/tensorhom--aca60ad606a36c4c3d61451c.md) | 50 | `declaration-track:aca60ad606a36c4c3d61451c2cbc5e1562debcafef3a96601419087f223b2537` |
| 3 | `def` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/whiskerleft--9f7c7b94c2917f7462fd8ed1.md) | 56 | `declaration-track:9f7c7b94c2917f7462fd8ed165d8950f94a0d6cb5ba8884be42792367013a041` |
| 4 | `def` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/whiskerright--eea6ffbc9b294c2c6f70ad91.md) | 64 | `declaration-track:eea6ffbc9b294c2c6f70ad9187edab7ce64a6aebe4f60a2ed495691ca4e4fc89` |
| 5 | `instance` | [functorCategoryMonoidalStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/functorcategorymonoidalstruct--cd611b3e8c5b3028de9926ce.md) | 78 | `declaration-track:cd611b3e8c5b3028de9926ce9670ed77bceca0d7c31a83ec7c5fd718ccd6b3f5` |
| 6 | `theorem` | [tensorUnit_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/tensorunit-obj--a52830b565a34d5a6eb3ce04.md) | 89 | `result-track:a52830b565a34d5a6eb3ce04c19f3ba7c9749186833c6d5babb86abb87e7709c` |
| 7 | `theorem` | [tensorUnit_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/tensorunit-map--bf35ab9020cc4c8671ee684f.md) | 93 | `result-track:bf35ab9020cc4c8671ee684fb1c343d8e2dc5b46112658e135de2cac1cd5f67c` |
| 8 | `theorem` | [tensorObj_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/tensorobj-obj--25c7167d3fe450fc9c0d2dc4.md) | 97 | `result-track:25c7167d3fe450fc9c0d2dc4c4e4299b3d27f0a34969f6ac15bb8f3c3cec8165` |
| 9 | `theorem` | [tensorObj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/tensorobj-map--71b6367ae8303d962be055e0.md) | 101 | `result-track:71b6367ae8303d962be055e0c57e766dec90d0cfd7fe3d579c2ddee941478e12` |
| 10 | `theorem` | [tensorHom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/tensorhom-app--71c5ec0b4a214bd2ad14f2d8.md) | 105 | `result-track:71c5ec0b4a214bd2ad14f2d813d62886642b5b386d3f44cc4e448189e4492ec6` |
| 11 | `theorem` | [whiskerLeft_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/whiskerleft-app--36f831381a9aa494156158f6.md) | 110 | `result-track:36f831381a9aa494156158f64dbd5983fd7e9feb1fbafca43c5108c9ce799eb7` |
| 12 | `theorem` | [whiskerRight_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/whiskerright-app--c3a45000eb39a46895ce6165.md) | 115 | `result-track:c3a45000eb39a46895ce6165b89df8b0fe464223f2ae8f0e1388c27dfd23850b` |
| 13 | `theorem` | [leftUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/leftunitor-hom-app--8c467850dddaa925ee24c653.md) | 120 | `result-track:8c467850dddaa925ee24c653364901946d5cf4407def103bb4b2579e9b9d4365` |
| 14 | `theorem` | [leftUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/leftunitor-inv-app--ff95b2b10b8a272ae69aedf3.md) | 125 | `result-track:ff95b2b10b8a272ae69aedf3403681965f37dc527b8cca009ca7e1c4a64f3172` |
| 15 | `theorem` | [rightUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/rightunitor-hom-app--18519e3072aea886b50dadc1.md) | 130 | `result-track:18519e3072aea886b50dadc1ea934280cc643232316d6d28c64f4d3d6795e723` |
| 16 | `theorem` | [rightUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/rightunitor-inv-app--0e9c9913922bbeaba0b995f1.md) | 135 | `result-track:0e9c9913922bbeaba0b995f11d1170ab203cb52ec21826233d2c3722af69b545` |
| 17 | `theorem` | [associator_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/associator-hom-app--96005c20e294d83b42d412d2.md) | 140 | `result-track:96005c20e294d83b42d412d216340996ce7cc13ac372266bb6c7e85faabb8a57` |
| 18 | `theorem` | [associator_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/associator-inv-app--9c0fe57832d16c0f537debf1.md) | 145 | `result-track:9c0fe57832d16c0f537debf1a177db57bdfb8ed179599aeded0b45caa3e95830` |
| 19 | `instance` | [functorCategoryMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/functorcategorymonoidal--77599c56706075cec5c889b5.md) | 153 | `declaration-track:77599c56706075cec5c889b5edfc99345ccdda04d19e8c483cbfc8a991c4f58b` |
| 20 | `instance` | [functorCategoryBraided](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/functorcategorybraided--7c4b7e147a4bebe6f33baec1.md) | 167 | `declaration-track:7c4b7e147a4bebe6f33baec1b41ebed7bd27bb066ea33f33e39785243d2f0b59` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/example--1e94f3bf2e61986815aa9f5d.md) | 172 | `declaration-track:1e94f3bf2e61986815aa9f5dd91788a3a082c662fe17485d1814df84994c79c8` |
| 22 | `instance` | [functorCategorySymmetric](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdbd40e533fba967697fe931e0ae3025a6447d6adbe86036e51e9d80d57cd1923.lean/declarations/functorcategorysymmetric--0966d91678429378a60be765.md) | 187 | `declaration-track:0966d91678429378a60be7658593bc0484f754ecf10fe352441104ae038ad5a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
