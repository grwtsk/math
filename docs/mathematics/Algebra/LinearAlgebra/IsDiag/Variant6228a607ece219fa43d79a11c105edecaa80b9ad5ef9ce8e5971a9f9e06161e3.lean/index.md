# GRWTSK.Algebra.LinearAlgebra.IsDiag.Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d2fad2318d97bb15911b08107144b9e45ad635a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsDiag](declarations/isdiag--3c9aa1d5bcfce63df53ae056.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isDiag_diagonal](declarations/isdiag-diagonal--69059665991978108727d6d1.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsDiag.diagonal_diag](declarations/isdiag-diagonal-diag--2376c41108c1f5ae477494da.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isDiag_iff_diagonal_diag](declarations/isdiag-iff-diagonal-diag--0df2820bc78ebbff0576cc7e.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isDiag_of_subsingleton](declarations/isdiag-of-subsingleton--9e1e1339a8d473c989b4b54f.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isDiag_zero](declarations/isdiag-zero--cae9a8532230b550de1380cc.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isDiag_one](declarations/isdiag-one--70a6704b0a9a9c0b79cd3fb8.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsDiag.map](declarations/isdiag-map--45d2b4f55308e48ba7858648.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsDiag.neg](declarations/isdiag-neg--d7445129c7ddd60ea11e7727.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isDiag_neg_iff](declarations/isdiag-neg-iff--9d52b819aab61957bb52c9e5.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsDiag.add](declarations/isdiag-add--ac6326c3072d1c7674eec7f5.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IsDiag.sub](declarations/isdiag-sub--5e4ac6a97241701997561b88.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsDiag.smul](declarations/isdiag-smul--f03f59fff8b750138c21974b.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isDiag_smul_one](declarations/isdiag-smul-one--36841c66b87de7d300e6cd46.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [IsDiag.transpose](declarations/isdiag-transpose--57bf1ecd4a938254bb85479e.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isDiag_transpose_iff](declarations/isdiag-transpose-iff--7202f0cc939deb45e668422d.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsDiag.conjTranspose](declarations/isdiag-conjtranspose--3734d2adbaf723e7f36ea42f.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isDiag_conjTranspose_iff](declarations/isdiag-conjtranspose-iff--698583bac83e9ee71bce2bfa.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IsDiag.submatrix](declarations/isdiag-submatrix--b39b0f02d36464fd782f8212.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsDiag.kronecker](declarations/isdiag-kronecker--36ea567d867d84d2e72e354c.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsDiag.isSymm](declarations/isdiag-issymm--208fc7bb110e5c83769549c9.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsDiag.fromBlocks](declarations/isdiag-fromblocks--338ff0b16876184d4a0b1986.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isDiag_fromBlocks_iff](declarations/isdiag-fromblocks-iff--b6a0f4b845dde2afb90cd2f3.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsDiag.fromBlocks_of_isSymm](declarations/isdiag-fromblocks-of-issymm--923aeaab347aaa61deaed128.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mul_transpose_self_isDiag_iff_hasOrthogonalRows](declarations/mul-transpose-self-isdiag-iff-hasorthogonalrows--b312939328acfab6c81370f7.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [transpose_mul_self_isDiag_iff_hasOrthogonalCols](declarations/transpose-mul-self-isdiag-iff-hasorthogonalcols--d84bf721d945af491f2d7048.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
