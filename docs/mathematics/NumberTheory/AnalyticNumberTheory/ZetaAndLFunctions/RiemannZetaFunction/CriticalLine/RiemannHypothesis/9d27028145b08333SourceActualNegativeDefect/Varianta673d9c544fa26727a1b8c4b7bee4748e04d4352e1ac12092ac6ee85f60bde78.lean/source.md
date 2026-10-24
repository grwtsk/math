# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.9d27028145b08333SourceActualNegativeDefect.Varianta673d9c544fa26727a1b8c4b7bee4748e04d4352e1ac12092ac6ee85f60bde78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea1b9f27ec93f65819457630b6ccdbe6ef9c2482` · SHA-256 `a673d9c544fa26727a1b8c4b7bee4748e04d4352e1ac12092ac6ee85f60bde78`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualOffAxisReducedLimit

/-!
The prescribed arithmetic quadratic value and the actual reduced off-axis zero
head have asymptotically equal negative defects, with the proved source error.
This applies the one-Lipschitz negative-part map to the exact arithmetic/zero
comparison; it assumes no uniform defect cap or off-axis lower bound.
Originating research direction and normalization: grwtsk contributors.
Formal development and independent-check preparation: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualNegativeDefect
open Filter
open scoped Topology
open SourcePairing SourceActualCriticalZeroHead SourceActualReducedZeroHeight
open SourceActualOffAxisReducedLimit
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
noncomputable section

/-- The literal prescribed source family's negative defect. -/
def actualSourceNegativeDefect (A : ℝ) : ℝ :=
  max 0 (-sourceQuadraticValue explicitSecondDerivative A)

/-- The actual same-carrier reduced off-axis head's negative defect. -/
def actualReducedOffAxisNegativeDefect (A : ℝ) : ℝ :=
  max 0 (-(actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re)

private theorem negative_part_abs_sub_le (x y : ℝ) :
    |max 0 (-x) - max 0 (-y)| ≤ |x-y| := by
  have h := abs_max_sub_max_le_max (0 : ℝ) (-x) 0 (-y)
  simpa only [sub_self, abs_zero, neg_sub_neg, abs_sub_comm,
    max_eq_right (abs_nonneg (x-y))] using h

/-- The source-specific defect error is controlled by its genuine complex source error. -/
theorem actualNegativeDefect_distance_le_source_error (A : ℝ) :
    |actualSourceNegativeDefect A - actualReducedOffAxisNegativeDefect A| ≤
      ‖(sourceQuadraticValue explicitSecondDerivative A : ℂ) -
        actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)‖ := by
  apply (negative_part_abs_sub_le _ _).trans
  simpa only [Complex.sub_re, Complex.ofReal_re] using
    Complex.abs_re_le_norm ((sourceQuadraticValue explicitSecondDerivative A : ℂ) -
      actualOffAxisZeroHeightHead A (actualReducedZeroHeight A))

/-- All real scales beyond the proved radius retain the actual tail and critical error. -/
theorem actualNegativeDefect_reducedOffAxis_bound :
    ∃ C R0 A0 : ℝ, 0 ≤ C ∧ 1 ≤ R0 ∧ 1 ≤ A0 ∧ ∀ A : ℝ, max 200 R0 ≤ A →
      |actualSourceNegativeDefect A - actualReducedOffAxisNegativeDefect A| ≤
        C / A^9 + actualReducedZeroEnvelope A0 A := by
  obtain ⟨C,R0,A0,hC,hR0,hA0,hbound⟩ :=
    actualSourceQuadraticValue_reducedOffAxis_norm_bound
  exact ⟨C,R0,A0,hC,hR0,hA0,fun A hA =>
    (actualNegativeDefect_distance_le_source_error A).trans (hbound A hA)⟩

/-- The actual arithmetic and reduced off-axis negative defects differ by o(1). -/
theorem actualNegativeDefect_reducedOffAxis_tendsto_zero :
    Tendsto (fun A : ℝ => actualSourceNegativeDefect A -
      actualReducedOffAxisNegativeDefect A) atTop (𝓝 0) := by
  have hz : Tendsto (fun A : ℝ =>
      ‖(sourceQuadraticValue explicitSecondDerivative A : ℂ) -
        actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)‖) atTop (𝓝 0) := by
    simpa only [norm_zero] using
      actualSourceQuadraticValue_reducedOffAxis_tendsto_zero.norm
  apply squeeze_zero_norm' _ hz
  filter_upwards [] with A
  simpa only [Real.norm_eq_abs] using actualNegativeDefect_distance_le_source_error A

end
end FormalResearch.RiemannHypothesis.SourceActualNegativeDefect
```
