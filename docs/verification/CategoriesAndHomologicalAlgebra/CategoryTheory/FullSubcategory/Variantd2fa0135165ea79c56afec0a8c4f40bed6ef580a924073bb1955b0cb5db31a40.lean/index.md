# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FullSubcategory.Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "722f62ff813c7182660949797a95d7e46fc4b513",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `722f62ff813c7182660949797a95d7e46fc4b513`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InducedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/inducedcategory--f10aa16564efb1ac4f32af9d.md) | 54 | `declaration-track:f10aa16564efb1ac4f32af9d7e644c95e1031783e54a7511e451f505e0b9b45a` |
| 2 | `instance` | [InducedCategory.hasCoeToSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/inducedcategory-hascoetosort--0d1718705d651efd650777c2.md) | 60 | `declaration-track:0d1718705d651efd650777c28bbe848a6dfeedd97f279a6278ba648fcc2fbcfd` |
| 3 | `instance` | [InducedCategory.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/inducedcategory-category--1e45a3da10c426fffa4be28c.md) | 65 | `declaration-track:1e45a3da10c426fffa4be28cdeb4bbc949b977e9d128be792124fb9aca7c9fb8` |
| 4 | `def` | [inducedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/inducedfunctor--9dd2e650be932fbbc60867cd.md) | 75 | `declaration-track:9dd2e650be932fbbc60867cd6e4434259c7549c491d68479ea44105fc4a39012` |
| 5 | `instance` | [InducedCategory.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/inducedcategory-full--eb504d4587690afe97bb4b59.md) | 82 | `declaration-track:eb504d4587690afe97bb4b592b690f2ada725e218b587f1f986f44412ce01875` |
| 6 | `instance` | [InducedCategory.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/inducedcategory-faithful--7b925d15e1eb17095afdd86a.md) | 85 | `declaration-track:7b925d15e1eb17095afdd86a71fb093f415c716881e11e6a50948df7f56323e2` |
| 7 | `structure` | [FullSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategory--525721703cb10cfa7a1f3a63.md) | 103 | `declaration-track:525721703cb10cfa7a1f3a630fb09b3897eab8c0e6af9f82daf4e0c4f4c76123` |
| 8 | `instance` | [FullSubcategory.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategory-category--eb6b6165b4d7874f74bc3fc6.md) | 112 | `declaration-track:eb6b6165b4d7874f74bc3fc63f0bb0245305ce677105cf2d0f71afcb710112a2` |
| 9 | `def` | [fullSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategoryinclusion--ba8c40a91454008f70f842aa.md) | 119 | `declaration-track:ba8c40a91454008f70f842aac0d1442bb1a99a738e1097df98b4d1b7f9b16fd6` |
| 10 | `theorem` | [fullSubcategoryInclusion.obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategoryinclusion-obj--073fc83411a40e15a1ccafb8.md) | 124 | `result-track:073fc83411a40e15a1ccafb80b33e2b100744120a2b907a8a7e345425370e474` |
| 11 | `theorem` | [fullSubcategoryInclusion.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategoryinclusion-map--a08f09601b6ced4bb7660b4d.md) | 129 | `result-track:a08f09601b6ced4bb7660b4ddab6c9d80f786fd918ec8d555def68c4471cae68` |
| 12 | `instance` | [FullSubcategory.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategory-full--e42efbb3d4af3cff7e55c71c.md) | 133 | `declaration-track:e42efbb3d4af3cff7e55c71c071aa86046287b70968940050c3ef4e0d3a9897b` |
| 13 | `instance` | [FullSubcategory.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategory-faithful--d4163cb61e2643d919e92de4.md) | 137 | `declaration-track:d4163cb61e2643d919e92de4b4cc4ea44507261e51a6dd09787461f112a7caf5` |
| 14 | `def` | [FullSubcategory.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategory-map--f6ba3d656054b1e3e35fea17.md) | 145 | `declaration-track:f6ba3d656054b1e3e35fea1779312eca8fa7644aa46f758d9a71a4c18c5ed3eb` |
| 15 | `instance` | [FullSubcategory.full_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategory-full-map--c58d5b9182df5df5cc5886ac.md) | 152 | `declaration-track:c58d5b9182df5df5cc5886acedb94cd2c1b29cac496bcb1f8b5d68550c81bced` |
| 16 | `instance` | [FullSubcategory.faithful_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategory-faithful-map--2005f42b1efd9f36a4232613.md) | 155 | `declaration-track:2005f42b1efd9f36a42326133c6f3a27aafd6b371d2f29376c23e36a3c47f51e` |
| 17 | `theorem` | [FullSubcategory.map_inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategory-map-inclusion--ccc866db284cd93b0151e045.md) | 159 | `result-track:ccc866db284cd93b0151e045cfcef12220cab34bebb304bb66bc7a45dd0dfd90` |
| 18 | `def` | [FullSubcategory.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategory-lift--a58e75606879391c6da57c44.md) | 171 | `declaration-track:a58e75606879391c6da57c444a4474627a7e4745944bc932000157041a4afa82` |
| 19 | `theorem` | [FullSubcategory.lift_comp_inclusion_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategory-lift-comp-inclusion-eq--e9a1d6916389c38ba034d9ce.md) | 179 | `result-track:e9a1d6916389c38ba034d9ceaf6f4979cbd6ebea66603f4964cad549059f8963` |
| 20 | `def` | [FullSubcategory.lift_comp_inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategory-lift-comp-inclusion--4918b2f8f8b03a0497bb3073.md) | 185 | `declaration-track:4918b2f8f8b03a0497bb307385f810cf1c4e4c7b5091c6af4d0c9db6a993a7a8` |
| 21 | `theorem` | [fullSubcategoryInclusion_obj_lift_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategoryinclusion-obj-lift-obj--76eb010c34d089c0ec5a0bd1.md) | 191 | `result-track:76eb010c34d089c0ec5a0bd175ece2e7298bd86f12ddf6b28838d104d7ab8b2e` |
| 22 | `theorem` | [fullSubcategoryInclusion_map_lift_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategoryinclusion-map-lift-map--2c1eb7c39f7492c1887ef4f0.md) | 197 | `result-track:2c1eb7c39f7492c1887ef4f095ba0762292271241e1b1043dacd8b750a8a5a73` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/instance--895126f958bb82c6e6cd70de.md) | 203 | `declaration-track:895126f958bb82c6e6cd70dec8f8450aec1ca9d80da4e097752190e592f2a479` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/instance--c7fe85fe1a6afb4c02f7abd5.md) | 207 | `declaration-track:c7fe85fe1a6afb4c02f7abd56df4c11d581cdc2ea8e53c527e1f3e86a5ad4280` |
| 25 | `theorem` | [FullSubcategory.lift_comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantd2fa0135165ea79c56afec0a8c4f40bed6ef580a924073bb1955b0cb5db31a40.lean/declarations/fullsubcategory-lift-comp-map--f5890c2294a42fc973aa151e.md) | 211 | `result-track:f5890c2294a42fc973aa151ed87d9ee04f3ef3299576cd86ea2dc4a8d0d8ec51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
