# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt02.Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30b5240f7ea98aef79131c0aa0af3a54ab21ddd5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30b5240f7ea98aef79131c0aa0af3a54ab21ddd5`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean/declarations/criticalprimetest-contdiff-two--7f8f7200be79374f2b884c34.md) | 26 | `result-track:7f8f7200be79374f2b884c340d83d7278265e610e7d5e4fe53b79c8f2ea45b42` |
| 2 | `theorem` | [criticalPrimeTest_deriv_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean/declarations/criticalprimetest-deriv-lipschitz--8492fffdade8c299b0bd548a.md) | 32 | `result-track:8492fffdade8c299b0bd548a8178a5e8162828c1733bb3dcc9d876c75c8e9678` |
| 3 | `theorem` | [actual_slope_phases_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean/declarations/actual-slope-phases-lipschitz--87c97f7cdb4b61ef94d4c024.md) | 41 | `result-track:87c97f7cdb4b61ef94d4c02413648022167fdf324c9235e421afd056ade962d3` |
| 4 | `theorem` | [pairedTailTest_deriv_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean/declarations/pairedtailtest-deriv-absolutelycontinuous--b4bed87275de298dc44b397e.md) | 48 | `result-track:b4bed87275de298dc44b397e9740210686d20a6d9f91a456ef3f5f886e796338` |
| 5 | `def` | [pairedTailCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean/declarations/pairedtailcurvature--aa3b0440a4b0ffb3165dd0aa.md) | 63 | `declaration-track:aa3b0440a4b0ffb3165dd0aae9adecb4252a9e83e27a7d59ff2ea32d8a3bfff4` |
| 6 | `theorem` | [pairedTailCurvature_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean/declarations/pairedtailcurvature-intervalintegrable--e9c0a388080531b856f3005f.md) | 65 | `result-track:e9c0a388080531b856f3005f0585be3fb7c8a36a1fb8064fe35b0ce2264fa8e5` |
| 7 | `theorem` | [pairedTailCurvature_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean/declarations/pairedtailcurvature-ae-hasderivat--f79de8df9e44227b907c28d4.md) | 69 | `result-track:f79de8df9e44227b907c28d48f6e667177398cf641a63fc8acae333fbf9641dc` |
| 8 | `theorem` | [pairedTailTest_deriv_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean/declarations/pairedtailtest-deriv-integral-zero--2900bbf230ba33279c967056.md) | 77 | `result-track:2900bbf230ba33279c967056bae19995b1595c0462e22ea85f4a5078439e9f13` |
| 9 | `theorem` | [actual_delta_pairing_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean/declarations/actual-delta-pairing-intervalintegrable--a792501346b0874f490cebda.md) | 85 | `result-track:a792501346b0874f490cebda0869f73d5d7bc9137d4b25f85be6a7c3b335aa28` |
| 10 | `theorem` | [actual_first_Abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean/declarations/actual-first-abel--d323fa19804e4628ff4cfde6.md) | 93 | `result-track:d323fa19804e4628ff4cfde6c18f5d4091ce0cd6b0b14d43807dd2a0548c8cbf` |
| 11 | `theorem` | [actual_bridge_curvature_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean/declarations/actual-bridge-curvature-intervalintegrable--2c31d52615bfc99c363bfe81.md) | 130 | `result-track:2c31d52615bfc99c363bfe81a154c364aec7cb38c704a3e3d2a8277d84ea99b1` |
| 12 | `theorem` | [actual_second_Abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant0849cb41f4e0211eb4556e768093ddc7c2fffa7b1b911869d749255f1c4bc308.lean/declarations/actual-second-abel--056b62f92d9d660e0259b384.md) | 138 | `result-track:056b62f92d9d660e0259b384520b6a79db6bd4d4da920f2b94113a72121831b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
