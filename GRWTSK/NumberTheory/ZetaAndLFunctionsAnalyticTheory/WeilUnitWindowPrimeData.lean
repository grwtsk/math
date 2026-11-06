/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilLowSchurEnclosure
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic.IntervalCases

/-!
# Outward prime weight data at radius one

For the radius-one experiment specified in CR-MATH-001, the literal
support condition is `2 ≤ q < exp(2)`. Certified bounds on `exp(1)`
give exactly the integers two through seven. The arithmetic function
gives the weight at four from the prime two and the weight at six
vanishes. Use the checked logarithm bounds of Mathlib for two, three and
five. For seven, expand `log(7/8)` at one with its explicit Taylor tail
and add three times `log(2)`. Rational squares bound the square roots,
so all divisions have certified positive denominators.

These intervals enclose only the literal prime weights and their mass.
The prime translations, gamma and pole data, and finite sign evidence
remain separate. Independent analytical review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowPrimeData

open LowSchur ArithmeticFunction

private theorem seven_lt_exp_two : (7 : ℝ) < Real.exp 2 := by
  rw [show (2 : ℝ) = 1 + 1 by norm_num, Real.exp_add]
  nlinarith [Real.exp_one_gt_d9, sq_nonneg (Real.exp 1 - 2.7182818283)]

private theorem exp_two_lt_eight : Real.exp 2 < (8 : ℝ) := by
  rw [show (2 : ℝ) = 1 + 1 by norm_num, Real.exp_add]
  have h := mul_lt_mul_of_pos_right Real.exp_one_lt_d9 (Real.exp_pos 1)
  have h' := mul_lt_mul_of_pos_left Real.exp_one_lt_d9 (by norm_num : (0 : ℝ) < 2.7182818286)
  linarith

/-- The support filter retains all six integers at radius one. -/
theorem activePrimePowers_one : activePrimePowers 1 = Finset.Icc 2 7 := by
  have hceil : ⌈Real.exp (2 : ℝ)⌉₊ = 8 := (Nat.ceil_eq_iff (by decide)).2
    ⟨by simpa using seven_lt_exp_two, by simpa using exp_two_lt_eight.le⟩
  unfold activePrimePowers
  rw [mul_one, hceil]
  ext q
  simp only [Finset.mem_filter, Finset.mem_range, Finset.mem_Icc]
  constructor
  · rintro ⟨hq, h₂, _⟩
    exact ⟨h₂, by omega⟩
  · rintro ⟨h₂, hq⟩
    refine ⟨by omega, h₂, ?_⟩
    exact (show (q : ℝ) ≤ 7 by exact_mod_cast hq).trans_lt seven_lt_exp_two

private theorem log_seven_bounds : (1.9459101 : ℝ) ≤ Real.log 7 ∧ Real.log 7 ≤ 1.9459102 := by
  have h := Real.abs_log_sub_add_sum_range_le (x := (1 : ℝ) / 8) (by norm_num) 8
  norm_num [Finset.sum_range_succ] at h
  have heq : Real.log 7 = Real.log (7/8) + 3 * Real.log 2 := by
    rw [show (7 : ℝ) = (7/8) * 8 by norm_num, Real.log_mul (by norm_num) (by norm_num),
      show (8 : ℝ) = 2 ^ (3 : ℕ) by norm_num, Real.log_pow]
    norm_num
  rw [heq]
  constructor <;> linarith [((abs_le.mp h).1), ((abs_le.mp h).2),
    Real.log_two_gt_d9, Real.log_two_lt_d9]

private theorem primeWeight_prime {q : ℕ} (hq : q.Prime) :
    primeWeight q = Real.log q / Real.sqrt q := by
  rw [primeWeight, vonMangoldt_apply_prime hq]

private theorem primeWeight_four : primeWeight 4 = Real.log 2 / 2 := by
  have h : vonMangoldt 4 = Real.log 2 := by
    rw [show (4 : ℕ) = 2 ^ (2 : ℕ) by decide, vonMangoldt_apply_pow (by decide),
      vonMangoldt_apply_prime (by decide : Nat.Prime 2)]
    norm_num
  rw [primeWeight, h]
  have hs : Real.sqrt (4 : ℝ) = 2 := by
    rw [show (4 : ℝ) = 2 ^ (2 : ℕ) by norm_num, Real.sqrt_sq (by norm_num)]
  simp only [Nat.cast_ofNat, hs]

theorem primeWeight_six : primeWeight 6 = 0 := by
  rw [primeWeight, vonMangoldt_eq_zero_iff.mpr (by decide : ¬IsPrimePow (6 : ℕ)), zero_div]

private theorem div_bounds {x d l u dlo dhi : ℝ} (hd : 0 < d)
    (hl : 0 ≤ l) (hu : 0 ≤ u) (hdlo : dlo ≤ d) (hdhi : d ≤ dhi)
    (hxlo : l * dhi ≤ x) (hxhi : x ≤ u * dlo) :
    l ≤ x / d ∧ x / d ≤ u :=
  ⟨(le_div_iff₀ hd).2 ((mul_le_mul_of_nonneg_left hdhi hl).trans hxlo),
    (div_le_iff₀ hd).2 (hxhi.trans (mul_le_mul_of_nonneg_left hdlo hu))⟩

/-- Rational lower endpoints for the literal radius-one weights. -/
def weightLower (q : ℕ) : ℚ :=
  match q with
  | 2 => 490129 / 1000000
  | 3 => 634284 / 1000000
  | 4 => 346573 / 1000000
  | 5 => 719762 / 1000000
  | 7 => 735484 / 1000000
  | _ => 0

/-- Rational upper endpoints for the literal radius-one weights. -/
def weightUpper (q : ℕ) : ℚ :=
  match q with
  | 2 => 490130 / 1000000
  | 3 => 634285 / 1000000
  | 4 => 346574 / 1000000
  | 5 => 719763 / 1000000
  | 7 => 735485 / 1000000
  | _ => 0

theorem primeWeight_one_bounds {q : ℕ} (hq : q ∈ activePrimePowers 1) :
    (weightLower q : ℝ) ≤ primeWeight q ∧ primeWeight q ≤ (weightUpper q : ℝ) := by
  rw [activePrimePowers_one, Finset.mem_Icc] at hq
  obtain ⟨hq₂, hq₇⟩ := hq
  interval_cases q
  · rw [primeWeight_prime (by decide : Nat.Prime 2)]
    norm_num [weightLower, weightUpper]
    refine div_bounds (dlo := 1.41421356) (dhi := 1.41421357) (by positivity)
      (by norm_num) (by norm_num) (by apply Real.le_sqrt_of_sq_le; norm_num)
      ((Real.sqrt_le_left (by norm_num)).2 (by norm_num)) ?_ ?_
    · linarith [Real.log_two_gt_d9]
    · linarith [Real.log_two_lt_d9]
  · rw [primeWeight_prime (by decide : Nat.Prime 3)]
    norm_num [weightLower, weightUpper]
    refine div_bounds (dlo := 1.73205080) (dhi := 1.73205081) (by positivity)
      (by norm_num) (by norm_num) (by apply Real.le_sqrt_of_sq_le; norm_num)
      ((Real.sqrt_le_left (by norm_num)).2 (by norm_num)) ?_ ?_
    · linarith [Real.log_three_gt_d9]
    · linarith [Real.log_three_lt_d9]
  · rw [primeWeight_four]
    norm_num [weightLower, weightUpper]
    constructor <;> linarith [Real.log_two_gt_d9, Real.log_two_lt_d9]
  · rw [primeWeight_prime (by decide : Nat.Prime 5)]
    norm_num [weightLower, weightUpper]
    refine div_bounds (dlo := 2.23606797) (dhi := 2.23606798) (by positivity)
      (by norm_num) (by norm_num) (by apply Real.le_sqrt_of_sq_le; norm_num)
      ((Real.sqrt_le_left (by norm_num)).2 (by norm_num)) ?_ ?_
    · linarith [Real.log_five_gt_d9]
    · linarith [Real.log_five_lt_d9]
  · simp [weightLower, weightUpper, primeWeight_six]
  · rw [primeWeight_prime (by decide : Nat.Prime 7)]
    norm_num [weightLower, weightUpper]
    refine div_bounds (dlo := 2.64575131) (dhi := 2.64575132) (by positivity)
      (by norm_num) (by norm_num) (by apply Real.le_sqrt_of_sq_le; norm_num)
      ((Real.sqrt_le_left (by norm_num)).2 (by norm_num)) ?_ ?_
    · linarith [log_seven_bounds.1]
    · linarith [log_seven_bounds.2]

/-- The mass bound uses both orientations of every supported shift. -/
theorem primeMass_one_bounds :
    (5.852464 : ℝ) ≤ primeMass 1 ∧ primeMass 1 ≤ 5.852474 := by
  have hlow := Finset.sum_le_sum (fun q hq => (primeWeight_one_bounds hq).1)
  have hupp := Finset.sum_le_sum (fun q hq => (primeWeight_one_bounds hq).2)
  unfold primeMass
  rw [activePrimePowers_one] at hlow hupp ⊢
  have hi : Finset.Icc 2 7 = ({2, 3, 4, 5, 6, 7} : Finset ℕ) := by decide
  rw [hi] at hlow hupp ⊢
  norm_num [weightLower, weightUpper] at hlow hupp ⊢
  constructor <;> linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowPrimeData
