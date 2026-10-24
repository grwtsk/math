# GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripQuadraticPrimitive

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea2bb13499f413f3c585ce3b837d538180713172`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [realKernel](declarations/realkernel--2d08e3c4a06ec58a727d1dcf.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [kernel](declarations/kernel--478ee1cf3c4a26f67d0de8d2.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [realKernel_bounds](declarations/realkernel-bounds--26af7d50e0267e2a8c2c2c4e.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [kernel_norm_le](declarations/kernel-norm-le--2ec6867d5bf4a3ec79277795.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [kernel_measurable](declarations/kernel-measurable--edbe29633711fec3ad258f45.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [kernel_zero_below](declarations/kernel-zero-below--5251e930547ae3fdf56a2f51.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [kernel_nat](declarations/kernel-nat--7c815541ba698b2916d56073.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [kernel_locallyIntegrable](declarations/kernel-locallyintegrable--38508ac2eaf330791fc861d4.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [kernel_isBigO_top](declarations/kernel-isbigo-top--8db3d428e03179a762730bd4.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [kernel_isBigO_zero](declarations/kernel-isbigo-zero--2088871c51f3f914546c7e19.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [integrand](declarations/integrand--606ebb9cfa6046965b650f96.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [tail](declarations/tail--83f8d470b62d3de273a9418e.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [integrand_integrable](declarations/integrand-integrable--27db8aec55d55563944ae180.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [tail_norm_le](declarations/tail-norm-le--b4e290ceb9f27091cd8b506a.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [cell](declarations/cell--23ae35e3745cefae7dc31809.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [cell_left](declarations/cell-left--e7a21b81c2c138005471f7ab.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [cell_right](declarations/cell-right--ffea24396a0e0f1c3c04438a.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [cell_hasDerivAt](declarations/cell-hasderivat--56fda4dfe67a63f0a9f8400c.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [floor_eq_on_open_cell](declarations/floor-eq-on-open-cell--7348fc81707fd4aad0ea9ae6.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [kernel_eq_cell](declarations/kernel-eq-cell--0ce56c8fff6c76417b167338.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [centered_eq_cell_derivative](declarations/centered-eq-cell-derivative--a874aa2eb1384581a7ffadaa.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [cell_integral_identity](declarations/cell-integral-identity--824480e94451b6896bd859c0.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [intervalIntegrable_of_tail](declarations/intervalintegrable-of-tail--e140e50314e3240650776b5e.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [finite_integral_identity](declarations/finite-integral-identity--18208ab28855c06a88a5aef2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [split_integral_tail](declarations/split-integral-tail--6cc99e8bcd0490a47e63a0df.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [value_identity](declarations/value-identity--a4425d9c5005aad13db39fa8.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [integer_tail_identity](declarations/integer-tail-identity--69f785361062411b9e87210b.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [centered_tail_norm_le](declarations/centered-tail-norm-le--1fa44aea1441ec8ee53ed474.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [centered_value_norm_le](declarations/centered-value-norm-le--987f0d5ed31efc20206a3212.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [finiteModel_error_improved](declarations/finitemodel-error-improved--a0eba7d6719b100fa9a5f114.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
