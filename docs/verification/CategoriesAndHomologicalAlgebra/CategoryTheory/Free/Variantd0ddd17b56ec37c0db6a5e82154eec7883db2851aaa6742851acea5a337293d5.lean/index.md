# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Free.Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49c7aad54d15e80aeb6aadb91bbe8236b91d45a9",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49c7aad54d15e80aeb6aadb91bbe8236b91d45a9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/free--437ef173cbe5140a41896884.md) | 39 | `declaration-track:437ef173cbe5140a41896884485b3f3255a07377abcfd4bbebb6ef1efa42f3fc` |
| 2 | `def` | [ιFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/free--e3b2059478147713c2583d7d.md) | 42 | `declaration-track:e3b2059478147713c2583d7d9cd57e2108a9567902e9ccea4536ff24f993ff53` |
| 3 | `def` | [freeCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/freecofan--2d0122264ac124e88d8d9b5b.md) | 46 | `declaration-track:2d0122264ac124e88d8d9b5b0d88c76a5d3d6f7102f32e69ad0f90e4ed08300d` |
| 4 | `lemma` | [freeCofan_inj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/freecofan-inj--7cb52b4f86036900bcc42a96.md) | 50 | `result-track:7cb52b4f86036900bcc42a96a3f3311da21169276563f5533d7d3491287b3243` |
| 5 | `def` | [isColimitFreeCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/iscolimitfreecofan--ae084c5eacb410ecdc201a6f.md) | 54 | `declaration-track:ae084c5eacb410ecdc201a6f10e89044ba8694c74f16835d080a1e0ae3b87e87` |
| 6 | `def` | [freeHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/freehomequiv--6f30e75358dabc7da4542b91.md) | 61 | `declaration-track:6f30e75358dabc7da4542b9126673c3514d0dad5e9823088b30f537bf0ce65e6` |
| 7 | `lemma` | [freeHomEquiv_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/freehomequiv-comp-apply--973611f9fffe4129cfd7acf6.md) | 69 | `result-track:973611f9fffe4129cfd7acf67ed8b2b82e581bd65db50c5e2e124a3935ed77dc` |
| 8 | `lemma` | [freeHomEquiv_symm_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/freehomequiv-symm-comp--0e03bfd2c9e27ccbb0536776.md) | 73 | `result-track:0e03bfd2c9e27ccbb0536776a0b02ed502cc53b3462506ef0029d65f91db050d` |
| 9 | `abbrev` | [freeSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/freesection--89fd3dbc3468b20ef8508d3a.md) | 79 | `declaration-track:89fd3dbc3468b20ef8508d3ae0259c71acc89d2e900311c7f2dd5f4cd68e49a8` |
| 10 | `lemma` | [freeHomEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/freehomequiv-apply--364e5816ca038cbae5b008d5.md) | 82 | `result-track:364e5816ca038cbae5b008d518eca02d559ece479ee5bda4fadb4955b47871c2` |
| 11 | `lemma` | [unitHomEquiv_symm_freeHomEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/unithomequiv-symm-freehomequiv-apply--6f2e1d2c5d1f1a05e051a8c5.md) | 88 | `result-track:6f2e1d2c5d1f1a05e051a8c5f60af613c141368cbce716757422475dd1b6eca8` |
| 12 | `def` | [freeMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/freemap--d8355fc110d0fb0cbbc072cd.md) | 99 | `declaration-track:d8355fc110d0fb0cbbc072cdd51f86c83cdc098937e5c7218a158654b3248273` |
| 13 | `lemma` | [freeHomEquiv_freeMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/freehomequiv-freemap--eecfae8b10224cad8de7cfc3.md) | 103 | `result-track:eecfae8b10224cad8de7cfc3ceb73d9b615448dac555d9655980f9156e9c2215` |
| 14 | `lemma` | [sectionMap_freeMap_freeSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/sectionmap-freemap-freesection--18d9472bd886f829788ef4d8.md) | 108 | `result-track:18d9472bd886f829788ef4d8ac86a418046217f41f3215fcfc2ac3662a848250` |
| 15 | `lemma` | [sectionsMap_freeHomEquiv_symm_freeSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/sectionsmap-freehomequiv-symm-freesection--2432f4bff994e738caba1ed6.md) | 112 | `result-track:2432f4bff994e738caba1ed6ac57b349e47156c6ff547bfe88b19006ec41dc84` |
| 16 | `lemma` | [ιFree_freeMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/free-freemap--395d453aac050d75826a78a4.md) | 119 | `result-track:395d453aac050d75826a78a4f3213a188044884afbae63f7398e850987a70413` |
| 17 | `def` | [freeFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/freefunctor--0b266cda2024216c87fcd3de.md) | 130 | `declaration-track:0b266cda2024216c87fcd3de116decb4e6a18b68cf2b0a0e0d7fa2c8992e0fc2` |
| 18 | `lemma` | [freeFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/freefunctor-obj--0fc226b3d9f4d819efa999c9.md) | 134 | `result-track:0fc226b3d9f4d819efa999c96b6c47d0ef85bb33460180db1117b76f06a4879c` |
| 19 | `lemma` | [freeFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/freefunctor-map--f01af811a1159b14377d11b7.md) | 138 | `result-track:f01af811a1159b14377d11b761ae6ed6454d216ac9e27652fed1544effb2ff5f` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/instance--32e7e0062ef2168a572278af.md) | 143 | `declaration-track:32e7e0062ef2168a572278afc27342dea37ab80d75975f11302a765763e42f71` |
| 21 | `def` | [freeSumIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/freesumiso--6d6cda8d6bab0bb9a085a079.md) | 152 | `declaration-track:6d6cda8d6bab0bb9a085a079da41a6f15bac2e4869aafa46ec3862628f515615` |
| 22 | `lemma` | [inl_freeSumIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/inl-freesumiso-hom--537a70224602f99c71f324bf.md) | 159 | `result-track:537a70224602f99c71f324bf3e14753bbc4cc7719651c717df0c24c5594c5778` |
| 23 | `lemma` | [inr_freeSumIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/inr-freesumiso-hom--1f7dfae65cd2cff1b2365936.md) | 166 | `result-track:1f7dfae65cd2cff1b23659366bea112ec71299a1fedfc05cef2ff80e54f94a9c` |
| 24 | `def` | [mapFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/mapfree--cbe3da638571b76c4f1f9806.md) | 183 | `declaration-track:cbe3da638571b76c4f1f980631dbb24701f91f23a1a13af0a5b95e99ba313461` |
| 25 | `lemma` | [ιFree_mapFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/free-mapfree--c9ec187813d3c0a72b006dc9.md) | 187 | `result-track:c9ec187813d3c0a72b006dc9f4fbc0c7433fd2015bd197e2ce9a644561fe00d6` |
| 26 | `def` | [mapFreeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/mapfreeiso--52910ea98173028853f26af3.md) | 197 | `declaration-track:52910ea98173028853f26af3bb274b0f3d55b580b232f2fe976ab1b73981f235` |
| 27 | `lemma` | [mapFreeIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/mapfreeiso-hom--a639894267d48a9101c7013a.md) | 201 | `result-track:a639894267d48a9101c7013a0f19496cd033ae8726e3267f0eed586992a3f652` |
| 28 | `lemma` | [ιFree_mapFreeIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/free-mapfreeiso-hom--a463e48a18634c2c281fccf9.md) | 205 | `result-track:a463e48a18634c2c281fccf9808b99b876d3891a31f7da6f24c353231ed1c314` |
| 29 | `lemma` | [map_ιFree_mapFreeIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantd0ddd17b56ec37c0db6a5e82154eec7883db2851aaa6742851acea5a337293d5.lean/declarations/map-free-mapfreeiso-inv--f75770e34037c45095f7af12.md) | 212 | `result-track:f75770e34037c45095f7af12addaf0caaef83350d89eff21da2faefff0f8b5c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
