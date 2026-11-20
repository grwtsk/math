/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Algebra.BigOperators.Module
import Mathlib.Tactic

/-!
# Finite smoothing and exact recovery of von Mangoldt sums

Local attribution: grwtsk contributors.

The kernel `N / n - 1` is the finite weight singled out in the supplied
2026-11-20 announcement. The results below are direct finite identities and
error estimates, proved independently of the announced formalization, using
Mathlib. They do not import the
announced formalization or assert an analytic bound for its centered sum.

The mathematical consumer, source correspondence, retained quantifiers and
verification scope are recorded in the adjacent `SmoothedMangoldt.md`.
-/

open Finset

namespace GRWTSK.NumberTheory.SmoothedMangoldt

/-- The coefficient prefix through `N`, with positive integer indexing. -/
noncomputable def partialSum (a : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ i ∈ range N, a (i + 1)

/-- The reciprocal weighted coefficient prefix through `N`. -/
noncomputable def reciprocalSum (a : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ i ∈ range N, a (i + 1) / (i + 1 : ℝ)

/-- The exact finite weight `N / n - 1`, summed over `1 ≤ n ≤ N`. -/
noncomputable def weightedSum (a : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ i ∈ range N, a (i + 1) * ((N : ℝ) / (i + 1 : ℝ) - 1)

/-- On the actual summation support, the positive-part convention changes
nothing. This matches the positive-part weight in the announcement. -/
theorem weightedSum_eq_positive_part (a : ℕ → ℝ) (N : ℕ) :
    weightedSum a N = ∑ i ∈ range N,
      a (i + 1) * max 0 ((N : ℝ) / (i + 1 : ℝ) - 1) := by
  unfold weightedSum
  apply sum_congr rfl
  intro i hi
  have hindex : (i : ℝ) + 1 ≤ N := by
    exact_mod_cast Nat.succ_le_of_lt (mem_range.mp hi)
  have hweight : 0 ≤ (N : ℝ) / (i + 1 : ℝ) - 1 := by
    apply sub_nonneg.mpr
    apply (le_div_iff₀ (by positivity : 0 < (i + 1 : ℝ))).mpr
    simpa only [one_mul] using hindex
  rw [max_eq_right hweight]

theorem weightedSum_eq_scaled_reciprocal_sub_partial (a : ℕ → ℝ) (N : ℕ) :
    weightedSum a N = (N : ℝ) * reciprocalSum a N - partialSum a N := by
  simp only [weightedSum, reciprocalSum, partialSum, mul_sum, ← sum_sub_distrib]
  apply sum_congr rfl
  intro i hi
  ring

theorem weightedSum_step (a : ℕ → ℝ) (N : ℕ) :
    weightedSum a (N + 1) - weightedSum a N = reciprocalSum a N := by
  rw [weightedSum_eq_scaled_reciprocal_sub_partial,
    weightedSum_eq_scaled_reciprocal_sub_partial]
  simp only [reciprocalSum, partialSum, sum_range_succ, Nat.cast_add, Nat.cast_one]
  have hN : (N : ℝ) + 1 ≠ 0 := by positivity
  field_simp
  ring

/-- Exact unsmoothing recovers the original prefix, at every finite `N`. -/
theorem partialSum_eq_weighted_difference (a : ℕ → ℝ) (N : ℕ) :
    partialSum a N = (N : ℝ) * (weightedSum a (N + 1) - weightedSum a N) -
      weightedSum a N := by
  rw [weightedSum_step, weightedSum_eq_scaled_reciprocal_sub_partial]
  ring

/-- A second difference recovers the original coefficient divided by its index. -/
theorem weightedSum_second_difference (a : ℕ → ℝ) (N : ℕ) :
    weightedSum a (N + 2) - 2 * weightedSum a (N + 1) + weightedSum a N =
      a (N + 1) / (N + 1 : ℝ) := by
  have h0 := weightedSum_step a N
  have h1 := weightedSum_step a (N + 1)
  have hrec : reciprocalSum a (N + 1) =
      reciprocalSum a N + a (N + 1) / (N + 1 : ℝ) := by
    simp [reciprocalSum, sum_range_succ]
  rw [hrec] at h1
  linarith

/-- The exact finite Abel transform, including the empty cases `N = 0, 1`. -/
theorem weightedSum_eq_partial_sum_transform (a : ℕ → ℝ) (N : ℕ) :
    weightedSum a N = (N : ℝ) *
      ∑ i ∈ range (N - 1), partialSum a (i + 1) /
        ((i + 1 : ℝ) * (i + 2 : ℝ)) := by
  cases N with
  | zero => simp [weightedSum]
  | succ N =>
    have hN : (N : ℝ) + 1 ≠ 0 := by positivity
    have h := sum_range_by_parts
      (fun i : ℕ => ((N + 1 : ℕ) : ℝ) / (i + 1 : ℝ) - 1)
      (fun i : ℕ => a (i + 1)) (N + 1)
    simp only [Nat.add_sub_cancel, smul_eq_mul, Nat.cast_add, Nat.cast_one,
      div_self hN, sub_self, zero_mul, zero_sub] at h
    rw [weightedSum]
    simp only [Nat.cast_succ, Nat.succ_sub_one]
    calc
      (∑ i ∈ range (N + 1), a (i + 1) * (((N : ℝ) + 1) / (i + 1 : ℝ) - 1)) =
          -∑ i ∈ range N,
            ((((N : ℝ) + 1) / ((i : ℝ) + 1 + 1) - 1) -
             (((N : ℝ) + 1) / ((i : ℝ) + 1) - 1)) * partialSum a (i + 1) := by
        simpa only [partialSum, mul_comm] using h
      _ = ((N : ℝ) + 1) *
          ∑ i ∈ range N, partialSum a (i + 1) /
            ((i + 1 : ℝ) * (i + 2 : ℝ)) := by
        rw [← sum_neg_distrib, mul_sum]
        apply sum_congr rfl
        intro i hi
        have hi1 : (i : ℝ) + 1 ≠ 0 := by positivity
        have hi2 : (i : ℝ) + 2 ≠ 0 := by positivity
        have hi11 : (i : ℝ) + 1 + 1 ≠ 0 := by positivity
        field_simp
        ring

/-- Prefix errors pass through the positive finite smoothing kernel. -/
theorem weightedSum_error_le (a : ℕ → ℝ) (B ε : ℕ → ℝ) (N : ℕ)
    (h : ∀ i ∈ range (N - 1), |partialSum a (i + 1) - B (i + 1)| ≤ ε (i + 1)) :
    |weightedSum a N - (N : ℝ) *
      ∑ i ∈ range (N - 1), B (i + 1) / ((i + 1 : ℝ) * (i + 2 : ℝ))| ≤
    (N : ℝ) * ∑ i ∈ range (N - 1), ε (i + 1) /
      ((i + 1 : ℝ) * (i + 2 : ℝ)) := by
  rw [weightedSum_eq_partial_sum_transform, ← mul_sub, ← sum_sub_distrib,
    abs_mul, abs_of_nonneg (Nat.cast_nonneg N)]
  apply mul_le_mul_of_nonneg_left _ (Nat.cast_nonneg N)
  refine (abs_sum_le_sum_abs _ _).trans ?_
  apply sum_le_sum
  intro i hi
  rw [← sub_div, abs_div,
    abs_of_pos (by positivity : 0 < (i + 1 : ℝ) * (i + 2 : ℝ))]
  exact div_le_div_of_nonneg_right (h i hi) (by positivity)

/-- Unsmoothing has explicit error amplification, even though the forward
kernel is nonnegative. No independent errors are silently cancelled. -/
theorem partialSum_error_le (a : ℕ → ℝ) (B ε : ℕ → ℝ) (N : ℕ)
    (h0 : |weightedSum a N - B N| ≤ ε N)
    (h1 : |weightedSum a (N + 1) - B (N + 1)| ≤ ε (N + 1)) :
    |partialSum a N - ((N : ℝ) * (B (N + 1) - B N) - B N)| ≤
      (N : ℝ) * ε (N + 1) + (N + 1 : ℝ) * ε N := by
  rw [partialSum_eq_weighted_difference]
  calc
    |(N : ℝ) * (weightedSum a (N + 1) - weightedSum a N) - weightedSum a N -
      ((N : ℝ) * (B (N + 1) - B N) - B N)| =
      |(N : ℝ) * (weightedSum a (N + 1) - B (N + 1)) -
        (N + 1 : ℝ) * (weightedSum a N - B N)| := by congr 1; ring
    _ ≤ |(N : ℝ) * (weightedSum a (N + 1) - B (N + 1))| +
        |(N + 1 : ℝ) * (weightedSum a N - B N)| := abs_sub _ _
    _ = (N : ℝ) * |weightedSum a (N + 1) - B (N + 1)| +
        (N + 1 : ℝ) * |weightedSum a N - B N| := by
      rw [abs_mul, abs_mul, abs_of_nonneg (Nat.cast_nonneg N),
        abs_of_nonneg (by positivity : (0 : ℝ) ≤ N + 1)]
    _ ≤ _ := add_le_add
      (mul_le_mul_of_nonneg_left h1 (Nat.cast_nonneg N))
      (mul_le_mul_of_nonneg_left h0 (by positivity))

/-- The announcement's weight applied to Mathlib's actual von Mangoldt function. -/
noncomputable def mangoldtWeightedSum (N : ℕ) : ℝ :=
  weightedSum ArithmeticFunction.vonMangoldt N

theorem mangoldt_partialSum_eq_psi (N : ℕ) :
    partialSum ArithmeticFunction.vonMangoldt N = Chebyshev.psi N := by
  rw [Chebyshev.psi_eq_sum_Icc, Nat.floor_natCast, ← Nat.range_succ_eq_Icc_zero,
    sum_range_succ']
  simp [partialSum]

theorem mangoldtWeightedSum_eq_psi_transform (N : ℕ) :
    mangoldtWeightedSum N = (N : ℝ) *
      ∑ i ∈ range (N - 1), Chebyshev.psi (i + 1 : ℕ) /
        ((i + 1 : ℝ) * (i + 2 : ℝ)) := by
  simp only [mangoldtWeightedSum, weightedSum_eq_partial_sum_transform,
    mangoldt_partialSum_eq_psi]

theorem psi_eq_mangoldtWeightedSum_difference (N : ℕ) :
    Chebyshev.psi N = (N : ℝ) * (mangoldtWeightedSum (N + 1) - mangoldtWeightedSum N) -
      mangoldtWeightedSum N := by
  simpa only [mangoldtWeightedSum, mangoldt_partialSum_eq_psi] using
    partialSum_eq_weighted_difference ArithmeticFunction.vonMangoldt N

theorem mangoldtWeightedSum_second_difference (N : ℕ) :
    mangoldtWeightedSum (N + 2) - 2 * mangoldtWeightedSum (N + 1) + mangoldtWeightedSum N =
      ArithmeticFunction.vonMangoldt (N + 1) / (N + 1 : ℝ) :=
  weightedSum_second_difference ArithmeticFunction.vonMangoldt N

/-- The linear centering is explicit; the announcement uses `c = 1 + γ`. -/
noncomputable def centeredMangoldtSum (c : ℝ) (N : ℕ) : ℝ :=
  mangoldtWeightedSum N - (N : ℝ) * Real.log N + c * N

/-- Exact centered source return. The linear normalization cancels, but the
neighboring error terms enter with coefficients of size `N`. -/
theorem psi_sub_log_increment_eq_centered_difference (c : ℝ) (N : ℕ) :
    Chebyshev.psi N - (N : ℝ) * (N + 1 : ℝ) * (Real.log (N + 1 : ℝ) - Real.log N) =
      (N : ℝ) * centeredMangoldtSum c (N + 1) -
        (N + 1 : ℝ) * centeredMangoldtSum c N := by
  rw [psi_eq_mangoldtWeightedSum_difference]
  simp only [centeredMangoldtSum, Nat.cast_add, Nat.cast_one]
  ring

/-- A finite centered estimate returns to the actual ψ with its full
unsmoothing cost. Bounds on separate values provide no cancellation discount. -/
theorem psi_sub_log_increment_abs_le (c : ℝ) (ε : ℕ → ℝ) (N : ℕ)
    (h0 : |centeredMangoldtSum c N| ≤ ε N)
    (h1 : |centeredMangoldtSum c (N + 1)| ≤ ε (N + 1)) :
    |Chebyshev.psi N - (N : ℝ) * (N + 1 : ℝ) *
      (Real.log (N + 1 : ℝ) - Real.log N)| ≤
      (N : ℝ) * ε (N + 1) + (N + 1 : ℝ) * ε N := by
  rw [psi_sub_log_increment_eq_centered_difference c]
  calc
    |(N : ℝ) * centeredMangoldtSum c (N + 1) -
      (N + 1 : ℝ) * centeredMangoldtSum c N| ≤
      |(N : ℝ) * centeredMangoldtSum c (N + 1)| +
      |(N + 1 : ℝ) * centeredMangoldtSum c N| := abs_sub _ _
    _ = (N : ℝ) * |centeredMangoldtSum c (N + 1)| +
      (N + 1 : ℝ) * |centeredMangoldtSum c N| := by
      rw [abs_mul, abs_mul, abs_of_nonneg (Nat.cast_nonneg N),
        abs_of_nonneg (by positivity : (0 : ℝ) ≤ N + 1)]
    _ ≤ _ := add_le_add (mul_le_mul_of_nonneg_left h1 (Nat.cast_nonneg N))
      (mul_le_mul_of_nonneg_left h0 (by positivity))

/-- The deterministic logarithmic baseline differs from `N` by at most one. -/
theorem logarithmic_increment_bounds (N : ℕ) (hN : 1 ≤ N) :
    (N : ℝ) ≤ (N : ℝ) * (N + 1 : ℝ) * (Real.log (N + 1 : ℝ) - Real.log N) ∧
    (N : ℝ) * (N + 1 : ℝ) * (Real.log (N + 1 : ℝ) - Real.log N) ≤ N + 1 := by
  have hn : (0 : ℝ) < N := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
  have hn1 : (0 : ℝ) < N + 1 := by positivity
  have hu := Real.log_le_sub_one_of_pos (div_pos hn1 hn)
  rw [Real.log_div (ne_of_gt hn1) (ne_of_gt hn)] at hu
  have hl := Real.log_le_sub_one_of_pos (div_pos hn hn1)
  rw [Real.log_div (ne_of_gt hn) (ne_of_gt hn1)] at hl
  have hlower : (N : ℝ) * (N + 1 : ℝ) *
      (Real.log N - Real.log (N + 1 : ℝ)) ≤ -(N : ℝ) := by
    calc
      _ ≤ (N : ℝ) * (N + 1 : ℝ) * ((N : ℝ) / (N + 1 : ℝ) - 1) :=
        mul_le_mul_of_nonneg_left hl (by positivity)
      _ = -(N : ℝ) := by field_simp; ring
  constructor
  · nlinarith
  · calc
      _ ≤ (N : ℝ) * (N + 1 : ℝ) * ((N + 1 : ℝ) / N - 1) :=
        mul_le_mul_of_nonneg_left hu (by positivity)
      _ = (N : ℝ) + 1 := by field_simp; ring

/-- An explicit finite return from centered smoothed bounds to the canonical
Chebyshev error, with the full amplification and baseline correction retained. -/
theorem psi_sub_self_abs_le (c : ℝ) (ε : ℕ → ℝ) (N : ℕ) (hN : 1 ≤ N)
    (h0 : |centeredMangoldtSum c N| ≤ ε N)
    (h1 : |centeredMangoldtSum c (N + 1)| ≤ ε (N + 1)) :
    |Chebyshev.psi N - N| ≤ (N : ℝ) * ε (N + 1) + (N + 1 : ℝ) * ε N + 1 := by
  let b := (N : ℝ) * (N + 1 : ℝ) * (Real.log (N + 1 : ℝ) - Real.log N)
  have hb := logarithmic_increment_bounds N hN
  have hbabs : |b - N| ≤ 1 := by
    rw [abs_of_nonneg (sub_nonneg.mpr hb.1)]
    linarith [hb.2]
  calc
    |Chebyshev.psi N - N| = |(Chebyshev.psi N - b) + (b - N)| := by congr 1; ring
    _ ≤ |Chebyshev.psi N - b| + |b - N| := abs_add_le _ _
    _ ≤ (N : ℝ) * ε (N + 1) + (N + 1 : ℝ) * ε N + 1 :=
      add_le_add (psi_sub_log_increment_abs_le c ε N h0 h1) hbabs

end GRWTSK.NumberTheory.SmoothedMangoldt
