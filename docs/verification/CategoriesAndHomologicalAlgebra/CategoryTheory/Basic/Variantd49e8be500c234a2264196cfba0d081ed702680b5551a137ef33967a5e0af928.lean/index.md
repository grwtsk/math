# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b852ea6d11bf00a595717f119eb0cedb29e20ed0",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b852ea6d11bf00a595717f119eb0cedb29e20ed0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.BialgCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.HopfAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HopfAlgCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/hopfalgcat--e9aea54897c2cec64f40e644.md) | 26 | `declaration-track:e9aea54897c2cec64f40e6446e713ddf2bff790f2b64f8d93771310fd656d23e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/instance--8508a2d1664821f49fcfbb70.md) | 40 | `declaration-track:8508a2d1664821f49fcfbb7029e9e965b93100b6b3a5fed3926140710f286259` |
| 3 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/of--ee668ced01d6da1a65258294.md) | 45 | `declaration-track:ee668ced01d6da1a65258294de4f5d191f149f5389f2b3a15d8a8d52c7505ae7` |
| 4 | `lemma` | [of_comul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/of-comul--18d48dd071f49f64153aa873.md) | 50 | `result-track:18d48dd071f49f64153aa873c38c363a2966fed07d80da2219377dde96dd54db` |
| 5 | `lemma` | [of_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/of-counit--e744739befa69e20e35a4d95.md) | 54 | `result-track:e744739befa69e20e35a4d9543d156d797ad9ed04d018d6d08511e539c8adb7c` |
| 6 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/hom--3b0c3018db568dd48aa76b78.md) | 60 | `declaration-track:3b0c3018db568dd48aa76b782dd8a1ae2f7b10388f175b0ba94b7857412fc60f` |
| 7 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/category--d82d3816c5247f0c5f78f4f4.md) | 64 | `declaration-track:d82d3816c5247f0c5f78f4f447981e96a1a22390e0045fb375c22a6896ef4749` |
| 8 | `instance` | [concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/concretecategory--616f86c6842c9a8fb816be1e.md) | 69 | `declaration-track:616f86c6842c9a8fb816be1e08dd0b86ad01a0f18ed44fb510db6e107260f902` |
| 9 | `abbrev` | [Hom.toBialgHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/hom-tobialghom--df6edf2e44dbab32750005d2.md) | 74 | `declaration-track:df6edf2e44dbab32750005d24a61e6efec8bf50b0e988713ea5d54bfc31c3d31` |
| 10 | `abbrev` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/ofhom--2f2d2e2f5787a2ec5c8aa5a0.md) | 78 | `declaration-track:2f2d2e2f5787a2ec5c8aa5a00c56b604be4a48440ba3915b780fa64c247b2b9c` |
| 11 | `lemma` | [Hom.toBialgHom_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/hom-tobialghom-injective--5c85015d448c22b3aeba86fc.md) | 83 | `result-track:5c85015d448c22b3aeba86fcc2326d1164c2cc7dbf484b95246676ac631dc56d` |
| 12 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/hom-ext--e4bd13f9f82bf85f18b900b2.md) | 88 | `result-track:e4bd13f9f82bf85f18b900b2ad64a4da4bcb7bee9ed0bafd3be80c827aeeb079` |
| 13 | `theorem` | [toBialgHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/tobialghom-comp--af41acc29f9c7bc7e9913055.md) | 92 | `result-track:af41acc29f9c7bc7e991305575eb8d3d8c43be7b89a418ed09bf24e1c963fafb` |
| 14 | `theorem` | [toBialgHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/tobialghom-id--0a6264d1db1f70909bedeef0.md) | 96 | `result-track:0a6264d1db1f70909bedeef00f1926bcda64b010a4d4783eed2cfdab96eca0bd` |
| 15 | `instance` | [hasForgetToBialgebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/hasforgettobialgebra--70dd6c4c20b3969a7a85ba50.md) | 100 | `declaration-track:70dd6c4c20b3969a7a85ba50097cf29f68b81d2a5bc3669394352e432740319f` |
| 16 | `theorem` | [forget₂_bialgebra_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/forget-bialgebra-obj--f5e8b1563d6ac14a074c7282.md) | 106 | `result-track:f5e8b1563d6ac14a074c7282e46b7ac80848c6f8fe3da9e1c63192b818ec38e0` |
| 17 | `theorem` | [forget₂_bialgebra_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/forget-bialgebra-map--72def79dd82cffc165f40802.md) | 111 | `result-track:72def79dd82cffc165f40802829a5921674f01d94ca93eca9efd9639d029d885` |
| 18 | `def` | [toHopfAlgIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/tohopfalgiso--b1236a9f75c238ba7835c21e.md) | 128 | `declaration-track:b1236a9f75c238ba7835c21ec3232efb919cbc4e064f5de604157ad6b625e2f7` |
| 19 | `theorem` | [toHopfAlgIso_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/tohopfalgiso-refl--daf0536413c262d5f391c076.md) | 134 | `result-track:daf0536413c262d5f391c07612d4f9ab8834b20d628a846e7e8ca421c0e6e9bd` |
| 20 | `theorem` | [toHopfAlgIso_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/tohopfalgiso-symm--b22f3128fcfabe1ed3423cee.md) | 138 | `result-track:b22f3128fcfabe1ed3423cee33d554490311508bb84626b3b270bda1b38a4a8e` |
| 21 | `theorem` | [toHopfAlgIso_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/tohopfalgiso-trans--454560027d4f032f094e58cc.md) | 142 | `result-track:454560027d4f032f094e58cc132ec147ded28a82d0423692ec41b848c4fceeb5` |
| 22 | `def` | [toHopfAlgEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/tohopfalgequiv--0b2043ea77961753ded053bd.md) | 156 | `declaration-track:0b2043ea77961753ded053bdd779181a1e93f990afe498a6b55f932765b2b8a6` |
| 23 | `theorem` | [toHopfAlgEquiv_toBialgHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/tohopfalgequiv-tobialghom--703f1286fdd78736903ae644.md) | 162 | `result-track:703f1286fdd78736903ae644af04ebebec3a9337650b36a89df47492c3567357` |
| 24 | `theorem` | [toHopfAlgEquiv_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/tohopfalgequiv-refl--eece6bd0608890200e47ca0b.md) | 165 | `result-track:eece6bd0608890200e47ca0b74335b2243d3d9945533adf92e69f1040b522c75` |
| 25 | `theorem` | [toHopfAlgEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/tohopfalgequiv-symm--68a67e1a8290b18933f2a0e5.md) | 168 | `result-track:68a67e1a8290b18933f2a0e59fe40e822f6e067152fae8389ac42ca06cabf9ce` |
| 26 | `theorem` | [toHopfAlgEquiv_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/tohopfalgequiv-trans--6f7e3a59b6b97f8e3080d4bf.md) | 172 | `result-track:6f7e3a59b6b97f8e3080d4bfba3074bcec8303061a4e7b4a858bdc9d6b7655ab` |
| 27 | `instance` | [HopfAlgCat.forget_reflects_isos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd49e8be500c234a2264196cfba0d081ed702680b5551a137ef33967a5e0af928.lean/declarations/hopfalgcat-forget-reflects-isos--e489bc33b80dcc7276888317.md) | 178 | `declaration-track:e489bc33b80dcc7276888317eba32a49a9776e1e4502a80925a4bfc625706d7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
