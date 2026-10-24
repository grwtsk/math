# GRWTSK.Algebra.LinearAlgebra.PivotNormalization.Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da3a8285a6c23e1efe44e9c6a559ac41294664d1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [frameRowSpace](declarations/framerowspace--ed6f50fbdef6aeb825613e09.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_frameRowSpace_iff](declarations/mem-framerowspace-iff--2791566e5980b4c64bb9ced5.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [row_mem_frameRowSpace](declarations/row-mem-framerowspace--94be81dee00a78c69c37e6e1.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [frameRowSpace_mul_left_le](declarations/framerowspace-mul-left-le--b859b1a687f6072128b37df5.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [frameRowSpace_mul_left_eq](declarations/framerowspace-mul-left-eq--26436496feb445ece8416b0d.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [pivotNormalize](declarations/pivotnormalize--7f21c2be78e65bb5f5c2cc5e.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [pivotNormalize_pivot](declarations/pivotnormalize-pivot--19c6a4321fcdbbc4f8db1377.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pivot_mul_pivotNormalize](declarations/pivot-mul-pivotnormalize--65b2b107c161af03bf45d9a3.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [frameRowSpace_pivotNormalize](declarations/framerowspace-pivotnormalize--6ef00270c4a6e24359465098.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [det_pivotInverse](declarations/det-pivotinverse--8b18b9a9673781d214cb92d7.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [columnMinor_pivotNormalize](declarations/columnminor-pivotnormalize--e3e738bdf499fb87f7cc45af.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [columnMinor_pivotNormalize_ne_zero](declarations/columnminor-pivotnormalize-ne-zero--9ddad3510dfdb9e49436764f.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [orderedMinor_pivotNormalize](declarations/orderedminor-pivotnormalize--2a6b3f89d0f3777a6e2a3849.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [allOrderedMinorsNonneg_pivotNormalize_iff](declarations/allorderedminorsnonneg-pivotnormalize-iff--b225bd8429f4b51f9d24d996.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [allOrderedMinorsPos_pivotNormalize_iff](declarations/allorderedminorspos-pivotnormalize-iff--075f8470288d9cb070c42f77.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [vecMul_columnSubmatrix](declarations/vecmul-columnsubmatrix--0278847775ff8fe72c99307b.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normalized_coefficients_readback](declarations/normalized-coefficients-readback--ab690317238305aa2807c6e4.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normalized_eq_of_frameRowSpace_eq](declarations/normalized-eq-of-framerowspace-eq--b831532c47b5c6bbec0e3078.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [pivotNormalize_eq_iff_rowSpace](declarations/pivotnormalize-eq-iff-rowspace--00d0f216310dbf8639e99056.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [existsUnique_pivotNormalized](declarations/existsunique-pivotnormalized--75207bb4c7f47dd5c3dfdb9d.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pivotNormalize_fixed](declarations/pivotnormalize-fixed--4f19abf19eabb2cb31775299.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pivotNormalize_transition](declarations/pivotnormalize-transition--521077af618d90d9d5d0faf0.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pivotNormalize_cocycle](declarations/pivotnormalize-cocycle--fc372781ca74088797654848.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rank_eq_of_columnMinor_ne_zero](declarations/rank-eq-of-columnminor-ne-zero--b4257fe57ac546fcaf96caa7.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [finrank_frameRowSpace_of_columnMinor_ne_zero](declarations/finrank-framerowspace-of-columnminor-ne-zero--cd27aea647d7f922e7729217.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
