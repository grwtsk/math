# GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerArithmeticGainSplit

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**22 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f26232f427a5ab8833a3ed2e4b1378ebe24ad129`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [gradedBandwidthGain](declarations/gradedbandwidthgain--ae66f80dbb9307d92f88be04.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [gradedArithmeticGainRequirement](declarations/gradedarithmeticgainrequirement--ba1b0a65907b0bd61b39fff0.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [gradedSplitSmoothedValueExponent](declarations/gradedsplitsmoothedvalueexponent--4176449d3618994355655404.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [gradedSmoothedValueGainRequirement_eq_bandwidth_add_arithmetic](declarations/gradedsmoothedvaluegainrequirement-eq-bandwidth-add-arithmetic--72edf73269e50c0e8afab11c.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [gradedSplitSmoothedValueExponent_eq](declarations/gradedsplitsmoothedvalueexponent-eq--bfcf7eec0f24a46367d85dbd.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [gradedSplitSmoothedValueExponent_le_quadratic_iff](declarations/gradedsplitsmoothedvalueexponent-le-quadratic-iff--0e2d668647923b4dd151490b.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [bandwidthNeutralization_le_quadratic_iff](declarations/bandwidthneutralization-le-quadratic-iff--9255b046dc3dc28d80707a88.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pureBandwidthNeutralization_misses_quadratic](declarations/purebandwidthneutralization-misses-quadratic--03cdd7335eece1bffc49523a.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [boundaryMinimalFejerBandwidthExponent](declarations/boundaryminimalfejerbandwidthexponent--4e8c3555c53fcb349f6f6ed6.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [truncatedFourierBoundary_boundaryMinimal](declarations/truncatedfourierboundary-boundaryminimal--74562ed262af3b1a487c6c5f.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [boundaryMinimal_totalSplitGain](declarations/boundaryminimal-totalsplitgain--16582472f33b9ccd022635de.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [ThresholdGradedPrimeFejerSplitSupplier](declarations/thresholdgradedprimefejersplitsupplier--6975f6b76dc48bd658bddbbc.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [thresholdGradedPrimeFejerSplitSupplier_arithmeticGain_requirement](declarations/thresholdgradedprimefejersplitsupplier-arithmeticgain-requirement--7abc9c749df6808da38b02d5.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [thresholdGradedPrimeFejerSplitSupplier_totalGain_floor](declarations/thresholdgradedprimefejersplitsupplier-totalgain-floor--9287ebbe7f0e7cc9044998e9.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [ThresholdGradedPrimeFejerSplitSupplier.toThresholdGradedPrimeFejerSupplier](declarations/thresholdgradedprimefejersplitsupplier-tothresholdgradedprimefejersuppli--7970c5dd718bb19d16157701.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sevenEighths_boundaryMinimalFejerBandwidthExponent](declarations/seveneighths-boundaryminimalfejerbandwidthexponent--b5bd4388c291fd9c90301044.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sevenEighths_gradedBandwidthGain_at_boundaryMinimum](declarations/seveneighths-gradedbandwidthgain-at-boundaryminimum--5bb9cf98c01db8913c1db9ef.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sevenEighths_gradedArithmeticGainRequirement](declarations/seveneighths-gradedarithmeticgainrequirement--dcb184f8bddc5c6f32011f2e.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sevenEighths_boundaryMinimal_exactGainSplit](declarations/seveneighths-boundaryminimal-exactgainsplit--0bdff31524574db503869dcc.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sevenEighths_splitSupplier_arithmeticGain_ge_eighth](declarations/seveneighths-splitsupplier-arithmeticgain-ge-eighth--7104feb142ccc9a09af636e3.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sevenEighths_splitSupplier_totalGain_ge_quarter](declarations/seveneighths-splitsupplier-totalgain-ge-quarter--7d019e1c9ef44d7f70b6abeb.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sevenEighths_splitSupplier_to_partialDiscrepancy](declarations/seveneighths-splitsupplier-to-partialdiscrepancy--097662eae51f5605870c6217.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
