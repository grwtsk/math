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

end GRWTSK.NumberTheory.WeilQuadraticForm.OddMultiplierBounds
