# GRWTSK.Algebra.LinearAlgebra.Rank.Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 53 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2e66ba299c1ed33821d3fd6c0bc9441ff8e27d8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cRank](declarations/crank--74d3e9024f417fb1f9c3b285.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [cRank_toNat_eq_finrank](declarations/crank-tonat-eq-finrank--887d60e65e5d88b0d025911e.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [lift_cRank_submatrix_le](declarations/lift-crank-submatrix-le--6be4ebed277f399dacb26c1e.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [cRank_submatrix_le](declarations/crank-submatrix-le--d6170c8e307f7dd25d05b296.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [cRank_le_card_height](declarations/crank-le-card-height--048a032e004a2517c34ea5a5.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [cRank_le_card_width](declarations/crank-le-card-width--97c9c90f35deb8c005a6d9a5.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [eRank](declarations/erank--451532ee76a2fb0cd97a8b06.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [eRank_toNat_eq_finrank](declarations/erank-tonat-eq-finrank--db3265b334d65b94bc056d72.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [eRank_submatrix_le](declarations/erank-submatrix-le--920adcacdcbf39120faa5c0c.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [eRank_le_card_width](declarations/erank-le-card-width--ab05ce57192490a8fe012a82.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [eRank_le_card_height](declarations/erank-le-card-height--72e8dba0ff765dd3ed82bcff.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [rank](declarations/rank--0be03afd01fbfbeb3ade57fe.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cRank_one](declarations/crank-one--0aa2b3ead5d88211a85adfb9.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eRank_one](declarations/erank-one--65dacec3786900134b526d82.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rank_one](declarations/rank-one--829e74a2a91b3b5fddb26e2b.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rank_zero](declarations/rank-zero--3898f705008335efbf740800.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cRank_zero](declarations/crank-zero--6b327450d5a5b9e123311b84.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eRank_zero](declarations/erank-zero--602fcbe1b4a7a70535468882.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rank_le_card_width](declarations/rank-le-card-width--cbc4e41ba674242967693248.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rank_le_width](declarations/rank-le-width--95166a4d644cf17885a83d41.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rank_mul_le_left](declarations/rank-mul-le-left--bb5974f9372f9ca14d1c0ad2.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rank_mul_le_right](declarations/rank-mul-le-right--8f03c2d9ddec387c6907bcb1.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rank_mul_le](declarations/rank-mul-le--c51663f1d61e61c3671bae77.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rank_unit](declarations/rank-unit--315ce09a260d08ed71fc87a8.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rank_of_isUnit](declarations/rank-of-isunit--6fb649180c6fdf1aec39c5b3.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [rank_mul_eq_left_of_isUnit_det](declarations/rank-mul-eq-left-of-isunit-det--608dc97b2f35183ec4369546.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [rank_mul_eq_right_of_isUnit_det](declarations/rank-mul-eq-right-of-isunit-det--17a26844068dba3da1170a44.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rank_submatrix_le](declarations/rank-submatrix-le--f901332718f25e4f0fa0f6d1.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rank_reindex](declarations/rank-reindex--5e868eb19702cf65186c8919.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rank_submatrix](declarations/rank-submatrix--c1c4634814573bff30830c97.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lift_cRank_submatrix](declarations/lift-crank-submatrix--0a8f6aabf96c20fb95e610b0.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [cRank_submatrix](declarations/crank-submatrix--b86fb1ff1387ffe6d5afadbb.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lift_cRank_reindex](declarations/lift-crank-reindex--1ed16c3e73813ff243bed017.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [cRank_reindex](declarations/crank-reindex--c2554bf230eb558d1e6cda59.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eRank_submatrix](declarations/erank-submatrix--293ffe9fc924ab7f14bbd50b.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [eRank_reindex](declarations/erank-reindex--90e71fc91bdebb3676ef0074.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [rank_eq_finrank_range_toLin](declarations/rank-eq-finrank-range-tolin--e95eed9d1bbefc64ff757216.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [rank_le_card_height](declarations/rank-le-card-height--dc6ae404cb798971b8f72efc.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rank_le_height](declarations/rank-le-height--30f0661108c9ef96b08943a4.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [rank_eq_finrank_span_cols](declarations/rank-eq-finrank-span-cols--54365b343fad6978e2fc41f2.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [cRank_toNat_eq_rank](declarations/crank-tonat-eq-rank--e5b5298f7498c3f0534e7157.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [eRank_toNat_eq_rank](declarations/erank-tonat-eq-rank--46c30e17128adf6a0481c585.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [rank_diagonal](declarations/rank-diagonal--576e771fe273666aa7ca60cc.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [cRank_diagonal](declarations/crank-diagonal--c3c5d88b1d10f55623cadaf1.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [eRank_diagonal](declarations/erank-diagonal--574b6fcbc5996d910e476fab.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [ker_mulVecLin_conjTranspose_mul_self](declarations/ker-mulveclin-conjtranspose-mul-self--9c92094c8af72143998bd130.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [rank_conjTranspose_mul_self](declarations/rank-conjtranspose-mul-self--a602159aab6d5ebda3d2f74c.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [rank_conjTranspose](declarations/rank-conjtranspose--579e95af1b5f82736a9ae5f3.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [rank_self_mul_conjTranspose](declarations/rank-self-mul-conjtranspose--ccee192cdaee5d8235b5cc56.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [ker_mulVecLin_transpose_mul_self](declarations/ker-mulveclin-transpose-mul-self--5d53033fecbd00225e529fcc.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [rank_transpose_mul_self](declarations/rank-transpose-mul-self--8dd1ac0a209c8347cf301e67.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [rank_transpose](declarations/rank-transpose--7c5021f3161b0feb7f6a3c8a.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [rank_self_mul_transpose](declarations/rank-self-mul-transpose--b87ce8b7c623104e6233b074.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [rank_eq_finrank_span_row](declarations/rank-eq-finrank-span-row--80f90c6b24014b152502a596.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [_root_.LinearIndependent.rank_matrix](declarations/root-linearindependent-rank-matrix--f404eb78a7278b9ee6fad85e.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [rank_add_rank_le_card_of_mul_eq_zero](declarations/rank-add-rank-le-card-of-mul-eq-zero--d683ef80f8d12ef26d72ce82.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
