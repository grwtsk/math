# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerArithmeticGainSplit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f26232f427a5ab8833a3ed2e4b1378ebe24ad129",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f26232f427a5ab8833a3ed2e4b1378ebe24ad129`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerGradedGainBudget`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerGradedGainBudget.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gradedBandwidthGain](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/gradedbandwidthgain--ae66f80dbb9307d92f88be04.md) | 53 | `declaration-track:ae66f80dbb9307d92f88be04eb18e7c88201ba1145304d07efeeb0532b59a3b5` |
| 2 | `def` | [gradedArithmeticGainRequirement](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/gradedarithmeticgainrequirement--ba1b0a65907b0bd61b39fff0.md) | 57 | `declaration-track:ba1b0a65907b0bd61b39fff08d9399b120bb3bf7098a6344c39c31a91e10f588` |
| 3 | `def` | [gradedSplitSmoothedValueExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/gradedsplitsmoothedvalueexponent--4176449d3618994355655404.md) | 62 | `declaration-track:4176449d36189943556554042e1b079cacb921c1eb45103dcdd284ba13124f27` |
| 4 | `theorem` | [gradedSmoothedValueGainRequirement_eq_bandwidth_add_arithmetic](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/gradedsmoothedvaluegainrequirement-eq-bandwidth-add-arithmetic--72edf73269e50c0e8afab11c.md) | 69 | `result-track:72edf73269e50c0e8afab11c984f922f1c232f2cf1a6e7f526d64c723d85522b` |
| 5 | `theorem` | [gradedSplitSmoothedValueExponent_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/gradedsplitsmoothedvalueexponent-eq--bfcf7eec0f24a46367d85dbd.md) | 80 | `result-track:bfcf7eec0f24a46367d85dbd22f6028d2d1a247afc5052800b5734c396f89662` |
| 6 | `theorem` | [gradedSplitSmoothedValueExponent_le_quadratic_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/gradedsplitsmoothedvalueexponent-le-quadratic-iff--0e2d668647923b4dd151490b.md) | 90 | `result-track:0e2d668647923b4dd151490b733475a2e960102a3c09b85b13b4e9e289b172c6` |
| 7 | `theorem` | [bandwidthNeutralization_le_quadratic_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/bandwidthneutralization-le-quadratic-iff--9255b046dc3dc28d80707a88.md) | 101 | `result-track:9255b046dc3dc28d80707a886209714300f24788043c1539bb2e00c5b1277928` |
| 8 | `theorem` | [pureBandwidthNeutralization_misses_quadratic](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/purebandwidthneutralization-misses-quadratic--03cdd7335eece1bffc49523a.md) | 112 | `result-track:03cdd7335eece1bffc49523a6cb8af9cb32eddb5074c77569d1c2709f4b27733` |
| 9 | `def` | [boundaryMinimalFejerBandwidthExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/boundaryminimalfejerbandwidthexponent--4e8c3555c53fcb349f6f6ed6.md) | 124 | `declaration-track:4e8c3555c53fcb349f6f6ed66cfbb473f425e2ef43f92e11d60c23de3da1e23d` |
| 10 | `theorem` | [truncatedFourierBoundary_boundaryMinimal](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/truncatedfourierboundary-boundaryminimal--74562ed262af3b1a487c6c5f.md) | 129 | `result-track:74562ed262af3b1a487c6c5fa060647604c0d2a2338b1e4a25f83673d48ce246` |
| 11 | `theorem` | [boundaryMinimal_totalSplitGain](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/boundaryminimal-totalsplitgain--16582472f33b9ccd022635de.md) | 140 | `result-track:16582472f33b9ccd022635de1b9df10d6e21aa8d1e280c469746f1fa06f19894` |
| 12 | `structure` | [ThresholdGradedPrimeFejerSplitSupplier](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/thresholdgradedprimefejersplitsupplier--6975f6b76dc48bd658bddbbc.md) | 152 | `declaration-track:6975f6b76dc48bd658bddbbca65cd7c3e9e91828d98de23ce1130b6fe4d47517` |
| 13 | `theorem` | [thresholdGradedPrimeFejerSplitSupplier_arithmeticGain_requirement](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/thresholdgradedprimefejersplitsupplier-arithmeticgain-requirement--7abc9c749df6808da38b02d5.md) | 169 | `result-track:7abc9c749df6808da38b02d5ce47522c5681e172c91f114b1c120f8010559ecd` |
| 14 | `theorem` | [thresholdGradedPrimeFejerSplitSupplier_totalGain_floor](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/thresholdgradedprimefejersplitsupplier-totalgain-floor--9287ebbe7f0e7cc9044998e9.md) | 180 | `result-track:9287ebbe7f0e7cc9044998e9116adfe20cef73d8587400e019a5908a898a7b5e` |
| 15 | `def` | [ThresholdGradedPrimeFejerSplitSupplier.toThresholdGradedPrimeFejerSupplier](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/thresholdgradedprimefejersplitsupplier-tothresholdgradedprimefejersuppli--7970c5dd718bb19d16157701.md) | 199 | `declaration-track:7970c5dd718bb19d16157701b80dc951e461d8cbb2c96aa44302ba21bfd36282` |
| 16 | `theorem` | [sevenEighths_boundaryMinimalFejerBandwidthExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/seveneighths-boundaryminimalfejerbandwidthexponent--b5bd4388c291fd9c90301044.md) | 219 | `result-track:b5bd4388c291fd9c90301044363af411906d255cdda78823e9e6ca3781cbb92e` |
| 17 | `theorem` | [sevenEighths_gradedBandwidthGain_at_boundaryMinimum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/seveneighths-gradedbandwidthgain-at-boundaryminimum--5bb9cf98c01db8913c1db9ef.md) | 225 | `result-track:5bb9cf98c01db8913c1db9ef980b057e04d443e79820af688738370eb11c82b6` |
| 18 | `theorem` | [sevenEighths_gradedArithmeticGainRequirement](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/seveneighths-gradedarithmeticgainrequirement--dcb184f8bddc5c6f32011f2e.md) | 231 | `result-track:dcb184f8bddc5c6f32011f2e2edd0c40ebe2dac6b8554917e03e57458e34019f` |
| 19 | `theorem` | [sevenEighths_boundaryMinimal_exactGainSplit](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/seveneighths-boundaryminimal-exactgainsplit--0bdff31524574db503869dcc.md) | 239 | `result-track:0bdff31524574db503869dcc4115613bd81eeb4594ac037c7f40c90162d6d3c4` |
| 20 | `theorem` | [sevenEighths_splitSupplier_arithmeticGain_ge_eighth](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/seveneighths-splitsupplier-arithmeticgain-ge-eighth--7104feb142ccc9a09af636e3.md) | 255 | `result-track:7104feb142ccc9a09af636e3b3fd65fae616294cbe160a2c3cf8c8975dbcca72` |
| 21 | `theorem` | [sevenEighths_splitSupplier_totalGain_ge_quarter](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/seveneighths-splitsupplier-totalgain-ge-quarter--7d019e1c9ef44d7f70b6abeb.md) | 267 | `result-track:7d019e1c9ef44d7f70b6abebe9f9cafeef9df508efe3b7a581c6b5095466e94d` |
| 22 | `theorem` | [sevenEighths_splitSupplier_to_partialDiscrepancy](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/declarations/seveneighths-splitsupplier-to-partialdiscrepancy--097662eae51f5605870c6217.md) | 281 | `result-track:097662eae51f5605870c6217ef069bf26d6dc467696d1d8bfad2da18fdf57965` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
