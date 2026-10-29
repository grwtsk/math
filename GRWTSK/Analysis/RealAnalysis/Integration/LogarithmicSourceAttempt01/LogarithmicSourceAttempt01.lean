import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
import Mathlib.Analysis.MellinTransform
import Mathlib.MeasureTheory.Function.JacobianOneDim

/-! A source-faithful logarithmic L² coordinate leaf for #257.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
No Beurling closure, Müntz identity, signed arithmetic transport or RH witness is asserted. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.LogarithmicSource
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization

/-- Zero outside the positive half-axis; Lebesgue dx, not dx/x, is the target measure. -/
def positiveLogLift (f : ℝ → ℝ) (x : ℝ) : ℝ :=
  if 0 < x then Real.exp (-Real.log x / 2) * f (Real.log x) else 0

theorem positiveLogLift_exp (f : ℝ → ℝ) (t : ℝ) :
    positiveLogLift f (Real.exp t) = Real.exp (-t / 2) * f t := by
  simp [positiveLogLift, Real.exp_pos, Real.log_exp]

private theorem exp_square_weight (t : ℝ) :
    Real.exp t * (Real.exp (-t / 2))^2 = 1 := by
  rw [pow_two, ←Real.exp_add, ←Real.exp_add]
  convert Real.exp_zero using 1 <;> ring

theorem lift_square_jacobian (f : ℝ → ℝ) (t : ℝ) :
    Real.exp t * (positiveLogLift f (Real.exp t))^2 = (f t)^2 := by
  rw [positiveLogLift_exp, mul_pow]
  calc
    _ = (Real.exp t*(Real.exp (-t/2))^2)*(f t)^2 := by ring
    _ = _ := by rw [exp_square_weight, one_mul]

theorem lift_square_integrable_iff (f : ℝ → ℝ) :
    IntegrableOn (fun x => (positiveLogLift f x)^2) (Ioi 0) ↔
      Integrable (fun t => (f t)^2) := by
  have h := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (s:=univ) measurableSet_univ
    (fun t _ => (Real.hasDerivAt_exp t).hasDerivWithinAt)
    (fun _ _ _ _ he => Real.exp_injective he)
    (fun x => (positiveLogLift f x)^2)
  simpa only [image_univ,Real.range_exp,abs_of_pos (Real.exp_pos _),smul_eq_mul,
    lift_square_jacobian,integrableOn_univ] using h

theorem lift_square_integral (f : ℝ → ℝ) :
    (∫ x in Ioi 0, (positiveLogLift f x)^2) = ∫ t : ℝ, (f t)^2 := by
  have h := integral_image_eq_integral_abs_deriv_smul
    (s:=univ) measurableSet_univ
    (fun t _ => (Real.hasDerivAt_exp t).hasDerivWithinAt)
    (fun _ _ _ _ he => Real.exp_injective he)
    (fun x => (positiveLogLift f x)^2)
  simpa only [image_univ,Real.range_exp,abs_of_pos (Real.exp_pos _),smul_eq_mul,
    lift_square_jacobian,integral_univ] using h

/-- The exact normalized polynomial source is retained before changing coordinates. -/
def actualLogSource (A : ℝ) : ℝ → ℝ :=
  positiveLogLift (normalizedTest explicitSecondDerivative A)

theorem actualLogSource_square_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun x => (actualLogSource A x)^2) (Ioi 0) :=
  (lift_square_integrable_iff _).2 (normalized_square_integrable A hA)

theorem actualLogSource_square_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ x in Ioi 0, (actualLogSource A x)^2) = 1 := by
  rw [actualLogSource, lift_square_integral]
  exact normalized_square_integral A hA

theorem positiveLogLift_dilation (f : ℝ → ℝ) {a x : ℝ} (ha : 0 < a) (hx : 0 < x) :
    positiveLogLift f (a*x) = Real.exp (-Real.log a/2) *
      positiveLogLift (fun t => f (t+Real.log a)) x := by
  simp only [positiveLogLift,if_pos (mul_pos ha hx),if_pos hx,Real.log_mul ha.ne' hx.ne']
  rw [show -(Real.log a+Real.log x)/2 = -Real.log a/2 + -Real.log x/2 by ring,
    Real.exp_add]
  rw [add_comm (Real.log a)]
  ring

end ContinuousResearch.LogarithmicSource
