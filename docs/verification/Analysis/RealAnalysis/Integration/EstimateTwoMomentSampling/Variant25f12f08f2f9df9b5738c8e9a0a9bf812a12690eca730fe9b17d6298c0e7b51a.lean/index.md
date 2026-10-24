# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EstimateTwoMomentSampling.Variant25f12f08f2f9df9b5738c8e9a0a9bf812a12690eca730fe9b17d6298c0e7b51a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a86e018aef906374465f8fc13eddaed028b6fb58",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant25f12f08f2f9df9b5738c8e9a0a9bf812a12690eca730fe9b17d6298c0e7b51a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant25f12f08f2f9df9b5738c8e9a0a9bf812a12690eca730fe9b17d6298c0e7b51a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant25f12f08f2f9df9b5738c8e9a0a9bf812a12690eca730fe9b17d6298c0e7b51a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a86e018aef906374465f8fc13eddaed028b6fb58`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant25f12f08f2f9df9b5738c8e9a0a9bf812a12690eca730fe9b17d6298c0e7b51a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant25f12f08f2f9df9b5738c8e9a0a9bf812a12690eca730fe9b17d6298c0e7b51a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.DistLEIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftSampleSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant25f12f08f2f9df9b5738c8e9a0a9bf812a12690eca730fe9b17d6298c0e7b51a.lean/declarations/leftsamplesum--6fe13c2d9f42118e6d8ee890.md) | 38 | `declaration-track:6fe13c2d9f42118e6d8ee890a2dbf50782d2de109967536a961ec7c1ec51e35b` |
| 2 | `theorem` | [unit_sampling_error_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant25f12f08f2f9df9b5738c8e9a0a9bf812a12690eca730fe9b17d6298c0e7b51a.lean/declarations/unit-sampling-error-identity--4d713d83922e79d045f80e16.md) | 42 | `result-track:4d713d83922e79d045f80e16c494604184f21f1039c93d465605d2cd01ce40c9` |
| 3 | `theorem` | [abs_unit_sampling_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant25f12f08f2f9df9b5738c8e9a0a9bf812a12690eca730fe9b17d6298c0e7b51a.lean/declarations/abs-unit-sampling-error-le--09d28a4c9b623d186fd80f62.md) | 81 | `result-track:09d28a4c9b623d186fd80f6267b8aadd846b2596a22917bcb526c5fe90d94123` |
| 4 | `theorem` | [integral_eq_sum_unit_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant25f12f08f2f9df9b5738c8e9a0a9bf812a12690eca730fe9b17d6298c0e7b51a.lean/declarations/integral-eq-sum-unit-intervals--2f6ad0a0fcf4b99f4d5cc773.md) | 110 | `result-track:2f6ad0a0fcf4b99f4d5cc77344b7162fe3afff4e260f0ea46cd2ab2511d17231` |
| 5 | `theorem` | [abs_leftSampleSum_sub_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant25f12f08f2f9df9b5738c8e9a0a9bf812a12690eca730fe9b17d6298c0e7b51a.lean/declarations/abs-leftsamplesum-sub-integral-le--b118b8b0df1ae12181602f74.md) | 140 | `result-track:b118b8b0df1ae12181602f74de242d44770422ec5f278e0d14a2871d112d7173` |
| 6 | `def` | [FiniteSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant25f12f08f2f9df9b5738c8e9a0a9bf812a12690eca730fe9b17d6298c0e7b51a.lean/declarations/finitesamplingcheckpoint--e551896d8e0ca6b3a903bc7c.md) | 175 | `declaration-track:e551896d8e0ca6b3a903bc7c1a6f761760b0c93c612e8067998e9ee04ef63444` |
| 7 | `theorem` | [finite_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant25f12f08f2f9df9b5738c8e9a0a9bf812a12690eca730fe9b17d6298c0e7b51a.lean/declarations/finite-sampling-checkpoint--8371ba5a4eaf215d5fac7880.md) | 183 | `result-track:8371ba5a4eaf215d5fac7880e4ef2c45d8a7cfa5148fd42680288e14c022efca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
