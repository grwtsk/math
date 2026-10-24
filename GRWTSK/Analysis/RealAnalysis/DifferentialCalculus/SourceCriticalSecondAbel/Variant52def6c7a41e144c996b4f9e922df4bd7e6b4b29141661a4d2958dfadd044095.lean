import FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

/-!
# Uncompiled next increment: the literal second Abel pairing

This ignored source is an uncompiled API draft, with zero checked exports.
The target is actual absolute continuity of the max-defined slope derivative,
then exact signed integration by parts. No uniform estimate is assumed.
AI attribution: developed with OpenAI Codex.
-/
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
