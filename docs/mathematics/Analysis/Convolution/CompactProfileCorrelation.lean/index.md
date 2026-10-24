# GRWTSK.Analysis.Convolution.CompactProfileCorrelation

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Convolution/CompactProfileCorrelation.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b22a87177a8f6ef0ca63a159330480af9f1d8e1b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/Convolution/CompactProfileCorrelation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [bump_third_continuous](declarations/bump-third-continuous--4c02bc72def0083981b0ae99.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [sourceThird](declarations/sourcethird--399171569fc26d7a5be7c1dd.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [sourceSecond_hasDerivAt](declarations/sourcesecond-hasderivat--bd40c75c904a0fe3bad6235f.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [residualFirst](declarations/residualfirst--3ee7f9cd8d2518dc321d46fc.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [residual_hasDerivAt](declarations/residual-hasderivat--b7d9a596d436c3ed27c8b790.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [residual_first_continuous](declarations/residual-first-continuous--9a9a4272e2e5b6db630721ec.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [residual_contDiff_one](declarations/residual-contdiff-one--736274ab97e97f54b265e62d.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [normalized_source_contDiff_one](declarations/normalized-source-contdiff-one--c05f443aeffe80bbe8d626f1.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [normalized_source_zero_outside](declarations/normalized-source-zero-outside--137a2679c83909802feb60ce.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [normalized_source_hasCompactSupport](declarations/normalized-source-hascompactsupport--c8a4c899e079fa59ba18c5df.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [normalized_source_integrable](declarations/normalized-source-integrable--0b1aea3191a39d822480a338.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [reflectedSource](declarations/reflectedsource--e7117dadaf7cc1cf5cbf76a8.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [reflected_source_contDiff_one](declarations/reflected-source-contdiff-one--46e6a169db8e53975fbee9ae.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [reflected_source_hasCompactSupport](declarations/reflected-source-hascompactsupport--46f42e065d0c50c7b0d2e1ad.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [correlation_eq_convolution](declarations/correlation-eq-convolution--6e0dd182083815ad2fbad4f1.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [correlation_contDiff_one](declarations/correlation-contdiff-one--dad0d4c872f5319236596ea2.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [correlation_deriv_eq_convolution](declarations/correlation-deriv-eq-convolution--e64f25f9ab4394f4f256fa4e.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [correlation_deriv_contDiff_one](declarations/correlation-deriv-contdiff-one--182820e788080088e8800df7.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [correlation_contDiff_two](declarations/correlation-contdiff-two--cbcc8cd97b2009db0a66e105.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [reflected_source_deriv](declarations/reflected-source-deriv--06b1ef3ee07ead486063f892.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [correlation_second_deriv_eq_integral](declarations/correlation-second-deriv-eq-integral--6ffe257ae343c6bdbfc87e06.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [polarity_kernel_continuous](declarations/polarity-kernel-continuous--718a72146fdcdbea39de189c.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [correlation_zero_of_two_mul_lt](declarations/correlation-zero-of-two-mul-lt--beb07c1507a41e204936e582.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [correlation_eventually_zero](declarations/correlation-eventually-zero--22d9ace967cc9f3f7e15e7da.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [correlation_derivatives_zero_of_two_mul_lt](declarations/correlation-derivatives-zero-of-two-mul-lt--84e2aa77641851b1db7d8a82.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [polarity_kernel_zero_of_upper_tail](declarations/polarity-kernel-zero-of-upper-tail--a860b7bd332fde8e75ec0b71.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [correlation_hasCompactSupport](declarations/correlation-hascompactsupport--180e057c859d9ddc80b0d556.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [correlation_deriv_integrable](declarations/correlation-deriv-integrable--a6701936261804e82e293d39.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [correlation_second_deriv_integrable](declarations/correlation-second-deriv-integrable--672e7016f757dbec3b29b766.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [polarity_kernel_integrable](declarations/polarity-kernel-integrable--3b66bc77744443c7a7fa62d0.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [polarity_kernel_zero_of_empty_inventory](declarations/polarity-kernel-zero-of-empty-inventory--a5eb56c655a70860c37889c1.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [strict_sector_empty_of_small_scale](declarations/strict-sector-empty-of-small-scale--d4ec0d44c5514455ba0c1dc3.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
