/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.Calculus.Deriv.Add
import Mathlib.Tactic

/-! # Boundary derivative of the theta sum from finitely many scattering fronts -/
namespace GRWTSK.NumberTheory.XiFiniteThetaBoundary
open Real Finset

noncomputable def pulse (n : ℕ) (u : ℝ) : ℝ :=
  exp (u/2 - π*(n:ℝ)^2*exp (2*u))

theorem pulse_derivative (n : ℕ) :
    HasDerivAt (pulse n) ((1/2-2*π*(n:ℝ)^2)*exp (-π*(n:ℝ)^2)) 0 := by
  unfold pulse
  have he := (((hasDerivAt_id (0:ℝ)).const_mul 2).exp).const_mul (π*(n:ℝ)^2)
  have hd := HasDerivAt.exp (HasDerivAt.sub ((hasDerivAt_id (0:ℝ)).div_const 2) he)
  convert hd using 1 <;> simp <;> ring

/-- Every omitted positive-frequency theta term makes a strictly positive
contribution to the high-real-frequency plateau of the centered truncation. -/
theorem omitted_contribution_pos (n : ℕ) (hn : 1 ≤ n) :
    0 < (4*π*(n:ℝ)^2-1)*exp (-π*(n:ℝ)^2) := by
  have h : (1:ℝ) ≤ n := by exact_mod_cast hn
  have hs : (1:ℝ) ≤ (n:ℝ)^2 := by nlinarith
  have hp := Real.pi_gt_three
  exact mul_pos (by nlinarith [mul_nonneg Real.pi_pos.le (sub_nonneg.mpr hs)]) (Real.exp_pos _)

/-- The boundary term surviving two integrations by parts has this exact
coefficient at each nonzero real frequency before taking its limit. -/
theorem boundary_remainder {t : ℝ} (ht : t ≠ 0) (b e : ℝ) :
    1/2 - 2*(t^2+1/4)*(-b/t^2+e/t^4) =
    1/2 + 2*b + b/(2*t^2) - 2*e/t^2 - e/(2*t^4) := by
  field_simp
  ring

end GRWTSK.NumberTheory.XiFiniteThetaBoundary
