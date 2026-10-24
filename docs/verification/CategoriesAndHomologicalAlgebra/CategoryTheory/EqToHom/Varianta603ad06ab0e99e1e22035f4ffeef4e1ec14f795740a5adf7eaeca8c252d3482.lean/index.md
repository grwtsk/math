# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EqToHom.Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56cbf571df78188430cf2dd96e3f7327d1963692",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56cbf571df78188430cf2dd96e3f7327d1963692`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Opposites` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtohom--0384aba4b6bba9222911a0c5.md) | 54 | `declaration-track:0384aba4b6bba9222911a0c50294ca2aa67a0945f36fc1933f88ae218267a75b` |
| 2 | `theorem` | [eqToHom_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtohom-refl--83a264d82ce1c5c5bf012d56.md) | 58 | `result-track:83a264d82ce1c5c5bf012d561275424ca48bd11452594a126b451ab56b5a9e6b` |
| 3 | `theorem` | [eqToHom_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtohom-trans--0daa41360049f53111c11125.md) | 63 | `result-track:0daa41360049f53111c1112599689032be55d6b154b6963d586c043243e5e4f0` |
| 4 | `theorem` | [comp_eqToHom_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/comp-eqtohom-iff--511e3514ace9f51b4c93069f.md) | 70 | `result-track:511e3514ace9f51b4c93069f7f941f4a36d3381696c2c9cdebd1784690fabbc1` |
| 5 | `theorem` | [eqToHom_comp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtohom-comp-iff--fd14cdfd6a41077879cc81f6.md) | 76 | `result-track:fd14cdfd6a41077879cc81f6fd38fe19b2dde091a995debaff10b3439d16ac0c` |
| 6 | `theorem` | [eqToHom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtohom-naturality--b8175640109bc454a05c064f.md) | 86 | `result-track:b8175640109bc454a05c064f6f3fbab8e8fcc300e4199ced43c8a39c20e3aab8` |
| 7 | `theorem` | [eqToHom_iso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtohom-iso-hom-naturality--ad2a9e6bbb226e37e5ec7280.md) | 95 | `result-track:ad2a9e6bbb226e37e5ec7280b70084315bf6017dac5052d5fcea556dc53e2999` |
| 8 | `theorem` | [eqToHom_iso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtohom-iso-inv-naturality--f61c5b832fb24c23421c8f4d.md) | 104 | `result-track:f61c5b832fb24c23421c8f4d2de5349fac540fb392e97af41bd684a6b7d572a0` |
| 9 | `theorem` | [congrArg_cast_hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/congrarg-cast-hom-left--57d0179b739888f4dfe1f5df.md) | 113 | `result-track:57d0179b739888f4dfe1f5df008afd2cb6f718f15784dd5bdf172259f3ca8882` |
| 10 | `theorem` | [congrArg_mpr_hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/congrarg-mpr-hom-left--a7ef0a6d120f44073fe6d8f7.md) | 125 | `result-track:a7ef0a6d120f44073fe6d8f7bd9e26162ede3ba069a7d059014ecd0f9d5c458a` |
| 11 | `theorem` | [congrArg_cast_hom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/congrarg-cast-hom-right--ae7821b4468f281bffd98663.md) | 135 | `result-track:ae7821b4468f281bffd9866394f59ab141a91f8068f3e2a5d2696a20cdb86bec` |
| 12 | `theorem` | [congrArg_mpr_hom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/congrarg-mpr-hom-right--f3fe72ad8c696008ca12addc.md) | 147 | `result-track:f3fe72ad8c696008ca12addc8823f9a1849dd748c375d673750a0098dfc98c69` |
| 13 | `def` | [eqToIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtoiso--740d91a675cd75cff9401473.md) | 158 | `declaration-track:740d91a675cd75cff9401473bae81a9e8e9692ee796117b87515783676eff1d1` |
| 14 | `theorem` | [eqToIso.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtoiso-hom--13c6b2c290360d761c7c3267.md) | 163 | `result-track:13c6b2c290360d761c7c326789fb3330ba696f085cb4906b2b968fea3029b981` |
| 15 | `theorem` | [eqToIso.inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtoiso-inv--a2504d0a0fc786924677e877.md) | 168 | `result-track:a2504d0a0fc786924677e8778b835344aa65980cf5bc9544958cb4f4182b13ee` |
| 16 | `theorem` | [eqToIso_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtoiso-refl--91578bd3c2c4800b503e5c2f.md) | 173 | `result-track:91578bd3c2c4800b503e5c2fbf9962c9e60028e2611eec6b1bf540656f42e1fb` |
| 17 | `theorem` | [eqToIso_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtoiso-trans--e12a4f6c9bc5413bb446f073.md) | 178 | `result-track:e12a4f6c9bc5413bb446f073254c355cd20afcd92c43a4477780891433f6ce79` |
| 18 | `theorem` | [eqToHom_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtohom-op--4dffeb7cbf641c4c52bd4cc7.md) | 183 | `result-track:4dffeb7cbf641c4c52bd4cc7a5cef39dc297fd3986559b498a0d88c7367ef929` |
| 19 | `theorem` | [eqToHom_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtohom-unop--a8e0a4374cbf8e3a6a9ce026.md) | 189 | `result-track:a8e0a4374cbf8e3a6a9ce026c2c82701830a11431d6ce43ae2d765b0ce02d8d7` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/instance--ad7c38d77852d9f44ac53e4f.md) | 195 | `declaration-track:ad7c38d77852d9f44ac53e4fe6b1eb9a91b336ffef06129b7372e6978e44c144` |
| 21 | `theorem` | [inv_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/inv-eqtohom--168fe31b99d41ad14f2130fb.md) | 199 | `result-track:168fe31b99d41ad14f2130fb46f9565d0f8862609093a369081d9ea74af7f412` |
| 22 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/ext--d55f9671f5b9e4d55ddda00a.md) | 209 | `result-track:d55f9671f5b9e4d55ddda00aa754eca0bb0f5d21817beb9deef7e42bab557974` |
| 23 | `theorem` | [conj_eqToHom_iff_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/conj-eqtohom-iff-heq--98b38b696ccb30d992c00f33.md) | 226 | `result-track:98b38b696ccb30d992c00f335b538916e032a2a0d1654a47f88219d062b41944` |
| 24 | `theorem` | [hext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/hext--89034a6ce7c9f7dcdc429ca4.md) | 234 | `result-track:89034a6ce7c9f7dcdc429ca4e2c459a087d10ada7fd709db33617c6249cfa64e` |
| 25 | `theorem` | [congr_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/congr-obj--656e9186a145f102cf4c79dd.md) | 240 | `result-track:656e9186a145f102cf4c79dd5b136f5be2b3faf39a0fff1eeb5ad24f4bcb886c` |
| 26 | `theorem` | [congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/congr-hom--eb887573eba09c774f537745.md) | 243 | `result-track:eb887573eba09c774f5377459aaf626d14d391a6aaca24c13e9cb7bf53a1ee55` |
| 27 | `theorem` | [congr_inv_of_congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/congr-inv-of-congr-hom--96bf04d36b14a27ccf88f3ea.md) | 248 | `result-track:96bf04d36b14a27ccf88f3ea372cb843b149713f8b3787bb8839c5ea0d6efa03` |
| 28 | `theorem` | [congr_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/congr-map--7c355ba999ed92a7402ab6e6.md) | 256 | `result-track:7c355ba999ed92a7402ab6e6eaf6d437be80a28fb2bf80f55ad963744dced7a4` |
| 29 | `theorem` | [map_comp_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/map-comp-heq--720cbb955119991e17b88105.md) | 264 | `result-track:720cbb955119991e17b881051da16882b7c41cf1e63834724e566c21e4a7e7e7` |
| 30 | `theorem` | [map_comp_heq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/map-comp-heq--332b489975675b36b6faff76.md) | 271 | `result-track:332b489975675b36b6faff7684c7a4478008ca36e345cf3aed73235d3f5b8c09` |
| 31 | `theorem` | [precomp_map_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/precomp-map-heq--f35c8662de4cbb8a48442001.md) | 277 | `result-track:f35c8662de4cbb8a484420018d12fb8a89a0e02c01e0959002afd7710d6a49ad` |
| 32 | `theorem` | [postcomp_map_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/postcomp-map-heq--67f4ce58f9b9c5dbd1fc9e15.md) | 282 | `result-track:67f4ce58f9b9c5dbd1fc9e15cf6be24ca0fc52c2be96e1b41af4d837a27e5d1f` |
| 33 | `theorem` | [postcomp_map_heq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/postcomp-map-heq--097c4f3e23aad76b07e6bfd1.md) | 288 | `result-track:097c4f3e23aad76b07e6bfd1b98467788119179354ebbc038dfcf00393fe1455` |
| 34 | `theorem` | [hcongr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/hcongr-hom--186ca2a36ecd848fc0a0d314.md) | 293 | `result-track:186ca2a36ecd848fc0a0d31443f2c6050a350f43341e6236bb3a93cb4b417dd2` |
| 35 | `theorem` | [eqToHom_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtohom-map--f2ed8f8ff63fa9c9e344dc05.md) | 307 | `result-track:f2ed8f8ff63fa9c9e344dc053e20f07f38fb6a6d6a0e7f657d7077856853b4b6` |
| 36 | `theorem` | [eqToIso_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtoiso-map--d625aa1a9948a2ebb0e67c8c.md) | 313 | `result-track:d625aa1a9948a2ebb0e67c8c22bf3fe6a59492f5d29fcc1c8908f8d783919cb4` |
| 37 | `theorem` | [eqToHom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eqtohom-app--f49b233eb7fac99df94bd7d5.md) | 318 | `result-track:f49b233eb7fac99df94bd7d57ee2443c7258a02a78a2f67b9ffff942d03737e5` |
| 38 | `theorem` | [NatTrans.congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/nattrans-congr--a3e9b9f366a19346f45bc274.md) | 322 | `result-track:a3e9b9f366a19346f45bc274cbc877e231c9c68089adfac28559b8224e3d4a66` |
| 39 | `theorem` | [eq_conj_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/eq-conj-eqtohom--bb59bb63d374eeb6e5d83b87.md) | 328 | `result-track:bb59bb63d374eeb6e5d83b8703f3c164547435a421979c3e74fd3638b84cea1b` |
| 40 | `theorem` | [dcongr_arg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/declarations/dcongr-arg--57f4e9aaf542041910a2984d.md) | 332 | `result-track:57f4e9aaf542041910a2984dd86b7f765dd693303a48b13da985051cf214295f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
