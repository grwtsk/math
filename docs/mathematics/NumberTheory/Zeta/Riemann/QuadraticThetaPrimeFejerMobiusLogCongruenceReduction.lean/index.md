# GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogCongruenceReduction

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `581428da0f5a73c37fad0f70fe5c3138e7c241b1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mobiusReal](declarations/mobiusreal--57a44dd4cfd48c739f6a2ee1.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mobiusLogDivisorTerm](declarations/mobiuslogdivisorterm--c266b128ca96de2e42f62fd1.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [centeredMobiusLogIndexSet](declarations/centeredmobiuslogindexset--15531fd157df2fb35e1241d9.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [centeredMobiusLogTerm](declarations/centeredmobiuslogterm--5dc41f4e8b4433b3d67ba9c8.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [none_mem_centeredMobiusLogIndexSet](declarations/none-mem-centeredmobiuslogindexset--4db3ec02e0a7901874f47922.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [some_mem_centeredMobiusLogIndexSet_iff](declarations/some-mem-centeredmobiuslogindexset-iff--d42bbc3dad37eb5ac9566e03.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [centeredMobiusLogTerm_none](declarations/centeredmobiuslogterm-none--c92a1976cf82feb36ea9f5b8.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [centeredMobiusLogTerm_some](declarations/centeredmobiuslogterm-some--9e9518f6f5788f4d3f6236ab.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [centeredMobiusLogIndexSum](declarations/centeredmobiuslogindexsum--70ae141f5a801eb6525d5013.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [centeredMobiusLogIndexSum_eq_raw](declarations/centeredmobiuslogindexsum-eq-raw--0ca9e7fef3c07fd0d1b2c8db.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [vonMangoldt_eq_mobiusLogDivisorSum](declarations/vonmangoldt-eq-mobiuslogdivisorsum--d48fc900efffede28da8477c.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [centeredVonMangoldtAtom_eq_centeredMobiusLogIndexSum](declarations/centeredvonmangoldtatom-eq-centeredmobiuslogindexsum--513ebdd9aa2fcf511a009867.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [nonAliasingFejerWeightedCenteredMobiusLogAtom](declarations/nonaliasingfejerweightedcenteredmobiuslogatom--be7b44109282a59c0b13cc39.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [nonAliasingFejerWeightedCenteredMobiusLogAtom_eq_vonMangoldt](declarations/nonaliasingfejerweightedcenteredmobiuslogatom-eq-vonmangoldt--3af31146497a7bea78468254.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [ShiftDivisorCongruence](declarations/shiftdivisorcongruence--88c5ef54304ffab704da2fb2.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [gcd_dvd_shift_of_shiftDivisorCongruence](declarations/gcd-dvd-shift-of-shiftdivisorcongruence--59d1fdfdceba85f7df32499f.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fst_dvd_of_mem_divisorsAntidiagonal](declarations/fst-dvd-of-mem-divisorsantidiagonal--05984b2d25ccbed26df8c03a.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [CenteredMobiusLogPairCompatible](declarations/centeredmobiuslogpaircompatible--453272757a302726e09d9f5e.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [centeredMobiusLogPairCompatible_none_left](declarations/centeredmobiuslogpaircompatible-none-left--eea13371d62bfbfa4d6dea9d.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [centeredMobiusLogPairCompatible_none_right](declarations/centeredmobiuslogpaircompatible-none-right--d8a472bd27b4ddf47f065d2e.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [centeredMobiusLogPairCompatible_some_some](declarations/centeredmobiuslogpaircompatible-some-some--346da448c301577653a7743f.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [centeredMobiusLogIndexPair_compatible](declarations/centeredmobiuslogindexpair-compatible--f0707bb1d9be3c66fee10885.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [centeredMobiusLogCompatiblePairIndexSet](declarations/centeredmobiuslogcompatiblepairindexset--1b5b38ad4da1307d3594d948.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_centeredMobiusLogCompatiblePairIndexSet_iff](declarations/mem-centeredmobiuslogcompatiblepairindexset-iff--0bac81f8328c754d09aaa0a9.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [centeredMobiusLogCompatiblePairIndexSet_eq_product](declarations/centeredmobiuslogcompatiblepairindexset-eq-product--40ea956f1d49f0f8647c0017.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [centeredMobiusLogCompatiblePairBlock](declarations/centeredmobiuslogcompatiblepairblock--5a6a7a441b520398df4fe3c0.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [centeredMobiusLogCompatiblePairBlock_eq_indexSum_mul](declarations/centeredmobiuslogcompatiblepairblock-eq-indexsum-mul--9d0accf4dcae4619bba40e85.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [centeredMobiusLogCompatiblePairBlock_eq_centeredVonMangoldt_mul](declarations/centeredmobiuslogcompatiblepairblock-eq-centeredvonmangoldt-mul--a96cf60317bed68baf308434.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [nonAliasingFejerMobiusLogCongruenceShiftCorrelation](declarations/nonaliasingfejermobiuslogcongruenceshiftcorrelation--752b18a5dc17d3d0037d68eb.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [nonAliasingFejerMobiusLogCongruenceShiftCorrelation_eq_vonMangoldt](declarations/nonaliasingfejermobiuslogcongruenceshiftcorrelation-eq-vonmangoldt--eae4a7bc6e176116c8189971.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [nonAliasingFejerMobiusLogCongruenceAggregate](declarations/nonaliasingfejermobiuslogcongruenceaggregate--3c2c45c8a6689ddf48cd6245.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [nonAliasingFejerMobiusLogCongruenceAggregate_eq_vonMangoldt](declarations/nonaliasingfejermobiuslogcongruenceaggregate-eq-vonmangoldt--2c1e810bbbba88e8c6e8ed98.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [SevenEighthsBoundaryMinimalMobiusLogCongruenceBound](declarations/seveneighthsboundaryminimalmobiuslogcongruencebound--813916ca1f03e1f449364ae4.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mobiusLogCongruenceBound_to_vonMangoldtShiftCorrelationBound](declarations/mobiuslogcongruencebound-to-vonmangoldtshiftcorrelationbound--add1a7002fb6ef883624b7f5.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [vonMangoldtShiftCorrelationBound_to_mobiusLogCongruenceBound](declarations/vonmangoldtshiftcorrelationbound-to-mobiuslogcongruencebound--5fd5c6f9ad1642b313b9bfb6.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mobiusLogCongruenceBound_iff_vonMangoldtShiftCorrelationBound](declarations/mobiuslogcongruencebound-iff-vonmangoldtshiftcorrelationbound--8961e835358a0ec770a3bcd0.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mobiusLogCongruenceBound_to_partialDiscrepancy](declarations/mobiuslogcongruencebound-to-partialdiscrepancy--2f14a08dd70714dfd66afc0f.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [naiveCenteredMobiusLogChannelExponent](declarations/naivecenteredmobiuslogchannelexponent--1ecc00c59a935a96307cbc10.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [centeredMobiusLogTargetExponent](declarations/centeredmobiuslogtargetexponent--9630821f74cbf7e537392fa5.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [centeredMobiusLogTargetExponent_lt_naiveChannelExponent](declarations/centeredmobiuslogtargetexponent-lt-naivechannelexponent--12fc2705d65643806428de3e.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [centeredProduct_fourChannel_identity](declarations/centeredproduct-fourchannel-identity--d3472ec4a0b99809e80b0d2c.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
