# GRWTSK.Algebra.LinearAlgebra.AffineMap.Variantf32a9a69679c249e3f6d7dacfab1c61b481327fd81c42de54f742bcc9a01a86a

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**123 observed declarations and anonymous commands**, 93 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/AffineMap/Variantf32a9a69679c249e3f6d7dacfab1c61b481327fd81c42de54f742bcc9a01a86a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69df7267565349a9cc9f9b5214762b9eb062479c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/AffineMap/Variantf32a9a69679c249e3f6d7dacfab1c61b481327fd81c42de54f742bcc9a01a86a.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineMap](declarations/affinemap--3281da035d4499af04f252ca.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [AffineMap.funLike](declarations/affinemap-funlike--154ec7082405ca92226a83fa.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [AffineMap.hasCoeToFun](declarations/affinemap-hascoetofun--bf929780fbffc228971ce0ec.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toAffineMap](declarations/toaffinemap--dc334cf3d69161e5f1e1b90d.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_toAffineMap](declarations/coe-toaffinemap--1d125c761740e7c26bd40a13.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toAffineMap_linear](declarations/toaffinemap-linear--0fee590b04204d4ae9bf46ad.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coe_mk](declarations/coe-mk--f5ffd220d80ea94ba98c8914.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe--1cba7a07443218afc1fd6d4e.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [map_vadd](declarations/map-vadd--a7a68c896477eb3a5b01e0c0.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [linearMap_vsub](declarations/linearmap-vsub--eb138c4d1e521477548d36a0.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ext](declarations/ext--8ca852705f19734bd69621bf.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ext_iff](declarations/ext-iff--f97a51866fe68ecb8f583ffe.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coeFn_injective](declarations/coefn-injective--8e9be5323c6adb6ee2f3401e.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [congr_arg](declarations/congr-arg--658d56d61f84f57929f14395.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [congr_fun](declarations/congr-fun--43d6d9aebb3e3c004197c5fe.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [const](declarations/const--bd9a4919be5019874257554f.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_const](declarations/coe-const--5b53e4fc4e9d92d65a5dfadb.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [const_apply](declarations/const-apply--60fcbfc0ba3a4151492e1186.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [const_linear](declarations/const-linear--512929b50d0f89b2f061b4c4.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [linear_eq_zero_iff_exists_const](declarations/linear-eq-zero-iff-exists-const--fa5e8f37ef2fb69a2e00167f.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [nonempty](declarations/nonempty--e2c2b94854642502a75c6b5d.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mk'](declarations/mk--9b82414be6dcd11ec2a66cd5.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_mk'](declarations/coe-mk--5974d7e8d16cf82d52cfe244.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mk'_linear](declarations/mk-linear--402aa62cb6f4d092e69b81c3.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [mulAction](declarations/mulaction--017573864269886d99ccf650.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_smul](declarations/coe-smul--b6a0175f29711091ba9627c7.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [smul_linear](declarations/smul-linear--9efcc4524d4bc38c8938d8f8.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [isCentralScalar](declarations/iscentralscalar--9fe47c4c967019c0ae0ff5fa.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance--f1c19c9ad745b34ac6a3be5c.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance--0dd22eb7e1ddc2aa8f7fc4af.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance--c380a5be905abdddb403b01f.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance--09d08ab9bee2d30e9fd64fde.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_zero](declarations/coe-zero--50191b1e5af92e94b2023181.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_add](declarations/coe-add--ce0e210fce60949bfa5671c4.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coe_neg](declarations/coe-neg--efb78e4f5cff6f973b665e60.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_sub](declarations/coe-sub--d1b69d0738a8a56f8fcf4cec.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [zero_linear](declarations/zero-linear--22d4db2124f6ed174eab73c2.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [add_linear](declarations/add-linear--8d3b28574c43312199d3273d.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [sub_linear](declarations/sub-linear--f9764a0f6840d199bb567dd3.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [neg_linear](declarations/neg-linear--3454b0a847fca71a4bc36198.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance--03ca65acc1ba3e22e8bc58ef.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance--aed3328f9e3bc84b7df9c377.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [vadd_apply](declarations/vadd-apply--d26048e5c399b58e80d29195.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [vsub_apply](declarations/vsub-apply--92fdc44a81f8bf2cfd5e7d75.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [fst](declarations/fst--83bb48496e5c9b1d2d37e34f.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_fst](declarations/coe-fst--9a900b6cec1385e0710142bf.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [fst_linear](declarations/fst-linear--d1405616170b3356eff63fce.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [snd](declarations/snd--ea6147ea9aa3a8c5c107789f.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coe_snd](declarations/coe-snd--6fc686d46b3ee584e1c077d7.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [snd_linear](declarations/snd-linear--0da3019709777e99f6832b08.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [id](declarations/id--1c5e710bc90d8df239d4e185.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coe_id](declarations/coe-id--6b395ff850f807a5ca0158da.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [id_linear](declarations/id-linear--2938def5182f2868c6dd2edb.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [id_apply](declarations/id-apply--6eff0a37658a88321f9e9700.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance--f0fe8ad17a33beffe7713d15.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [comp](declarations/comp--f6ebef4e498c66218a715d0b.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [coe_comp](declarations/coe-comp--8c69f31692acfe43affd8da1.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [comp_apply](declarations/comp-apply--10c44d2ced14adb4685107f0.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [comp_id](declarations/comp-id--115da0b24686649ffbf6e4e2.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [id_comp](declarations/id-comp--5fca1dcf013f762a342df015.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [comp_assoc](declarations/comp-assoc--16a5fddb631aa0abc3014f48.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance--3d5c35bf7b3a1e8afaa06753.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_mul](declarations/coe-mul--829eed3fa21ed6c5af0aa1b7.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [coe_one](declarations/coe-one--3b9166e9992394328a90e2ec.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [linearHom](declarations/linearhom--c1f43e6316abb58e587aa054.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [linear_injective_iff](declarations/linear-injective-iff--ab627ace3d1a8e297f233958.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [linear_surjective_iff](declarations/linear-surjective-iff--93aad324527acf160ee7b25f.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [linear_bijective_iff](declarations/linear-bijective-iff--bffcff030d346dab402adb48.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [image_vsub_image](declarations/image-vsub-image--fe34e7042b4dc53541599ba2.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [lineMap](declarations/linemap--6e2e6fc8cafed41e937eeaeb.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [coe_lineMap](declarations/coe-linemap--95f09759612213c441d7c129.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [lineMap_apply](declarations/linemap-apply--d2f2f86e042f5a975bd72bd0.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [lineMap_apply_module'](declarations/linemap-apply-module--ddc5f2cc7c55a865545d498a.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [lineMap_apply_module](declarations/linemap-apply-module--75e7a382febfedd307545e0b.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [lineMap_apply_ring'](declarations/linemap-apply-ring--3f78f0f3133f05ea0a787e9b.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [lineMap_apply_ring](declarations/linemap-apply-ring--e9f2951debc161fdaecc8c19.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [lineMap_vadd_apply](declarations/linemap-vadd-apply--64c789e2e12e94b07691acd4.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [lineMap_linear](declarations/linemap-linear--f18a576330380b1f87fff2a2.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [lineMap_same_apply](declarations/linemap-same-apply--510c7300db5c91f910dab1e2.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [lineMap_same](declarations/linemap-same--c029020bacff4495928be78d.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [lineMap_apply_zero](declarations/linemap-apply-zero--b2ccffb23cefff248ba0983c.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [lineMap_apply_one](declarations/linemap-apply-one--df8e58de7fc93e86b869f1c7.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [lineMap_eq_lineMap_iff](declarations/linemap-eq-linemap-iff--4085cbf0755deb8dad166bbd.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [lineMap_eq_left_iff](declarations/linemap-eq-left-iff--52979af603a3d384b292f3f0.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [lineMap_eq_right_iff](declarations/linemap-eq-right-iff--98b0d149cf886c14110b8f39.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [lineMap_injective](declarations/linemap-injective--54a2b9061a2c161c9737fcd0.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [apply_lineMap](declarations/apply-linemap--5d19992cb77ce58fa9a16ae3.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [comp_lineMap](declarations/comp-linemap--8f7d5c7df1386346971d1146.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [fst_lineMap](declarations/fst-linemap--3641483f19b406e6f8cc732e.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [snd_lineMap](declarations/snd-linemap--b370497ff4c9c276855485b4.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [lineMap_symm](declarations/linemap-symm--30c528326b2db340e1ce06f1.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [lineMap_apply_one_sub](declarations/linemap-apply-one-sub--b469ecd24ab246c8ef2810b0.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [lineMap_vsub_left](declarations/linemap-vsub-left--131084c27710609813d208e6.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [left_vsub_lineMap](declarations/left-vsub-linemap--8e6ec3bf628ec38e4120cf2a.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [lineMap_vsub_right](declarations/linemap-vsub-right--0dd0ce7fe57dcf1dba61bc4e.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [right_vsub_lineMap](declarations/right-vsub-linemap--eb71b1311f953709bbcbe387.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [lineMap_vadd_lineMap](declarations/linemap-vadd-linemap--3d630f13b6a103b192226a1f.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [lineMap_vsub_lineMap](declarations/linemap-vsub-linemap--71049e937e1e851f8290fe44.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [decomp](declarations/decomp--8881d68787108cbe6353ed3c.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [decomp'](declarations/decomp--441543a4961a39f7b062f386.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [image_uIcc](declarations/image-uicc--fc9e2345b7dd1b6199712bfe.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [proj](declarations/proj--9dbb4cd9bdb8fefb0fb5c598.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [proj_apply](declarations/proj-apply--31d0a656e37acb86ac4eb1d7.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [proj_linear](declarations/proj-linear--729439a626e43b6aed33d383.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [pi_lineMap_apply](declarations/pi-linemap-apply--0c62bb3a415b6fa4c9e56767.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [distribMulAction](declarations/distribmulaction--06da9087ff167086dff9bf57.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [(anonymous)](declarations/instance--31c6d033425389ae4d138219.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [toConstProdLinearMap](declarations/toconstprodlinearmap--f8cf3dc5b5fac10d16218746.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [homothety](declarations/homothety--067db9f362fb6f682c534a12.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [homothety_def](declarations/homothety-def--11a9e54f5388b579e1ee18e4.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [homothety_apply](declarations/homothety-apply--7670b0de76daa653b31cca45.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [homothety_eq_lineMap](declarations/homothety-eq-linemap--b5141629638963b86baa6469.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [homothety_one](declarations/homothety-one--45e4770650b8dce3e20c29ca.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [homothety_apply_same](declarations/homothety-apply-same--1ca850cec018aac6e418701b.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [homothety_mul_apply](declarations/homothety-mul-apply--7e5a95d9c6a075ad00625162.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [homothety_mul](declarations/homothety-mul--6f4dcfbb23ec7070a0c42557.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [homothety_zero](declarations/homothety-zero--a99b95759e0ab839d3e5acd2.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [homothety_add](declarations/homothety-add--37cd508cac1784077371ac35.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [homothetyHom](declarations/homothetyhom--cf0899aa81ee394096e8e9c2.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [coe_homothetyHom](declarations/coe-homothetyhom--461d6ad0ae24f6d6447de51a.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [homothetyAffine](declarations/homothetyaffine--51e177cc30937ac625c667eb.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [coe_homothetyAffine](declarations/coe-homothetyaffine--82fb4f64ee1ddfe431fb850a.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [Convex.combo_affine_apply](declarations/convex-combo-affine-apply--caa0dd46787f95c33d445770.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
