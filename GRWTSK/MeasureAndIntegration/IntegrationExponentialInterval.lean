/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Finite exponential interval integrals

A real finite-interval counterpart of the standard complex exponential
integral, oriented according to `intervalIntegral`.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory

namespace GRWTSK.Analysis.RealAnalysis.Integration.ExponentialInterval

theorem integral_exp_neg_mul {a : ℝ} (ha : a ≠ 0) (b c : ℝ) :
    (∫ u in b..c, Real.exp (-a * u)) =
      (Real.exp (-a * b) - Real.exp (-a * c)) / a := by
  have hd (u : ℝ) : HasDerivAt
      (fun x : ℝ => -(Real.exp ((-a) * x)) / a)
      (Real.exp ((-a) * u)) u := by
    have hg : HasDerivAt (fun x : ℝ => (-a) * x) (-a) u :=
      by simpa only [id_eq, mul_one] using (hasDerivAt_id u).const_mul (-a)
    have hder : -(Real.exp ((-a) * u) * (-a)) / a =
        Real.exp ((-a) * u) := by
      field_simp [ha]
    simpa only [Pi.neg_apply, hder] using hg.exp.neg.div_const a
  have hi : IntervalIntegrable (fun u : ℝ => Real.exp (-a * u)) volume b c :=
    (Real.continuous_exp.comp
      (continuous_const.mul continuous_id)).intervalIntegrable b c
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun u _ => hd u) hi]
  field_simp [ha]
  ring

/-- The oriented finite-interval integral of a real exponential with nonzero
rate.  This sign-neutral form is convenient when the rate is positive. -/
theorem integral_exp_mul {a : ℝ} (ha : a ≠ 0) (b c : ℝ) :
    (∫ u in b..c, Real.exp (a * u)) =
      (Real.exp (a * c) - Real.exp (a * b)) / a := by
  have h := integral_exp_neg_mul (a := -a) (neg_ne_zero.mpr ha) b c
  simp only [neg_neg] at h
  rw [h]
  field_simp [ha]
  ring

end GRWTSK.Analysis.RealAnalysis.Integration.ExponentialInterval

#print axioms GRWTSK.Analysis.RealAnalysis.Integration.ExponentialInterval.integral_exp_neg_mul
#print axioms GRWTSK.Analysis.RealAnalysis.Integration.ExponentialInterval.integral_exp_mul
