/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Basic.Real.Basic
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Signed rounding in the radius-one sine checker

The reduced-argument loop of `scripts/verify_odd_three_sine_hs.py`
(blob `b35434bed50c8a6ba218d01575e1964cae9a93e6`, lines 76–82)
uses integer floor division at every update, including negative numerators.
Its initial value is exact. The first error is less than one scaled unit.
The second multiplier has magnitude at most `16/12`, and all later ones
at most `16/30`. Thus each of the twelve noninitial terms is within
three scaled units of the corresponding exact Taylor term.

The result supplies the rounding part of the analytic sine and cosine
enclosures used in the conductor-three rectangle. The Taylor remainder
and the error from the approximate period are further obligations.
Independent analytical review: NOT_RUN.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
namespace CheckerRounding

/-- Fixed-point scale of the published checker. -/
def scale : ℤ := 10 ^ (12 : ℕ)

/-- Degree of term k in the cosine or sine Maclaurin series. -/
def degree (sine : Bool) (k : ℕ) : ℕ := 2 * k + if sine then 1 else 0

private def updateDenominator (sine : Bool) (k : ℕ) : ℕ :=
  (degree sine k + 1) * (degree sine k + 2)

/-- The literal integer update in the checker after its period reduction.
Here k indexes the previous term, so the update uses degrees k and k+1. -/
def reducedTrigTerm (sine : Bool) (y : ℤ) : ℕ → ℤ
  | 0 => if sine then y else scale
  | k + 1 =>
      (-reducedTrigTerm sine y k * y * y) /
        (scale * scale * (updateDenominator sine k : ℤ))

/-- Sum of the initial term and twelve integer updates in the checker. -/
def reducedTrigSum (sine : Bool) (y : ℤ) : ℤ :=
  ∑ k ∈ Finset.range 13, reducedTrigTerm sine y k

/-- The exact Taylor term in the same scaled units as the integer loop. -/
noncomputable def scaledTaylorTerm (sine : Bool) (y : ℤ) (k : ℕ) : ℝ :=
  (scale : ℝ) * ((-1 : ℝ) ^ k * ((y : ℝ) / (scale : ℝ)) ^ degree sine k /
    ((degree sine k).factorial : ℝ))

/-- The exact thirteen-term polynomial in scaled units. -/
noncomputable def scaledTaylorSum (sine : Bool) (y : ℤ) : ℝ :=
  ∑ k ∈ Finset.range 13, scaledTaylorTerm sine y k

/-- Division in the integer loop rounds toward minus infinity for positive
denominators. This holds for either sign of the numerator. -/
theorem cast_ediv_remainder_lt_one (n d : ℤ) (hd : 0 < d) :
    0 ≤ (n : ℝ) / (d : ℝ) - ((n / d : ℤ) : ℝ) ∧
      (n : ℝ) / (d : ℝ) - ((n / d : ℤ) : ℝ) < 1 := by
  have hd' : (0 : ℝ) < (d : ℝ) := by exact_mod_cast hd
  have hq : ((n / d : ℤ) : ℝ) * (d : ℝ) + ((n % d : ℤ) : ℝ) = (n : ℝ) := by
    exact_mod_cast Int.ediv_mul_add_emod n d
  have h0 : (0 : ℝ) ≤ ((n % d : ℤ) : ℝ) := by
    exact_mod_cast Int.emod_nonneg n hd.ne'
  have h1 : ((n % d : ℤ) : ℝ) < (d : ℝ) := by
    exact_mod_cast Int.emod_lt_of_pos n hd
  have hlo : ((n / d : ℤ) : ℝ) ≤ (n : ℝ) / (d : ℝ) :=
    (le_div_iff₀ hd').2 (by linarith)
  have hhi : (n : ℝ) / (d : ℝ) < ((n / d : ℤ) : ℝ) + 1 :=
    (div_lt_iff₀ hd').2 (by rw [add_mul, one_mul]; linarith)
  exact ⟨sub_nonneg.mpr hlo, by linarith⟩

private theorem scale_pos : (0 : ℤ) < scale := by norm_num [scale]
private theorem real_scale_pos : (0 : ℝ) < (scale : ℝ) := by exact_mod_cast scale_pos

private theorem updateDenominator_pos (sine : Bool) (k : ℕ) :
    0 < updateDenominator sine k := by unfold updateDenominator; positivity

private noncomputable def updateRatio (sine : Bool) (y : ℤ) (k : ℕ) : ℝ :=
  -((y : ℝ) ^ 2) / ((scale : ℝ) ^ 2 * (updateDenominator sine k : ℝ))

private theorem scaledTaylorTerm_succ (sine : Bool) (y : ℤ) (k : ℕ) :
    scaledTaylorTerm sine y (k + 1) = scaledTaylorTerm sine y k * updateRatio sine y k := by
  have hdeg : degree sine (k + 1) = degree sine k + 2 := by unfold degree; omega
  have hfact : (degree sine k + 2).factorial =
      updateDenominator sine k * (degree sine k).factorial := by
    simp only [updateDenominator, show degree sine k + 2 = degree sine k + 1 + 1 by omega,
      Nat.factorial_succ]
    ring
  have hfactorial : (0 : ℝ) < ((degree sine k).factorial : ℝ) := by positivity
  have hden : (0 : ℝ) < (updateDenominator sine k : ℝ) := by
    exact_mod_cast updateDenominator_pos sine k
  unfold scaledTaylorTerm updateRatio
  rw [hdeg, hfact, pow_succ (-1 : ℝ), pow_add]
  push_cast
  field_simp [real_scale_pos.ne', hfactorial.ne', hden.ne']

private theorem updateRatio_abs_le (sine : Bool) (y : ℤ) (k : ℕ)
    (hy : |(y : ℝ)| ≤ 4 * (scale : ℝ)) :
    |updateRatio sine y k| ≤ 16 / (updateDenominator sine k : ℝ) := by
  have hd : (0 : ℝ) < (updateDenominator sine k : ℝ) := by
    exact_mod_cast updateDenominator_pos sine k
  have hscale := real_scale_pos
  have hpos : 0 < (scale : ℝ) ^ 2 * (updateDenominator sine k : ℝ) := by positivity
  have hy2 : (y : ℝ) ^ 2 ≤ 16 * (scale : ℝ) ^ 2 := by
    calc
      (y : ℝ) ^ 2 ≤ (4 * (scale : ℝ)) ^ 2 := sq_le_sq.mpr (by
        rw [abs_of_pos (by positivity : 0 < 4 * (scale : ℝ))]
        exact hy)
      _ = _ := by ring
  rw [updateRatio, abs_div, abs_neg, abs_of_nonneg (sq_nonneg _), abs_of_pos hpos]
  apply (div_le_iff₀ hpos).2
  calc
    (y : ℝ) ^ 2 ≤ 16 * (scale : ℝ) ^ 2 := hy2
    _ = _ := by field_simp [hd.ne']

private noncomputable def termError (sine : Bool) (y : ℤ) (k : ℕ) : ℝ :=
  |(reducedTrigTerm sine y k : ℝ) - scaledTaylorTerm sine y k|

private theorem termError_zero (sine : Bool) (y : ℤ) : termError sine y 0 = 0 := by
  have hs := real_scale_pos.ne'
  cases sine <;> simp [termError, reducedTrigTerm, scaledTaylorTerm, degree]
  field_simp [hs]
  simp

private theorem termError_succ_lt (sine : Bool) (y : ℤ) (k : ℕ)
    (hy : |(y : ℝ)| ≤ 4 * (scale : ℝ)) :
    termError sine y (k + 1) <
      1 + (16 / (updateDenominator sine k : ℝ)) * termError sine y k := by
  let n := -reducedTrigTerm sine y k * y * y
  let den := scale * scale * (updateDenominator sine k : ℤ)
  have hd' : (0 : ℤ) < (updateDenominator sine k : ℤ) := by
    exact_mod_cast updateDenominator_pos sine k
  have hd : 0 < den := mul_pos (mul_pos scale_pos scale_pos) hd'
  have hdiv :
      (n : ℝ) / (den : ℝ) = (reducedTrigTerm sine y k : ℝ) * updateRatio sine y k := by
    dsimp [n, den, updateRatio]
    push_cast
    ring
  have hfloor := cast_ediv_remainder_lt_one n den hd
  rw [hdiv] at hfloor
  have hround :
      |(reducedTrigTerm sine y (k + 1) : ℝ) -
        (reducedTrigTerm sine y k : ℝ) * updateRatio sine y k| < 1 := by
    change |((n / den : ℤ) : ℝ) -
      (reducedTrigTerm sine y k : ℝ) * updateRatio sine y k| < 1
    rw [abs_sub_comm, abs_of_nonneg hfloor.1]
    exact hfloor.2
  let t := (reducedTrigTerm sine y k : ℝ)
  let q := (reducedTrigTerm sine y (k + 1) : ℝ)
  let e := scaledTaylorTerm sine y k
  let r := updateRatio sine y k
  change |q - scaledTaylorTerm sine y (k + 1)| < _
  rw [scaledTaylorTerm_succ]
  change |q - e * r| < _
  calc
    |q - e * r| = |(q - t * r) + (t - e) * r| := by congr 1; ring
    _ ≤ |q - t * r| + |(t - e) * r| := abs_add_le _ _
    _ < 1 + |t - e| * |r| := by
      rw [abs_mul]
      exact add_lt_add_of_lt_of_le hround le_rfl
    _ ≤ _ := by
      change 1 + |t - e| * |r| ≤ 1 + (16 / (updateDenominator sine k : ℝ)) * |t - e|
      rw [mul_comm |t - e|]
      exact add_le_add le_rfl
        (mul_le_mul_of_nonneg_right (updateRatio_abs_le sine y k hy) (abs_nonneg _))

private theorem termError_one_lt (sine : Bool) (y : ℤ)
    (hy : |(y : ℝ)| ≤ 4 * (scale : ℝ)) : termError sine y 1 < 1 := by
  simpa only [termError_zero, mul_zero, add_zero] using termError_succ_lt sine y 0 hy

private theorem termError_succ_lt_three (sine : Bool) (y : ℤ) (k : ℕ)
    (hy : |(y : ℝ)| ≤ 4 * (scale : ℝ)) : termError sine y (k + 1) < 3 := by
  induction k with
  | zero => exact (termError_one_lt sine y hy).trans (by norm_num)
  | succ k ih =>
      have hstep := termError_succ_lt sine y (k + 1) hy
      by_cases hk : k = 0
      · subst k
        have hfirst := termError_one_lt sine y hy
        cases sine <;> norm_num [updateDenominator, degree] at hstep ⊢ <;> linarith
      · have hd1 : 5 ≤ degree sine (k + 1) + 1 := by unfold degree; omega
        have hd2 : 6 ≤ degree sine (k + 1) + 2 := by omega
        have hdNat : 30 ≤ updateDenominator sine (k + 1) := Nat.mul_le_mul hd1 hd2
        have hd : (30 : ℝ) ≤ (updateDenominator sine (k + 1) : ℝ) := by
          exact_mod_cast hdNat
        have hr : 16 / (updateDenominator sine (k + 1) : ℝ) ≤ 16 / 30 :=
          (div_le_iff₀ (by linarith)).2 (by linarith)
        have hbound := mul_le_mul_of_nonneg_right hr
          (show 0 ≤ termError sine y (k + 1) from abs_nonneg _)
        linarith

/-- Within the checker's reduced interval the integer loop differs from its
exact finite Taylor polynomial by fewer than 36 scaled units. -/
theorem abs_reducedTrigSum_sub_scaledTaylorSum_lt (sine : Bool) (y : ℤ)
    (hy : |(y : ℝ)| ≤ 4 * (scale : ℝ)) :
    |(reducedTrigSum sine y : ℝ) - scaledTaylorSum sine y| < 36 := by
  unfold reducedTrigSum scaledTaylorSum
  rw [Int.cast_sum, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ k ∈ Finset.range 13, termError sine y k := Finset.abs_sum_le_sum_abs _ _
    _ = ∑ k ∈ Finset.range 12, termError sine y (k + 1) := by
      rw [Finset.sum_range_succ', termError_zero, add_zero]
    _ < ∑ _k ∈ Finset.range 12, (3 : ℝ) :=
      Finset.sum_lt_sum_of_nonempty (by simp) fun k _ => termError_succ_lt_three sine y k hy
    _ = 36 := by norm_num

end CheckerRounding
end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
