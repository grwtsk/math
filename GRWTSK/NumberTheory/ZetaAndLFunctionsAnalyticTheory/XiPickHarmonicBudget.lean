/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! # A reciprocal-mass bound for interpolation on a vertical strip

The squared modulus of the reciprocal half-plane Blaschke factor on
a vertical line is largest on the real axis. The resulting finite
logarithmic product estimate is independent of the spacing of the nodes.
-/
namespace GRWTSK.NumberTheory.XiPickHarmonicBudget

open Finset

/-- The vertical worst displacement for a single reciprocal factor. -/
theorem vertical_ratio {x u : ℝ} (y : ℝ) (hu : 0 ≤ u) (hx : u < x) :
    ((x+u)^2+y^2) / ((x-u)^2+y^2) ≤ ((x+u)/(x-u))^2 := by
  have hp : 0 < x-u := sub_pos.mpr hx
  have hden : 0 < (x-u)^2+y^2 := by positivity
  rw [div_pow, div_le_div_iff₀ hden (sq_pos_of_pos hp)]
  nlinarith [mul_nonneg (mul_nonneg (show 0 ≤ x by linarith) hu) (sq_nonneg y)]

/-- A real-axis reciprocal factor consumes at most this amount of the harmonic budget. -/
theorem log_factor_le {x u q : ℝ} (hu : 0 ≤ u) (hx : 0 < x)
    (hq : q < 1) (hux : u ≤ q*x) :
    Real.log ((x+u)/(x-u)) ≤ (2*u/(1-q))*x⁻¹ := by
  have hq' : 0 < 1-q := by linarith
  have hxu : 0 < x-u := by nlinarith [mul_pos hq' hx]
  have hnum : 0 < x+u := by linarith
  apply (Real.log_le_sub_one_of_pos (div_pos hnum hxu)).trans
  rw [show (x+u)/(x-u)-1 = 2*u/(x-u) by field_simp; ring]
  rw [show (2*u/(1-q))*x⁻¹ = 2*u/((1-q)*x) by rw [div_mul_eq_div_div, div_eq_mul_inv (2*u/(1-q)) x]]
  apply div_le_div_of_nonneg_left (by linarith) (mul_pos hq' hx)
  nlinarith

/-- The reverse inequality identifies the leading cost of each real factor. -/
theorem log_factor_ge {x u : ℝ} (hu : 0 ≤ u) (hux : u < x) :
    (2*u)*x⁻¹ ≤ Real.log ((x+u)/(x-u)) := by
  have hxu : 0 < x-u := sub_pos.mpr hux
  have hx : 0 < x := lt_of_le_of_lt hu hux
  have hk : 0 ≤ 2*u/(x-u) := by positivity
  have hr := Real.le_log_one_add_of_nonneg hk
  have hadd : 1 + 2*u/(x-u) = (x+u)/(x-u) := by field_simp; ring
  rw [hadd] at hr
  have he : 2 * (2*u/(x-u)) / (2*u/(x-u)+2) = (2*u)*x⁻¹ := by
    have hne : 2*u/(x-u)+2 ≠ 0 := by positivity
    field_simp
    ring
  simpa only [he] using hr

/-- Even densely repeated nodes pay twice their reciprocal mass on the real strip. -/
theorem finite_log_floor {ι : Type*} (s : Finset ι) (x : ι → ℝ) {u : ℝ}
    (hu : 0 ≤ u) (hx : ∀ i ∈ s, u < x i) :
    (2*u) * ∑ i ∈ s, (x i)⁻¹ ≤ ∑ i ∈ s, Real.log ((x i+u)/(x i-u)) := by
  rw [Finset.mul_sum]
  exact sum_le_sum fun i hi => log_factor_ge hu (hx i hi)

/-- The aggregate estimate counts nodes with multiplicities, even at arbitrarily small gaps. -/
theorem finite_log_bound {ι : Type*} (s : Finset ι) (x : ι → ℝ) {u q : ℝ}
    (hu : 0 ≤ u) (hq : q < 1) (hx : ∀ i ∈ s, 0 < x i)
    (hux : ∀ i ∈ s, u ≤ q*x i) :
    ∑ i ∈ s, Real.log ((x i+u)/(x i-u)) ≤
      (2*u/(1-q))* ∑ i ∈ s, (x i)⁻¹ := by
  rw [Finset.mul_sum]
  exact sum_le_sum fun i hi => log_factor_le hu (hx i hi) hq (hux i hi)

/-- An exponentially small arithmetic residual dominates the reciprocal product loss. -/
theorem residual_product_bound {ι : Type*} (s : Finset ι) (x : ι → ℝ) {u q b h : ℝ}
    (hu : 0 ≤ u) (hq : q < 1) (hx : ∀ i ∈ s, 0 < x i)
    (hux : ∀ i ∈ s, u ≤ q*x i) (hm : ∑ i ∈ s, (x i)⁻¹ ≤ h) :
    Real.exp (-b*u + ∑ i ∈ s, Real.log ((x i+u)/(x i-u))) ≤
      Real.exp (-(b-2*h/(1-q))*u) := by
  apply Real.exp_le_exp.mpr
  have hc : 0 ≤ 2*u/(1-q) := by positivity
  have h₁ := (finite_log_bound s x hu hq hx hux).trans
    (mul_le_mul_of_nonneg_left hm hc)
  calc
    _ ≤ -b*u + (2*u/(1-q))*h := by linarith
    _ = _ := by ring

end GRWTSK.NumberTheory.XiPickHarmonicBudget
