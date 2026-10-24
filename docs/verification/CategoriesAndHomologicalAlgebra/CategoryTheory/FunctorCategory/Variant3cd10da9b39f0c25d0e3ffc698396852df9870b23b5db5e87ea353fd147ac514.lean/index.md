# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03a4e27d040a416907dcce5e7e6eb501c2a0f87b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03a4e27d040a416907dcce5e7e6eb501c2a0f87b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Const` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/tensorobj--1e44afd881fa707e45eb3218.md) | 42 | `declaration-track:1e44afd881fa707e45eb321896c09f57279019ac216f81c24061468f43d6972b` |
| 2 | `def` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/tensorhom--f62c62a1774a8c5f7506963a.md) | 55 | `declaration-track:f62c62a1774a8c5f7506963aa434e99e9d2b14a4665dc57f8d72e830a0aa3058` |
| 3 | `def` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/whiskerleft--bbce35e537b8e8d9c99e528c.md) | 62 | `declaration-track:bbce35e537b8e8d9c99e528c76544bb24ea18db82bc99cd642e18e7aa2d4e75e` |
| 4 | `def` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/whiskerright--9c3fc3c35bde28a2cec0ea79.md) | 70 | `declaration-track:9c3fc3c35bde28a2cec0ea79ab3d0f95ce83dfdcf9cec8d8f68aee68a69784fa` |
| 5 | `instance` | [functorCategoryMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/functorcategorymonoidal--80eb2db4487d512abc7ed038.md) | 84 | `declaration-track:80eb2db4487d512abc7ed038cc7af51c84447f6dbe0cde1bd46c935108a622d5` |
| 6 | `theorem` | [tensorUnit_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/tensorunit-obj--3959d52b30431e674497aa7f.md) | 98 | `result-track:3959d52b30431e674497aa7ff67256af278ad3f24f61dd8a142c8a3dae8d3381` |
| 7 | `theorem` | [tensorUnit_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/tensorunit-map--c54ee0e88c99756f6e09074a.md) | 103 | `result-track:c54ee0e88c99756f6e09074ad7ce56ebf36804131a01fb450eb55c403bd57ba5` |
| 8 | `theorem` | [tensorObj_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/tensorobj-obj--e342889627bc82bafbfa4734.md) | 108 | `result-track:e342889627bc82bafbfa47342e2b2712a0bc7f9a7aaaa73820de1e8fb5beef75` |
| 9 | `theorem` | [tensorObj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/tensorobj-map--23f70d31dc952a71eb7732cd.md) | 113 | `result-track:23f70d31dc952a71eb7732cdba9eb7c6d3b32c995dd9d45ee0f388e3505662a9` |
| 10 | `theorem` | [tensorHom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/tensorhom-app--37e22d6f5544b4099cd0d9f7.md) | 118 | `result-track:37e22d6f5544b4099cd0d9f7c157f8793586eb9e258b113adeb0547f1bb4c35d` |
| 11 | `theorem` | [leftUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/leftunitor-hom-app--07e92ee9ff8fc995155aad9a.md) | 124 | `result-track:07e92ee9ff8fc995155aad9a9f56dbd0382273733e4db4874dbe0b6198a61718` |
| 12 | `theorem` | [leftUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/leftunitor-inv-app--21c15fca939718f8fe3d2c76.md) | 130 | `result-track:21c15fca939718f8fe3d2c76d74a8131e8c73493bdbbf0f4380fed74c4a8465e` |
| 13 | `theorem` | [rightUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/rightunitor-hom-app--f585efabec4b617e4be758cb.md) | 136 | `result-track:f585efabec4b617e4be758cb7ae28fdacf881312352281a6bca84388c90d300b` |
| 14 | `theorem` | [rightUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/rightunitor-inv-app--7ee7a9cd3b7b7e307e57169c.md) | 142 | `result-track:7ee7a9cd3b7b7e307e57169c689070c0624f92eba3de7b17a1b26345dd586230` |
| 15 | `theorem` | [associator_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/associator-hom-app--e8a2a8830cba4bdbc506d5c1.md) | 148 | `result-track:e8a2a8830cba4bdbc506d5c1a023acd9f96cc476aa9e66546c07200b28c859cc` |
| 16 | `theorem` | [associator_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/associator-inv-app--04be7c45b0607a9f24d77a76.md) | 154 | `result-track:04be7c45b0607a9f24d77a76f22f2b588bb75d7929441486f7e74a193eea3d45` |
| 17 | `instance` | [functorCategoryBraided](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/functorcategorybraided--75c91b402616fd8a3bfc60f8.md) | 169 | `declaration-track:75c91b402616fd8a3bfc60f80dcde8fc74d6c0e592481664bd02cd18a74fc54f` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/example--1285e4c79251a2800b359e60.md) | 175 | `declaration-track:1285e4c79251a2800b359e60531a63ee83763f16f03d527b2085080fde820ea9` |
| 19 | `instance` | [functorCategorySymmetric](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/declarations/functorcategorysymmetric--6dd2d41ff214db46ffe15fd9.md) | 190 | `declaration-track:6dd2d41ff214db46ffe15fd9eb9450440ebf2ff6fc0f8cf5e98886c94a4051f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
