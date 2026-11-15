/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddMultiplierBounds

/-!
# Whole-line variation of the original odd gamma multiplier

The zeroth summand has variation coefficient `8/9`. Bound the remaining
coefficients by the shifted rational telescope from §19 of
`WeilOddSupportBoundaryReflection.md`. With the termwise inequality
`periodicMultiplierTerm_one_abs_sub_le`, this gives a bound for every
finite partial sum. The existing summability at each of the two frequencies
then gives the same inequality for the entire original series.

The direct consumer is variation of the original signed conductor-three
multiplier across frequency cells. The coefficient `58/45` here suffices
for the allowance of nine in the published radius-one checker.
Independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddMultiplierBounds

private theorem gammaVariation_tail_compare (j : ℕ) :
    (8 : ℝ) / (4 * (j : ℝ) + 7) ^ 2 ≤
      2 / (4 * (j : ℝ) + 5) - 2 / (4 * (j : ℝ) + 9) := by
  have h5 : 0 < 4 * (j : ℝ) + 5 := by positivity
  have h9 : 0 < 4 * (j : ℝ) + 9 := by positivity
  have hsub : (2 : ℝ) / (4 * (j : ℝ) + 5) - 2 / (4 * (j : ℝ) + 9) =
      8 / ((4 * (j : ℝ) + 5) * (4 * (j : ℝ) + 9)) := by
    field_simp [h5.ne', h9.ne']
    ring
  rw [hsub]
  apply (div_le_div_iff₀ (by positivity) (mul_pos h5 h9)).2
  nlinarith

private theorem gammaVariation_tail_sum_le (N : ℕ) :
    (∑ j ∈ Finset.range N, (8 : ℝ) / (4 * (j : ℝ) + 7) ^ 2) ≤
      2 / 5 - 2 / (4 * (N : ℝ) + 5) := by
  induction N with
  | zero => norm_num
  | succ N ih =>
      rw [Finset.sum_range_succ]
      calc
        _ ≤ (2 / 5 - 2 / (4 * (N : ℝ) + 5)) +
            (2 / (4 * (N : ℝ) + 5) - 2 / (4 * (N : ℝ) + 9)) :=
          add_le_add ih (gammaVariation_tail_compare N)
        _ = _ := by push_cast; ring

private theorem gammaVariation_sum_le (N : ℕ) :
    (∑ j ∈ Finset.range N, (8 : ℝ) / (4 * (j : ℝ) + 3) ^ 2) ≤ 58 / 45 := by
  cases N with
  | zero => norm_num
  | succ N =>
      rw [Finset.sum_range_succ']
      have hshift (j : ℕ) : 4 * ((j + 1 : ℕ) : ℝ) + 3 = 4 * (j : ℝ) + 7 := by
        push_cast
        ring
      simp only [hshift, Nat.cast_zero, mul_zero, zero_add]
      have htail := gammaVariation_tail_sum_le N
      have hrem : 0 ≤ (2 : ℝ) / (4 * (N : ℝ) + 5) := by positivity
      linarith

/-- Global variation of the entire original parity-one gamma multiplier. -/
theorem periodicMultiplier_one_abs_sub_le (x y : ℝ) :
    |periodicMultiplier 1 x - periodicMultiplier 1 y| ≤ (58 / 45) * |x - y| := by
  have hfinite (N : ℕ) :
      |(∑ j ∈ Finset.range N, periodicMultiplierTerm 1 x (j : ℝ)) -
        (∑ j ∈ Finset.range N, periodicMultiplierTerm 1 y (j : ℝ))| ≤
        (58 / 45) * |x - y| := by
    rw [← Finset.sum_sub_distrib]
    calc
      _ ≤ ∑ j ∈ Finset.range N,
          |periodicMultiplierTerm 1 x (j : ℝ) - periodicMultiplierTerm 1 y (j : ℝ)| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ j ∈ Finset.range N, (8 / (4 * (j : ℝ) + 3) ^ 2) * |x - y| :=
        Finset.sum_le_sum fun j _ => periodicMultiplierTerm_one_abs_sub_le j x y
      _ = (∑ j ∈ Finset.range N, (8 / (4 * (j : ℝ) + 3) ^ 2)) * |x - y| :=
        (Finset.sum_mul ..).symm
      _ ≤ _ := mul_le_mul_of_nonneg_right (gammaVariation_sum_le N) (abs_nonneg _)
  have hx := (periodicMultiplier_summable 1 x).hasSum.tendsto_sum_nat
  have hy := (periodicMultiplier_summable 1 y).hasSum.tendsto_sum_nat
  exact le_of_tendsto' (hx.sub hy).abs hfinite

open PeriodicBoundary

/-- The original parity-one term has a uniform derivative-free secant bound. -/
private theorem periodicMultiplierTerm_one_abs_sub_le_four_thirds (j : ℕ) (x y : ℝ) :
    |periodicMultiplierTerm 1 x (j : ℝ) - periodicMultiplierTerm 1 y (j : ℝ)| ≤
      (2 / 3 : ℝ) * (8 / (4 * (j : ℝ) + 3) ^ 2) * |x - y| := by
  let a : ℝ := (4 * (j : ℝ) + 3) / 2
  have hc : 0 < 4 * (j : ℝ) + 3 := by positivity
  have ha : 0 < a := div_pos hc (by norm_num)
  have hrate : multiplierRate 1 (j : ℝ) = a := by
    unfold multiplierRate a
    push_cast
    ring
  let m : ℝ := (|x| + |y|) / 2
  let d : ℝ := (|x| - |y|) / 2
  have hm : 0 ≤ m := by unfold m; positivity
  have hdx : 0 < a ^ 2 + x ^ 2 := by positivity
  have hdy : 0 < a ^ 2 + y ^ 2 := by positivity
  let denominator : ℝ := (a ^ 2 + x ^ 2) * (a ^ 2 + y ^ 2)
  have hden : 0 < denominator := mul_pos hdx hdy
  have hden_bound : 3 * a ^ 3 * m ≤ denominator := by
    have hx : |x| ^ 2 = x ^ 2 := sq_abs x
    have hy : |y| ^ 2 = y ^ 2 := sq_abs y
    by_cases hma : m ≤ a
    · have hsquare : 0 ≤ a ^ 2 - m ^ 2 :=
        sub_nonneg.mpr (pow_le_pow_left₀ hm hma 2)
      have hden_id : denominator =
          (a ^ 2 + m ^ 2) ^ 2 + 2 * (a ^ 2 - m ^ 2) * d ^ 2 + d ^ 4 := by
        unfold denominator m d
        rw [← hx, ← hy]
        ring
      have hpoly : (a ^ 2 + m ^ 2) ^ 2 - 3 * a ^ 3 * m =
          (m - a / 2) ^ 2 * (m ^ 2 + a * m + 3 * a ^ 2 / 4) +
          2 * a ^ 2 * (m - 5 * a / 8) ^ 2 + a ^ 4 / 32 := by ring
      have hpoly_nonneg : 0 ≤ (a ^ 2 + m ^ 2) ^ 2 - 3 * a ^ 3 * m := by
        rw [hpoly]
        positivity
      rw [hden_id]
      linarith [mul_nonneg (mul_nonneg (by norm_num : (0 : ℝ) ≤ 2) hsquare) (sq_nonneg d),
        show 0 ≤ d ^ 4 by positivity]
    · have ham : a ≤ m := le_of_lt (lt_of_not_ge hma)
      have hden_id : denominator = (a ^ 2 - |x| * |y|) ^ 2 + 4 * a ^ 2 * m ^ 2 := by
        unfold denominator m
        rw [← hx, ← hy]
        ring
      have hscale : 0 ≤ (a ^ 2 * m) * (4 * m - 3 * a) :=
        mul_nonneg (mul_nonneg (sq_nonneg a) hm) (by linarith [ha.le])
      rw [hden_id]
      nlinarith only [hscale, sq_nonneg (a ^ 2 - |x| * |y|)]
  have hsum : |x + y| ≤ 2 * m := by
    unfold m
    linarith [abs_add_le x y]
  have hdiff : 2 * multiplierSummand a x - 2 * multiplierSummand a y =
      2 * a * (x - y) * (x + y) / denominator := by
    unfold multiplierSummand denominator
    field_simp [ha.ne', hdx.ne', hdy.ne']
    ring
  have hmass : 2 * a * |x + y| ≤ (4 / (3 * a ^ 2)) * denominator := by
    calc
      _ ≤ (2 * a) * (2 * m) := mul_le_mul_of_nonneg_left hsum (by positivity)
      _ = (4 / (3 * a ^ 2)) * (3 * a ^ 3 * m) := by
        field_simp [ha.ne']
        ring
      _ ≤ _ := mul_le_mul_of_nonneg_left hden_bound (by positivity)
  unfold periodicMultiplierTerm
  rw [hrate, hdiff]
  calc
    _ = ((2 * a * |x + y|) * |x - y|) / denominator := by
      simp only [abs_div, abs_mul, abs_of_pos hden, abs_of_pos ha,
        abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      ring
    _ ≤ (4 / (3 * a ^ 2)) * |x - y| := by
      apply (div_le_iff₀ hden).2
      calc
        _ ≤ ((4 / (3 * a ^ 2)) * denominator) * |x - y| :=
          mul_le_mul_of_nonneg_right hmass (abs_nonneg _)
        _ = _ := by ring
    _ = _ := by
      unfold a
      field_simp [hc.ne']
      ring

/-- A global all-real difference bound for the complete parity-one periodic series. -/
theorem periodicMultiplier_one_abs_sub_le_116_div_135 (x y : ℝ) :
    |periodicMultiplier 1 x - periodicMultiplier 1 y| ≤ (116 / 135 : ℝ) * |x - y| := by
  have hx := (periodicMultiplier_summable 1 x).hasSum.tendsto_sum_nat
  have hy := (periodicMultiplier_summable 1 y).hasSum.tendsto_sum_nat
  unfold periodicMultiplier
  apply le_of_tendsto' (hx.sub hy).abs
  intro N
  change |(∑ j ∈ Finset.range N, periodicMultiplierTerm 1 x j) -
      (∑ j ∈ Finset.range N, periodicMultiplierTerm 1 y j)| ≤ _
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ j ∈ Finset.range N, |periodicMultiplierTerm 1 x j - periodicMultiplierTerm 1 y j| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ j ∈ Finset.range N, (8 : ℝ) / (4 * (j : ℝ) + 3) ^ 2 *
        ((2 / 3 : ℝ) * |x - y|) := by
      apply Finset.sum_le_sum
      intro j _
      convert periodicMultiplierTerm_one_abs_sub_le_four_thirds j x y using 1
      ring
    _ = (∑ j ∈ Finset.range N, (8 : ℝ) / (4 * (j : ℝ) + 3) ^ 2) *
        ((2 / 3 : ℝ) * |x - y|) := by rw [Finset.sum_mul]
    _ ≤ (58 / 45 : ℝ) * ((2 / 3 : ℝ) * |x - y|) :=
      mul_le_mul_of_nonneg_right (gammaVariation_sum_le N) (by positivity)
    _ = _ := by ring

end GRWTSK.NumberTheory.WeilQuadraticForm.OddMultiplierBounds
