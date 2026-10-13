/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving

/-!
# Recurrence for reciprocal-prefix square variation

The endpoint-centered reciprocal-prefix variation has an exact one-step
recurrence.  Discrete partial summation collapses its history term to the
Mertens prefix.  Telescoping splits the variation into a signed
Möbius--Mertens correlation and a nonnegative squarefree diagonal whose total
cost is at most harmonic.

Consequently, the power-saving route is reduced to a precise cancellation
estimate between this signed correlation and the diagonal.  That arithmetic
cancellation estimate remains open.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefix
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving

/-- Signed Möbius--Mertens correlation accumulated up to `n`. -/
def reciprocalVariationCorrelation (n : ℕ) : ℝ :=
  ∑ j ∈ Finset.range n,
    2 * (moebiusReal (j + 1) / (j + 1 : ℕ)) * pickupMertensPrefix j

/-- Positive squarefree diagonal accumulated up to `n`. -/
def reciprocalVariationDiagonal (n : ℕ) : ℝ :=
  ∑ j ∈ Finset.range n, moebiusReal (j + 1) ^ 2 / (j + 1 : ℕ)

/-- Exact one-step evolution of endpoint-centered square variation. -/
theorem reciprocalPrefixVariationSquare_succ (n : ℕ) :
    reciprocalPrefixVariationSquare (n + 1) =
      reciprocalPrefixVariationSquare n +
        2 * (moebiusReal (n + 1) / (n + 1 : ℕ)) * pickupMertensPrefix n +
        moebiusReal (n + 1) ^ 2 / (n + 1 : ℕ) := by
  let a : ℝ := moebiusReal (n + 1) / (n + 1 : ℕ)
  have hprefix : pickupReciprocalPrefix (n + 1) =
      pickupReciprocalPrefix n + a := pickupReciprocalPrefix_succ n
  have hsum :
      (∑ k ∈ Finset.range n,
          (pickupReciprocalPrefix k - (pickupReciprocalPrefix n + a)) ^ 2) =
        (∑ k ∈ Finset.range n,
          (pickupReciprocalPrefix k - pickupReciprocalPrefix n) ^ 2) -
        2 * a * (∑ k ∈ Finset.range n,
          (pickupReciprocalPrefix k - pickupReciprocalPrefix n)) +
        (n : ℝ) * a ^ 2 := by
    calc
      _ = ∑ k ∈ Finset.range n,
          ((pickupReciprocalPrefix k - pickupReciprocalPrefix n) ^ 2 -
            2 * a * (pickupReciprocalPrefix k - pickupReciprocalPrefix n) +
            a ^ 2) := by
              apply Finset.sum_congr rfl
              intro k _hk
              ring
      _ = _ := by
        rw [Finset.sum_add_distrib, Finset.sum_sub_distrib, ← Finset.mul_sum]
        simp
  have hhistory :
      (∑ k ∈ Finset.range n,
        (pickupReciprocalPrefix k - pickupReciprocalPrefix n)) =
        -pickupMertensPrefix n := by
    rw [pickupMertensPrefix_eq_reciprocalPartialSummation,
      Finset.sum_sub_distrib]
    simp
  unfold reciprocalPrefixVariationSquare
  rw [Finset.sum_range_succ, hprefix, hsum, hhistory]
  change _ = _ + 2 * a * _ + moebiusReal (n + 1) ^ 2 / (n + 1 : ℕ)
  dsimp [a]
  have hne : (((n + 1 : ℕ) : ℝ)) ≠ 0 := by positivity
  norm_num [Nat.cast_add, Nat.cast_one]
  field_simp
  ring

/-- Telescoping the recurrence gives an exact correlation-plus-diagonal
decomposition. -/
theorem reciprocalPrefixVariationSquare_eq_correlation_add_diagonal (n : ℕ) :
    reciprocalPrefixVariationSquare n =
      reciprocalVariationCorrelation n + reciprocalVariationDiagonal n := by
  induction n with
  | zero => simp [reciprocalPrefixVariationSquare,
      reciprocalVariationCorrelation, reciprocalVariationDiagonal]
  | succ n ih =>
      rw [reciprocalPrefixVariationSquare_succ, ih]
      unfold reciprocalVariationCorrelation reciprocalVariationDiagonal
      rw [Finset.sum_range_succ, Finset.sum_range_succ]
      ring

/-- The squarefree diagonal is bounded by the full harmonic mass. -/
theorem reciprocalVariationDiagonal_le_harmonic (n : ℕ) :
    reciprocalVariationDiagonal n ≤ (harmonic n : ℝ) := by
  have hharm :
      (∑ j ∈ Finset.range n, (1 : ℝ) / (j + 1 : ℕ)) =
        (harmonic n : ℝ) := by
    simp [harmonic, div_eq_mul_inv]
  rw [← hharm]
  unfold reciprocalVariationDiagonal
  apply Finset.sum_le_sum
  intro j _hj
  have habs : |moebiusReal (j + 1)| ≤ 1 := by
    simpa [GRWTSK.RiemannHypothesis.CCC.moebiusReal,
      GRWTSK.NumberTheory.ArithmeticFunctions.moebiusReal] using
        GRWTSK.NumberTheory.ArithmeticFunctions.moebiusReal_abs_le_one (j + 1)
  have hsq : moebiusReal (j + 1) ^ 2 ≤ 1 := by
    rw [← sq_abs]
    nlinarith [abs_nonneg (moebiusReal (j + 1))]
  gcongr

/-- In particular, the positive diagonal costs at most one plus a logarithm. -/
theorem reciprocalVariationDiagonal_le_log (n : ℕ) :
    reciprocalVariationDiagonal n ≤ 1 + Real.log n :=
  (reciprocalVariationDiagonal_le_harmonic n).trans
    (by exact_mod_cast harmonic_le_one_add_log n)

/-- The remaining signed arithmetic estimate: the Möbius--Mertens
correlation itself has a sublinear power bound. -/
def ReciprocalMertensCorrelationPowerSaving : Prop :=
  ∃ C δ : ℝ, 0 ≤ C ∧ 0 < δ ∧ δ < 1 ∧
    ∀ n : ℕ, 1 ≤ n →
      reciprocalVariationCorrelation n ≤
        C * (n : ℝ) ^ (1 - δ)

/-- A sublinear signed-correlation bound supplies the reciprocal-prefix
variation power saving; the logarithmic diagonal is absorbed without losing
the exponent. -/
theorem reciprocalVariationPowerSaving_of_mertensCorrelationPowerSaving
    (h : ReciprocalMertensCorrelationPowerSaving) :
    ReciprocalVariationPowerSaving := by
  obtain ⟨C, δ, hC, hδ, hδ1, hbound⟩ := h
  have heps : 0 < 1 - δ := by linarith
  let D : ℝ := 1 + 1 / (1 - δ)
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨C + D, δ, add_nonneg hC hD, hδ, ?_⟩
  intro n hn
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hp : 1 ≤ (n : ℝ) ^ (1 - δ) :=
    Real.one_le_rpow hn1 heps.le
  have hlog := Real.log_natCast_le_rpow_div n heps
  have hdiag :
      reciprocalVariationDiagonal n ≤ D * (n : ℝ) ^ (1 - δ) := by
    calc
      reciprocalVariationDiagonal n ≤ 1 + Real.log n :=
        reciprocalVariationDiagonal_le_log n
      _ ≤ 1 + (n : ℝ) ^ (1 - δ) / (1 - δ) := by gcongr
      _ ≤ (n : ℝ) ^ (1 - δ) +
          (n : ℝ) ^ (1 - δ) / (1 - δ) := by gcongr
      _ = D * (n : ℝ) ^ (1 - δ) := by
        dsimp [D]
        ring
  rw [reciprocalPrefixVariationSquare_eq_correlation_add_diagonal]
  calc
    reciprocalVariationCorrelation n + reciprocalVariationDiagonal n ≤
        C * (n : ℝ) ^ (1 - δ) + D * (n : ℝ) ^ (1 - δ) :=
      add_le_add (hbound n hn) hdiag
    _ = (C + D) * (n : ℝ) ^ (1 - δ) := by ring

/-- The signed Möbius--Mertens correlation power saving implies the completed
critical vertical-line estimate. -/
theorem criticalBoundary_of_reciprocalMertensCorrelationPowerSaving
    (h : ReciprocalMertensCorrelationPowerSaving) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_reciprocalPrefixVariationPowerSaving
    (reciprocalVariationPowerSaving_of_mertensCorrelationPowerSaving h)

end GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence

#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence.reciprocalPrefixVariationSquare_succ
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence.reciprocalPrefixVariationSquare_eq_correlation_add_diagonal
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence.reciprocalVariationDiagonal_le_harmonic
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence.reciprocalVariationDiagonal_le_log
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence.reciprocalVariationPowerSaving_of_mertensCorrelationPowerSaving
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence.criticalBoundary_of_reciprocalMertensCorrelationPowerSaving
