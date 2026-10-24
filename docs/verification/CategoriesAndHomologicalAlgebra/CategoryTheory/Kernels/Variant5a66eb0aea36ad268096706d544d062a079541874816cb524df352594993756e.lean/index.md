# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Kernels.Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fac87d6dcec8ca405915122c5c2350457396cf60",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fac87d6dcec8ca405915122c5c2350457396cf60`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean.json)

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
| 1 | `lemma` | [map_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/map-condition--6f8c3b37e40d82c99e94888a.md) | 41 | `result-track:6f8c3b37e40d82c99e94888a1be6766432a452b76c2fc1086f25cbeb70e8706a` |
| 2 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/map--25e3e28debabbbc603d9ee3e.md) | 47 | `declaration-track:25e3e28debabbbc603d9ee3e54b3a05a0c4ce4c936439497f430d001f15f2c2c` |
| 3 | `lemma` | [map_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/map--7e0eaab12373856b94ab3460.md) | 51 | `result-track:7e0eaab12373856b94ab34605a24e02c3203e4da503398beead714d200bf2ba1` |
| 4 | `def` | [isLimitMapConeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/islimitmapconeequiv--e7735202fb04594a1abe408a.md) | 55 | `declaration-track:e7735202fb04594a1abe408aed14c029a263df819b58cbd72dd5130737e12908` |
| 5 | `def` | [mapIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/mapislimit--5982e969b0cf0d02d4affefb.md) | 63 | `declaration-track:5982e969b0cf0d02d4affefb909f9b32321f71a6440ab2db17099c82f1c8a0b8` |
| 6 | `def` | [isLimitMapConeForkEquiv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/islimitmapconeforkequiv--c187ae8f9d23d77af46c43ca.md) | 82 | `declaration-track:c187ae8f9d23d77af46c43caf8c055aa5179adb9ad3859a773076e451fad7a0f` |
| 7 | `def` | [isLimitForkMapOfIsLimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/islimitforkmapofislimit--a6d68d02ceaa08c959c708fe.md) | 94 | `declaration-track:a6d68d02ceaa08c959c708fe9a4feb440045bbd4d6db9275a492269eea5a529a` |
| 8 | `def` | [isLimitOfHasKernelOfPreservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/islimitofhaskernelofpreserveslimit--255d8097d6e4082bea1a0158.md) | 107 | `declaration-track:255d8097d6e4082bea1a01582203b20e0fd4cb4a80dacc42961a7d1a93fe40c7` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/instance--9793ed29fec3b64cc8dc85bd.md) | 114 | `declaration-track:9793ed29fec3b64cc8dc85bd91fe54206ce415bd77afc95c9f40d5740e4b7921` |
| 10 | `lemma` | [PreservesKernel.of_iso_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/preserveskernel-of-iso-comparison--8042a040b310a06d7de7ad59.md) | 122 | `result-track:8042a040b310a06d7de7ad596a267cd57df760a8209e04478e0da8e7409b4e75` |
| 11 | `def` | [PreservesKernel.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/preserveskernel-iso--5fb97ae687bf8f588cea00e6.md) | 133 | `declaration-track:5fb97ae687bf8f588cea00e6023a9ddda02011668c571e06d7154e2df1dfd7ad` |
| 12 | `theorem` | [PreservesKernel.iso_inv_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/preserveskernel-iso-inv--836a6855d20769a168d4a346.md) | 137 | `result-track:836a6855d20769a168d4a346b366493ba99cc4fb5d4deff00dee839e433c036e` |
| 13 | `theorem` | [PreservesKernel.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/preserveskernel-iso-hom--ea802eacb37bf49ff3fdda51.md) | 143 | `result-track:ea802eacb37bf49ff3fdda51a293c0d48e8025f77597323221e61210fd538aa3` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/instance--a4c47cafedcc59453f3271c4.md) | 147 | `declaration-track:a4c47cafedcc59453f3271c402e19c6b358dd3edc81395d13a445e682170c34e` |
| 15 | `theorem` | [kernel_map_comp_preserves_kernel_iso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/kernel-map-comp-preserves-kernel-iso-inv--099925a628e14e06e06c6b7d.md) | 152 | `result-track:099925a628e14e06e06c6b7d5fc16c3a53107b409eb261f2b32ea57b61c99766` |
| 16 | `lemma` | [map_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/map-condition--fee40bb0bde1650e56b29466.md) | 169 | `result-track:fee40bb0bde1650e56b29466e96217e36460ad63abcd74402fd456a5623a7fbb` |
| 17 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/map--951962f5a0b9df6414988afb.md) | 175 | `declaration-track:951962f5a0b9df6414988afbac98986d7031b5bc626387956e1c2e1ca3f0949b` |
| 18 | `lemma` | [map_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/map--323824e6794e63e981cadd8d.md) | 179 | `result-track:323824e6794e63e981cadd8d6d8ea9f9083ecfe5873d98398107108220658e4d` |
| 19 | `def` | [isColimitMapCoconeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/iscolimitmapcoconeequiv--9458804bf4489813c0789312.md) | 183 | `declaration-track:9458804bf4489813c078931270eb8c4cd6900c05273881e67599fc93eedb311a` |
| 20 | `def` | [mapIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/mapiscolimit--7b40bdad1f4366b9f739f960.md) | 191 | `declaration-track:7b40bdad1f4366b9f739f960c92960b58213ddcf8f225529b1a4869aac1ea319` |
| 21 | `def` | [isColimitMapCoconeCoforkEquiv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/iscolimitmapcoconecoforkequiv--1fc7b57d0cc7858e8a12b714.md) | 210 | `declaration-track:1fc7b57d0cc7858e8a12b7146fe64d5302f46296669b827c81b8043fc2c8098b` |
| 22 | `def` | [isColimitCoforkMapOfIsColimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/iscolimitcoforkmapofiscolimit--9fd522b4b654a93048719ab4.md) | 222 | `declaration-track:9fd522b4b654a93048719ab46275e5880a197cac9be9d0b9ec74c1281350b9f6` |
| 23 | `def` | [isColimitOfHasCokernelOfPreservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/iscolimitofhascokernelofpreservescolimit--7030ffab2de267d27bbbe090.md) | 236 | `declaration-track:7030ffab2de267d27bbbe0900ab84f3b740dbfcf746d00a486ff3c7e7aee0332` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/instance--b5b2de612c5c376f24f14d9a.md) | 243 | `declaration-track:b5b2de612c5c376f24f14d9a3d0ede6904b551f90605a0873199c2a200bd7dce` |
| 25 | `lemma` | [PreservesCokernel.of_iso_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/preservescokernel-of-iso-comparison--ab8e8d68f573c1557db3cff9.md) | 251 | `result-track:ab8e8d68f573c1557db3cff9d6e114bcd41834898bbb7364ad547d00f0fea26a` |
| 26 | `def` | [PreservesCokernel.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/preservescokernel-iso--434529e6e32d5b28288da61a.md) | 262 | `declaration-track:434529e6e32d5b28288da61a9c619d2a8e58c333e0f20dc84c8c5f91d1d6f64d` |
| 27 | `theorem` | [PreservesCokernel.π_iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/preservescokernel-iso-hom--f19f5847af2121555cd0d905.md) | 267 | `result-track:f19f5847af2121555cd0d90539d17d57b46db94ae1344c4734d146a4a6ac831c` |
| 28 | `theorem` | [PreservesCokernel.iso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/preservescokernel-iso-inv--ec3e40b69e82e1c74ea44acb.md) | 272 | `result-track:ec3e40b69e82e1c74ea44acb19373b5b721daf24a35f202526e3688c34f6ec89` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/instance--5fcb16428493d7ea941ecf29.md) | 276 | `declaration-track:5fcb16428493d7ea941ecf29dec53108ad54cff7b33d38c43cf182025283a0fc` |
| 30 | `theorem` | [preserves_cokernel_iso_comp_cokernel_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/preserves-cokernel-iso-comp-cokernel-map--17a41c42a2880eeee2990eb6.md) | 281 | `result-track:17a41c42a2880eeee2990eb6b7af6b632fc545213d3e1f6ed7707f7d15d63543` |
| 31 | `instance` | [preservesKernel_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/preserveskernel-zero--f5a47391306db3007e7899a2.md) | 296 | `declaration-track:f5a47391306db3007e7899a24770bbf0dd827b443d969d1d10f47a7e2b98c435` |
| 32 | `instance` | [preservesCokernel_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/preservescokernel-zero--36d38477e747d0cf29214817.md) | 305 | `declaration-track:36d38477e747d0cf292148173c237a78a703b8d119c2df4c70b5c00c832b3f51` |
| 33 | `lemma` | [preservesKernel_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/preserveskernel-zero--3aad278f4329f423d7ffdd44.md) | 316 | `result-track:3aad278f4329f423d7ffdd44d94c637d590b864647d6d251c87e6c946ab21598` |
| 34 | `lemma` | [preservesCokernel_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/preservescokernel-zero--74acae36dcd0016e3864a996.md) | 322 | `result-track:74acae36dcd0016e3864a996195631840562cce883f326f8abdc7ba69be3cd88` |
| 35 | `def` | [mapZeroKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/mapzerokernelfork--95fad961bdbd496c46be4fba.md) | 336 | `declaration-track:95fad961bdbd496c46be4fba5059fac792f1f8dbdd97c219f65c1dc5f06c14c9` |
| 36 | `def` | [mapZeroCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant5a66eb0aea36ad268096706d544d062a079541874816cb524df352594993756e.lean/declarations/mapzerocokernelcofork--f2a214e40adc9155a3dbf92f.md) | 343 | `declaration-track:f2a214e40adc9155a3dbf92f1247b3266dff7d217fd976c72ea286fdb63dc2c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
