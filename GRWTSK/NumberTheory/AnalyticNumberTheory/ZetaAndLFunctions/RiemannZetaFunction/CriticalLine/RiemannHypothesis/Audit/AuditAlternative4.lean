import FormalResearch.RiemannHypothesis.SourceSamplingCoefficients

/-!
# Native zeroth sampling coefficient sign

This focused local lemma preserves the native fractional-part integral.
It supplies only the baseline sign premise, without a signed discrepancy budget.
AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSamplingCoefficients

open MeasureTheory Set

/-- The native zeroth sampling coefficient is nonpositive. -/
theorem samplingAlpha0_nonpos : samplingAlpha0 ≤ 0 := by
  have hmoment : 0 ≤ signedCoefficientMoment 0 := by
    unfold signedCoefficientMoment
    apply setIntegral_nonneg measurableSet_Ioi
    intro u hu
    simp only [coefficientWeight, pow_zero, mul_one]
    exact mul_nonneg (Int.fract_nonneg u) (Real.rpow_pos_of_pos hu _).le
  unfold samplingAlpha0
  linarith

end FormalResearch.RiemannHypothesis.SourceSamplingCoefficients

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceSamplingCoefficients
#print samplingAlpha0_nonpos
#print axioms samplingAlpha0_nonpos
