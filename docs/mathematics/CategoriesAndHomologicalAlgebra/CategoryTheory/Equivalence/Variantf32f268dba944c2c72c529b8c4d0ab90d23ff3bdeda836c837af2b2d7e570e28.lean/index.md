# GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equivalence.Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**107 observed declarations and anonymous commands**, 53 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d61a0fbe9732519fd0a9f6bf1ac240aaaf9a079`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Equivalence](declarations/equivalence--9d60821d94f1b4e7206e44be.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [unit](declarations/unit--0b09b4d5661b92c08063d2cf.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [counit](declarations/counit--215456e3259143ce5dcb103f.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [unitInv](declarations/unitinv--f232266c0bedef3506e37c34.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [counitInv](declarations/counitinv--4010447c3211c010833e40e9.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance--fdc4c21a6bde01e68a3a1bf2.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mkHom](declarations/mkhom--b9dbb62bab2ba0bd57bfc661.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [asNatTrans](declarations/asnattrans--8389714ecd272fa77069b870.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [hom_ext](declarations/hom-ext--36ea5ecd24bd76c7f4175480.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [mkHom_asNatTrans](declarations/mkhom-asnattrans--989432dbb56d05c865d6dfb9.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [asNatTrans_mkHom](declarations/asnattrans-mkhom--f301c8f45f5e25e21ce35eb2.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [id_asNatTrans](declarations/id-asnattrans--c0bc6c3e92783682b7e34339.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [comp_asNatTrans](declarations/comp-asnattrans--016985cbbb45069b8c64f7b0.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [mkHom_id_functor](declarations/mkhom-id-functor--091c9d1d3b00ddb538250bb8.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [mkHom_comp](declarations/mkhom-comp--4a91da4a062c5fa1cf3d86a7.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mkIso](declarations/mkiso--a0a7db22b9e06b3678b07880.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [functorFunctor](declarations/functorfunctor--abfaae6d412ff91b5ab41edb.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Equivalence_mk'_unit](declarations/equivalence-mk-unit--9fddfbf1f547ff7f40a6d1ec.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Equivalence_mk'_counit](declarations/equivalence-mk-counit--63c424f105d9d1df5524b514.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Equivalence_mk'_unitInv](declarations/equivalence-mk-unitinv--e91ef4df0ed9a4cecbc728f5.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Equivalence_mk'_counitInv](declarations/equivalence-mk-counitinv--625910d1a2c31c7edde7a54f.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [counit_naturality](declarations/counit-naturality--cad7bd851979b06296e0d8a6.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [unit_naturality](declarations/unit-naturality--56b1e8b5e7d31cc4250cbbda.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [counitInv_naturality](declarations/counitinv-naturality--4dd724029994005b7803ebd5.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [unitInv_naturality](declarations/unitinv-naturality--c279ce5b5e4faae73a733170.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [functor_unit_comp](declarations/functor-unit-comp--b6bc413c6a0e9462746ff4d2.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [counitInv_functor_comp](declarations/counitinv-functor-comp--f42646fe5e1e3e557cab3e8f.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [counitInv_app_functor](declarations/counitinv-app-functor--ab0305ddb6ba1a19a15d0f31.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [counit_app_functor](declarations/counit-app-functor--c41af2219a1c687f9055e27e.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [unit_inverse_comp](declarations/unit-inverse-comp--fbcfe116fb95fe23a3afc7fd.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [inverse_counitInv_comp](declarations/inverse-counitinv-comp--eb7a8a0565b21fa81dddca2d.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [unit_app_inverse](declarations/unit-app-inverse--abccc8420bc5dd864f059213.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [unitInv_app_inverse](declarations/unitinv-app-inverse--7177e4ba7ff51d7b502e3cd1.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [fun_inv_map](declarations/fun-inv-map--73f55d9190fe7cf7cf59a0cd.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [inv_fun_map](declarations/inv-fun-map--053052d386beed6aa96e7098.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [adjointifyη](declarations/adjointify--5cef7f442f4e609fd43c1c1d.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [adjointify_η_ε](declarations/adjointify--ebe9048b959806c62a371e57.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [mk](declarations/mk--bb2488b8a0688aee805436b6.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [refl](declarations/refl--59e156e1a6e209bf078d7319.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance--841d57441a13ef7304ac57e7.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [symm](declarations/symm--01c2c7c7720d23346be3ab1f.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [mkHom_id_inverse](declarations/mkhom-id-inverse--8039eaae92b513e99cc6f2de.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [trans](declarations/trans--0c4b30f4a2dbc4fecec56bc4.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [funInvIdAssoc](declarations/funinvidassoc--db4e14fbf0ba2e6e21983799.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [funInvIdAssoc_hom_app](declarations/funinvidassoc-hom-app--4edf76404a5639606e93d579.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [funInvIdAssoc_inv_app](declarations/funinvidassoc-inv-app--dded4727215f32a8a04c58c2.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [invFunIdAssoc](declarations/invfunidassoc--819fb1ad6e0cddb87090e205.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [invFunIdAssoc_hom_app](declarations/invfunidassoc-hom-app--6b4be36c8bf51bf60c52af88.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [invFunIdAssoc_inv_app](declarations/invfunidassoc-inv-app--2765ed949649e1b0dfd4cd27.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [congrLeft](declarations/congrleft--6652724a4a13a802d5303318.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [congrRight](declarations/congrright--50b5305993cc4e026a1acd31.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [congrRightFunctor](declarations/congrrightfunctor--2f836b1defa6fc12eb9d372c.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [cancel_unit_right](declarations/cancel-unit-right--ab6d0471c58ba68dfd9d5d56.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [cancel_unitInv_right](declarations/cancel-unitinv-right--de83c5f9a395a38944c35af6.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [cancel_counit_right](declarations/cancel-counit-right--f1b79b8eb09e53f96aff8abb.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [cancel_counitInv_right](declarations/cancel-counitinv-right--2239dfe29931e2ccb3cad7cc.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [cancel_unit_right_assoc](declarations/cancel-unit-right-assoc--a8c149cd704f2327a413d6bb.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [cancel_counitInv_right_assoc](declarations/cancel-counitinv-right-assoc--28bf2e3d49dce819a365a75d.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [cancel_unit_right_assoc'](declarations/cancel-unit-right-assoc--7a5fa89f59fff14278885013.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [cancel_counitInv_right_assoc'](declarations/cancel-counitinv-right-assoc--33c7bcae0e0a331cc3ad1f12.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [powNat](declarations/pownat--1ec8315bf90e6d9494863942.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [pow](declarations/pow--b7ab0f41a9ec70874fa8deae.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance--f4bc5c3577a82573cc22c090.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [pow_zero](declarations/pow-zero--02731275244998a9e7a0bde6.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [pow_one](declarations/pow-one--62009a76d4d15c0d5f534355.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [pow_neg_one](declarations/pow-neg-one--ca7177d2f5103e489ddd04d3.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [essSurj_functor](declarations/esssurj-functor--ecc221470b6be0dea2ec3725.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [essSurj_inverse](declarations/esssurj-inverse--7157ce632cfdfd48f6f7aaf4.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [fullyFaithfulFunctor](declarations/fullyfaithfulfunctor--685c5525b0ae2f08a47af764.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [fullyFaithfulInverse](declarations/fullyfaithfulinverse--90c2d5639128fd5de18f89d3.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [faithful_functor](declarations/faithful-functor--f52bacf8345656852847ce14.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [faithful_inverse](declarations/faithful-inverse--5c1a057bcb59b6db08f34fa8.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [full_functor](declarations/full-functor--ff3e797ff8506cc132968c9d.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [full_inverse](declarations/full-inverse--30e91551f8f32761c6c799a1.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [changeFunctor](declarations/changefunctor--b07f37eb1522e88e27665e19.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [changeFunctor_refl](declarations/changefunctor-refl--669c3eb82d6f8bc7898326b8.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [changeFunctor_trans](declarations/changefunctor-trans--c83105289ab013a478a9ea03.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [changeInverse](declarations/changeinverse--065d56483804ef47bd12f6e8.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `class` | [Functor.IsEquivalence](declarations/functor-isequivalence--a67fb5b4fc4b07572b29d919.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [Equivalence.isEquivalence_functor](declarations/equivalence-isequivalence-functor--2ab3d8ecfe2c4c8c261c51ae.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [Equivalence.isEquivalence_inverse](declarations/equivalence-isequivalence-inverse--6741318023ce496123d90988.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [mk'](declarations/mk--93202ac106a4218613cd38f2.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [inv](declarations/inv--c4d816ecd0b27e4c3aac87ad.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [asEquivalence](declarations/asequivalence--fa45a351a398a49df40c5af1.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [isEquivalence_refl](declarations/isequivalence-refl--048b1003199a3f807b7ca0a7.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [isEquivalence_inv](declarations/isequivalence-inv--082da6aa4bcffe123b25990d.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [isEquivalence_trans](declarations/isequivalence-trans--1b390a18f48246bda144549b.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [(anonymous)](declarations/instance--245cbf1264e0737ff1e42294.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [(anonymous)](declarations/instance--1da0a8bc5773f7fc7344f732.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [fun_inv_map](declarations/fun-inv-map--ce8e26b445718c35602b722a.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [inv_fun_map](declarations/inv-fun-map--9b08f20a07a9fda7b3435018.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [isEquivalence_of_iso](declarations/isequivalence-of-iso--f5ee9a00890550f230716753.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [isEquivalence_iff_of_iso](declarations/isequivalence-iff-of-iso--05f2996af78e6bc19a9b1bb8.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [isEquivalence_of_comp_right](declarations/isequivalence-of-comp-right--26e1c18338569d0b05c1d7dc.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [isEquivalence_of_comp_left](declarations/isequivalence-of-comp-left--0f25b42e64ae2a1b73cb2c15.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [essSurjInducedFunctor](declarations/esssurjinducedfunctor--9fc3e63977d6c7c61bfbff06.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [inducedFunctorOfEquiv](declarations/inducedfunctorofequiv--030a758bf17c6b03d757b7b2.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [fullyFaithfulToEssImage](declarations/fullyfaithfultoessimage--35c5b64818da2620c228cacf.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [ObjectProperty.fullSubcategoryCongr](declarations/objectproperty-fullsubcategorycongr--366d43b91ee549ed8fe15ad2.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [compInverseIso](declarations/compinverseiso--75f95a66d6cc7f661b39d0df.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [isoCompInverse](declarations/isocompinverse--1517f089e010e5dd8ad55c47.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [inverseCompIso](declarations/inversecompiso--f5eecf7f5614e67d67504129.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [isoInverseComp](declarations/isoinversecomp--3a7951c7508fa0d53b68ecf8.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [isoInverseOfIsoFunctor](declarations/isoinverseofisofunctor--10f37082d152b8b03d67ffaf.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [isoFunctorOfIsoInverse](declarations/isofunctorofisoinverse--bdcfa0b9ed6e30c6caffe76c.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [isoFunctorOfIsoInverse_isoInverseOfIsoFunctor](declarations/isofunctorofisoinverse-isoinverseofisofunctor--f0fb978cf3001f64ebffd719.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [isoInverseOfIsoFunctor_isoFunctorOfIsoInverse](declarations/isoinverseofisofunctor-isofunctorofisoinverse--b19e8ceb0403d791e24f0e10.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
