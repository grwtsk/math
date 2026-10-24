# GRWTSK.Algebra.LinearAlgebra.PivotNormalization.Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8c770d299b6d25fb8322e08e67837bf67d9af8f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [frameRowSpace](declarations/framerowspace--518854d85971c7a5b516746d.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_frameRowSpace_iff](declarations/mem-framerowspace-iff--5d342919239463ae0ced684e.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [row_mem_frameRowSpace](declarations/row-mem-framerowspace--dfb1945e2a2af94f01b81817.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [frameRowSpace_mul_left_le](declarations/framerowspace-mul-left-le--449bb72388b26e8c969b7d83.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [frameRowSpace_mul_left_eq](declarations/framerowspace-mul-left-eq--ebb6b6b6de8564c3410f7380.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [pivotNormalize](declarations/pivotnormalize--d2d43ed047427bc225efe6dc.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [pivotNormalize_pivot](declarations/pivotnormalize-pivot--fc4e5f4c21d617645fe10826.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pivot_mul_pivotNormalize](declarations/pivot-mul-pivotnormalize--cb8afa2cdb90cafc3e0fcefa.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [frameRowSpace_pivotNormalize](declarations/framerowspace-pivotnormalize--65d7ac31c682da4524cc1e60.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [det_pivotInverse](declarations/det-pivotinverse--59165799bb920f4d54fe25eb.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [columnMinor_pivotNormalize](declarations/columnminor-pivotnormalize--af6c1365d8d95fab37f88fef.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [columnMinor_pivotNormalize_ne_zero](declarations/columnminor-pivotnormalize-ne-zero--63b6db6f869a22138bd92a68.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [orderedMinor_pivotNormalize](declarations/orderedminor-pivotnormalize--23a65454bfce1db15941e549.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [allOrderedMinorsNonneg_pivotNormalize_iff](declarations/allorderedminorsnonneg-pivotnormalize-iff--12471b4cc72a0071d0b08fef.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [allOrderedMinorsPos_pivotNormalize_iff](declarations/allorderedminorspos-pivotnormalize-iff--49e00bb391825f83b91bc1cf.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [vecMul_columnSubmatrix](declarations/vecmul-columnsubmatrix--ef0d924bb653a9255ab18421.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normalized_coefficients_readback](declarations/normalized-coefficients-readback--cd7be7530dba6295d3e8e53d.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normalized_eq_of_frameRowSpace_eq](declarations/normalized-eq-of-framerowspace-eq--3ada5624c58416cf5a93e165.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [pivotNormalize_eq_iff_rowSpace](declarations/pivotnormalize-eq-iff-rowspace--d499ad6651d1fc1110d39982.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [existsUnique_pivotNormalized](declarations/existsunique-pivotnormalized--181dfa93c2e29845a2b78e36.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pivotNormalize_fixed](declarations/pivotnormalize-fixed--f047fd26009053c8c9989279.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pivotNormalize_transition](declarations/pivotnormalize-transition--50191040c0324ea29d220752.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pivotNormalize_cocycle](declarations/pivotnormalize-cocycle--78c2be4864ea5fcaca0c9511.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rank_eq_of_columnMinor_ne_zero](declarations/rank-eq-of-columnminor-ne-zero--9a983b8866acd55d59e6a643.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [finrank_frameRowSpace_of_columnMinor_ne_zero](declarations/finrank-framerowspace-of-columnminor-ne-zero--a844ebedd2392d3311c0feda.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
