/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPickHarmonicBudget
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-! # Finite rational trial spaces in the Weil window limit -/
noncomputable section
namespace GRWTSK.NumberTheory.XiPickWeilLimit
open Finset Filter
open scoped Topology

/-- One normalized right-half-plane rational factor. -/
def factor (a z : ℂ) : ℂ := (a-z)/(a+z)

/-- Product giving the trial space its zeros. -/
def diskProduct (s : List ℂ) (z : ℂ) : ℂ := (s.map fun a => factor a z).prod

/-- Successive rational contributions to the trial space's reproducing kernel. -/
def expansion : List ℂ → ℂ → ℂ → ℂ
  | [], _, _ => 0
  | a :: s, z, w => 2*a/((a+z)*(a+w)) + factor a z * factor a w * expansion s z w

/-- The finite kernel identity also covers repeated parameters. -/
theorem kernel_expansion (s : List ℂ) (z w : ℂ)
    (hz : ∀ a ∈ s, a+z ≠ 0) (hw : ∀ a ∈ s, a+w ≠ 0) :
    (z+w) * expansion s z w = 1 - diskProduct s z * diskProduct s w := by
  induction s with
  | nil => simp [expansion,diskProduct]
  | cons a s ih =>
    have ha := hz a (by simp)
    have hb := hw a (by simp)
    have hh := ih (fun a h => hz a (by simp [h])) (fun a h => hw a (by simp [h]))
    have hone : (z+w)*(2*a/((a+z)*(a+w))) = 1-factor a z*factor a w := by
      unfold factor
      field_simp
      ring
    simp only [expansion,diskProduct,List.map_cons,List.prod_cons]
    change (z+w) * (2*a/((a+z)*(a+w)) + factor a z*factor a w*expansion s z w) =
      1-(factor a z*diskProduct s z)*(factor a w*diskProduct s w)
    linear_combination hone + factor a z*factor a w*hh

/-- Reflection across the imaginary axis cancels all apparent positive poles.
The remaining terms are proper rational functions with poles only at the negatives. -/
theorem reflected_sum {ι : Type*} [DecidableEq ι] (s : Finset ι) (a c : ι → ℂ) (z : ℂ)
    (hz : ∀ i ∈ s, a i-z ≠ 0) :
    (∏ i ∈ s, factor (a i) z) * (∑ j ∈ s, c j/(a j-z)) =
       ∑ j ∈ s, (c j/(a j+z)) * ∏ i ∈ s.erase j, factor (a i) z := by
  rw [Finset.mul_sum]
  refine sum_congr rfl fun j hj => ?_
  rw [← Finset.mul_prod_erase s (fun i => factor (a i) z) hj]
  unfold factor
  have hh := hz j hj
  by_cases h : a j+z=0
  · simp [h]
  · field_simp

/-- The real anchor bounds a complex factor throughout the full closed strip. -/
theorem anchored_strip_factor {x v r : ℝ} (t : ℝ) (hv : 0 ≤ v) (hx : v < x)
    (hr : -v ≤ r) :
    (x-v)^2*((x-r)^2+t^2) ≤ (x+v)^2*((x+r)^2+t^2) := by
  have hx0 : 0 ≤ x := by linarith
  have hvr : 0 ≤ v+r := by linarith
  have hxr : 0 ≤ x^2+v*r := by
    nlinarith [mul_nonneg hvr hv, mul_nonneg (sub_nonneg.mpr hx.le) (add_nonneg hx0 hv)]
  nlinarith [mul_nonneg (mul_nonneg hx0 hvr) hxr,
    mul_nonneg (mul_nonneg hx0 hv) (sq_nonneg t)]

/-- The sharp real-axis asymptotic of the reciprocal product for arbitrary arrays. -/
theorem log_product_limit {ι : Type*} (s : ℕ → Finset ι) (x : ℕ → ι → ℝ) (q : ℕ → ℝ)
    {u m : ℝ} (hu : 0 ≤ u)
    (hq : Tendsto q atTop (𝓝 0)) (hm : Tendsto (fun n => ∑ i ∈ s n, (x n i)⁻¹) atTop (𝓝 m))
    (h : ∀ᶠ n in atTop, q n < 1 ∧ ∀ i ∈ s n, 0 < x n i ∧ u ≤ q n * x n i) :
    Tendsto (fun n => ∑ i ∈ s n, Real.log ((x n i+u)/(x n i-u))) atTop (𝓝 (2*u*m)) := by
  have hl := tendsto_const_nhds (x := 2*u) (f := atTop (α := ℕ)) |>.mul hm
  have hd := (tendsto_const_nhds (x := (1:ℝ)) (f := atTop (α := ℕ))).sub hq
  have hh := ((tendsto_const_nhds (x := 2*u) (f := atTop (α := ℕ))).div hd (by norm_num)).mul hm
  apply tendsto_of_tendsto_of_tendsto_of_le_of_le' hl (by simpa using hh)
  · filter_upwards [h] with n hn
    apply GRWTSK.NumberTheory.XiPickHarmonicBudget.finite_log_floor (s n) (x n) hu
    intro i hi
    obtain ⟨hpos,huq⟩ := hn.2 i hi
    exact huq.trans_lt (by nlinarith [mul_pos (sub_pos.mpr hn.1) hpos])
  · filter_upwards [h] with n hn
    exact GRWTSK.NumberTheory.XiPickHarmonicBudget.finite_log_bound (s n) (x n)
      hu hn.1 (fun i hi => (hn.2 i hi).1) (fun i hi => (hn.2 i hi).2)

end GRWTSK.NumberTheory.XiPickWeilLimit
