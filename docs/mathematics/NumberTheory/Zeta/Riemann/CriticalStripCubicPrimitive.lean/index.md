# GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCubicPrimitive

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f8e9045130f5c155966f2e920d03f508ae13011`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [cubic_unit_bound](declarations/cubic-unit-bound--1b63205d50972a672eb87ddc.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [realKernel](declarations/realkernel--a8fb46bde667c1fa0a852638.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [kernel](declarations/kernel--5cfe2a327efb6e909ae53c1f.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [kernel_norm_le](declarations/kernel-norm-le--6d6d53540506fa46802544bd.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [kernel_measurable](declarations/kernel-measurable--6ce40810f00b4c8d0fe0d4a0.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [kernel_zero_below](declarations/kernel-zero-below--374cba6c2efd6681c7a2d270.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [kernel_nat](declarations/kernel-nat--5dd580c684acf4f1ed8ce74d.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [kernel_locallyIntegrable](declarations/kernel-locallyintegrable--9795ba7c460aa8a18198ff78.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [kernel_isBigO_top](declarations/kernel-isbigo-top--294986a1146222bb40292166.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [kernel_isBigO_zero](declarations/kernel-isbigo-zero--26d9a442fd0e4d9c5e863dac.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [integrand](declarations/integrand--2510356f2702233efccf2333.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [tail](declarations/tail--cc04bb2ed319b158f9afbb36.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [adjustedIntegrand](declarations/adjustedintegrand--5501f58fccb7822442ccaf45.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [adjustedTail](declarations/adjustedtail--69a631c474de0ad3af2509ea.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [integrand_integrable](declarations/integrand-integrable--71d0f5bce506b746d3bafa07.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [correction_integrable](declarations/correction-integrable--23c6016688231eea5a852619.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [adjusted_integrable](declarations/adjusted-integrable--dd906427c18e15e0499525c7.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [adjusted_kernel_norm_le](declarations/adjusted-kernel-norm-le--c16dd3c24a4408c0b056681b.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [tail_norm_le](declarations/tail-norm-le--37cfdb6f3d2c9fd8dc1f5835.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [adjustedTail_norm_le](declarations/adjustedtail-norm-le--4fec11ef31fcb020b58d9b8e.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [adjustedTail_eq](declarations/adjustedtail-eq--1e79d46957b4fc56da7efb61.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [cell](declarations/cell--70f1b91a99e29314bd655c22.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [cellDerivative](declarations/cellderivative--2d107030006c6f96fbb404b6.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [cell_left](declarations/cell-left--e8d14633c3b5c13931e43443.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [cell_right](declarations/cell-right--6b82015bc0c12c832d89789b.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [derivative_left](declarations/derivative-left--37d2bd49bae198d36472a86d.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [derivative_right](declarations/derivative-right--66faa5d5b34fdef563f80a15.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [cell_hasDerivAt](declarations/cell-hasderivat--8374a665e0844cdc2ebbf1e2.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [cellDerivative_hasDerivAt](declarations/cellderivative-hasderivat--248a6774d964dc4304d8fe71.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [kernel_eq_cell](declarations/kernel-eq-cell--36ba768ef780dc199cd88848.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [cell_integral_identity](declarations/cell-integral-identity--dabd5709d6d69b4022b427a7.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [finite_integral_identity](declarations/finite-integral-identity--9e5932440aa1783118c8c64a.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [adjusted_value_identity](declarations/adjusted-value-identity--3ef786334a94715a0978104d.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [adjusted_integer_tail_identity](declarations/adjusted-integer-tail-identity--5a1ad111efce0456961e9cf7.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [integer_tail_identity](declarations/integer-tail-identity--64f30c573794b269d9e854d0.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [value_identity](declarations/value-identity--8c5d8236e10ea31efe24b31d.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [reference](declarations/reference--ad07b8f85b178f7297d6969d.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [multiplier](declarations/multiplier--75c2c53cfd0430c71afda4d8.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [source_identity](declarations/source-identity--4e6584c7dc5a943bfd421ceb.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [finiteModel](declarations/finitemodel--a6f9deb216d0d29487f11551.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [finiteModel_residual](declarations/finitemodel-residual--3b504554a3f7f2963879affe.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [finiteModel_error](declarations/finitemodel-error--b491cb31f3ec69b24a990d5b.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [finiteModel_majorant_tendsto_zero](declarations/finitemodel-majorant-tendsto-zero--03015cd2b70bce5efdcec1bd.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
