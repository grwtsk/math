import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Tactic
import FormalResearch.RiemannHypothesis.ThetaPhiAllRankModeCriterion

/-! Kernel-checked rational bounds for the actual theta exponential at pi. -/
namespace FormalResearch.RiemannHypothesis.ThetaPhiRankFive


private theorem exp_lower_endpoint :
    (45593812776599623676 : ℝ) / 10 ^ 20 ≤
      Real.exp (-(314159265358979323847 : ℝ) / (4 * 10 ^ 20)) := by
  have h := Real.exp_bound
    (x := -(314159265358979323847 : ℝ) / (4 * 10 ^ 20))
    (n := 26) (by norm_num) (by norm_num)
  have hh := (abs_sub_le_iff.mp h).2
  norm_num [Finset.sum_range_succ, Nat.factorial] at hh ⊢
  linarith

private theorem exp_upper_endpoint :
    Real.exp (-(314159265358979323846 : ℝ) / (4 * 10 ^ 20)) ≤
      (45593812776599623677 : ℝ) / 10 ^ 20 := by
  have h := Real.exp_bound
    (x := -(314159265358979323846 : ℝ) / (4 * 10 ^ 20))
    (n := 26) (by norm_num) (by norm_num)
  have hh := (abs_sub_le_iff.mp h).1
  norm_num [Finset.sum_range_succ, Nat.factorial] at hh ⊢
  linarith

theorem exp_neg_pi_quarter_bounds :
    (45593812776599623676 : ℝ) / 10 ^ 20 ≤ Real.exp (-Real.pi / 4) ∧
      Real.exp (-Real.pi / 4) ≤ (45593812776599623677 : ℝ) / 10 ^ 20 := by
  constructor
  · refine exp_lower_endpoint.trans (Real.exp_le_exp.mpr ?_)
    linarith [Real.pi_lt_d20]
  · refine (Real.exp_le_exp.mpr ?_).trans exp_upper_endpoint
    linarith [Real.pi_gt_d20]

theorem exp_neg_pi_bounds :
    (4321391826377224977 : ℝ) / 10 ^ 20 ≤ Real.exp (-Real.pi) ∧
      Real.exp (-Real.pi) ≤ (4321391826377224978 : ℝ) / 10 ^ 20 := by
  have h := exp_neg_pi_quarter_bounds
  have he : Real.exp (-Real.pi) = Real.exp (-Real.pi / 4) ^ 4 := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [he]
  constructor
  · have hp := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 45593812776599623676 / 10 ^ 20) h.1 4
    norm_num at hp ⊢
    exact le_trans (by norm_num) hp
  · have hp := pow_le_pow_left₀ (Real.exp_pos _).le h.2 4
    norm_num at hp ⊢
    exact le_trans hp (by norm_num)

private theorem exp_neg_three_quarters_upper :
    Real.exp (-(3 : ℝ) / 4) ≤ (47237 : ℝ) / 100000 := by
  have h := Real.exp_bound (x := -(3 : ℝ) / 4)
    (n := 16) (by norm_num) (by norm_num)
  have hh := (abs_sub_le_iff.mp h).1
  norm_num [Finset.sum_range_succ, Nat.factorial] at hh ⊢
  linarith

theorem exp_neg_seventy_five_upper :
    Real.exp (-(75 : ℝ)) < (3 : ℝ) / 10 ^ 33 := by
  have he : Real.exp (-(75 : ℝ)) = Real.exp (-(3 : ℝ) / 4) ^ 100 := by
    rw [← Real.exp_nat_mul]
    congr 1
    norm_num
  have hp := pow_le_pow_left₀ (Real.exp_pos _).le exp_neg_three_quarters_upper 100
  rw [he]
  exact hp.trans_lt (by norm_num)

theorem tail_geometric_ratio :
    (6 / 5 : ℝ) ^ 20 * Real.exp (-(33 : ℝ)) < 1 / 2 := by
  have he : Real.exp (-(33 : ℝ)) = Real.exp (-(3 : ℝ) / 4) ^ 44 := by
    rw [← Real.exp_nat_mul]
    congr 1
    norm_num
  have hp := pow_le_pow_left₀ (Real.exp_pos _).le exp_neg_three_quarters_upper 44
  rw [he]
  have hm := mul_le_mul_of_nonneg_left hp (by norm_num : (0 : ℝ) ≤ (6 / 5 : ℝ) ^ 20)
  exact hm.trans_lt (by norm_num)

/-- Every integer-square theta exponential is an exact power of the same
source exponential. This identity involves no numerical approximation. -/
theorem exp_neg_pi_nat_sq (m : ℕ) :
    Real.exp (-Real.pi * (m : ℝ) ^ 2) = Real.exp (-Real.pi) ^ (m ^ 2) := by
  rw [← Real.exp_nat_mul]
  congr 1
  push_cast
  ring

open FormalResearch.RiemannHypothesis.ThetaPositiveLift

/-- Exact source mode at zero, in the common pi/exponential variables used by
rational interval evaluation. Mode index m corresponds to the integer m+1. -/
theorem thetaPhiDerivativeModeValue_zero (n m : ℕ) :
    thetaPhiDerivativeModeValue n m 0 =
      (Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2) *
        (thetaPhiDerivativePolynomial n).eval (Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2) *
        Real.exp (-Real.pi) ^ ((m + 1) ^ 2) := by
  unfold thetaPhiDerivativeModeValue thetaPhiDerivativeModeWeight thetaModeY thetaModeA
  simp only [mul_zero, Real.exp_zero, mul_one]
  rw [show -(Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2) =
    -Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2 by ring,
    exp_neg_pi_nat_sq]
  push_cast
  ring

end FormalResearch.RiemannHypothesis.ThetaPhiRankFive
