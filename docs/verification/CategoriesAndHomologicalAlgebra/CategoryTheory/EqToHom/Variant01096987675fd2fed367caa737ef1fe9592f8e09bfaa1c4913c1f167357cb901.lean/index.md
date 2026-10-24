# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EqToHom.Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b69f0040493e18e2d6a29b068fd70ce64e0d9b2",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b69f0040493e18e2d6a29b068fd70ce64e0d9b2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Opposites` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtohom--9acd548241de1a953ab7dcdb.md) | 46 | `declaration-track:9acd548241de1a953ab7dcdb79af5a3a9be30858e116f35b3391f3beea6e66f8` |
| 2 | `theorem` | [eqToHom_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtohom-refl--4b8a3dcda3923173d9fcfbc3.md) | 50 | `result-track:4b8a3dcda3923173d9fcfbc314297a078a77544402803cf995dd427d0feb1796` |
| 3 | `theorem` | [eqToHom_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtohom-trans--c1edd762d4ce381f82ff173d.md) | 55 | `result-track:c1edd762d4ce381f82ff173d61d3cf70eeb3e916a124a91f61011e7f2ab20d09` |
| 4 | `theorem` | [comp_eqToHom_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/comp-eqtohom-iff--21ee1539714982c85b7439d2.md) | 62 | `result-track:21ee1539714982c85b7439d2ecc57b8cf81715e7ab879e6bbd3e2fdd0eb14c9e` |
| 5 | `theorem` | [eqToHom_comp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtohom-comp-iff--3af4b765ba0e37f197538336.md) | 68 | `result-track:3af4b765ba0e37f19753833655af75373bf50a2dc0238f111abc86bda2149542` |
| 6 | `theorem` | [eqToHom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtohom-naturality--eba4227da5a685385cf84f05.md) | 78 | `result-track:eba4227da5a685385cf84f05dffc0c7cbef2a2d19a2662cdcc118e46ce5337bc` |
| 7 | `theorem` | [eqToHom_iso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtohom-iso-hom-naturality--e0485fe6c26e908920d0b09e.md) | 87 | `result-track:e0485fe6c26e908920d0b09ec2cc08be6be2ccb454cd6a2e016d382d97110532` |
| 8 | `theorem` | [eqToHom_iso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtohom-iso-inv-naturality--8b4835e81fcff158708600c4.md) | 96 | `result-track:8b4835e81fcff158708600c4983e00b8324d963b275dbed36013d0e16d1789db` |
| 9 | `theorem` | [congrArg_cast_hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/congrarg-cast-hom-left--b741890858258ff1bd6c6890.md) | 105 | `result-track:b741890858258ff1bd6c68905493f9ed8b01f3047d99cb6b1ea7d9ae8227cca6` |
| 10 | `theorem` | [congrArg_mpr_hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/congrarg-mpr-hom-left--dd1b0815a2e51f86ea828b2e.md) | 117 | `result-track:dd1b0815a2e51f86ea828b2e6ce0893f5a41559b32a2a3b2646cf91945bb6cf4` |
| 11 | `theorem` | [congrArg_cast_hom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/congrarg-cast-hom-right--fb957e49708c31030e0716ba.md) | 127 | `result-track:fb957e49708c31030e0716baff1fb453c4483d1823e4c9fd1d82a082cf3f1327` |
| 12 | `theorem` | [congrArg_mpr_hom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/congrarg-mpr-hom-right--5875c5f89a4695b899116c13.md) | 139 | `result-track:5875c5f89a4695b899116c134b62b91eb575619a043a8bb34b7508f374466a3e` |
| 13 | `def` | [eqToIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtoiso--4d1d397a18e89ec01ecdc90f.md) | 150 | `declaration-track:4d1d397a18e89ec01ecdc90fc53bf616c574c826aafef6962741752b4610bb15` |
| 14 | `theorem` | [eqToIso.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtoiso-hom--99bed1905e8b688d66fe10a6.md) | 155 | `result-track:99bed1905e8b688d66fe10a6286a6f4e4b82bf955fbde5bd70f5b61554a4ee14` |
| 15 | `theorem` | [eqToIso.inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtoiso-inv--21e59e5c64ce098b6b290b16.md) | 160 | `result-track:21e59e5c64ce098b6b290b166adf0b60cfef945893eb6fe93d796104f6c8e470` |
| 16 | `theorem` | [eqToIso_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtoiso-refl--fc6f04df7a861340f419ff28.md) | 165 | `result-track:fc6f04df7a861340f419ff28d790ea94790daf498a9574ae7bbb0169f3ab3ab0` |
| 17 | `theorem` | [eqToIso_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtoiso-trans--4e87c50a6cf868ba3af3470a.md) | 170 | `result-track:4e87c50a6cf868ba3af3470a3dd48091fc2c98cde8eee920a749aba75efb34f4` |
| 18 | `theorem` | [eqToHom_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtohom-op--e0793ad5ac5ffcf6acf3fca6.md) | 175 | `result-track:e0793ad5ac5ffcf6acf3fca653bea106adb662671ca3cc3ae5e40bf386898a3b` |
| 19 | `theorem` | [eqToHom_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtohom-unop--c0f268af00d14226b10f7a08.md) | 181 | `result-track:c0f268af00d14226b10f7a08b8ceede50388979d22a0202b5efbe61efdd1fccd` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/instance--5c792c6774e2c32019fa8852.md) | 187 | `declaration-track:5c792c6774e2c32019fa8852aa96b4658c628a4524b38d5609423aed3d9a63b5` |
| 21 | `theorem` | [inv_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/inv-eqtohom--f6216a523aada4ca695ae936.md) | 191 | `result-track:f6216a523aada4ca695ae9369ee4bb72ecb9f963c6984096c9fc564298dbab3e` |
| 22 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/ext--17299b8eadc7c8c5b3c9c78d.md) | 201 | `result-track:17299b8eadc7c8c5b3c9c78db7824dbf3e0100a035986bf30bea557d45163471` |
| 23 | `theorem` | [conj_eqToHom_iff_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/conj-eqtohom-iff-heq--32be35b3977ece5a7a0af926.md) | 218 | `result-track:32be35b3977ece5a7a0af9263adaf0305e84b9cec0cba9adb77f970e94c08895` |
| 24 | `theorem` | [hext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/hext--d1e2dd7129cc38b115cb8016.md) | 226 | `result-track:d1e2dd7129cc38b115cb8016dd0868cc69cb0abcbb988260db59a9761889cfa3` |
| 25 | `theorem` | [congr_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/congr-obj--ae7cf153947d24a73678aa9a.md) | 232 | `result-track:ae7cf153947d24a73678aa9ac614baf6ae6074ebdb18493a52dcf555e7ea41b7` |
| 26 | `theorem` | [congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/congr-hom--71e1d119117af12c04c4b166.md) | 235 | `result-track:71e1d119117af12c04c4b1663b1df6cfa150c76e90651a81ad94edb84e762600` |
| 27 | `theorem` | [congr_inv_of_congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/congr-inv-of-congr-hom--b6d0b35495287d0f6eac9e6d.md) | 240 | `result-track:b6d0b35495287d0f6eac9e6d5347a0f1de387d2f08540e0d15b3b8b6dc121243` |
| 28 | `theorem` | [congr_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/congr-map--3e565810fd5a356974b8ff8c.md) | 248 | `result-track:3e565810fd5a356974b8ff8cfb7770e9cb717b263e06407bea6a1596bfe460cf` |
| 29 | `theorem` | [map_comp_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/map-comp-heq--7871f97e8fcf2b45198d4af7.md) | 256 | `result-track:7871f97e8fcf2b45198d4af7ce52145ec6b5fe6bd40d247d326e412ad73793b9` |
| 30 | `theorem` | [map_comp_heq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/map-comp-heq--cf86e28a64f507ceba906553.md) | 263 | `result-track:cf86e28a64f507ceba9065538649982e72d9bbe89137d04890b428faee700fbf` |
| 31 | `theorem` | [precomp_map_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/precomp-map-heq--c7b3af60447d9311968fca84.md) | 269 | `result-track:c7b3af60447d9311968fca84561f371930672e6db87dfc347542f46b0d34ebbf` |
| 32 | `theorem` | [postcomp_map_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/postcomp-map-heq--bb1309172fc116df8edd8570.md) | 274 | `result-track:bb1309172fc116df8edd8570364df1359ea80599da77b5c4a68cb27580de7866` |
| 33 | `theorem` | [postcomp_map_heq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/postcomp-map-heq--7694d5774f32a32a7f1fe29b.md) | 280 | `result-track:7694d5774f32a32a7f1fe29bc4fc4d9b4f1b5f40ed692d5cd41ed90fdccd8ea8` |
| 34 | `theorem` | [hcongr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/hcongr-hom--e51a9a901fb0c04c87070a57.md) | 285 | `result-track:e51a9a901fb0c04c87070a57912918a27e64b57de5c42cc0038cc2594019cd0c` |
| 35 | `theorem` | [eqToHom_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtohom-map--b838b0ebdcd60fb8028665de.md) | 299 | `result-track:b838b0ebdcd60fb8028665de2b94704492173c15cc3b93c02166e55ff1118087` |
| 36 | `theorem` | [eqToIso_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtoiso-map--c60eec7bcd0ac000e206d76c.md) | 305 | `result-track:c60eec7bcd0ac000e206d76c3a9444eeb2ed852a716b6c7fdc894852a290ff93` |
| 37 | `theorem` | [eqToHom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eqtohom-app--5c3767caaac0d323469f48f7.md) | 310 | `result-track:5c3767caaac0d323469f48f7e45738a184d3b7cda1e0171ef862cd29b0d522b2` |
| 38 | `theorem` | [NatTrans.congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/nattrans-congr--9e73864c75ebc7a261a62982.md) | 314 | `result-track:9e73864c75ebc7a261a629821c0a59bc4685d6204ac274241765ba6690140bd5` |
| 39 | `theorem` | [eq_conj_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/eq-conj-eqtohom--b46f7e6785615866c037eba6.md) | 320 | `result-track:b46f7e6785615866c037eba680ddafa01fd3ed0b4282a805da14f0773bb5e69a` |
| 40 | `theorem` | [dcongr_arg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/declarations/dcongr-arg--cf68451e71498e557e1342e7.md) | 324 | `result-track:cf68451e71498e557e1342e7c264a389fefcbccd5648995724078aba1346ff2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
