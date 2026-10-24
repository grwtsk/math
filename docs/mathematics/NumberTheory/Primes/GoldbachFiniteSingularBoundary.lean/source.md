# Complete source: GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularBoundary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b6b4a37c088704da25e5b250ed8979ea33665b9` · SHA-256 `ebb266fea6df8d9358a7d9020ae72cd0c754e30f453ae63d3c5c272b9139517d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularEvaluation
import GRWTSK.NumberTheory.Primes.GoldbachCommonWindowBoundary
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Boundary for evaluated Goldbach singular windows

The exact symmetric singular integral is replaced by its finite diagonal mass
plus the complete oscillatory correction. The progression major sum therefore
splits into an explicit diagonal-window source and one finite coefficient-
weighted oscillatory source.

The absolute-value budget is transferred without assumed cancellation. The
strict terminal consumers retain this new window error separately from every
prime-progression residual, model-to-local-main error, and signed minor-arc
error.

No estimate proving the budget small is supplied. No finite denominator tail,
prime-progression estimate, minor-arc estimate, or Goldbach theorem is
asserted.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularBoundary

open scoped BigOperators Real
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
open GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
open GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientBoundary
open GRWTSK.NumberTheory.Primes.GoldbachPeriodizedSingularWindow
open GRWTSK.NumberTheory.Primes.GoldbachCommonWindowBoundary
open GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularEvaluation
open GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition

noncomputable section

/-- The exact coefficient-weighted diagonal mass in every indexed symmetric
window. -/
def goldbachProgressionDiagonalWindowMajorSum
    (Q N : ℕ) : ℂ :=
  ∑ aq ∈ goldbachRationalArcIndices Q,
    goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
      (goldbachSingularDiagonalMain Q N aq.2 : ℂ)

/-- The same diagonal source after the exact cancellation
`2 * ρ(Q,N,q) * (N+1) = 2Q/q`. -/
def goldbachProgressionExplicitDiagonalMajorSum
    (Q N : ℕ) : ℂ :=
  ∑ aq ∈ goldbachRationalArcIndices Q,
    goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
      ((2 * (Q : ℝ) / (aq.2 : ℝ) : ℝ) : ℂ)

/-- Every indexed denominator is positive, so the diagonal-window source is
exactly the explicit `2Q/q` arithmetic sum. -/
theorem goldbachProgressionDiagonalWindowMajorSum_eq_explicit
    (Q N : ℕ) :
    goldbachProgressionDiagonalWindowMajorSum Q N =
      goldbachProgressionExplicitDiagonalMajorSum Q N := by
  unfold goldbachProgressionDiagonalWindowMajorSum
    goldbachProgressionExplicitDiagonalMajorSum
  apply Finset.sum_congr rfl
  intro aq haq
  have hq : 0 < aq.2 :=
    (mem_goldbachRationalArcIndices.1 haq).2.2.1
  rw [goldbachSingularDiagonalMain_eq_two_mul_div hq]

/-- The complete coefficient-weighted finite oscillatory correction. -/
def goldbachProgressionOscillatoryWindowMajorSum
    (Q N : ℕ) : ℂ :=
  ∑ aq ∈ goldbachRationalArcIndices Q,
    goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
      goldbachSingularOscillatoryCorrection Q N aq.2

/-- The finite sum of all denominator-wise absolute oscillatory budgets. -/
def goldbachProgressionOscillatoryWindowBudget
    (Q N : ℕ) : ℝ :=
  ∑ aq ∈ goldbachRationalArcIndices Q,
    goldbachSingularOscillatoryBudget Q N aq.2

/-- Exact finite decomposition of the common symmetric-window progression
major sum. -/
theorem goldbachProgressionSymmetricWindowMajorSum_eq_diagonal_add_oscillatory
    (Q N : ℕ) :
    goldbachProgressionSymmetricWindowMajorSum Q N =
      goldbachProgressionDiagonalWindowMajorSum Q N +
        goldbachProgressionOscillatoryWindowMajorSum Q N := by
  unfold goldbachProgressionSymmetricWindowMajorSum
    goldbachProgressionDiagonalWindowMajorSum
    goldbachProgressionOscillatoryWindowMajorSum
  calc
    (∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
          goldbachSymmetricRealSingularIntegral Q N aq.2) =
      ∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
          ((goldbachSingularDiagonalMain Q N aq.2 : ℂ) +
            goldbachSingularOscillatoryCorrection Q N aq.2) := by
              apply Finset.sum_congr rfl
              intro aq haq
              rw [goldbachSymmetricRealSingularIntegral_eq_main_add_correction]
    _ =
      ∑ aq ∈ goldbachRationalArcIndices Q,
        ((goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
            (goldbachSingularDiagonalMain Q N aq.2 : ℂ)) +
          (goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
            goldbachSingularOscillatoryCorrection Q N aq.2)) := by
              apply Finset.sum_congr rfl
              intro aq haq
              ring
    _ =
      (∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
          (goldbachSingularDiagonalMain Q N aq.2 : ℂ)) +
      ∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
          goldbachSingularOscillatoryCorrection Q N aq.2 := by
            rw [Finset.sum_add_distrib]

/-- The global finite oscillatory-window budget is nonnegative. -/
theorem goldbachProgressionOscillatoryWindowBudget_nonneg
    (Q N : ℕ) :
    0 ≤ goldbachProgressionOscillatoryWindowBudget Q N := by
  unfold goldbachProgressionOscillatoryWindowBudget
  exact Finset.sum_nonneg fun aq haq =>
    goldbachSingularOscillatoryBudget_nonneg Q N aq.2

/-- Coefficient norms are at most one, so the complete weighted oscillatory
source is controlled by the sum of the individual finite budgets. -/
theorem norm_goldbachProgressionOscillatoryWindowMajorSum_le
    (Q N : ℕ) :
    ‖goldbachProgressionOscillatoryWindowMajorSum Q N‖ ≤
      goldbachProgressionOscillatoryWindowBudget Q N := by
  unfold goldbachProgressionOscillatoryWindowMajorSum
    goldbachProgressionOscillatoryWindowBudget
  calc
    ‖∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
          goldbachSingularOscillatoryCorrection Q N aq.2‖ ≤
      ∑ aq ∈ goldbachRationalArcIndices Q,
        ‖goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
          goldbachSingularOscillatoryCorrection Q N aq.2‖ :=
      norm_sum_le _ _
    _ ≤
      ∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachSingularOscillatoryBudget Q N aq.2 := by
          apply Finset.sum_le_sum
          intro aq haq
          rw [norm_mul]
          calc
            ‖goldbachProgressionArithmeticCoefficient
                N aq.1 aq.2‖ *
                ‖goldbachSingularOscillatoryCorrection
                  Q N aq.2‖ ≤
              1 * goldbachSingularOscillatoryBudget Q N aq.2 := by
                exact mul_le_mul
                  (norm_goldbachProgressionArithmeticCoefficient_le_one haq)
                  (norm_goldbachSingularOscillatoryCorrection_le
                    Q N aq.2)
                  (norm_nonneg _)
                  (by norm_num)
            _ = goldbachSingularOscillatoryBudget Q N aq.2 := by
              ring

/-- A lower bound for the diagonal-window source loses at most the announced
complete oscillatory-window error. -/
theorem goldbachProgressionSymmetricWindowMajor_re_lower
    {Q N : ℕ}
    (diagonalLower windowError : ℝ)
    (hdiag :
      diagonalLower ≤
        (goldbachProgressionDiagonalWindowMajorSum Q N).re)
    (hwindow :
      goldbachProgressionOscillatoryWindowBudget Q N ≤
        windowError) :
    diagonalLower - windowError ≤
      (goldbachProgressionSymmetricWindowMajorSum Q N).re := by
  have hnorm :
      ‖goldbachProgressionOscillatoryWindowMajorSum Q N‖ ≤
        windowError :=
    (norm_goldbachProgressionOscillatoryWindowMajorSum_le Q N).trans
      hwindow
  have hre :
      |(goldbachProgressionOscillatoryWindowMajorSum Q N).re| ≤
        windowError :=
    (Complex.abs_re_le_norm
      (goldbachProgressionOscillatoryWindowMajorSum Q N)).trans
        hnorm
  have hlower :
      -windowError ≤
        (goldbachProgressionOscillatoryWindowMajorSum Q N).re :=
    (abs_le.mp hre).1
  rw [goldbachProgressionSymmetricWindowMajorSum_eq_diagonal_add_oscillatory,
    Complex.add_re]
  linarith

/-- One admitted denominator block is its arithmetic coefficient times the
exact evaluated diagonal-plus-oscillatory singular integral. -/
theorem goldbachProgressionDenominatorMajorBlock_eq_evaluated
    {Q N q : ℕ}
    (hq : 0 < q) (hqQ : q ≤ Q)
    (hscale : 2 * Q ^ 2 < N + 1) :
    goldbachProgressionDenominatorMajorBlock Q N q =
      goldbachProgressionDenominatorCoefficient q N *
        ((goldbachSingularDiagonalMain Q N q : ℂ) +
          goldbachSingularOscillatoryCorrection Q N q) := by
  rw [goldbachProgressionDenominatorMajorBlock_eq_symmetric
      hq hqQ hscale,
    goldbachSymmetricRealSingularIntegral_eq_main_add_correction]

/-- The evaluated denominator block with the diagonal mass written explicitly
as `2Q/q`. -/
theorem goldbachProgressionDenominatorMajorBlock_eq_explicit
    {Q N q : ℕ}
    (hq : 0 < q) (hqQ : q ≤ Q)
    (hscale : 2 * Q ^ 2 < N + 1) :
    goldbachProgressionDenominatorMajorBlock Q N q =
      goldbachProgressionDenominatorCoefficient q N *
        (((2 * (Q : ℝ) / (q : ℝ) : ℝ) : ℂ) +
          goldbachSingularOscillatoryCorrection Q N q) := by
  rw [goldbachProgressionDenominatorMajorBlock_eq_evaluated
      hq hqQ hscale,
    goldbachSingularDiagonalMain_eq_two_mul_div hq]

/-- A diagonal-window lower bound, a complete finite oscillatory budget,
uniform progression discrepancy bounds, and the signed minor bound imply a
Goldbach count only under one strict combined margin. -/
theorem goldbachCount_pos_of_diagonalWindow_progression_bounds
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1)
    (residueError : (ℕ × ℕ) → ℕ → ℝ)
    (diagonalLower windowError minorError : ℝ)
    (hdiag :
      diagonalLower ≤
        (goldbachProgressionDiagonalWindowMajorSum Q N).re)
    (hwindow :
      goldbachProgressionOscillatoryWindowBudget Q N ≤
        windowError)
    (hnonneg : ∀ aq ∈ goldbachRationalArcIndices Q,
      ∀ r ∈ Finset.range aq.2,
        0 ≤ residueError aq r)
    (hresidue : ∀ aq ∈ goldbachRationalArcIndices Q,
      ∀ x ∈ goldbachClippedRationalArc Q N aq,
        ∀ r ∈ Finset.range aq.2,
          ‖goldbachResidueProgressionDiscrepancy
              N aq.2 r
                (goldbachRationalArcOffset aq.1 aq.2 x)‖ ≤
            residueError aq r)
    (hminor :
      ‖goldbachRationalMinorContribution Q N‖ ≤
        minorError)
    (hmargin :
      windowError +
          (∑ aq ∈ goldbachRationalArcIndices Q,
            goldbachProgressionArcErrorBudget
              Q N aq residueError) +
          minorError <
        diagonalLower) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_symmetricWindow_progression_bounds
    hscale residueError
    (diagonalLower - windowError) minorError
  · exact goldbachProgressionSymmetricWindowMajor_re_lower
      diagonalLower windowError hdiag hwindow
  · exact hnonneg
  · exact hresidue
  · exact hminor
  · linarith

/-- Fully evaluated finite-local-main certificate. The comparison with the
coefficient Euler-product scale is made first at the diagonal-window level;
the finite oscillatory-window budget is then charged separately, once. -/
theorem goldbachCount_pos_of_diagonalWindow_coefficient_certificate
    {arcQ localQ N : ℕ}
    (harcScale : 2 * arcQ ^ 2 < N + 1)
    (hlocalQ : 2 ≤ localQ)
    (residueError : (ℕ × ℕ) → ℕ → ℝ)
    (scale diagonalError windowError minorError : ℝ)
    (hdiag :
      goldbachCoefficientTruncatedMainScale
          localQ N scale - diagonalError ≤
        (goldbachProgressionDiagonalWindowMajorSum
          arcQ N).re)
    (hwindow :
      goldbachProgressionOscillatoryWindowBudget arcQ N ≤
        windowError)
    (hnonneg : ∀ aq ∈ goldbachRationalArcIndices arcQ,
      ∀ r ∈ Finset.range aq.2,
        0 ≤ residueError aq r)
    (hresidue : ∀ aq ∈ goldbachRationalArcIndices arcQ,
      ∀ x ∈ goldbachClippedRationalArc arcQ N aq,
        ∀ r ∈ Finset.range aq.2,
          ‖goldbachResidueProgressionDiscrepancy
              N aq.2 r
                (goldbachRationalArcOffset aq.1 aq.2 x)‖ ≤
            residueError aq r)
    (hminor :
      ‖goldbachRationalMinorContribution arcQ N‖ ≤
        minorError)
    (hmargin :
      diagonalError + windowError +
          (∑ aq ∈ goldbachRationalArcIndices arcQ,
            goldbachProgressionArcErrorBudget
              arcQ N aq residueError) +
          minorError <
        goldbachCoefficientTruncatedMainScale
          localQ N scale) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_symmetricWindow_coefficient_certificate
    harcScale hlocalQ residueError
    scale (diagonalError + windowError) minorError
  · have hlower :=
      goldbachProgressionSymmetricWindowMajor_re_lower
        (Q := arcQ) (N := N)
        (goldbachCoefficientTruncatedMainScale
          localQ N scale - diagonalError)
        windowError hdiag hwindow
    linarith
  · exact hnonneg
  · exact hresidue
  · exact hminor
  · linarith

end
end GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularBoundary
```
