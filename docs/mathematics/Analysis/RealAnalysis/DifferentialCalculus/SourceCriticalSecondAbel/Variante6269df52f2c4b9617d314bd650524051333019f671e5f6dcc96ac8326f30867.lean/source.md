# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCriticalSecondAbel.Variante6269df52f2c4b9617d314bd650524051333019f671e5f6dcc96ac8326f30867

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71b0b344a9e99f41fb87f5124c0f24e4d3d8ea9a` · SHA-256 `5f5c1d500a648160a15ea343e611d18c94670b5092dac8f3de1fe01da820c5c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CriticalPrimeTestContDiffTwo.Variant52def6c7a41e144c996b4f9e922df4bd7e6b4b29141661a4d2958dfadd044095","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52def6c7a41e144c996b4f9e922df4bd7e6b4b29141661a4d2958dfadd044095","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.CriticalPrimeTestContDiffTwo.Variant52def6c7a41e144c996b4f9e922df4bd7e6b4b29141661a4d2958dfadd044095","mathematical_subject":"Analysis.Calculus","original_sha256":"52def6c7a41e144c996b4f9e922df4bd7e6b4b29141661a4d2958dfadd044095","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle19/next-second-abel/SourceCriticalSecondAbel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

/-!
# Uncompiled next increment: the literal second Abel pairing

This ignored source is an uncompiled API draft, with zero checked exports.
The target is actual absolute continuity of the max-defined slope derivative,
then exact signed integration by parts. No uniform estimate is assumed.
AI attribution: developed with OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CriticalPrimeTestContDiffTwo.Variant52def6c7a41e144c996b4f9e922df4bd7e6b4b29141661a4d2958dfadd044095

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel
open MeasureTheory Set Function
open scoped Interval
open SourceCriticalCumulativeDiscrepancy SourceCriticalDensityQuadrature
open SourceCriticalRemovedPrimeWork SourceCriticalDecayWork SourcePairedTailTest
open SourcePairedPrimeWork SourceFirstPrimeAbel WeightedPrimeAbel SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

/-- Correlation curvature gives C2 for the literal exponential test. -/
theorem criticalPrimeTest_contDiff_two {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (criticalPrimeTest A) := by
  exact ((contDiff_id.div_const 2).exp).mul (sourceCorrelation_contDiff_two hA)

/-- The critical-test derivative has compact support and a finite Lipschitz constant.
No scale-independent bound is asserted for this constant. -/
theorem criticalPrimeTest_deriv_lipschitz {A : ℝ} (hA : 0 < A) :
    ∃ K : ℝ≥0, LipschitzWith K (deriv (criticalPrimeTest A)) := by
  have hs : HasCompactSupport (criticalPrimeTest A) :=
    (sourceCorrelation_hasCompactSupport A hA).mul_left
  exact (criticalPrimeTest_contDiff_two hA).deriv
    |>.lipschitzWith_of_hasCompactSupport hs.deriv (by norm_num)

/-- Both max-defined phases give actual AC of the paired derivative.
This is not a global C2 assertion for the paired test. -/
theorem pairedTailTest_deriv_absolutelyContinuous {A : ℝ} (hA : 1 ≤ A) :
    AbsolutelyContinuousOnInterval (deriv (pairedTailTest A)) 0 (2 * A) := by
  obtain ⟨K, hk⟩ := criticalPrimeTest_deriv_lipschitz (show 0 < A by linarith)
  have hp : AbsolutelyContinuousOnInterval (positiveSlope A) 0 (2 * A) :=
    (hk.max_const 0).lipschitzOnWith.absolutelyContinuousOnInterval
  have hn : AbsolutelyContinuousOnInterval (negativeSlope A) 0 (2 * A) :=
    (hk.neg.max_const 0).lipschitzOnWith.absolutelyContinuousOnInterval
  have he : deriv (pairedTailTest A) = fun u =>
      -positiveSlope A u + (positiveMass A / negativeMass A) * negativeSlope A u := by
    funext u
    exact pairedTailTest_deriv hA u
  rw [he]
  exact hp.neg.add (hn.const_mul _)

end FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel
```
