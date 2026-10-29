import FormalResearch.RiemannHypothesis.Conversation.ActualComplexLaplacePrimitive

/-!
# Exact literal complex source formula and finite order-nine numerator

The complex primitive is consumed with the unchanged pole factor and fixed
source normalization. Squaring retains both square roots, both reflected
endpoints and the exact coefficient 147456. The polynomial numerator is the
paper's finite order-nine mechanism; this algebra is not a proof of analytic
continuation, pole order or noncancellation for a complete zero sum. Human
exact-source direction: grwtsk contributors. Local complex algebra consumer:
OpenAI Codex. Qualified source and upstream calculus identities retain their
origins. No RH conclusion follows from these finite identities.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualComplexLaplaceFormula
open FormalResearch.RiemannHypothesis.SourcePairing
open ActualComplexSourceMoment ActualComplexLaplacePrimitive
noncomputable section

def sourceEndpointPolynomial (w : ℂ) : ℂ := w ^ 4 - 10 * w ^ 3 + 45 * w ^ 2 - 105 * w + 105
def orderNineCoefficient (z : ℂ) : ℂ :=
  147456 * (Nat.factorial 8 : ℂ) * (z ^ 2 - 1 / 4) ^ 2 / z ^ 10

theorem complex_actual_source_laplace_formula {A : ℝ} (hA : 1 ≤ A) {z : ℂ} (hz : z ≠ 0) :
    complexTestMoment A z = 384 * (z ^ 2 - 1 / 4) /
      ((A : ℂ) ^ 4 * (Real.sqrt A : ℂ) * (Real.sqrt (sourceNormalization A) : ℂ) * z ^ 5) *
      Complex.exp ((A : ℂ) * z) * complexEndpointCorrection A z := by
  rw [complex_actual_normalized_laplace_multiplier hA, complex_actual_bump_moment_formula hA hz]
  ring

theorem complex_actual_source_squared_formula {A : ℝ} (hA : 1 ≤ A) {z : ℂ} (hz : z ≠ 0) :
    complexTestMoment A z ^ 2 =
      147456 * (z ^ 2 - 1 / 4) ^ 2 / ((A : ℂ) ^ 9 * (sourceNormalization A : ℂ) * z ^ 10) *
        Complex.exp (2 * (A : ℂ) * z) * complexEndpointCorrection A z ^ 2 := by
  have hpos : 0 < A := by linarith
  have hZ := source_normalization_pos A (by linarith)
  have hrootA : (Real.sqrt A : ℂ) ^ 2 = (A : ℂ) := by exact_mod_cast Real.sq_sqrt hpos.le
  have hrootZ : (Real.sqrt (sourceNormalization A) : ℂ) ^ 2 = (sourceNormalization A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hZ.le
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast hpos.ne'
  have hZc : (sourceNormalization A : ℂ) ≠ 0 := by exact_mod_cast hZ.ne'
  have he : Complex.exp ((A : ℂ) * z) ^ 2 = Complex.exp (2 * (A : ℂ) * z) := by
    rw [pow_two, ← Complex.exp_add]
    congr 1
    ring
  rw [complex_actual_source_laplace_formula hA hz]
  simp only [mul_pow, div_pow, he, hrootA, hrootZ]
  field_simp [hAc, hZc, hz]
  ring

theorem complex_endpoint_correction_polynomial {A : ℝ} (hA : 0 < A) {z : ℂ} (hz : z ≠ 0) :
    complexEndpointCorrection A z =
      (sourceEndpointPolynomial ((A : ℂ) * z) - Complex.exp (-2 * (A : ℂ) * z) *
        sourceEndpointPolynomial (-((A : ℂ) * z))) / ((A : ℂ) * z) ^ 4 := by
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast hA.ne'
  unfold complexEndpointCorrection sourceEndpointPolynomial
  field_simp [hAc, hz]
  ring

theorem complex_actual_scaled_polynomial_numerator {A : ℝ} (hA : 1 ≤ A) {z : ℂ} (hz : z ≠ 0) :
    (A : ℂ) ^ 17 * (sourceNormalization A : ℂ) * complexTestMoment A z ^ 2 =
      147456 * (z ^ 2 - 1 / 4) ^ 2 / z ^ 18 *
        (Complex.exp (2 * (A : ℂ) * z) * sourceEndpointPolynomial ((A : ℂ) * z) ^ 2 +
          Complex.exp (-2 * (A : ℂ) * z) * sourceEndpointPolynomial (-((A : ℂ) * z)) ^ 2 -
          2 * sourceEndpointPolynomial ((A : ℂ) * z) * sourceEndpointPolynomial (-((A : ℂ) * z))) := by
  have hpos : 0 < A := by linarith
  have hZ := source_normalization_pos A (by linarith)
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast hpos.ne'
  have hZc : (sourceNormalization A : ℂ) ≠ 0 := by exact_mod_cast hZ.ne'
  have hn : -2 * (A : ℂ) * z = -(2 * (A : ℂ) * z) := by ring
  rw [complex_actual_source_squared_formula hA hz,
    complex_endpoint_correction_polynomial hpos hz]
  rw [hn, Complex.exp_neg]
  field_simp [hAc, hZc, hz, Complex.exp_ne_zero]
  ring

theorem source_order_nine_coefficient_ne_zero {z : ℂ} (hz : z ≠ 0)
    (hpole : z ^ 2 - 1 / 4 ≠ 0) : orderNineCoefficient z ≠ 0 := by
  unfold orderNineCoefficient
  apply div_ne_zero
  · apply mul_ne_zero
    · norm_num
    · exact pow_ne_zero 2 hpole
  · exact pow_ne_zero 10 hz

end
end GRWTSK.RiemannHypothesis.Conversation.ActualComplexLaplaceFormula
