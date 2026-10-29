import FormalResearch.RiemannHypothesis.Conversation.ActualComplexSourceMoment

/-!
# Literal complex Laplace primitive and both native source endpoints

A deterministic polynomial expansion solves z*P+P' for the unchanged
fourth-power bump. Every coefficient, derivative, balance and endpoint is
checked; zero z is explicitly excluded and the original radius and square
root are retained. This generalizes the fixed sixth-weight integration
adapter, without copying or renaming the qualified source definitions.
Human exact-source and off-grid direction: grwtsk contributors. Local
mechanical expansion and complex calculus: OpenAI Codex. The native readout
and its sign estimates remain separate consumers. No mathematical novelty,
priority or training-exposure claim is made by this derivation.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualComplexLaplacePrimitive
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization ActualComplexSourceMoment MeasureTheory Set
noncomputable section

def complexPrimitivePolynomial (A : ℝ) (z : ℂ) (x : ℝ) : ℂ :=
    ((1 / ((A : ℂ) ^ 0 * z ^ 1)) + (-8 / ((A : ℂ) ^ 2 * z ^ 3)) + (144 / ((A : ℂ) ^ 4 * z ^ 5)) + (-2880 / ((A : ℂ) ^ 6 * z ^ 7)) + (40320 / ((A : ℂ) ^ 8 * z ^ 9))) +
    ((8 / ((A : ℂ) ^ 2 * z ^ 2)) + (-144 / ((A : ℂ) ^ 4 * z ^ 4)) + (2880 / ((A : ℂ) ^ 6 * z ^ 6)) + (-40320 / ((A : ℂ) ^ 8 * z ^ 8))) * (x : ℂ) ^ 1 +
    ((-4 / ((A : ℂ) ^ 2 * z ^ 1)) + (72 / ((A : ℂ) ^ 4 * z ^ 3)) + (-1440 / ((A : ℂ) ^ 6 * z ^ 5)) + (20160 / ((A : ℂ) ^ 8 * z ^ 7))) * (x : ℂ) ^ 2 +
    ((-24 / ((A : ℂ) ^ 4 * z ^ 2)) + (480 / ((A : ℂ) ^ 6 * z ^ 4)) + (-6720 / ((A : ℂ) ^ 8 * z ^ 6))) * (x : ℂ) ^ 3 +
    ((6 / ((A : ℂ) ^ 4 * z ^ 1)) + (-120 / ((A : ℂ) ^ 6 * z ^ 3)) + (1680 / ((A : ℂ) ^ 8 * z ^ 5))) * (x : ℂ) ^ 4 +
    ((24 / ((A : ℂ) ^ 6 * z ^ 2)) + (-336 / ((A : ℂ) ^ 8 * z ^ 4))) * (x : ℂ) ^ 5 +
    ((-4 / ((A : ℂ) ^ 6 * z ^ 1)) + (56 / ((A : ℂ) ^ 8 * z ^ 3))) * (x : ℂ) ^ 6 +
    ((-8 / ((A : ℂ) ^ 8 * z ^ 2))) * (x : ℂ) ^ 7 +
    ((1 / ((A : ℂ) ^ 8 * z ^ 1))) * (x : ℂ) ^ 8
private def complexPrimitiveDerivative (A : ℝ) (z : ℂ) (x : ℝ) : ℂ :=
    ((8 / ((A : ℂ) ^ 2 * z ^ 2)) + (-144 / ((A : ℂ) ^ 4 * z ^ 4)) + (2880 / ((A : ℂ) ^ 6 * z ^ 6)) + (-40320 / ((A : ℂ) ^ 8 * z ^ 8))) * 1 * (x : ℂ) ^ 0 +
    ((-4 / ((A : ℂ) ^ 2 * z ^ 1)) + (72 / ((A : ℂ) ^ 4 * z ^ 3)) + (-1440 / ((A : ℂ) ^ 6 * z ^ 5)) + (20160 / ((A : ℂ) ^ 8 * z ^ 7))) * 2 * (x : ℂ) ^ 1 +
    ((-24 / ((A : ℂ) ^ 4 * z ^ 2)) + (480 / ((A : ℂ) ^ 6 * z ^ 4)) + (-6720 / ((A : ℂ) ^ 8 * z ^ 6))) * 3 * (x : ℂ) ^ 2 +
    ((6 / ((A : ℂ) ^ 4 * z ^ 1)) + (-120 / ((A : ℂ) ^ 6 * z ^ 3)) + (1680 / ((A : ℂ) ^ 8 * z ^ 5))) * 4 * (x : ℂ) ^ 3 +
    ((24 / ((A : ℂ) ^ 6 * z ^ 2)) + (-336 / ((A : ℂ) ^ 8 * z ^ 4))) * 5 * (x : ℂ) ^ 4 +
    ((-4 / ((A : ℂ) ^ 6 * z ^ 1)) + (56 / ((A : ℂ) ^ 8 * z ^ 3))) * 6 * (x : ℂ) ^ 5 +
    ((-8 / ((A : ℂ) ^ 8 * z ^ 2))) * 7 * (x : ℂ) ^ 6 +
    ((1 / ((A : ℂ) ^ 8 * z ^ 1))) * 8 * (x : ℂ) ^ 7

def complexEndpointCorrection (A : ℝ) (z : ℂ) : ℂ :=
  (1 - 10 / ((A : ℂ) * z) + 45 / ((A : ℂ) * z) ^ 2 -
    105 / ((A : ℂ) * z) ^ 3 + 105 / ((A : ℂ) * z) ^ 4) -
  Complex.exp (-2 * (A : ℂ) * z) *
    (1 + 10 / ((A : ℂ) * z) + 45 / ((A : ℂ) * z) ^ 2 +
      105 / ((A : ℂ) * z) ^ 3 + 105 / ((A : ℂ) * z) ^ 4)

theorem complex_primitive_polynomial_derivative (A : ℝ) (z : ℂ) (x : ℝ) :
    HasDerivAt (complexPrimitivePolynomial A z) (complexPrimitiveDerivative A z x) x := by
  have h1 : HasDerivAt (fun x : ℝ ↦ ((8 / ((A : ℂ) ^ 2 * z ^ 2)) + (-144 / ((A : ℂ) ^ 4 * z ^ 4)) + (2880 / ((A : ℂ) ^ 6 * z ^ 6)) + (-40320 / ((A : ℂ) ^ 8 * z ^ 8))) * (x : ℂ) ^ 1)
      (((8 / ((A : ℂ) ^ 2 * z ^ 2)) + (-144 / ((A : ℂ) ^ 4 * z ^ 4)) + (2880 / ((A : ℂ) ^ 6 * z ^ 6)) + (-40320 / ((A : ℂ) ^ 8 * z ^ 8))) * 1 * (x : ℂ) ^ 0) x := by
    apply ((((hasDerivAt_id x).ofReal_comp).pow 1).const_mul ((8 / ((A : ℂ) ^ 2 * z ^ 2)) + (-144 / ((A : ℂ) ^ 4 * z ^ 4)) + (2880 / ((A : ℂ) ^ 6 * z ^ 6)) + (-40320 / ((A : ℂ) ^ 8 * z ^ 8)))).congr_deriv
    dsimp only [id_eq, Complex.ofReal_one]
    ring
  have h2 : HasDerivAt (fun x : ℝ ↦ ((-4 / ((A : ℂ) ^ 2 * z ^ 1)) + (72 / ((A : ℂ) ^ 4 * z ^ 3)) + (-1440 / ((A : ℂ) ^ 6 * z ^ 5)) + (20160 / ((A : ℂ) ^ 8 * z ^ 7))) * (x : ℂ) ^ 2)
      (((-4 / ((A : ℂ) ^ 2 * z ^ 1)) + (72 / ((A : ℂ) ^ 4 * z ^ 3)) + (-1440 / ((A : ℂ) ^ 6 * z ^ 5)) + (20160 / ((A : ℂ) ^ 8 * z ^ 7))) * 2 * (x : ℂ) ^ 1) x := by
    apply ((((hasDerivAt_id x).ofReal_comp).pow 2).const_mul ((-4 / ((A : ℂ) ^ 2 * z ^ 1)) + (72 / ((A : ℂ) ^ 4 * z ^ 3)) + (-1440 / ((A : ℂ) ^ 6 * z ^ 5)) + (20160 / ((A : ℂ) ^ 8 * z ^ 7)))).congr_deriv
    dsimp only [id_eq, Complex.ofReal_one]
    ring
  have h3 : HasDerivAt (fun x : ℝ ↦ ((-24 / ((A : ℂ) ^ 4 * z ^ 2)) + (480 / ((A : ℂ) ^ 6 * z ^ 4)) + (-6720 / ((A : ℂ) ^ 8 * z ^ 6))) * (x : ℂ) ^ 3)
      (((-24 / ((A : ℂ) ^ 4 * z ^ 2)) + (480 / ((A : ℂ) ^ 6 * z ^ 4)) + (-6720 / ((A : ℂ) ^ 8 * z ^ 6))) * 3 * (x : ℂ) ^ 2) x := by
    apply ((((hasDerivAt_id x).ofReal_comp).pow 3).const_mul ((-24 / ((A : ℂ) ^ 4 * z ^ 2)) + (480 / ((A : ℂ) ^ 6 * z ^ 4)) + (-6720 / ((A : ℂ) ^ 8 * z ^ 6)))).congr_deriv
    dsimp only [id_eq, Complex.ofReal_one]
    ring
  have h4 : HasDerivAt (fun x : ℝ ↦ ((6 / ((A : ℂ) ^ 4 * z ^ 1)) + (-120 / ((A : ℂ) ^ 6 * z ^ 3)) + (1680 / ((A : ℂ) ^ 8 * z ^ 5))) * (x : ℂ) ^ 4)
      (((6 / ((A : ℂ) ^ 4 * z ^ 1)) + (-120 / ((A : ℂ) ^ 6 * z ^ 3)) + (1680 / ((A : ℂ) ^ 8 * z ^ 5))) * 4 * (x : ℂ) ^ 3) x := by
    apply ((((hasDerivAt_id x).ofReal_comp).pow 4).const_mul ((6 / ((A : ℂ) ^ 4 * z ^ 1)) + (-120 / ((A : ℂ) ^ 6 * z ^ 3)) + (1680 / ((A : ℂ) ^ 8 * z ^ 5)))).congr_deriv
    dsimp only [id_eq, Complex.ofReal_one]
    ring
  have h5 : HasDerivAt (fun x : ℝ ↦ ((24 / ((A : ℂ) ^ 6 * z ^ 2)) + (-336 / ((A : ℂ) ^ 8 * z ^ 4))) * (x : ℂ) ^ 5)
      (((24 / ((A : ℂ) ^ 6 * z ^ 2)) + (-336 / ((A : ℂ) ^ 8 * z ^ 4))) * 5 * (x : ℂ) ^ 4) x := by
    apply ((((hasDerivAt_id x).ofReal_comp).pow 5).const_mul ((24 / ((A : ℂ) ^ 6 * z ^ 2)) + (-336 / ((A : ℂ) ^ 8 * z ^ 4)))).congr_deriv
    dsimp only [id_eq, Complex.ofReal_one]
    ring
  have h6 : HasDerivAt (fun x : ℝ ↦ ((-4 / ((A : ℂ) ^ 6 * z ^ 1)) + (56 / ((A : ℂ) ^ 8 * z ^ 3))) * (x : ℂ) ^ 6)
      (((-4 / ((A : ℂ) ^ 6 * z ^ 1)) + (56 / ((A : ℂ) ^ 8 * z ^ 3))) * 6 * (x : ℂ) ^ 5) x := by
    apply ((((hasDerivAt_id x).ofReal_comp).pow 6).const_mul ((-4 / ((A : ℂ) ^ 6 * z ^ 1)) + (56 / ((A : ℂ) ^ 8 * z ^ 3)))).congr_deriv
    dsimp only [id_eq, Complex.ofReal_one]
    ring
  have h7 : HasDerivAt (fun x : ℝ ↦ ((-8 / ((A : ℂ) ^ 8 * z ^ 2))) * (x : ℂ) ^ 7)
      (((-8 / ((A : ℂ) ^ 8 * z ^ 2))) * 7 * (x : ℂ) ^ 6) x := by
    apply ((((hasDerivAt_id x).ofReal_comp).pow 7).const_mul ((-8 / ((A : ℂ) ^ 8 * z ^ 2)))).congr_deriv
    dsimp only [id_eq, Complex.ofReal_one]
    ring
  have h8 : HasDerivAt (fun x : ℝ ↦ ((1 / ((A : ℂ) ^ 8 * z ^ 1))) * (x : ℂ) ^ 8)
      (((1 / ((A : ℂ) ^ 8 * z ^ 1))) * 8 * (x : ℂ) ^ 7) x := by
    apply ((((hasDerivAt_id x).ofReal_comp).pow 8).const_mul ((1 / ((A : ℂ) ^ 8 * z ^ 1)))).congr_deriv
    dsimp only [id_eq, Complex.ofReal_one]
    ring
  convert (((((((((hasDerivAt_const x ((1 / ((A : ℂ) ^ 0 * z ^ 1)) + (-8 / ((A : ℂ) ^ 2 * z ^ 3)) + (144 / ((A : ℂ) ^ 4 * z ^ 5)) + (-2880 / ((A : ℂ) ^ 6 * z ^ 7)) + (40320 / ((A : ℂ) ^ 8 * z ^ 9)))).add h1).add h2).add h3).add h4).add h5).add h6).add h7).add h8) using 1 <;> try rfl
  unfold complexPrimitiveDerivative
  ring

theorem complex_primitive_exact_balance {A : ℝ} (hA : 0 < A) {z : ℂ} (hz : z ≠ 0) (x : ℝ) :
    z * complexPrimitivePolynomial A z x + complexPrimitiveDerivative A z x =
      ((1 - (x / A) ^ 2) ^ 4 : ℝ) := by
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast hA.ne'
  unfold complexPrimitivePolynomial complexPrimitiveDerivative
  push_cast
  field_simp [hAc, hz]
  ring

theorem complex_weighted_primitive_derivative {A : ℝ} (hA : 0 < A) {z : ℂ} (hz : z ≠ 0) (x : ℝ) :
    HasDerivAt (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) *
      complexPrimitivePolynomial A z x / (Real.sqrt A : ℂ))
      (Complex.exp (z * (x : ℂ)) * (bumpInterior A x : ℂ)) x := by
  have hd := ((((hasDerivAt_id x).ofReal_comp.const_mul z).cexp).mul
    (complex_primitive_polynomial_derivative A z x)).div_const (Real.sqrt A : ℂ)
  apply hd.congr_deriv
  dsimp only [id_eq, Complex.ofReal_one]
  have hb := complex_primitive_exact_balance hA hz x
  unfold bumpInterior
  push_cast
  calc
    _ = Complex.exp (z * (x : ℂ)) * (z * complexPrimitivePolynomial A z x +
        complexPrimitiveDerivative A z x) / (Real.sqrt A : ℂ) := by ring
    _ = Complex.exp (z * (x : ℂ)) * (((1 - (x / A) ^ 2) ^ 4 : ℝ) : ℂ) /
        (Real.sqrt A : ℂ) := by rw [hb]
    _ = _ := by push_cast; ring

theorem complex_primitive_exact_endpoints {A : ℝ} (hA : 0 < A) {z : ℂ} (hz : z ≠ 0) :
    complexPrimitivePolynomial A z A = 384 / ((A : ℂ) ^ 4 * z ^ 5) *
      (1 - 10 / ((A : ℂ) * z) + 45 / ((A : ℂ) * z) ^ 2 -
        105 / ((A : ℂ) * z) ^ 3 + 105 / ((A : ℂ) * z) ^ 4) ∧
    complexPrimitivePolynomial A z (-A) = 384 / ((A : ℂ) ^ 4 * z ^ 5) *
      (1 + 10 / ((A : ℂ) * z) + 45 / ((A : ℂ) * z) ^ 2 +
        105 / ((A : ℂ) * z) ^ 3 + 105 / ((A : ℂ) * z) ^ 4) := by
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast hA.ne'
  constructor <;> unfold complexPrimitivePolynomial <;> push_cast <;> field_simp [hAc, hz] <;> ring

theorem complex_actual_bump_moment_formula {A : ℝ} (hA : 1 ≤ A) {z : ℂ} (hz : z ≠ 0) :
    complexBumpMoment A z = 384 / ((A : ℂ) ^ 4 * (Real.sqrt A : ℂ) * z ^ 5) *
      Complex.exp ((A : ℂ) * z) * complexEndpointCorrection A z := by
  have hpos : 0 < A := by linarith
  have hc : Continuous (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (bumpInterior A x : ℂ)) :=
    (Complex.continuous_exp.comp (continuous_const.mul Complex.continuous_ofReal)).mul
      (Complex.continuous_ofReal.comp (bumpInterior_continuous A))
  rw [complex_bump_exact_interval hA,
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun x _ ↦ complex_weighted_primitive_derivative hpos hz x) (hc.intervalIntegrable _ _),
    (complex_primitive_exact_endpoints hpos hz).1, (complex_primitive_exact_endpoints hpos hz).2]
  have he : Complex.exp (z * ((-A : ℝ) : ℂ)) =
      Complex.exp ((A : ℂ) * z) * Complex.exp (-2 * (A : ℂ) * z) := by
    rw [← Complex.exp_add]
    congr 1
    push_cast
    ring
  rw [he]
  have hcomm : Complex.exp (z * (A : ℂ)) = Complex.exp ((A : ℂ) * z) := by rw [mul_comm]
  rw [hcomm]
  unfold complexEndpointCorrection
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.ActualComplexLaplacePrimitive
