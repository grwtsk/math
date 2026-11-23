/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Tactic

/-! # Localization and rigidity kernels for the unit Poisson comb -/
namespace GRWTSK.NumberTheory.XiPoissonGap

noncomputable def cardinalKernel (x : ℝ) : ℝ := (Real.sinc (x*Real.pi))^2

theorem kernel_zero_iff (x : ℝ) :
    cardinalKernel x = 0 ↔ ∃ n : ℤ, n ≠ 0 ∧ (n : ℝ) = x := by
  by_cases hx : x = 0
  · subst x; simp [cardinalKernel]
  have hπ := Real.pi_ne_zero
  simp only [cardinalKernel, Real.sinc_of_ne_zero (mul_ne_zero hx hπ), sq_eq_zero_iff,
    div_eq_zero_iff, mul_ne_zero hx hπ, or_false, Real.sin_eq_zero_iff]
  constructor
  · rintro ⟨n, hn⟩
    have h := mul_right_cancel₀ hπ hn
    exact ⟨n, fun hz => hx (by simpa [hz] using h.symm), h⟩
  · rintro ⟨n, _, rfl⟩
    exact ⟨n, rfl⟩

/-- The symmetrized derivative probe has an integrable tail. -/
theorem derivative_probe (n x P : ℝ) (hm : x-n ≠ 0) (hp : x+n ≠ 0) :
    ((x-n)*(P/(x-n))^2 - (x+n)*(P/(x+n))^2)/2 =
      n*P^2/((x-n)*(x+n)) := by
  field_simp; ring

/-- Jordan's inequality localizes leakage quadratically around the nearest site. -/
theorem local_sine_bound (u : ℝ) (hu : |u| ≤ 1/2) :
    4*u^2 ≤ Real.sin (u*Real.pi)^2 := by
  have hπ := Real.pi_pos
  have hb : |u*Real.pi| ≤ Real.pi/2 := by
    rw [abs_mul, abs_of_pos hπ]; nlinarith [mul_le_mul_of_nonneg_right hu hπ.le]
  have h := Real.mul_abs_le_abs_sin hb
  rw [abs_mul, abs_of_pos hπ, show 2/Real.pi*(|u| * Real.pi) = 2*|u| by field_simp] at h
  have h₂ := mul_self_le_mul_self (by positivity : 0 ≤ 2*|u|) h
  nlinarith only [h₂, sq_abs u, sq_abs (Real.sin (u*Real.pi))]

end GRWTSK.NumberTheory.XiPoissonGap
