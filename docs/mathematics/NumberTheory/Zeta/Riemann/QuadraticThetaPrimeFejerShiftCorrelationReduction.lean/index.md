# GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerShiftCorrelationReduction

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d39630a6d426d2110328af98a5034c57a1c33f9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fejerOctaveIndexSet](declarations/fejeroctaveindexset--7d8552ea3334fe2e069418d1.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [fejerPositiveOffDiagonalPairs](declarations/fejerpositiveoffdiagonalpairs--1dd0662f94620d1b7e750cc9.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [fejerNegativeOffDiagonalPairs](declarations/fejernegativeoffdiagonalpairs--24cd4dfde61db672c1e22d6e.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_fejerPositiveOffDiagonalPairs_iff](declarations/mem-fejerpositiveoffdiagonalpairs-iff--e68e72c6b3f8599fb4cd517f.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_fejerNegativeOffDiagonalPairs_iff](declarations/mem-fejernegativeoffdiagonalpairs-iff--656ccf91080e5af8d6643684.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [fejerOffDiagonalPairs_eq_positive_union_negative](declarations/fejeroffdiagonalpairs-eq-positive-union-negative--47ee2c4844292c45e4ddc077.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [fejerPositiveNegativePairs_disjoint](declarations/fejerpositivenegativepairs-disjoint--0debcb6cdbef880fa04543e0.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [fejerNegativePositiveSwapEquiv](declarations/fejernegativepositiveswapequiv--d9df1034067ce9694da8830b.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [nonAliasingFejerPositivePairCorrelation](declarations/nonaliasingfejerpositivepaircorrelation--c1625c05a5fbce330182f0e7.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [nonAliasingFejerNegativePairCorrelation](declarations/nonaliasingfejernegativepaircorrelation--53621bdbb55f104e518d3aa0.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [nonAliasingFejerNegativePairCorrelation_eq_positive](declarations/nonaliasingfejernegativepaircorrelation-eq-positive--53249ec511f1b348fc4249f2.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [nonAliasingFejerQuadraticOffDiagonal_eq_offDiag_sum](declarations/nonaliasingfejerquadraticoffdiagonal-eq-offdiag-sum--5745f7e19e3d3d9758641337.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [nonAliasingFejerQuadraticOffDiagonal_eq_two_mul_positivePairCorrelation](declarations/nonaliasingfejerquadraticoffdiagonal-eq-two-mul-positivepaircorrelation--0cad11ee428f415d57b160f6.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [fejerPositiveLagSet](declarations/fejerpositivelagset--f8df5872a567c16479eaa8c8.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [fejerPositiveLagFiber](declarations/fejerpositivelagfiber--6de03ab9e6a0569cc9d59e3c.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_fejerPositiveLagFiber_iff](declarations/mem-fejerpositivelagfiber-iff--7aede165f9d4dd1ea2071800.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fejerPositivePairLag_mapsTo_Icc](declarations/fejerpositivepairlag-mapsto-icc--642cd93d747a00d0d135242c.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [nonAliasingFejerLagCorrelation](declarations/nonaliasingfejerlagcorrelation--a1306eb2124b8105027e9af3.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [nonAliasingFejerShiftCorrelation](declarations/nonaliasingfejershiftcorrelation--e7c01022e3811992a742db83.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [fejerPositiveLagFiberEquivIoc](declarations/fejerpositivelagfiberequivioc--859cbcb30304ec8ba1216ab1.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [nonAliasingFejerLagCorrelation_eq_shiftCorrelation](declarations/nonaliasingfejerlagcorrelation-eq-shiftcorrelation--503126f2d81f2cb3b75088dc.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [nonAliasingFejerShiftCorrelation_eq_weighted_centeredPrimePair](declarations/nonaliasingfejershiftcorrelation-eq-weighted-centeredprimepair--a38007f4aa7baa17fb0b29b9.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [nonAliasingFejerPositivePairCorrelation_eq_sum_lagCorrelation](declarations/nonaliasingfejerpositivepaircorrelation-eq-sum-lagcorrelation--8c496a4ff9733f47032163a7.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [nonAliasingFejerPositivePairCorrelation_eq_sum_shiftCorrelation](declarations/nonaliasingfejerpositivepaircorrelation-eq-sum-shiftcorrelation--7da0db6219c2f45be8866756.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [nonAliasingFejerQuadraticOffDiagonal_eq_two_mul_sum_shiftCorrelation](declarations/nonaliasingfejerquadraticoffdiagonal-eq-two-mul-sum-shiftcorrelation--5b7537fd86b149363771d937.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [fejerPositiveLagSet_card_le](declarations/fejerpositivelagset-card-le--64255d2eb0665e483b8f52bf.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [SevenEighthsBoundaryMinimalExactShiftCorrelationBound](declarations/seveneighthsboundaryminimalexactshiftcorrelationbound--2f471ddd7056ba0c06245faf.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [SevenEighthsBoundaryMinimalExactShiftCorrelationAbsoluteBound](declarations/seveneighthsboundaryminimalexactshiftcorrelationabsolutebound--b7c1f958331c1d7e13c3656f.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [SevenEighthsBoundaryMinimalPointwiseShiftSquareRootBound](declarations/seveneighthsboundaryminimalpointwiseshiftsquarerootbound--b73d8e4fad71b55ee31a9b73.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [absoluteShiftCorrelationBound_to_exactShiftCorrelationBound](declarations/absoluteshiftcorrelationbound-to-exactshiftcorrelationbound--bb80de8880b750734638148f.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pointwiseShiftSquareRootBound_to_exactShiftCorrelationBound](declarations/pointwiseshiftsquarerootbound-to-exactshiftcorrelationbound--bfd2fa4c053298f642526122.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [exactShiftCorrelationBound_to_signedOffDiagonalBound](declarations/exactshiftcorrelationbound-to-signedoffdiagonalbound--55c8aa546a8cd512afaca4b5.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [exactShiftCorrelationBound_to_partialDiscrepancy](declarations/exactshiftcorrelationbound-to-partialdiscrepancy--afe0837afecd16e33dc3471d.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lagCount_add_pointwiseSquareRootExponent](declarations/lagcount-add-pointwisesquarerootexponent--2c02cba031277166deb08a10.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [threeHalves_lt_trivialPairCountingExponent](declarations/threehalves-lt-trivialpaircountingexponent--d12c21b5c91465ad36d3fb48.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
