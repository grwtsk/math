import FormalResearch.RiemannHypothesis.SourcePrimeMomentScale
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

/-!
# Scale calculus of the original full Mangoldt work

The integral-defined signed work is transported through the checked full-prefix Abel
identity. Its derivative is independently specified using the actual rational source
energy and the complete closed prime-power moment derivative. No arithmetic lower
witness or positivity is assumed. Ordinary actual calculus is scoped to A>1.

AI attribution: developed with OpenAI Codex; Lean checks proof terms.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceMangoldtWorkScale

open MeasureTheory Set Filter
open SourceFirstPrimeAbel SourceMangoldtAbel SourceContinuousHalfEnergy SourcePrimeMomentScale
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect

noncomputable section

/-- The unchanged polynomial denominator in the actual continuous-half evaluation. -/
def continuousHalfDenominator (A : ℝ) : ℝ := 7 * A ^ 4 + 272 * A ^ 2 + 7344

/-- The rational source surrogate, defined independently of the actual half integral. -/
def continuousHalfRational (A : ℝ) : ℝ :=
  -(14 * A ^ 4 + 272 * A ^ 2) / continuousHalfDenominator A

/-- The independently specified rational source derivative. -/
def continuousHalfScaleDerivative (A : ℝ) : ℝ :=
  -544 * A * (7 * A ^ 4 + 756 * A ^ 2 + 7344) / continuousHalfDenominator A ^ 2

/-- The polynomial denominator is strictly positive, without an arithmetic premise. -/
theorem continuousHalfDenominator_pos (A : ℝ) : 0 < continuousHalfDenominator A := by
  unfold continuousHalfDenominator
  positivity

/-- The rational source surrogate has the independently computed quotient-rule slope. -/
theorem continuousHalfRational_hasDerivAt (A : ℝ) :
    HasDerivAt continuousHalfRational (continuousHalfScaleDerivative A) A := by
  have hn := (((hasDerivAt_id A).pow 4).const_mul 14).add
    (((hasDerivAt_id A).pow 2).const_mul 272)
  have hd := ((((hasDerivAt_id A).pow 4).const_mul 7).add
    (((hasDerivAt_id A).pow 2).const_mul 272)).add (hasDerivAt_const A 7344)
  exact (hn.neg.div hd (ne_of_gt (continuousHalfDenominator_pos A))).congr_deriv (by
    dsimp [continuousHalfScaleDerivative, continuousHalfDenominator]
    field_simp
    ring)

/-- Polynomial positivity makes the rational surrogate globally C¹. -/
theorem continuousHalfRational_contDiff : ContDiff ℝ 1 continuousHalfRational := by
  have hn : ContDiff ℝ 1 (fun A : ℝ => -(14 * A ^ 4 + 272 * A ^ 2)) := by fun_prop
  have hd : ContDiff ℝ 1 continuousHalfDenominator := by
    unfold continuousHalfDenominator
    fun_prop
  exact hn.div hd (fun A => ne_of_gt (continuousHalfDenominator_pos A))

/-- The independent rational slope is continuous before any FTC use. -/
theorem continuousHalfScaleDerivative_continuous : Continuous continuousHalfScaleDerivative := by
  have hn : Continuous (fun A : ℝ => -544 * A * (7 * A ^ 4 + 756 * A ^ 2 + 7344)) := by
    fun_prop
  have hd : Continuous continuousHalfDenominator := by
    unfold continuousHalfDenominator
    fun_prop
  exact hn.div (hd.pow 2) (fun A => pow_ne_zero 2 (ne_of_gt (continuousHalfDenominator_pos A)))

/-- The actual independent source slope is negative at every positive scale. -/
theorem continuousHalfScaleDerivative_lt_zero {A : ℝ} (hA : 0 < A) :
    continuousHalfScaleDerivative A < 0 := by
  unfold continuousHalfScaleDerivative
  apply div_neg_of_neg_of_pos
  · have hp : 0 < 7 * A ^ 4 + 756 * A ^ 2 + 7344 := by positivity
    have hn : -544 * A < 0 := by nlinarith
    exact mul_neg_of_neg_of_pos hn hp
  · exact sq_pos_of_pos (continuousHalfDenominator_pos A)

end
end FormalResearch.RiemannHypothesis.SourceMangoldtWorkScale
