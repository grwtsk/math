/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic

/-!
# Full logarithmic substitution for two exponentially weighted moments

The Jacobian is proved on the whole real line and the full
positive half-line. The moment identity retains genuine zeroth and first
weighted integrability. No finite interval, omitted tail or discrete estimate
is substituted for the full change of variables.
-/

namespace GRWTSK.Analysis.IntegralTransforms.LogarithmicMomentSubstitution

open MeasureTheory Set

noncomputable section

/-- The positive square root fixes the actual half-exponential Jacobian factor. -/
theorem sqrt_exp_half (x : ℝ) : Real.sqrt (Real.exp x) = Real.exp (x / 2) := by
  apply (Real.sqrt_eq_iff_mul_self_eq_of_pos (Real.exp_pos _)).mpr
  rw [← Real.exp_add]
  congr 1
  ring

/-- The complete exponential image is the positive half-line. -/
theorem exponential_jacobian_integral (g : ℝ → ℝ) :
    (∫ x : ℝ, Real.exp x * g (Real.exp x)) = ∫ y in Ioi (0 : ℝ), g y := by
  have substitution := integral_image_eq_integral_abs_deriv_smul
    (s := (univ : Set ℝ)) MeasurableSet.univ
    (fun x _ ↦ (Real.hasDerivAt_exp x).hasDerivWithinAt)
    (fun x _ y _ same ↦ Real.exp_injective same) g
  simpa [image_univ, Real.range_exp, abs_of_pos (Real.exp_pos _), smul_eq_mul]
    using substitution.symm

/-- Actual integrability is preserved in the same full change of variables. -/
theorem exponential_jacobian_integrable_iff (g : ℝ → ℝ) :
    IntegrableOn g (Ioi (0 : ℝ)) ↔
      Integrable (fun x : ℝ ↦ Real.exp x * g (Real.exp x)) := by
  have substitution := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (s := (univ : Set ℝ)) MeasurableSet.univ
    (fun x _ ↦ (Real.hasDerivAt_exp x).hasDerivWithinAt)
    (fun x _ y _ same ↦ Real.exp_injective same) g
  simpa [image_univ, Real.range_exp, abs_of_pos (Real.exp_pos _), smul_eq_mul]
    using substitution

/-- Exact pointwise transformed logarithmic weight, with the positive denominator. -/
theorem logarithmic_weight_jacobian (F : ℝ → ℝ) (t x : ℝ) :
    Real.exp x * (Real.log (Real.exp x) / Real.sqrt (Real.exp x) *
      F (t + Real.log (Real.exp x))) = x * Real.exp (x / 2) * F (t + x) := by
  rw [Real.log_exp, sqrt_exp_half]
  have split : Real.exp x = Real.exp (x / 2) * Real.exp (x / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [split]
  rw [div_eq_mul_inv x (Real.exp (x / 2))]
  calc
    _ = x * Real.exp (x / 2) * (Real.exp (x / 2) * (Real.exp (x / 2))⁻¹) *
        F (t + x) := by ring
    _ = _ := by rw [mul_inv_cancel₀ (ne_of_gt (Real.exp_pos (x / 2))), mul_one]

/-- The full logarithmic integral keeps both weighted moments and both integrabilities. -/
theorem logarithmic_moment_identity {F : ℝ → ℝ}
    (hzero : Integrable (fun x : ℝ ↦ Real.exp (x / 2) * F x))
    (hfirst : Integrable (fun x : ℝ ↦ x * Real.exp (x / 2) * F x)) (t : ℝ) :
    IntegrableOn (fun x : ℝ ↦ Real.log x / Real.sqrt x * F (t + Real.log x)) (Ioi 0) ∧
    (∫ x in Ioi (0 : ℝ), Real.log x / Real.sqrt x * F (t + Real.log x)) =
      Real.exp (-t / 2) * ((∫ x : ℝ, x * Real.exp (x / 2) * F x) -
        t * ∫ x : ℝ, Real.exp (x / 2) * F x) := by
  let g : ℝ → ℝ := fun x ↦ Real.log x / Real.sqrt x * F (t + Real.log x)
  have zeroShift : Integrable (fun x : ℝ ↦ Real.exp ((t + x) / 2) * F (t + x)) :=
    (measurePreserving_add_left volume t).integrable_comp_of_integrable hzero
  have firstShift : Integrable (fun x : ℝ ↦
      (t + x) * Real.exp ((t + x) / 2) * F (t + x)) :=
    (measurePreserving_add_left volume t).integrable_comp_of_integrable hfirst
  have pullback : (fun x : ℝ ↦ Real.exp x * g (Real.exp x)) =
      fun x : ℝ ↦ Real.exp (-t / 2) *
        ((t + x) * Real.exp ((t + x) / 2) * F (t + x) -
          t * (Real.exp ((t + x) / 2) * F (t + x))) := by
    funext x
    dsimp [g]
    rw [logarithmic_weight_jacobian]
    have factor : Real.exp (-t / 2) * Real.exp ((t + x) / 2) = Real.exp (x / 2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    calc
      _ = x * (Real.exp (-t / 2) * Real.exp ((t + x) / 2)) * F (t + x) := by rw [factor]
      _ = _ := by ring
  have admitted : Integrable (fun x : ℝ ↦ Real.exp x * g (Real.exp x)) := by
    rw [pullback]
    exact (firstShift.sub (zeroShift.const_mul t)).const_mul (Real.exp (-t / 2))
  refine ⟨(exponential_jacobian_integrable_iff g).mpr admitted, ?_⟩
  change (∫ x in Ioi (0 : ℝ), g x) = _
  rw [← exponential_jacobian_integral g, pullback, integral_const_mul,
    integral_sub firstShift (zeroShift.const_mul t), integral_const_mul,
    integral_add_left_eq_self (fun x : ℝ ↦ x * Real.exp (x / 2) * F x) t,
    integral_add_left_eq_self (fun x : ℝ ↦ Real.exp (x / 2) * F x) t]

/-- Two genuine zero moments annihilate the full continuous logarithmic sum analogue. -/
theorem logarithmic_integral_zero {F : ℝ → ℝ}
    (hzero : Integrable (fun x : ℝ ↦ Real.exp (x / 2) * F x))
    (hfirst : Integrable (fun x : ℝ ↦ x * Real.exp (x / 2) * F x))
    (zero : (∫ x : ℝ, Real.exp (x / 2) * F x) = 0)
    (firstZero : (∫ x : ℝ, x * Real.exp (x / 2) * F x) = 0) (t : ℝ) :
    IntegrableOn (fun x : ℝ ↦ Real.log x / Real.sqrt x * F (t + Real.log x)) (Ioi 0) ∧
      (∫ x in Ioi (0 : ℝ), Real.log x / Real.sqrt x * F (t + Real.log x)) = 0 := by
  obtain ⟨admitted, identity⟩ := logarithmic_moment_identity hzero hfirst t
  refine ⟨admitted, ?_⟩
  rw [identity, zero, firstZero]
  ring

end

end GRWTSK.Analysis.IntegralTransforms.LogarithmicMomentSubstitution
