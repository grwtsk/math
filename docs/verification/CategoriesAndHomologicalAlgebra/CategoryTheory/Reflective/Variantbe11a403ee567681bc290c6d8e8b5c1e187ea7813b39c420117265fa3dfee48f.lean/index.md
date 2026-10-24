# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Reflective.Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bc80d7abab82d205ac62bc9ad4534c619461378",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bc80d7abab82d205ac62bc9ad4534c619461378`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EpiMono` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/reflective--4adc0b1aae7b43c688393424.md) | 45 | `declaration-track:4adc0b1aae7b43c6883934241e48b212ba28d44f609cba2eca4f4600a855d27a` |
| 2 | `theorem` | [unit_obj_eq_map_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/unit-obj-eq-map-unit--170d22cfad3942d14f3eabb5.md) | 53 | `result-track:170d22cfad3942d14f3eabb5157d39c728a2dd9b087f3d72099b88847b3f9b2e` |
| 3 | `instance` | [isIso_unit_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/isiso-unit-obj--facc4724e7c360d9603dc766.md) | 67 | `declaration-track:facc4724e7c360d9603dc7662494e0ac86d9ec9e1213abebb545559ef02ca3e3` |
| 4 | `theorem` | [Functor.essImage.unit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/functor-essimage-unit-isiso--33fbfbbad50fa54c82eabf85.md) | 81 | `result-track:33fbfbbad50fa54c82eabf850875208ba9227884d62af183dc1ffac9ea862f04` |
| 5 | `theorem` | [mem_essImage_of_unit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/mem-essimage-of-unit-isiso--49df923945f00cd5223b6a92.md) | 93 | `result-track:49df923945f00cd5223b6a92e5382767a66d9b8c4ccde650927196d771e43e65` |
| 6 | `theorem` | [mem_essImage_of_unit_isSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/mem-essimage-of-unit-issplitmono--233c7ac028672f650fb1f4dc.md) | 99 | `result-track:233c7ac028672f650fb1f4dcc812b9bc4bf79f3a1d2e53ef1d7d1fa44fee43ba` |
| 7 | `instance` | [Reflective.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/reflective-comp--79235b4ef2d192091cc59ec9.md) | 114 | `declaration-track:79235b4ef2d192091cc59ec9eac033be2328938afd8b33c581b73fafbf4a548b` |
| 8 | `def` | [unitCompPartialBijectiveAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/unitcomppartialbijectiveaux--5f56c7ba000cf40a6837bd88.md) | 119 | `declaration-track:5f56c7ba000cf40a6837bd88ce36d3534d800cf23e7893f468f4916f29ca08d5` |
| 9 | `theorem` | [unitCompPartialBijectiveAux_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/unitcomppartialbijectiveaux-symm-apply--6db4a969c9ae9d529b2d91e0.md) | 125 | `result-track:6db4a969c9ae9d529b2d91e0e47641b33ca311a0daa72922027d1e52710b5730` |
| 10 | `def` | [unitCompPartialBijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/unitcomppartialbijective--a63cbb8cafb54b3043d8160a.md) | 142 | `declaration-track:a63cbb8cafb54b3043d8160a01f93f0c8dafc116d48d5f90e082436c386170ea` |
| 11 | `theorem` | [unitCompPartialBijective_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/unitcomppartialbijective-symm-apply--b0878e9a14024236559c248a.md) | 152 | `result-track:b0878e9a14024236559c248a88a8628b2f8a1024c6c80095ead257b4f9fb79f4` |
| 12 | `theorem` | [unitCompPartialBijective_symm_natural](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/unitcomppartialbijective-symm-natural--d03d4f1f6aa8eb9b348aabc3.md) | 157 | `result-track:d03d4f1f6aa8eb9b348aabc3761de4288897b4a0833c69b5ec93baaaea27dcdf` |
| 13 | `theorem` | [unitCompPartialBijective_natural](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/unitcomppartialbijective-natural--1e2cffed6b474abc5f9500b4.md) | 163 | `result-track:1e2cffed6b474abc5f9500b4329bdd3e8069adea758ea61025ffad0cc610dcb0` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/instance--0bb3d19f174da70564184f3e.md) | 169 | `declaration-track:0bb3d19f174da70564184f3e14a76d7a196603a82e3c692671f5a615786fe288` |
| 15 | `def` | [equivEssImageOfReflective_counitIso_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/equivessimageofreflective-counitiso-app--f834d564f0986c4473c5d514.md) | 177 | `declaration-track:f834d564f0986c4473c5d51423fb24f3e4e6e45e195e08856ab667ab06426b72` |
| 16 | `lemma` | [equivEssImageOfReflective_map_counitIso_app_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/equivessimageofreflective-map-counitiso-app-hom--e1c00163ffc2669aedf927a5.md) | 184 | `result-track:e1c00163ffc2669aedf927a5eb75fcd00db977266f93ee19e9287f497c1b077c` |
| 17 | `lemma` | [equivEssImageOfReflective_map_counitIso_app_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/equivessimageofreflective-map-counitiso-app-inv--d1a737342d1b724a7d01f0ea.md) | 191 | `result-track:d1a737342d1b724a7d01f0ea31ca998d8e4342249efaf48a68eeefc7a1b81649` |
| 18 | `def` | [equivEssImageOfReflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/declarations/equivessimageofreflective--52bca69b4ae6a84cbcc70bc3.md) | 199 | `declaration-track:52bca69b4ae6a84cbcc70bc3693896027ab78009bbbc67795a86545e4291a815` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
