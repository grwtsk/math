# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceNegativeCorrelationGeometry.Variant5866b78a37ad0a8f4baa0daf210309db833a285d7429da20483b2dbca5d17733

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb10619e4ea858acfd5d33be18bcb90a0ec0bc6b` · SHA-256 `5866b78a37ad0a8f4baa0daf210309db833a285d7429da20483b2dbca5d17733`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy

/-!
# PRIVATE UNCOMPILED geometry guard

A prospective source-only corollary of the checked negative continuous half.
It is not compiled, root-imported or part of the current proof packet. Pointwise
negativity does not specify any prime atom or supply an arithmetic lower bound.
AI attribution: drafted with OpenAI Codex; no new kernel proof claim.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceNegativeCorrelationGeometry

open MeasureTheory
open scoped Interval
open SourcePairing SourceFirstPrimeAbel SourceContinuousHalfEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateCorrelation

/-- Negative source energy forces negative correlation at an interior real separation. -/
theorem exists_interior_negative_sourceCorrelation {A : ℝ} (hA : 1 ≤ A) :
    ∃ u : ℝ, 0 < u ∧ u < 2*A ∧
      sourceCorrelation explicitSecondDerivative A u < 0 := by
  by_contra! hn
  have hp : 0 < A := by linarith
  have hc : ∀ u ∈ Set.Icc 0 (2*A),
      0 ≤ sourceCorrelation explicitSecondDerivative A u := by
    intro u hu
    rcases eq_or_lt_of_le hu.1 with hz | hz
    · subst u
      rw [actual_correlation_at_zero A hA]
      norm_num
    · rcases eq_or_lt_of_le hu.2 with hl | hl
      · rw [hl, sourceCorrelation_upper_endpoint A hp]
      · exact hn u hz hl
  have hg : ∀ u ∈ Set.Icc 0 (2*A), 0 ≤ criticalPrimeTest A u := by
    intro u hu
    exact mul_nonneg (Real.exp_pos (u/2)).le (hc u hu)
  have hi : 0 ≤ criticalContinuousMoment A :=
    intervalIntegral.integral_nonneg (by linarith) hg
  exact (not_lt_of_ge hi) (criticalContinuousMoment_lt_zero hA)

end FormalResearch.RiemannHypothesis.SourceNegativeCorrelationGeometry
```
