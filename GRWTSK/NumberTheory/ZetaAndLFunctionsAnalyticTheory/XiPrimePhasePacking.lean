/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Tactic

/-! Finite phase-defect and exact lattice lower-bound inequalities. -/
namespace GRWTSK.XiPrimePhasePacking

open Real

/-- A principal phase error is measured in turns. -/
theorem phase_charge {x : ℝ} (hx : |x| ≤ 1/2) :
    8*x^2 ≤ 1-cos (2*(π*x)) := by
  have hπ : 0 < π := pi_pos
  have h := mul_abs_le_abs_sin (x := π*x) (by
    rw [abs_mul, abs_of_pos hπ]
    nlinarith [mul_nonneg hπ.le (sub_nonneg.mpr hx)])
  rw [abs_mul, abs_of_pos hπ] at h
  have ht : 2*|x| ≤ |sin (π*x)| := by
    convert h using 1
    field_simp
  have hs := pow_le_pow_left₀ (show 0 ≤ 2*|x| by positivity) ht 2
  rw [cos_two_mul_eq_one_sub]
  simp only [mul_pow, sq_abs] at hs
  nlinarith

/-- Each block has a common minimum coefficient; the common phase may be
chosen independently in this lower bound. -/
theorem block_charge {ι : Type*} (s : Finset ι) (w x : ι → ℝ) {b : ℝ}
    (hb : 0 ≤ b) (hw : ∀ i ∈ s, b ≤ w i) (hx : ∀ i ∈ s, |x i| ≤ 1/2) :
    8*b*(∑ i ∈ s, x i^2) ≤ ∑ i ∈ s, w i*(1-cos (2*(π*x i))) := by
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro i hi
  have h := phase_charge (hx i hi)
  nlinarith [mul_nonneg hb (sub_nonneg.mpr h), mul_nonneg
    (sub_nonneg.mpr (hw i hi)) (sub_nonneg.mpr (cos_le_one (2*(π*x i))))]

/-- Subtract both the regularization coordinate and the rounding error
before claiming a lower bound for the Euclidean phase distance. -/
theorem packing_margin {S p t E e m : ℝ} (hS : S ≤ p^2+t^2)
    (ht : t^2 ≤ E^2) (hp : 0 ≤ p)
    (hm : p ≤ e+m) (hcut : E^2+(e+m)^2 < S) : False := by
  have hh := pow_le_pow_left₀ hp hm 2
  linarith

/-- The preceding Gram--Schmidt terms have nonnegative squared norm. -/
theorem last_coordinate_cost {a g rest : ℝ} (hg : 0 ≤ g)
    (ha : 1 ≤ |a|) (hr : 0 ≤ rest) : g ≤ rest+g*a^2 := by
  have h := pow_le_pow_left₀ (by norm_num : (0:ℝ) ≤ 1) ha 2
  rw [sq_abs] at h
  nlinarith [mul_nonneg hg (show 0 ≤ a^2-1 by nlinarith)]

end GRWTSK.XiPrimePhasePacking
