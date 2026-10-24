# GRWTSK.Algebra.LinearAlgebra.PivotNormalization.Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02e65aa6a444d1c9812daf74a50541da0cf65dfa`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [frameRowSpace](declarations/framerowspace--2eee05155d9d5b2bfdc95dd7.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_frameRowSpace_iff](declarations/mem-framerowspace-iff--16f63c68da65266a85d23227.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [row_mem_frameRowSpace](declarations/row-mem-framerowspace--847b8ad42865dc63373451cd.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [frameRowSpace_mul_left_le](declarations/framerowspace-mul-left-le--bd0b227174b92c25d0ae0e14.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [frameRowSpace_mul_left_eq](declarations/framerowspace-mul-left-eq--43a92a1f7a0fe402cd02d227.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [pivotNormalize](declarations/pivotnormalize--ca8c28bfb9f4f640e70f8947.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [pivotNormalize_pivot](declarations/pivotnormalize-pivot--1e8ebcbcfca8112e47a67cfd.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pivot_mul_pivotNormalize](declarations/pivot-mul-pivotnormalize--38ad2e5ba5f13a2aa7a6e27d.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [frameRowSpace_pivotNormalize](declarations/framerowspace-pivotnormalize--b5731db5ddef3b8d06b6a600.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [det_pivotInverse](declarations/det-pivotinverse--0374f6e52af7ca4aca4ed339.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [columnMinor_pivotNormalize](declarations/columnminor-pivotnormalize--3dedf25646bd2160cc992777.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [columnMinor_pivotNormalize_ne_zero](declarations/columnminor-pivotnormalize-ne-zero--e7994923ae8be2e0ead35d46.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [orderedMinor_pivotNormalize](declarations/orderedminor-pivotnormalize--a630cfca6b923ca1a3a05e02.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [allOrderedMinorsNonneg_pivotNormalize_iff](declarations/allorderedminorsnonneg-pivotnormalize-iff--dccdc622473b1ff0e5a52a50.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [allOrderedMinorsPos_pivotNormalize_iff](declarations/allorderedminorspos-pivotnormalize-iff--f6f64af662d0a99ca4702cfb.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [vecMul_columnSubmatrix](declarations/vecmul-columnsubmatrix--7129c767d6453ce229b1c1d6.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normalized_coefficients_readback](declarations/normalized-coefficients-readback--c0c813a8cc0a9112f8060c84.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normalized_eq_of_frameRowSpace_eq](declarations/normalized-eq-of-framerowspace-eq--6e62e1041b1df389b8a3667c.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [pivotNormalize_eq_iff_rowSpace](declarations/pivotnormalize-eq-iff-rowspace--d65efbb53e81c5899e5a4675.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [existsUnique_pivotNormalized](declarations/existsunique-pivotnormalized--01475e262d4622fe8aba1e8f.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pivotNormalize_fixed](declarations/pivotnormalize-fixed--955075e60253bc8a08110240.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pivotNormalize_transition](declarations/pivotnormalize-transition--857c5e838ecf0f9e1b062e76.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pivotNormalize_cocycle](declarations/pivotnormalize-cocycle--2f183e2fafad1255e1614d14.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rank_eq_of_columnMinor_ne_zero](declarations/rank-eq-of-columnminor-ne-zero--c6738fac7b4e5c5a1aa369e4.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [finrank_frameRowSpace_of_columnMinor_ne_zero](declarations/finrank-framerowspace-of-columnminor-ne-zero--2a3e01d9a736959e688549cc.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
