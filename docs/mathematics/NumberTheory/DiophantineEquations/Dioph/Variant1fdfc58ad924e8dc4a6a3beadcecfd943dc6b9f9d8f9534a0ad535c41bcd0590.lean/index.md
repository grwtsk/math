# GRWTSK.NumberTheory.DiophantineEquations.Dioph.Variant1fdfc58ad924e8dc4a6a3beadcecfd943dc6b9f9d8f9534a0ad535c41bcd0590

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**84 observed declarations and anonymous commands**, 64 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant1fdfc58ad924e8dc4a6a3beadcecfd943dc6b9f9d8f9534a0ad535c41bcd0590.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4bafb41ad3fbd84e81c28b2c57cd586917fef0a7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variant1fdfc58ad924e8dc4a6a3beadcecfd943dc6b9f9d8f9534a0ad535c41bcd0590.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [IsPoly](declarations/ispoly--50163ec8ca70af7227574835.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IsPoly.neg](declarations/ispoly-neg--9e667afd909b41221be65cc3.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsPoly.add](declarations/ispoly-add--10801679adc61610a2734298.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Poly](declarations/poly--52d59032aaef8d15320bb782.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instFunLike](declarations/instfunlike--01c06eae35de6dd2dd4a4112.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isPoly](declarations/ispoly--13562b574665edd087d4159f.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ext](declarations/ext--14b4a1d18b105061d1af9348.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [proj](declarations/proj--26735157004f1de17261172d.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [proj_apply](declarations/proj-apply--e6024c71ce6640198aa37f6b.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [const](declarations/const--1f3e1e0b9b0dcbb3c195be28.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [const_apply](declarations/const-apply--b04b1197dec6036100cc8de3.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance--9ff28b2969acf6ac29dfbfee.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance--0fe50d0f3ec5744ef8e3458f.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance--708a81eccf527ebec96faf7e.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance--d4250bb5716b6dee3314eb49.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance--95c8d973fe26edccab4ccaaf.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance--64740c4e698cea28925195b9.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_zero](declarations/coe-zero--043a5f0ce6a69647fc658ca9.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_one](declarations/coe-one--9d63a6d6a5ec4632990cf976.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_neg](declarations/coe-neg--9e3e53d30b530942426e2880.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_add](declarations/coe-add--270e2f9cf09a7f30600cc30f.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_sub](declarations/coe-sub--1ecc622b522fd3db6cc8d81f.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_mul](declarations/coe-mul--75af6e47e11b18bd071d3904.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [zero_apply](declarations/zero-apply--50e6a8db9b11a431e0294b14.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [one_apply](declarations/one-apply--ba77730cf6487be17b8eaa10.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [neg_apply](declarations/neg-apply--17d763674d01173137cc9c41.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [add_apply](declarations/add-apply--e64f868bf23e5e5e3c376b22.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sub_apply](declarations/sub-apply--59b813932d816d62b08f5b9f.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mul_apply](declarations/mul-apply--b6108e1c0b43e06dd3671bd1.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance--ad10ecc2fc5f41e1e79ccbcd.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance--9d6c49e347c2465e17887c50.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance--77ae21fdd912cbc5515533ba.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance--d3885d64e4302aea29f11802.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [induction](declarations/induction--24e166422e5bf2730740fe13.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [sumsq](declarations/sumsq--f76351e4f07ed6929cf6f8c4.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [sumsq_nonneg](declarations/sumsq-nonneg--203dc693143987ac11c190f2.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [sumsq_eq_zero](declarations/sumsq-eq-zero--0cdc1ef342cba6b813785e28.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [map](declarations/map--416e06937b1740b6a8c4a8e2.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [map_apply](declarations/map-apply--0a283f375a4b404720c07a8f.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Dioph](declarations/dioph--48493bd42b7c0418e00f7fd0.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [ext](declarations/ext--e035aacd5213e5fc8e806c73.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [of_no_dummies](declarations/of-no-dummies--9d822c594e048d72e25f9dca.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [inject_dummies_lem](declarations/inject-dummies-lem--3f84d0f3df448a2c81fbc9cf.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [inject_dummies](declarations/inject-dummies--00f1ceb01a4eedecf06d34f9.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [reindex_dioph](declarations/reindex-dioph--6770af71ad860eb3008bcd50.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [DiophList.forall](declarations/diophlist-forall--1f18186535ce50d9a462d72f.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [inter](declarations/inter--02edde327ef727e47d9d96ab.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [union](declarations/union--438ec345d90d4a5331d83c47.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [DiophPFun](declarations/diophpfun--3e7ff49dc07597014e39c4c8.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [DiophFn](declarations/diophfn--09cda6bdad7bb7459ecabf4f.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [reindex_diophFn](declarations/reindex-diophfn--c5b67660ecbec31f4817b10d.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [ex_dioph](declarations/ex-dioph--3838286e3ca7651b5444db3b.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [ex1_dioph](declarations/ex1-dioph--3c56740ffacb3e2292d9a53c.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [dom_dioph](declarations/dom-dioph--7225abaa9305cd5816c41f4c.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [diophFn_iff_pFun](declarations/diophfn-iff-pfun--b9a730c2bff8df3ffdf36907.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [abs_poly_dioph](declarations/abs-poly-dioph--bed2e86ef77392b58ab62236.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [proj_dioph](declarations/proj-dioph--9b02dc0b9a3e2e75eeda979a.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [diophPFun_comp1](declarations/diophpfun-comp1--3e3f165b23dbd5022dcd18c8.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [diophFn_comp1](declarations/diophfn-comp1--fb061a7b8105ddfc878b3b8a.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [diophFn_vec_comp1](declarations/diophfn-vec-comp1--ecaa4a02ddb7402317af2d6c.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [vec_ex1_dioph](declarations/vec-ex1-dioph--d8c7f9a3fed693d9dfbab8a0.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [diophFn_vec](declarations/diophfn-vec--231ea4be0bf4f8a68f4d401d.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [diophPFun_vec](declarations/diophpfun-vec--47ae79671db849950f7dd3ab.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [diophFn_compn](declarations/diophfn-compn--2712be1d069a4dfda95f40a2.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [dioph_comp](declarations/dioph-comp--be084caf0e4c5472ec978d11.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [diophFn_comp](declarations/diophfn-comp--d74f8e1a96556e9c26c7ae3b.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [proj_dioph_of_nat](declarations/proj-dioph-of-nat--8b992aa5b4596437ced0d767.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [const_dioph](declarations/const-dioph--289e93cc237fa1ef0843bb77.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [dioph_comp2](declarations/dioph-comp2--93fa62e2d830e1b7ce11b6aa.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [diophFn_comp2](declarations/diophfn-comp2--41046558a4ba6f570958eeef.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [eq_dioph](declarations/eq-dioph--9132374346b512d3ed3cdd45.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [add_dioph](declarations/add-dioph--18aed8f0b4ad36648effbe71.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mul_dioph](declarations/mul-dioph--6db22d44ff449311a5d29183.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [le_dioph](declarations/le-dioph--8622be0736e430c1f230b8fa.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [lt_dioph](declarations/lt-dioph--7d29dec1dba706b3170ea362.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [ne_dioph](declarations/ne-dioph--da81fa9662c6faead83c09e3.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [sub_dioph](declarations/sub-dioph--1c37624fbc69c08095ab8f56.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [dvd_dioph](declarations/dvd-dioph--5ec4e2fdec4f5a68dba1e35c.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [mod_dioph](declarations/mod-dioph--c025eec998b6f62011a729e3.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [modEq_dioph](declarations/modeq-dioph--4052874422e3027ed026032f.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [div_dioph](declarations/div-dioph--10e97459c9dc02e0780a0baf.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [pell_dioph](declarations/pell-dioph--7afbc49b17918e545b0e6430.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [xn_dioph](declarations/xn-dioph--c1a306af6c3d7c5762c36aa8.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [pow_dioph](declarations/pow-dioph--738d284f83a5d1382e951e0d.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
