# GRWTSK.Algebra.LinearAlgebra.Rank.Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 53 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8a7feee81b0a65091710388b0ad2bc4d890f2c2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cRank](declarations/crank--ccc72fae5dcad1ac27af1265.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [cRank_toNat_eq_finrank](declarations/crank-tonat-eq-finrank--6a36e4a39f58dbcf2113c5d7.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [lift_cRank_submatrix_le](declarations/lift-crank-submatrix-le--6188e528cb2bb2f80e1e216c.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [cRank_submatrix_le](declarations/crank-submatrix-le--e338e21260ab7cdfc065ee7a.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [cRank_le_card_height](declarations/crank-le-card-height--a19a8d51f9116ed9f62c900b.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [cRank_le_card_width](declarations/crank-le-card-width--fcf5b034aab01e52749a8898.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [eRank](declarations/erank--6310663c3c102114c60a8f2a.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [eRank_toNat_eq_finrank](declarations/erank-tonat-eq-finrank--dfba92c1d156eed47d356cbe.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [eRank_submatrix_le](declarations/erank-submatrix-le--e41f332f85693d45ae57232a.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [eRank_le_card_width](declarations/erank-le-card-width--178bdff33bcf9d1513b55a12.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [eRank_le_card_height](declarations/erank-le-card-height--fb4d2a488a585a3262688491.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [rank](declarations/rank--60397a55087a74ed1eca9be1.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cRank_one](declarations/crank-one--a145d52df462a527e767bad7.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eRank_one](declarations/erank-one--6e22bdf3d2c212201e62841e.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rank_one](declarations/rank-one--e49ded75adceceecd23ca51b.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rank_zero](declarations/rank-zero--8980fa1bcf272c7a63428036.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cRank_zero](declarations/crank-zero--134c85fefed8a19242033191.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eRank_zero](declarations/erank-zero--2d211b2201ccf1d85ec1410b.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rank_le_card_width](declarations/rank-le-card-width--51a50056bb5167e785cff9de.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rank_le_width](declarations/rank-le-width--c809e90888eb04e78f36efcf.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rank_mul_le_left](declarations/rank-mul-le-left--d59c6195cc445859b6e635df.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rank_mul_le_right](declarations/rank-mul-le-right--b98d153a853efdb937939e09.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rank_mul_le](declarations/rank-mul-le--2a36de43de80b677448ee281.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rank_unit](declarations/rank-unit--986c992a652c5baa99007bfe.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rank_of_isUnit](declarations/rank-of-isunit--04e977a228b87cf4871187ec.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [rank_mul_eq_left_of_isUnit_det](declarations/rank-mul-eq-left-of-isunit-det--bab47e0cfbe77d25d3e99a3c.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [rank_mul_eq_right_of_isUnit_det](declarations/rank-mul-eq-right-of-isunit-det--b38efc4a04c4e1a256748c2a.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rank_submatrix_le](declarations/rank-submatrix-le--a7aeaab5e0e7141650cafcad.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rank_reindex](declarations/rank-reindex--ed65ee3eff0f9e9441363326.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rank_submatrix](declarations/rank-submatrix--0e2a9747e5113ee0446fbb4a.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lift_cRank_submatrix](declarations/lift-crank-submatrix--2e8339f17dcfa101408f0564.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [cRank_submatrix](declarations/crank-submatrix--1d757b4fe21cfa1b36bfbeb8.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lift_cRank_reindex](declarations/lift-crank-reindex--5fe317a51fbf84a04fce80af.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [cRank_reindex](declarations/crank-reindex--764a09763edf61c4eafac61a.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eRank_submatrix](declarations/erank-submatrix--d060e4a33242b2f055584bbb.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [eRank_reindex](declarations/erank-reindex--ade95ce6b9c5488ea185303e.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [rank_eq_finrank_range_toLin](declarations/rank-eq-finrank-range-tolin--26adcac5d261990ded1cf400.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [rank_le_card_height](declarations/rank-le-card-height--2db65e9f298958b4e1206982.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rank_le_height](declarations/rank-le-height--7c07173767a4d6f06f0f9982.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [rank_eq_finrank_span_cols](declarations/rank-eq-finrank-span-cols--2c4a0a256273b8b1a4948d37.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [cRank_toNat_eq_rank](declarations/crank-tonat-eq-rank--a53fba12912bc9eef2d74b35.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [eRank_toNat_eq_rank](declarations/erank-tonat-eq-rank--bc5c45f60abd40c384534fda.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [rank_diagonal](declarations/rank-diagonal--d6f1c76fb3710176d9b79d1d.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [cRank_diagonal](declarations/crank-diagonal--4629b309aacf3a2b129d54f3.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [eRank_diagonal](declarations/erank-diagonal--9195f6431189871be59bdd67.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [ker_mulVecLin_conjTranspose_mul_self](declarations/ker-mulveclin-conjtranspose-mul-self--b9a79748072a2e8dda636b89.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [rank_conjTranspose_mul_self](declarations/rank-conjtranspose-mul-self--9cf97dbb414fe95402966938.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [rank_conjTranspose](declarations/rank-conjtranspose--bcabd2e814453d03e3175339.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [rank_self_mul_conjTranspose](declarations/rank-self-mul-conjtranspose--96b5de0a4925436cb9b33178.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [ker_mulVecLin_transpose_mul_self](declarations/ker-mulveclin-transpose-mul-self--1d54cf76e9ced27dfa1c305c.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [rank_transpose_mul_self](declarations/rank-transpose-mul-self--817a9501257400d27e818e39.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [rank_transpose](declarations/rank-transpose--c5a4120a2a978102e240cc93.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [rank_self_mul_transpose](declarations/rank-self-mul-transpose--2a4119af5b27bce018339f89.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [rank_eq_finrank_span_row](declarations/rank-eq-finrank-span-row--4394267f33e6bb6ea7a51e89.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.CRank.Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.LinearIndependent.rank_matrix](declarations/root-grwtsk-algebra-linearalgebra-crank-variant1cc6559d18d181a9b16cab71b--81c974bcb2e23427dc5213fc.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [rank_add_rank_le_card_of_mul_eq_zero](declarations/rank-add-rank-le-card-of-mul-eq-zero--bea3db7953058ecf69c74a99.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
