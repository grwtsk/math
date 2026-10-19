/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Uses Mathlib complex numbers, real square roots and trigonometry (Apache-2.0).
Formalization assistance: OpenAI.

Exact complex phase factors for source-labeled three-channel data. Phase
rotation and heat time are independent. These factors are not a geometric
C3 action on the Frey curve. Unelaborated source proof scripts.
-/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.Complex.CubicWavePhase

/-- The upper-half-plane primitive cubic root, constructed without rounded data. -/
def omega : ℂ := ⟨-1 / 2, Real.sqrt 3 / 2⟩

theorem omega_sum : (1 : ℂ) + omega + omega ^ 2 = 0 := by
  have hs : Real.sqrt (3 : ℝ) ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  apply Complex.ext <;> simp [omega, pow_two, Complex.mul_re, Complex.mul_im] <;> nlinarith

theorem omega_cube : omega ^ 3 = 1 := by
  calc
    omega ^ 3 = (omega - 1) * (1 + omega + omega ^ 2) + 1 := by ring
    _ = 1 := by rw [omega_sum]; ring

/-- Multiplying a real/rational source by this badge need not preserve its field. -/
theorem omega_im_pos : 0 < omega.im := by
  have hs : 0 < Real.sqrt (3 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  change 0 < Real.sqrt (3 : ℝ) / 2
  linarith

theorem omega_not_real (r : ℝ) : omega ≠ (r : ℂ) := by
  intro h
  have hi := congrArg Complex.im h
  have hp := omega_im_pos
  simp only [Complex.ofReal_im] at hi
  linarith

theorem omega_ne_one : omega ≠ 1 := by
  intro h
  have hr := congrArg Complex.re h
  norm_num [omega] at hr

theorem omega_normSq : Complex.normSq omega = 1 := by
  have hs : Real.sqrt (3 : ℝ) ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  simp only [Complex.normSq_apply, omega]
  nlinarith

/-- The inverse is explicitly omega squared, not a numerical reciprocal. -/
def omegaUnit : ℂˣ where
  val := omega
  inv := omega ^ 2
  val_inv := by simpa [pow_succ, mul_comm] using omega_cube
  inv_val := by simpa [pow_succ] using omega_cube

/-- Labels 0,1,2 retain their source identity on every spatially mirrored copy. -/
def sourcePhase (j : Fin 3) : ℂˣ := omegaUnit ^ j.val

theorem sourcePhase_normSq (j : Fin 3) : Complex.normSq (sourcePhase j : ℂ) = 1 := by
  change Complex.normSq (omega ^ j.val) = 1
  rw [map_pow, omega_normSq, one_pow]

/-- Unit-circle rotation. Its argument is an angle, not a heat parameter. -/
def rotation (theta : ℝ) : ℂ := (Real.cos theta : ℂ) + Complex.I * (Real.sin theta : ℂ)

@[simp] theorem rotation_zero : rotation 0 = 1 := by simp [rotation]

theorem rotation_add (theta psi : ℝ) : rotation (theta + psi) = rotation theta * rotation psi := by
  apply Complex.ext <;> simp [rotation, Real.cos_add, Real.sin_add] <;> ring

theorem rotation_normSq (theta : ℝ) : Complex.normSq (rotation theta) = 1 := by
  simp only [Complex.normSq_apply]
  simpa [rotation, pow_two, add_comm] using Real.sin_sq_add_cos_sq theta

theorem rotation_period (theta : ℝ) : rotation (theta + 2 * Real.pi) = rotation theta := by
  simp [rotation, Real.cos_add_two_pi, Real.sin_add_two_pi]

theorem rotation_ne_zero (theta : ℝ) : rotation theta ≠ 0 := by
  intro h
  have hn := rotation_normSq theta
  rw [h, map_zero] at hn
  exact zero_ne_one hn

/-- Continuity uses the ordinary complex topology, never the discrete-jet topology. -/
theorem rotation_continuous : Continuous rotation := by
  unfold rotation
  fun_prop

end GRWTSK.Analysis.Complex.CubicWavePhase
