# GRWTSK.Algebra.LinearAlgebra.Basic.Varianta62b802bd9b081a20e30716e1c25cbdacbfcc0cad0cad7db304e61d21c7211b5

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**119 observed declarations and anonymous commands**, 101 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Varianta62b802bd9b081a20e30716e1c25cbdacbfcc0cad0cad7db304e61d21c7211b5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de4180f04893b0a4f45fb821c47dc36e8ac22963`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta62b802bd9b081a20e30716e1c25cbdacbfcc0cad0cad7db304e61d21c7211b5.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [genEigenspace](declarations/geneigenspace--a70f4a756fca42a9771f9e49.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [mem_genEigenspace](declarations/mem-geneigenspace--ef6819479c40eae07943e91b.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [genEigenspace_directed](declarations/geneigenspace-directed--05152379fe2743c73421019f.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [mem_genEigenspace_nat](declarations/mem-geneigenspace-nat--e00cd95fe4d32202ebeef501.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [map_genEigenspace_le](declarations/map-geneigenspace-le--5fac93cce6140a0a36dcdc0c.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [mapsTo_genEigenspace_of_comp](declarations/mapsto-geneigenspace-of-comp--9e453b06de7e3601bdcc8d50.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [mem_genEigenspace_top](declarations/mem-geneigenspace-top--468aa8e9c74fbbd6e7f414d9.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [genEigenspace_nat](declarations/geneigenspace-nat--8bbb33ccc77e437353aa5fb9.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [genEigenspace_eq_iSup_genEigenspace_nat](declarations/geneigenspace-eq-isup-geneigenspace-nat--d0a3ef43e40377dab7a0a012.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [genEigenspace_top](declarations/geneigenspace-top--f302c3f625b8e7936558454b.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [genEigenspace_one](declarations/geneigenspace-one--b87b84af519c533408ed2405.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [mem_genEigenspace_one](declarations/mem-geneigenspace-one--3552ac8299eb9481a8c3f7e5.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mem_genEigenspace_zero](declarations/mem-geneigenspace-zero--6894ba32e9275c8b5a8c5775.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [genEigenspace_zero](declarations/geneigenspace-zero--4de58d474e5b7a869380ec3d.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [genEigenspace_zero_nat](declarations/geneigenspace-zero-nat--910fd3d1d47f2f2f47bd788d.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [HasUnifEigenvector](declarations/hasunifeigenvector--4e0f75399141e3473ec64b17.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [HasUnifEigenvalue](declarations/hasunifeigenvalue--5eefe0e5156de3220ae3b4d0.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [UnifEigenvalues](declarations/unifeigenvalues--38c3ac88866dcafa02b628e8.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [UnifEigenvalues.val](declarations/unifeigenvalues-val--861b2256800a49d77d17c487.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [UnifEigenvalues.val_mk](declarations/unifeigenvalues-val-mk--28a7ddf9c1c8a69173b75bde.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [UnifEigenvalues.mk_val](declarations/unifeigenvalues-mk-val--fd7655b94c6c19481d51c9c3.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [UnifEigenvalues.instCoeOut](declarations/unifeigenvalues-instcoeout--377f47912f9ea77ec8249ccd.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [UnivEigenvalues.instDecidableEq](declarations/univeigenvalues-instdecidableeq--c9e1f5ec8e2a0258a1d16bd7.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [HasUnifEigenvector.hasUnifEigenvalue](declarations/hasunifeigenvector-hasunifeigenvalue--178948c9e6e0fc70100bdb57.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [HasUnifEigenvector.apply_eq_smul](declarations/hasunifeigenvector-apply-eq-smul--158c482638b15d56188b4c71.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [HasUnifEigenvector.pow_apply](declarations/hasunifeigenvector-pow-apply--d17e129f4ccd3a9c55c548c7.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [HasUnifEigenvalue.exists_hasUnifEigenvector](declarations/hasunifeigenvalue-exists-hasunifeigenvector--644e55f866935b3809730072.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [HasUnifEigenvalue.pow](declarations/hasunifeigenvalue-pow--01e7544f51881b17dce9a523.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [HasUnifEigenvalue.isNilpotent_of_isNilpotent](declarations/hasunifeigenvalue-isnilpotent-of-isnilpotent--a5683c66bbc0f3480b7d584c.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [HasUnifEigenvalue.mem_spectrum](declarations/hasunifeigenvalue-mem-spectrum--3ac6f56455efa2161b252205.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [hasUnifEigenvalue_iff_mem_spectrum](declarations/hasunifeigenvalue-iff-mem-spectrum--3e5943d033d630c2d6ad70ec.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [genEigenspace_div](declarations/geneigenspace-div--4c80718fc848d559f37ff898.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [genEigenrange](declarations/geneigenrange--571bcdb6f86dd8728d203a32.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [genEigenrange_nat](declarations/geneigenrange-nat--234c90fa75627e89728b43da.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [HasUnifEigenvalue.exp_ne_zero](declarations/hasunifeigenvalue-exp-ne-zero--fc015cbaa4fb412b248bc8b1.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [maxUnifEigenspaceIndex](declarations/maxunifeigenspaceindex--11bb0f49288f8a72a45c97df.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [genEigenspace_top_eq_maxUnifEigenspaceIndex](declarations/geneigenspace-top-eq-maxunifeigenspaceindex--0355748831e67e9ba2a03a42.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [genEigenspace_le_genEigenspace_maxUnifEigenspaceIndex](declarations/geneigenspace-le-geneigenspace-maxunifeigenspaceindex--ce12f32f2dbc62c7b7c6db88.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [genEigenspace_eq_genEigenspace_maxUnifEigenspaceIndex_of_le](declarations/geneigenspace-eq-geneigenspace-maxunifeigenspaceindex-of-le--e0050e487ba03ded57bb701b.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [HasUnifEigenvalue.le](declarations/hasunifeigenvalue-le--c2100de20c824adbf3348d49.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [HasUnifEigenvalue.lt](declarations/hasunifeigenvalue-lt--d5592b4c6cb05014bb4c32b5.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [hasUnifEigenvalue_iff_hasUnifEigenvalue_one](declarations/hasunifeigenvalue-iff-hasunifeigenvalue-one--b65f82f0277ec46b128faff5.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [maxUnifEigenspaceIndex_le_finrank](declarations/maxunifeigenspaceindex-le-finrank--a384fd720e7f8aac97804c00.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [genEigenspace_le_genEigenspace_finrank](declarations/geneigenspace-le-geneigenspace-finrank--52fac0d07c1d45ddba0d28b0.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [genEigenspace_eq_genEigenspace_finrank_of_le](declarations/geneigenspace-eq-geneigenspace-finrank-of-le--4d37ea779ec0c9546d95c102.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [mapsTo_genEigenspace_of_comm](declarations/mapsto-geneigenspace-of-comm--bb383bfafa96768c34dbeade.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [isNilpotent_restrict_genEigenspace_nat](declarations/isnilpotent-restrict-geneigenspace-nat--236654086e8c13a0281e62eb.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [isNilpotent_restrict_genEigenspace_top](declarations/isnilpotent-restrict-geneigenspace-top--139abe91214895db05672747.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `abbrev` | [eigenspace](declarations/eigenspace--876e2589c16d21483ae87f8a.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [eigenspace_def](declarations/eigenspace-def--5dfaef08ff10ea501c766d44.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [eigenspace_zero](declarations/eigenspace-zero--47e717f148dfb9ec32f01222.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `abbrev` | [HasEigenvector](declarations/haseigenvector--cdd804cc4912d150ab4d9283.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [hasEigenvector_iff](declarations/haseigenvector-iff--8f07342d385465d4694e1bf7.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `abbrev` | [HasEigenvalue](declarations/haseigenvalue--ded11ae15f003ddf38f16c38.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [hasEigenvalue_iff](declarations/haseigenvalue-iff--f55d7030ad0ac615ab800d3a.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `abbrev` | [Eigenvalues](declarations/eigenvalues--8d7cab15b2ffa0e0d53f44e0.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [Eigenvalues.val](declarations/eigenvalues-val--bd458b06d6e74eba96b0f254.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [Eigenvalues.val_mk](declarations/eigenvalues-val-mk--7625c23e8146a7a78fa7c3c4.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [Eigenvalues.mk_val](declarations/eigenvalues-mk-val--22da47bb60f63e8093f42f5d.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [hasEigenvalue_of_hasEigenvector](declarations/haseigenvalue-of-haseigenvector--aa3edc1deead2e36d85052f7.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [mem_eigenspace_iff](declarations/mem-eigenspace-iff--6c478ac556676fb11e0c1011.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [HasEigenvector.apply_eq_smul](declarations/haseigenvector-apply-eq-smul--ef864b9cf07a0c64b767f862.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [HasEigenvector.pow_apply](declarations/haseigenvector-pow-apply--c88125a0180640a04760a365.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [HasEigenvalue.exists_hasEigenvector](declarations/haseigenvalue-exists-haseigenvector--9b1b19f88462d378b8719d98.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [HasEigenvalue.pow](declarations/haseigenvalue-pow--f81c2c8b908fbfcbc02b620f.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [genEigenspace_mem_invtSubmodule](declarations/geneigenspace-mem-invtsubmodule--a563259fc503f365b221b711.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [eigenspace_mem_invtSubmodule](declarations/eigenspace-mem-invtsubmodule--bfe68a651d00e5baeb12eb06.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [restrict_eigenspace](declarations/restrict-eigenspace--031d6bfafa41f1176dc5dae6.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [HasEigenvalue.isNilpotent_of_isNilpotent](declarations/haseigenvalue-isnilpotent-of-isnilpotent--e31fbd60afd0cdc8608007a9.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [HasEigenvalue.mem_spectrum](declarations/haseigenvalue-mem-spectrum--0c969fd80881546c13a2c176.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [hasEigenvalue_iff_mem_spectrum](declarations/haseigenvalue-iff-mem-spectrum--613d7b26b88de711bf7245a7.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [eigenspace_div](declarations/eigenspace-div--c8e2a37e0d806abf1462cf56.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `abbrev` | [HasGenEigenvector](declarations/hasgeneigenvector--fd8c0224acb6f3044998edec.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [hasGenEigenvector_iff](declarations/hasgeneigenvector-iff--2880af97c1ee0241121edd9f.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `abbrev` | [HasGenEigenvalue](declarations/hasgeneigenvalue--9d2b6f4a605d82c9395d337f.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [hasGenEigenvalue_iff](declarations/hasgeneigenvalue-iff--486c214f0d7caf04fcf91ed6.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [exp_ne_zero_of_hasGenEigenvalue](declarations/exp-ne-zero-of-hasgeneigenvalue--72a5f223c7411248e601ad62.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `abbrev` | [maxGenEigenspace](declarations/maxgeneigenspace--68c1a91edec1594b7ec14b3e.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [iSup_genEigenspace_eq](declarations/isup-geneigenspace-eq--63e044b2c0c05ca5d6d360ca.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [genEigenspace_le_maximal](declarations/geneigenspace-le-maximal--b719cf68c36aff1edf51c444.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [mem_maxGenEigenspace](declarations/mem-maxgeneigenspace--e9a0e5220f53947cbb78263a.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `abbrev` | [maxGenEigenspaceIndex](declarations/maxgeneigenspaceindex--acdd73b4191d51de5fefc7c5.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [maxGenEigenspace_eq](declarations/maxgeneigenspace-eq--3f6d54b04e26983d6722d31a.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [maxGenEigenspace_eq_maxGenEigenspace_zero](declarations/maxgeneigenspace-eq-maxgeneigenspace-zero--58c7c8c26f5e5e586f8ece11.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [hasGenEigenvalue_of_hasGenEigenvalue_of_le](declarations/hasgeneigenvalue-of-hasgeneigenvalue-of-le--41b598080f67f88df146d4cf.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [eigenspace_le_genEigenspace](declarations/eigenspace-le-geneigenspace--9de1c1bfd0dc3b6165063fc8.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [eigenspace_le_maxGenEigenspace](declarations/eigenspace-le-maxgeneigenspace--bd583577cde72b6a41653520.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [hasGenEigenvalue_of_hasEigenvalue](declarations/hasgeneigenvalue-of-haseigenvalue--755855b69b8fd21d082abb06.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [hasEigenvalue_of_hasGenEigenvalue](declarations/haseigenvalue-of-hasgeneigenvalue--b8ecbe515a7463a1633dabcb.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [hasGenEigenvalue_iff_hasEigenvalue](declarations/hasgeneigenvalue-iff-haseigenvalue--b3f34a1468258d53eef68d7b.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [maxGenEigenspace_eq_genEigenspace_finrank](declarations/maxgeneigenspace-eq-geneigenspace-finrank--bd6a0910ba149254591bfd2a.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [mapsTo_maxGenEigenspace_of_comm](declarations/mapsto-maxgeneigenspace-of-comm--43faa819bea0f7d19885274c.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [isNilpotent_restrict_sub_algebraMap](declarations/isnilpotent-restrict-sub-algebramap--acbd4c8c250d00f9eff08e79.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [isNilpotent_restrict_maxGenEigenspace_sub_algebraMap](declarations/isnilpotent-restrict-maxgeneigenspace-sub-algebramap--70653eba18e76d92965be778.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [disjoint_genEigenspace](declarations/disjoint-geneigenspace--612b30233980f5a993b06160.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [injOn_genEigenspace](declarations/injon-geneigenspace--b26f3a5cbbff4db06610c5fd.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [injOn_maxGenEigenspace](declarations/injon-maxgeneigenspace--964099e3282744ffb2ea79b7.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [independent_genEigenspace](declarations/independent-geneigenspace--93299a8ba1137a7a670bd807.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [independent_maxGenEigenspace](declarations/independent-maxgeneigenspace--84321cfaf1c43f9de1e56b60.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [eigenspaces_iSupIndep](declarations/eigenspaces-isupindep--c8b09208487e17433b312f8b.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [eigenvectors_linearIndependent'](declarations/eigenvectors-linearindependent--6c22d4ae31aa908a0e7debd3.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [eigenvectors_linearIndependent](declarations/eigenvectors-linearindependent--f1a8f3cd1853ec7721aaf0d5.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [genEigenspace_restrict](declarations/geneigenspace-restrict--3e33c0c2833584d33de0ba0a.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [_root_.Submodule.inf_genEigenspace](declarations/root-submodule-inf-geneigenspace--cdeb3bd14d0250697f94db13.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [mapsTo_restrict_maxGenEigenspace_restrict_of_mapsTo](declarations/mapsto-restrict-maxgeneigenspace-restrict-of-mapsto--a4f353585b5e9841f06490c7.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [eigenspace_restrict_le_eigenspace](declarations/eigenspace-restrict-le-eigenspace--072fd7cfb1c8cf32c96452cb.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [generalized_eigenvec_disjoint_range_ker](declarations/generalized-eigenvec-disjoint-range-ker--6504f9c7a30ff0cb2be496a7.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [eigenspace_restrict_eq_bot](declarations/eigenspace-restrict-eq-bot--da89db18806aea1d0d3ccb0f.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [pos_finrank_genEigenspace_of_hasEigenvalue](declarations/pos-finrank-geneigenspace-of-haseigenvalue--8e6e2e70f706153eaeb8af61.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [map_genEigenrange_le](declarations/map-geneigenrange-le--50080d5114bce8ad84ca2c95.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [genEigenspace_le_smul](declarations/geneigenspace-le-smul--e1e6c4ddaabc89159646df53.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [genEigenspace_inf_le_add](declarations/geneigenspace-inf-le-add--a9dd60bfcf5aa9d6dcec941e.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [map_smul_of_iInf_genEigenspace_ne_bot](declarations/map-smul-of-iinf-geneigenspace-ne-bot--48d3eee85b9cfad6279dc406.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [map_add_of_iInf_genEigenspace_ne_bot_of_commute](declarations/map-add-of-iinf-geneigenspace-ne-bot-of-commute--563738edd8c47be3b31fce40.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [hasEigenvalue_neg_iff](declarations/haseigenvalue-neg-iff--b639f3b45660d0c68ff7fb04.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [hasEigenvalue_add_iff](declarations/haseigenvalue-add-iff--9fd9b232304c6a84e532a857.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [hasEigenvalue_add'_iff](declarations/haseigenvalue-add-iff--512769c972d930dafeff7b4e.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [hasEigenvalue_sub_iff](declarations/haseigenvalue-sub-iff--41db670fbd47e7f0e8ff5b72.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [hasEigenvalue_sub'_iff](declarations/haseigenvalue-sub-iff--87808691894b3096db9a4f0d.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
