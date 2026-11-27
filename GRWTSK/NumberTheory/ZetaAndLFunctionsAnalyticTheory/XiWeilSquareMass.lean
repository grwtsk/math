/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Normed.Module.FiniteDimension
import Mathlib.LinearAlgebra.Complex.FiniteDimensional
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Real and imaginary square masses of an odd Weil zero sum

For a summable family of weighted negative complex squares, both nonnegative
coordinate square sums converge absolutely. Their difference gives the signed
real part, while their sum gives the total absolute mass. The index type can
carry zeros with multiplicity and requires no ordering or choice of cutoffs.
-/

noncomputable section

namespace GRWTSK.XiWeilSquareMass

variable {ι : Type*}

/-- Weighted square mass of a real coordinate of the transform. -/
def squareMass (m : ι → ℕ) (a : ι → ℝ) : ℝ := ∑' i, (m i : ℝ) * a i ^ 2

theorem squareMass_nonneg (m : ι → ℕ) (a : ι → ℝ) : 0 ≤ squareMass m a :=
  tsum_nonneg fun _ => mul_nonneg (Nat.cast_nonneg _) (sq_nonneg _)

private theorem norm_weighted_neg_sq (m : ℕ) (z : ℂ) :
    ‖(m : ℂ) * (-(z ^ 2))‖ = (m : ℝ) * (z.re ^ 2 + z.im ^ 2) := by
  rw [norm_mul, Complex.norm_natCast, norm_neg, norm_pow, ← Complex.normSq_eq_norm_sq,
    Complex.normSq_apply]
  ring

private theorem re_weighted_neg_sq (m : ℕ) (z : ℂ) :
    ((m : ℂ) * (-(z ^ 2))).re = (m : ℝ) * z.im ^ 2 - (m : ℝ) * z.re ^ 2 := by
  simp [Complex.mul_re, pow_two]
  ring

/-- Unconditional summability of the complex square family gives both real
coordinate energies, without taking a conditionally convergent difference. -/
theorem summable_coordinates {m : ι → ℕ} {F : ι → ℂ}
    (h : Summable fun i => (m i : ℂ) * (-(F i ^ 2))) :
    Summable (fun i => (m i : ℝ) * (F i).re ^ 2) ∧
      Summable (fun i => (m i : ℝ) * (F i).im ^ 2) := by
  have hnorm := h.norm
  simp only [norm_weighted_neg_sq] at hnorm
  constructor
  · exact Summable.of_nonneg_of_le
      (fun i => mul_nonneg (Nat.cast_nonneg _) (sq_nonneg _))
      (fun i => mul_le_mul_of_nonneg_left (le_add_of_nonneg_right (sq_nonneg _))
        (Nat.cast_nonneg _)) hnorm
  · exact Summable.of_nonneg_of_le
      (fun i => mul_nonneg (Nat.cast_nonneg _) (sq_nonneg _))
      (fun i => mul_le_mul_of_nonneg_left (le_add_of_nonneg_left (sq_nonneg _))
        (Nat.cast_nonneg _)) hnorm

/-- The signed form is the imaginary square mass minus the real square mass. -/
theorem re_tsum_weighted_neg_sq {m : ι → ℕ} {F : ι → ℂ}
    (h : Summable fun i => (m i : ℂ) * (-(F i ^ 2))) :
    (∑' i, (m i : ℂ) * (-(F i ^ 2))).re =
      squareMass m (fun i => (F i).im) - squareMass m (fun i => (F i).re) := by
  obtain ⟨hr, hi⟩ := summable_coordinates h
  rw [Complex.re_tsum h]
  simp only [re_weighted_neg_sq, squareMass, hi.tsum_sub hr]

/-- The sum of the two square masses is the absolute mass of the same series. -/
theorem tsum_norm_weighted_neg_sq {m : ι → ℕ} {F : ι → ℂ}
    (h : Summable fun i => (m i : ℂ) * (-(F i ^ 2))) :
    (∑' i, ‖(m i : ℂ) * (-(F i ^ 2))‖) =
      squareMass m (fun i => (F i).re) + squareMass m (fun i => (F i).im) := by
  obtain ⟨hr, hi⟩ := summable_coordinates h
  simp only [norm_weighted_neg_sq, mul_add, squareMass, hr.tsum_add hi]


/-- Attainment of the upper triangle bound forces every positive-weight
observation to be purely imaginary. All index types and all positive
integer multiplicities are allowed. -/
theorem saturation_iff_re_zero {m : ι → ℕ} {F : ι → ℂ}
    (h : Summable fun i => (m i : ℂ) * (-(F i ^ 2))) (hm : ∀ i, 0 < m i) :
    (∑' i, (m i : ℂ) * (-(F i ^ 2))).re =
      (∑' i, ‖(m i : ℂ) * (-(F i ^ 2))‖) ↔ ∀ i, (F i).re = 0 := by
  rw [re_tsum_weighted_neg_sq h, tsum_norm_weighted_neg_sq h]
  constructor
  · intro hEq i
    have hzero : squareMass m (fun j => (F j).re) = 0 := by linarith
    have hle := (summable_coordinates h).1.le_tsum i
      (fun j _ => mul_nonneg (Nat.cast_nonneg _) (sq_nonneg _))
    change (m i : ℝ) * (F i).re ^ 2 ≤ squareMass m (fun j => (F j).re) at hle
    rw [hzero] at hle
    by_contra hn
    exact (not_lt_of_ge hle) (mul_pos (by exact_mod_cast hm i) (sq_pos_of_ne_zero hn))
  · intro hz
    simp [squareMass, hz]

end GRWTSK.XiWeilSquareMass
