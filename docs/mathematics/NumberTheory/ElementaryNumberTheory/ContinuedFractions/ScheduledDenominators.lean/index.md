# GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**59 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ContinuedFractions/ScheduledDenominators.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a090d4535a2fee914bf0bcbaa59d73cbcf35002`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [batchIncrement](declarations/batchincrement--ac7348150b73e573acbf69bd.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [batchClock](declarations/batchclock--72db3fe216ec0c41a91c8d09.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [batchClock_zero](declarations/batchclock-zero--d800a768ba9b9f4b7f84f1b1.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [batchClock_succ](declarations/batchclock-succ--58c06107a30f2b02e839d35c.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [batchIncrement_pos](declarations/batchincrement-pos--37a4b031ea6d94c84b20d644.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [batchIncrement_le](declarations/batchincrement-le--2af23f37323aec353f02ad83.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [index_le_batchClock](declarations/index-le-batchclock--8d77316ee18830b072e0a8ce.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [batchClock_strictMono](declarations/batchclock-strictmono--19c615f2f39ba882c9bbe566.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [batchClock_tendsto](declarations/batchclock-tendsto--cd14041d045d433ddb4881dc.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [unique_batch](declarations/unique-batch--1ee35536adff67d429070ba8.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [epoch_no_starvation](declarations/epoch-no-starvation--18fb29375cec18ab3d6d5323.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [partialQuotient](declarations/partialquotient--f598635cb6f24eb7cca7c980.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [continuedFraction](declarations/continuedfraction--80f5fa018ee4a9ac8c8caae7.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [denominator](declarations/denominator--fbba0b00647d674a3d878070.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [numerator](declarations/numerator--0e620f7fab6ea8aa4a752394.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [partialQuotient_pos](declarations/partialquotient-pos--4a02c25243359d7ec6c0911f.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [continuedFraction_term](declarations/continuedfraction-term--e55c2e028a00d8b384ac6abc.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [continuedFraction_not_terminates](declarations/continuedfraction-not-terminates--13b4c135b604a163b6f9c44f.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [native_continuants](declarations/native-continuants--07dc1c0c4c578c8883d4b092.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [denominator_pos](declarations/denominator-pos--3ad0cb630ff4f01ad72a215a.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [fib_le_denominator](declarations/fib-le-denominator--d708fe5428a2705f44aaf82c.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [index_le_denominator](declarations/index-le-denominator--cfc365b808f78f2bfdf32d58.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [denominator_tendsto](declarations/denominator-tendsto--7e0b8f50c717d364686199f7.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [denominator_ones](declarations/denominator-ones--4a027edc2a197ac5736698bd.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [DenominatorRecurrence](declarations/denominatorrecurrence--ef1a3ccf50b1b5c7dc4f806d.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [generated_denominator_recurrence](declarations/generated-denominator-recurrence--42f686fb7604f377f2c18bfd.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [denominator_recurrence_identifies](declarations/denominator-recurrence-identifies--be236c49ac5338cb3bdbcd3c.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [powers_two_not_denominators](declarations/powers-two-not-denominators--701dd7dfbfe590ea5a50bdca.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [growthCoefficient](declarations/growthcoefficient--38b4825c3564e181b5a39344.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [growthCoefficient_pos](declarations/growthcoefficient-pos--e449e8d1ba915354319fcc31.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [growthCoefficient_meets_target](declarations/growthcoefficient-meets-target--42bedd456b7311260f5745f5.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [denominator_coprime](declarations/denominator-coprime--de04bc0b9b63c6f723c5162c.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [denominator_le_succ](declarations/denominator-le-succ--051a047f70fd41ef04032798.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [denominator_remainder](declarations/denominator-remainder--592410304f046f0ae06d0a8a.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [arithmeticExponent](declarations/arithmeticexponent--859514f795768f6ce785df3b.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [log_ratio_tendsto_zero](declarations/log-ratio-tendsto-zero--643d21b4d64405de2870e95f.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [arithmeticExponent_zero_of_bounded_ratio](declarations/arithmeticexponent-zero-of-bounded-ratio--d6979b7b29ec3558487e93dc.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [fibonacci_arithmeticExponent_zero](declarations/fibonacci-arithmeticexponent-zero--67f77d668e51db2ee26bec6c.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [spikeCoefficient](declarations/spikecoefficient--609be63da12b92e4b18ed69a.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [spikeStep](declarations/spikestep--c78f89903fb65d5758872bab.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [spikeCoefficient_pos](declarations/spikecoefficient-pos--acc05904ca9579bdf723fdcd.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [spikeCoefficient_zero](declarations/spikecoefficient-zero--a3085d91825d4da724293900.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [spike_rate_bounds](declarations/spike-rate-bounds--6ff0ea0ca21cb19cb842f86d.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [effectiveStrength](declarations/effectivestrength--331bc06eb47f7b6b97e5f001.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [effectiveStrength_nonneg](declarations/effectivestrength-nonneg--224285a8c7ccf3e21f14db68.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [arithmeticExponent_of_spikes](declarations/arithmeticexponent-of-spikes--75024d65b07ce25d5297b2f0.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [arithmeticExponent_of_converging_spikes](declarations/arithmeticexponent-of-converging-spikes--b2e8b9d9715cf2119708b9ed.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [arithmeticExponent_of_diverging_spikes](declarations/arithmeticexponent-of-diverging-spikes--31cdcf24cfbbc35d3d35c3c1.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [spikeDenominator](declarations/spikedenominator--339f7780fc3d94ff4a007bde.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [spikePartialQuotient](declarations/spikepartialquotient--f12f32fcc6678943a9e6fc27.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [spikeDenominator_identifies](declarations/spikedenominator-identifies--6b887fffec5ea8d25c21ce0e.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [spikeDenominator_pos](declarations/spikedenominator-pos--ad2758ac88534c1562a8619b.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [spikeDenominator_tendsto](declarations/spikedenominator-tendsto--73e98bf5662e9ce2bd1dc224.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [spikeDenominator_step](declarations/spikedenominator-step--db37064c2f4871f49e993db4.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [spikeDenominator_exponent](declarations/spikedenominator-exponent--8ea1773f88ab4dbaa8e0c7b7.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [selected_spike_exponent](declarations/selected-spike-exponent--d35c2a8effc08225fe14e12f.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [FrequencyRealization](declarations/frequencyrealization--fbc00be0ee60d1fd267e8a3a.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [frequency_irrational](declarations/frequency-irrational--37fe91b134346544170106ac.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [frequency_convergent](declarations/frequency-convergent--93439dc3d46f15bd9a1fe2ad.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
