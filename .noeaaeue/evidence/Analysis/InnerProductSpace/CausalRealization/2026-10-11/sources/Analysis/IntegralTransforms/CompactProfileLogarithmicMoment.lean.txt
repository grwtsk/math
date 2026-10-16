/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Convolution.CompactProfileDifferentialMoments
import GRWTSK.Analysis.IntegralTransforms.LogarithmicMomentSubstitution

/-!
# The actual compact profile's full logarithmic moment

This application uses the actual squared-integral normalized
correlation, the genuine two weighted integrabilities and the full positive
half-line Jacobian. It retains every shift and the complete continuous integral.
It supplies no discrete price, signed arithmetic cancellation or native estimate.
-/

namespace GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicMoment

open MeasureTheory Set
open GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticSupplier
open GRWTSK.Analysis.Convolution.CompactProfileDifferentialMoments

noncomputable section

/-- The complete continuous logarithmic sum analogue for the actual correlation. -/
theorem actual_logarithmic_integral_zero {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    IntegrableOn (fun x : ℝ ↦ Real.log x / Real.sqrt x *
      (deriv (deriv (correlation A)) (t + Real.log x) -
        (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log x))) (Ioi 0) ∧
    (∫ x in Ioi (0 : ℝ), Real.log x / Real.sqrt x *
      (deriv (deriv (correlation A)) (t + Real.log x) -
        (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log x))) = 0 := by
  obtain ⟨zeroIntegrable, firstIntegrable, zeroMoment, firstMoment⟩ :=
    actual_differential_moments_zero hA
  simp only [one_div_mul_eq_div] at zeroIntegrable firstIntegrable zeroMoment firstMoment
  simpa only [one_div_mul_eq_div] using LogarithmicMomentSubstitution.logarithmic_integral_zero
    zeroIntegrable firstIntegrable zeroMoment firstMoment t

end

end GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicMoment
