# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RateOneIntegrability.Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e30fd44e4bfafb51dbede2d14c3c7c748dd264e8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e30fd44e4bfafb51dbede2d14c3c7c748dd264e8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rate_one_integrableOn_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean/declarations/rate-one-integrableon-ioc--b1806801e3af248de72bb98e.md) | 23 | `result-track:b1806801e3af248de72bb98ee67be489bbe8a371c00fcdc922d86b2347588f4b` |
| 2 | `theorem` | [rate_one_integrable_of_eventual_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean/declarations/rate-one-integrable-of-eventual-majorant--1e6e68eba139636c76ee3a33.md) | 45 | `result-track:1e6e68eba139636c76ee3a33e20f2bebdb2ae2678981a0dc7dcf0c7bc8fb7b65` |
| 3 | `theorem` | [polynomial_stretched_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean/declarations/polynomial-stretched-integrable--540d30251ef3ace150c27f77.md) | 79 | `result-track:540d30251ef3ace150c27f7784311b79a43437a3931a0e630c22fe090d9dbe50` |
| 4 | `theorem` | [rate_one_majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean/declarations/rate-one-majorant-integrable--bbacfe0cd8b2cb8934ccb93a.md) | 90 | `result-track:bbacfe0cd8b2cb8934ccb93a274919f97ed3556f99e5fa21d513628884ae7ad1` |
| 5 | `theorem` | [rate_one_integrable_of_stretched_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean/declarations/rate-one-integrable-of-stretched-majorant--86a133c281332cfde727351d.md) | 105 | `result-track:86a133c281332cfde727351d228c1591a0a8678d42c09ef648808dd5f737a5dd` |
| 6 | `theorem` | [actual_scale_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean/declarations/actual-scale-le--3e8d6a380d227e282af8712d.md) | 113 | `result-track:3e8d6a380d227e282af8712dac81dbb1b0d04f09256da75c057d8b8469c3d539` |
| 7 | `theorem` | [weighted_negativeSource_le_of_pairing_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean/declarations/weighted-negativesource-le-of-pairing-bound--4f5afe3d0e5162175aa509b5.md) | 124 | `result-track:4f5afe3d0e5162175aa509b5750dc61e0d4b5ca62b801fd01d3f072c5e9441fe` |
| 8 | `theorem` | [rate_one_integrable_of_pairing_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean/declarations/rate-one-integrable-of-pairing-bound--2c166a1d6ffda93321927e20.md) | 174 | `result-track:2c166a1d6ffda93321927e20ece3c61110871b9cc64dd6cf529d4f32b5585bb3` |
| 9 | `theorem` | [integrable_of_one_le_rate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean/declarations/integrable-of-one-le-rate--229ceddc777fa626cc1421c4.md) | 185 | `result-track:229ceddc777fa626cc1421c40c833ef47b53ed0d53223427546771cbfc3ebbd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
