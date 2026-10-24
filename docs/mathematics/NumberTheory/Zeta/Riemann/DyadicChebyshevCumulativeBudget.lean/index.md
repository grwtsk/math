# GRWTSK.NumberTheory.Zeta.Riemann.DyadicChebyshevCumulativeBudget

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc83bf1f65d66d02e65534c5056b86b00f6a4d1d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [chebyshevOctaveMassConstant](declarations/chebyshevoctavemassconstant--a8e00db84e8c2e7ced8e69b2.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [chebyshevOctaveMassConstant_nonnegative](declarations/chebyshevoctavemassconstant-nonnegative--85967e56005bf98b7ee2c049.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [windowMangoldtMass](declarations/windowmangoldtmass--2fe20b6c8672290269a9e5d5.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [windowCoefficientMass](declarations/windowcoefficientmass--56c48b2425e5f8096ac1b906.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [windowMangoldtMass_nonnegative](declarations/windowmangoldtmass-nonnegative--d8c99d28996ad1d3aa60f15e.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [windowCoefficientMass_nonnegative](declarations/windowcoefficientmass-nonnegative--59b2eccc6cf1c9840978ef7c.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [windowMangoldtMass_le](declarations/windowmangoldtmass-le--ef88135271483c24e8511580.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [windowCoefficientMass_le_constant](declarations/windowcoefficientmass-le-constant--22fee0fe9ae5af1e1bbf7e88.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [action_norm_le_chebyshev](declarations/action-norm-le-chebyshev--9824703d0430037aa89451b4.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [safeChebyshevActionConstant](declarations/safechebyshevactionconstant--380474cd8a36535f55d0725c.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [safeChebyshevActionConstant_nonnegative](declarations/safechebyshevactionconstant-nonnegative--9f350155a8ba29bd20df16f7.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [safeChebyshevDyadicEnvelope](declarations/safechebyshevdyadicenvelope--eccd88e48802ce89b92d51b2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [safeChebyshevDyadicEnvelope_nonnegative](declarations/safechebyshevdyadicenvelope-nonnegative--1fd802d3a7074a6e059aa38a.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [safeDyadicHalfWeight_eq_dyadicWeight_half](declarations/safedyadichalfweight-eq-dyadicweight-half--3dea91cfba5a3242ccaa715d.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [safeDyadicBlock_norm_le_chebyshevEnvelope](declarations/safedyadicblock-norm-le-chebyshevenvelope--f5916094eb12b81399db0cca.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [safePlusDyadicBlock_norm_le_chebyshev](declarations/safeplusdyadicblock-norm-le-chebyshev--4a97058421fee2587c904077.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [safeMinusDyadicBlock_norm_le_chebyshev](declarations/safeminusdyadicblock-norm-le-chebyshev--659484df7fd328b79be8acbb.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [safeCenterDyadicBlock_norm_le_chebyshev](declarations/safecenterdyadicblock-norm-le-chebyshev--a2d563b25a2c5f655cb1d482.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [safeEvenDyadicBlock_norm_le_chebyshev](declarations/safeevendyadicblock-norm-le-chebyshev--2adbe8534db528436ea92c76.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [safeOddDyadicBlock_norm_le_chebyshev](declarations/safeodddyadicblock-norm-le-chebyshev--8e0e1795823e27e557056ee1.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [safeEvenDefectDyadicBlock_norm_le_chebyshev](declarations/safeevendefectdyadicblock-norm-le-chebyshev--9bddd7fbc12e9e2d396774f3.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [safeQuarticDyadicPackingValue_le_of_envelope](declarations/safequarticdyadicpackingvalue-le-of-envelope--500e6956f76fccd19db341ab.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [safeChebyshevEnvelopePairProduct](declarations/safechebyshevenvelopepairproduct--c0037647ae5ac19ebb2c8c6c.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [safeQuarticDyadicPackingValue_le_chebyshevPair](declarations/safequarticdyadicpackingvalue-le-chebyshevpair--fbe0eba1eb4520fa9efd8fea.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [dyadicWeight_half_antitone](declarations/dyadicweight-half-antitone--740d3f6a5e14355d420f0bee.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [safeChebyshevDyadicEnvelope_antitone](declarations/safechebyshevdyadicenvelope-antitone--863bc006968749af26025ed2.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dyadicWeight_half_pow_four](declarations/dyadicweight-half-pow-four--29ef185cf36b46eb1f5af56c.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [safeChebyshevPairMajorant](declarations/safechebyshevpairmajorant--9d496afad1a133e89751436b.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [safeChebyshevPairProduct_le_majorant](declarations/safechebyshevpairproduct-le-majorant--3d6cd02b155dddfd220a7e7c.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [safeChebyshevPairMajorant_summable](declarations/safechebyshevpairmajorant-summable--78942ab6f2b334459efbf124.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [safeChebyshevQuarticMajorant](declarations/safechebyshevquarticmajorant--e9cebd0b7f841d0edba4866e.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [safeChebyshevQuarticMajorant_summable](declarations/safechebyshevquarticmajorant-summable--9da2051a495f24d8420c1645.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [safeQuarticDyadicPackingValue_le_chebyshevMajorant](declarations/safequarticdyadicpackingvalue-le-chebyshevmajorant--6a8e8af99a8b6b8267687acb.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [safeQuarticDyadicPackingValue_summable](declarations/safequarticdyadicpackingvalue-summable--7ed7d9432dc32456a8195252.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [safeQuarticDyadicTotalBudget](declarations/safequarticdyadictotalbudget--cd5aeb9cfa4dc142a6c33deb.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [safeQuarticDyadicTotalBudget_nonnegative](declarations/safequarticdyadictotalbudget-nonnegative--57db2283adc9d847a2578981.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [safeQuarticDyadicPartial_le_totalBudget](declarations/safequarticdyadicpartial-le-totalbudget--687fb1719e6a15483176b8de.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
