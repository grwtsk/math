/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Tactic

/-!
# One inverse-square-root primitive atom under the Mellin transform

The lower cutoff is positive and the complex powers use positive real bases.
The atom is absolutely integrable before the improper-integral formula is used.
The infinite arithmetic sum, floor cutoff, Fubini exchange and provider-source
identification are separate obligations. No RH estimate is supplied.
Compilation, fresh kernel replay, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
open MeasureTheory Set

namespace GRWTSK.NumberTheory.PrimePrimitiveMellin

noncomputable def atomKernel (a : ℝ) (s : ℂ) (x : ℝ) : ℂ :=
  2 * ((a : ℂ) ^ (-(1 / 2 : ℂ)) * (x : ℂ) ^ (-s - 1) -
    (x : ℂ) ^ (-s - 3 / 2))

theorem inverse_sqrt_eq_cpow {x : ℝ} (hx : 0 < x) :
    ((1 / Real.sqrt x : ℝ) : ℂ) = (x : ℂ) ^ (-(1 / 2 : ℂ)) := by
  rw [one_div, Real.sqrt_eq_rpow, Complex.ofReal_inv,
    Complex.ofReal_cpow hx.le, ← Complex.cpow_neg]
  norm_num

/-- The expanded integrable kernel is exactly the original inverse-root atom. -/
theorem atomKernel_eq_original {a x : ℝ} (ha : 0 < a) (hx : 0 < x) (s : ℂ) :
    atomKernel a s x =
      (2 : ℂ) * (((1 / Real.sqrt a : ℝ) : ℂ) - ((1 / Real.sqrt x : ℝ) : ℂ)) *
        (x : ℂ) ^ (-s - 1) := by
  rw [inverse_sqrt_eq_cpow ha, inverse_sqrt_eq_cpow hx]
  have hx0 : (x : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hx.ne'
  have hm : (x : ℂ) ^ (-(1 / 2 : ℂ)) * (x : ℂ) ^ (-s - 1) =
      (x : ℂ) ^ (-s - 3 / 2) := by
    rw [← Complex.cpow_add _ _ hx0]
    congr 1
    ring
  unfold atomKernel
  rw [← hm]
  ring

/-- Re(s)>0 already suffices for one atom; the arithmetic exchange needs more. -/
theorem atomKernel_integrable {a : ℝ} (ha : 0 < a) {s : ℂ} (hs : 0 < s.re) :
    IntegrableOn (atomKernel a s) (Ioi a) := by
  have h1 : (-s - 1).re < -1 := by simp; linarith
  have h2 : (-s - 3 / 2).re < -1 := by simp; linarith
  exact (((integrableOn_Ioi_cpow_of_lt h1 ha).const_mul
    ((a : ℂ) ^ (-(1 / 2 : ℂ)))).sub (integrableOn_Ioi_cpow_of_lt h2 ha)).const_mul 2

/-- An exact complex-valued integral, with both denominators nonzero by Re(s)>0. -/
theorem integral_atomKernel {a : ℝ} (ha : 0 < a) {s : ℂ} (hs : 0 < s.re) :
    (∫ x : ℝ in Ioi a, atomKernel a s x) =
      (a : ℂ) ^ (-s - 1 / 2) / (s * (s + 1 / 2)) := by
  have h1 : (-s - 1).re < -1 := by simp; linarith
  have h2 : (-s - 3 / 2).re < -1 := by simp; linarith
  have hi1 := integrableOn_Ioi_cpow_of_lt h1 ha
  have hi2 := integrableOn_Ioi_cpow_of_lt h2 ha
  have hs0 : s ≠ 0 := by intro h; simp [h] at hs
  have hsh : s + 1 / 2 ≠ 0 := by
    intro h
    have hr := congrArg Complex.re h
    simp at hr
    linarith
  have ha0 : (a : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr ha.ne'
  have hm : (a : ℂ) ^ (-(1 / 2 : ℂ)) * (a : ℂ) ^ (-s) =
      (a : ℂ) ^ (-s - 1 / 2) := by
    rw [← Complex.cpow_add _ _ ha0]
    congr 1
    ring
  unfold atomKernel
  rw [integral_const_mul, integral_sub (hi1.const_mul _) hi2,
    integral_const_mul, integral_Ioi_cpow_of_lt h1 ha, integral_Ioi_cpow_of_lt h2 ha]
  rw [show -s - 1 + 1 = -s by ring,
    show -s - 3 / 2 + 1 = -s - 1 / 2 by ring]
  simp only [neg_div_neg_eq]
  rw [← mul_div_assoc, hm]
  have hn : -s - 1 / 2 ≠ 0 := by
    intro h
    apply hsh
    linear_combination -h
  field_simp [hs0, hsh, hn] <;> ring

/-- Absolute integrability also holds for the literal source kernel. -/
theorem original_atom_integrable {a : ℝ} (ha : 0 < a) {s : ℂ} (hs : 0 < s.re) :
    IntegrableOn (fun x : ℝ =>
      (2 : ℂ) * (((1 / Real.sqrt a : ℝ) : ℂ) - ((1 / Real.sqrt x : ℝ) : ℂ)) *
        (x : ℂ) ^ (-s - 1)) (Ioi a) :=
  (atomKernel_integrable ha hs).congr_fun
    (fun x hx => atomKernel_eq_original ha (ha.trans hx) s) measurableSet_Ioi

/-- Return to the literal inverse-root kernel on its positive integration domain. -/
theorem integral_original_atom {a : ℝ} (ha : 0 < a) {s : ℂ} (hs : 0 < s.re) :
    (∫ x : ℝ in Ioi a,
      (2 : ℂ) * (((1 / Real.sqrt a : ℝ) : ℂ) - ((1 / Real.sqrt x : ℝ) : ℂ)) *
        (x : ℂ) ^ (-s - 1)) =
      (a : ℂ) ^ (-s - 1 / 2) / (s * (s + 1 / 2)) := by
  calc
    _ = ∫ x : ℝ in Ioi a, atomKernel a s x :=
      setIntegral_congr_fun measurableSet_Ioi (fun x hx =>
        (atomKernel_eq_original ha (ha.trans hx) s).symm)
    _ = _ := integral_atomKernel ha hs

end GRWTSK.NumberTheory.PrimePrimitiveMellin
