/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Lean and Mathlib retain their original attribution and licenses.
Status: proof source; not elaborated in the pinned environment.
-/
import Mathlib

/-! # Mellin powers of positive real coordinates

All powers are defined using the real logarithm. The scaling proofs never
introduce a division by `1 - s`, so the analytic point `s = 1` is retained.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.MellinTransform.PositiveCoordinates

/-- Real logarithm followed by the ordinary complex exponential. -/
def power (x : ℝ) (s : ℂ) : ℂ := Complex.exp (s * (Real.log x : ℂ))

theorem power_zero (x : ℝ) : power x 0 = 1 := by simp [power]

theorem power_one_base (s : ℂ) : power 1 s = 1 := by simp [power]

theorem power_one {x : ℝ} (hx : 0 < x) : power x 1 = (x : ℂ) := by
  simp only [power, one_mul]
  rw [← Complex.ofReal_exp, Real.exp_log hx]

theorem power_add (x : ℝ) (s t : ℂ) :
    power x (s + t) = power x s * power x t := by
  simp only [power, add_mul, Complex.exp_add]

theorem power_mul {x y : ℝ} (hx : 0 < x) (hy : 0 < y) (s : ℂ) :
    power (x * y) s = power x s * power y s := by
  simp only [power, Real.log_mul (ne_of_gt hx) (ne_of_gt hy),
    Complex.ofReal_add, mul_add, Complex.exp_add]

theorem power_div {x y : ℝ} (hx : 0 < x) (hy : 0 < y) (s : ℂ) :
    power (x / y) s = power x s / power y s := by
  simp only [power, Real.log_div (ne_of_gt hx) (ne_of_gt hy),
    Complex.ofReal_sub, mul_sub, Complex.exp_sub]

theorem power_div_coordinate {x : ℝ} (hx : 0 < x) (s : ℂ) :
    power x s / (x : ℂ) = power x (s - 1) := by
  rw [← power_one hx]
  simp only [power, sub_mul, one_mul, Complex.exp_sub]

theorem power_one_sub {x : ℝ} (hx : 0 < x) (s : ℂ) :
    power x (1 - s) = (x : ℂ) * power x (-s) := by
  rw [sub_eq_add_neg, power_add, power_one hx]

theorem norm_power (x : ℝ) (s : ℂ) :
    ‖power x s‖ = Real.exp (s.re * Real.log x) := by
  simp [power, Complex.norm_exp, Complex.mul_re]

theorem power_hasDerivAt {x : ℝ} (hx : 0 < x) (s : ℂ) :
    HasDerivAt (fun y : ℝ => power y s)
      (s * power x s / (x : ℂ)) x := by
  have h := (((Real.hasDerivAt_log (ne_of_gt hx)).ofReal_comp).const_mul s).cexp
  simpa only [power, Complex.ofReal_inv, div_eq_mul_inv, mul_assoc, mul_comm,
    mul_left_comm] using h

theorem power_differentiable_parameter (x : ℝ) :
    Differentiable ℂ (power x) := by
  intro s
  exact (((hasDerivAt_id s).mul_const (Real.log x : ℂ)).cexp).differentiableAt

/-- The atom normalization is exact for every complex parameter. -/
theorem atom_scaling {X n : ℝ} (hX : 0 < X) (hn : 0 < n)
    (a : ℝ) (s : ℂ) :
    power X (1 - s) * ((a / n : ℝ) : ℂ) * power (n / X) (1 - s) =
      (a : ℂ) * power n (-s) := by
  have hnX : 0 < n / X := div_pos hn hX
  have hprod : X * (n / X) = n := by field_simp [ne_of_gt hX]
  have hm := power_mul hX hnX (1 - s)
  rw [hprod] at hm
  calc
    _ = (a : ℂ) * (power X (1-s) * power (n/X) (1-s) / (n : ℂ)) := by
      push_cast
      ring
    _ = (a : ℂ) * (power n (1-s) / (n : ℂ)) := by rw [← hm]
    _ = (a : ℂ) * power n (-s) := by
      rw [power_div_coordinate hn]
      congr 2
      ring

/-- Continuous-density scaling, including the physical Jacobian X. -/
theorem density_scaling {X y : ℝ} (hX : 0 < X) (hy : 0 < y) (s : ℂ) :
    power X (1-s) * (power y (1-s) / (y : ℂ)) =
      (X : ℂ) * power (X*y) (-s) := by
  rw [power_one_sub hX, power_div_coordinate hy]
  have he : (1-s)-1 = -s := by ring
  rw [he, power_mul hX hy]
  ring

/-- Reconstruct an integral on [X,2X] from its unit-coordinate version.
There is no singular branch at `s = 1`. -/
theorem integral_scaling {X : ℝ} (hX : 0 < X) (s : ℂ) :
    (∫ u in X..(2*X), power u (-s)) =
      power X (1-s) *
        (∫ t in (0:ℝ)..1, power (1+t) (1-s) / (1+(t:ℂ))) := by
  have hchange := intervalIntegral.smul_integral_comp_mul_add
    (fun u : ℝ => power u (-s)) (a := (0:ℝ)) (b := 1) X X
  have hpoint : (∫ t in (0:ℝ)..1,
        power X (1-s) * (power (1+t) (1-s)/(1+(t:ℂ)))) =
      ∫ t in (0:ℝ)..1, (X : ℂ) * power (X*t+X) (-s) := by
    apply intervalIntegral.integral_congr
    intro t ht
    have ht' : t ∈ Set.Icc (0:ℝ) 1 := by simpa using ht
    have hy : 0 < 1+t := by linarith [ht'.1]
    have h := density_scaling hX hy s
    convert h using 1 <;> push_cast <;> ring
  rw [intervalIntegral.integral_const_mul,
    intervalIntegral.integral_const_mul] at hpoint
  have hchange' : (X : ℂ) * (∫ t in (0:ℝ)..1, power (X*t+X) (-s)) =
      ∫ u in X..(2*X), power u (-s) := by
    simpa only [mul_zero, zero_add, mul_one, ← two_mul, Complex.real_smul] using hchange
  exact hchange'.symm.trans hpoint.symm

end GRWTSK.Analysis.MellinTransform.PositiveCoordinates
