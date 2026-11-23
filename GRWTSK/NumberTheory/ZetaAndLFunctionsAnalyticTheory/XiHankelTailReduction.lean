/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiHankelTailBudget
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.HankelInterpolationTail
import Mathlib.Data.Rat.BigOperators
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# All shifts of the sixteen-node interpolation bound

The exact rational scalar certificate controls the real budget for arbitrary
nodes in the specified intervals at every shift beginning at 47. The tail
estimate then transfers this strict budget to a positive quadratic form.
-/

namespace GRWTSK.NumberTheory.XiHankelTailReduction

open GRWTSK.NumberTheory.XiHankelTailBudget
open GRWTSK.NumberTheory.HankelInterpolationTail
open Polynomial
open scoped BigOperators

private theorem radius_pos : 0 < (tailRadius : ℝ) := by norm_num [tailRadius]

private theorem radius_lt_low (i : Fin 16) : (tailRadius : ℝ) < (nodeLow i : ℝ) := by
  exact_mod_cast (bracket_bounds i).2.2.1

/-- The rational shift-47 budget bounds every later shift and every node above its lower endpoint. -/
theorem all_shift_budget_lt (v : Fin 16 → ℝ) (hl : ∀ i, (nodeLow i : ℝ) ≤ v i) (k : ℕ) :
    (1 / 20 : ℝ) * (tailRadius : ℝ) ^ (46 + k) *
      (∑ i, (basisBound i : ℝ) ^ 2 / v i ^ (47 + k)) < 79 / 100 := by
  have base : (1 / 20 : ℝ) * (tailRadius : ℝ) ^ 46 *
      (∑ i : Fin 16, (basisBound i : ℝ) ^ 2 / (nodeLow i : ℝ) ^ 47) < 79 / 100 := by
    have h := (Rat.cast_lt (K := ℝ)).2 budget_lt
    simpa only [Rat.cast_mul, Rat.cast_pow, Rat.cast_sum, Rat.cast_div, Rat.cast_one,
      Rat.cast_ofNat] using h
  refine lt_of_le_of_lt ?_ base
  rw [Finset.mul_sum, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro i _
  have hlow : 0 < (nodeLow i : ℝ) := radius_pos.trans (radius_lt_low i)
  have hv : 0 < v i := hlow.trans_le (hl i)
  have hquot : (tailRadius : ℝ) / v i ≤ 1 :=
    (div_le_one hv).mpr ((radius_lt_low i).le.trans (hl i))
  have hpow : ((tailRadius : ℝ) / v i) ^ k ≤ 1 :=
    pow_le_one₀ (div_nonneg radius_pos.le hv.le) hquot
  have hweight : (basisBound i : ℝ) ^ 2 / v i ^ 47 ≤
      (basisBound i : ℝ) ^ 2 / (nodeLow i : ℝ) ^ 47 :=
    div_le_div_of_nonneg_left (sq_nonneg _) (pow_pos hlow _) (pow_le_pow_left₀ hlow.le (hl i) _)
  calc
    (1 / 20 : ℝ) * (tailRadius : ℝ) ^ (46 + k) * ((basisBound i : ℝ) ^ 2 / v i ^ (47 + k)) =
      ((1 / 20 : ℝ) * (tailRadius : ℝ) ^ 46 * ((basisBound i : ℝ) ^ 2 / v i ^ 47)) *
        ((tailRadius : ℝ) / v i) ^ k := by rw [pow_add, pow_add, div_pow]; ring
    _ ≤ (1 / 20 : ℝ) * (tailRadius : ℝ) ^ 46 * ((basisBound i : ℝ) ^ 2 / v i ^ 47) :=
      mul_le_of_le_one_right (by positivity) hpow
    _ ≤ _ := mul_le_mul_of_nonneg_left hweight (by positivity)

/-- Every choice of one real node in each bracket gives the certified
Lagrange bound on the full complex tail disk. -/
theorem node_basis_bound (v : Fin 16 → ℝ)
    (hl : ∀ i, (nodeLow i : ℝ) ≤ v i) (hu : ∀ i, v i ≤ (nodeHigh i : ℝ))
    (i : Fin 16) (z : ℂ) (hz : ‖z‖ ≤ (tailRadius : ℝ)) :
    ‖(Lagrange.basis Finset.univ (fun j => (v j : ℂ)) i).eval z‖ ≤ (basisBound i : ℝ) := by
  have hp (j : Fin 16) : 0 ≤ v j := by
    have h := (bracket_bounds j).2.2.1
    have hr : 0 ≤ tailRadius := by norm_num [tailRadius]
    exact le_trans (by exact_mod_cast hr.trans h.le) (hl j)
  have hs (j : Fin 16) (hj : j ∈ Finset.univ.erase i) :
      0 < (separation i j : ℝ) ∧ (separation i j : ℝ) ≤ ‖(v i : ℂ) - (v j : ℂ)‖ := by
    have hn := (Finset.mem_erase.mp hj).1.symm
    constructor
    · exact_mod_cast separation_pos i j hn
    · rw [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
      unfold separation
      push_cast
      apply max_le
      · exact (sub_le_sub (hl i) (hu j)).trans (le_abs_self _)
      · calc
          _ ≤ v j - v i := sub_le_sub (hl j) (hu i)
          _ ≤ |v i - v j| := by simpa only [neg_sub] using neg_le_abs (v i - v j)
  have H := HankelInterpolationTail.basis_norm_le Finset.univ (fun j => (v j : ℂ)) i z
    (tailRadius : ℝ) hz (fun j => (nodeHigh j : ℝ)) (fun j => (separation i j : ℝ))
    (fun j _ => by simpa only [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (hp j)] using hu j)
    hs
  simpa only [basisBound, Rat.cast_prod, Rat.cast_div, Rat.cast_add] using H

private theorem nodes_injective (v : Fin 16 → ℝ) (hl : ∀ i, (nodeLow i : ℝ) ≤ v i)
    (hu : ∀ i, v i ≤ (nodeHigh i : ℝ)) : Function.Injective v := by
  intro i j heq
  by_contra hij
  have h : 0 < (separation i j : ℝ) := by exact_mod_cast separation_pos i j hij
  simp only [separation, Rat.cast_max, Rat.cast_sub, lt_max_iff] at h
  rcases h with h | h <;> linarith [hl i, hl j, hu i, hu j]

/-- Any absolutely summable tail satisfying the disk and mass bounds at this shift preserves
strict positivity for all nonzero polynomials of degree below sixteen. -/
theorem positive_at_shift {J : Type*} (v : Fin 16 → ℝ)
    (hl : ∀ i, (nodeLow i : ℝ) ≤ v i) (hu : ∀ i, v i ≤ (nodeHigh i : ℝ))
    (q : ℂ[X]) (hq : q.degree < (16 : WithBot ℕ)) (hne : q ≠ 0)
    (k : ℕ) (z c : J → ℂ) (hc : Summable fun j => ‖c j‖)
    (hMass : (∑' j, ‖c j‖) ≤ (1 / 20 : ℝ) * (tailRadius : ℝ) ^ (46 + k))
    (hz : ∀ j, ‖z j‖ ≤ (tailRadius : ℝ)) :
    0 < (∑ i, v i ^ (47 + k) * ‖q.eval (v i : ℂ)‖ ^ 2) + (∑' j, c j * q.eval (z j) ^ 2).re := by
  have hpos (i : Fin 16) : 0 < v i := radius_pos.trans_le ((radius_lt_low i).le.trans (hl i))
  have hv := nodes_injective v hl hu
  apply positive_with_tail Finset.univ (fun i => (v i : ℂ)) (Complex.ofReal_injective.comp hv).injOn
    q (by simpa using hq) hne (fun i => v i ^ (47 + k)) (fun i _ => pow_pos (hpos i) _)
    (fun i => (basisBound i : ℝ)) z c hc (fun j i _ => node_basis_bound v hl hu i (z j) (hz j))
  apply lt_of_le_of_lt (mul_le_mul_of_nonneg_right hMass ?_)
  · exact (all_shift_budget_lt v hl k).trans (by norm_num)
  · exact Finset.sum_nonneg fun i _ => div_nonneg (sq_nonneg _) (pow_pos (hpos i) _).le

/-- For the shifted power sums themselves, a single first absolute moment controls every shift. -/
theorem positive_of_first_tail_moment {J : Type*} (v : Fin 16 → ℝ)
    (hl : ∀ i, (nodeLow i : ℝ) ≤ v i) (hu : ∀ i, v i ≤ (nodeHigh i : ℝ))
    (q : ℂ[X]) (hq : q.degree < (16 : WithBot ℕ)) (hne : q ≠ 0)
    (k : ℕ) (z : J → ℂ) (hz : ∀ j, ‖z j‖ ≤ (tailRadius : ℝ))
    (hs : Summable fun j => ‖z j‖) (hm : (∑' j, ‖z j‖) ≤ 1 / 20) :
    0 < (∑ i, v i ^ (47 + k) * ‖q.eval (v i : ℂ)‖ ^ 2) +
      (∑' j, z j ^ (47 + k) * q.eval (z j) ^ 2).re := by
  have dom (j : J) : ‖z j ^ (47 + k)‖ ≤ (tailRadius : ℝ) ^ (46 + k) * ‖z j‖ := by
    rw [norm_pow, show 47 + k = (46 + k) + 1 by omega, pow_succ]
    exact mul_le_mul_of_nonneg_right (pow_le_pow_left₀ (norm_nonneg _) (hz j) _) (norm_nonneg _)
  have major := hs.mul_left ((tailRadius : ℝ) ^ (46 + k))
  have hSum := Summable.of_nonneg_of_le (fun j => norm_nonneg _) dom major
  apply positive_at_shift v hl hu q hq hne k z (fun j => z j ^ (47 + k)) hSum _ hz
  calc
    _ ≤ ∑' j, (tailRadius : ℝ) ^ (46 + k) * ‖z j‖ := hSum.tsum_le_tsum dom major
    _ = (tailRadius : ℝ) ^ (46 + k) * ∑' j, ‖z j‖ := tsum_mul_left
    _ ≤ _ := by rw [mul_comm (1 / 20 : ℝ)]; exact mul_le_mul_of_nonneg_left hm (pow_pos radius_pos _).le

end GRWTSK.NumberTheory.XiHankelTailReduction
