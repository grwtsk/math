/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge
import GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Boundary for coefficient-factorized Goldbach progression models

This module exposes the exact coefficient-weighted progression major sum to the
existing strict Goldbach consumers. It also rewrites the finite truncated local
main scale through the prime-denominator Euler factors proved in
`GoldbachPrimeCoefficientBridge`.

A denominator block can be collapsed to its arithmetic coefficient only after
a common singular integral has been supplied for every reduced numerator.
That premise is kept explicit; no change-of-variables or endpoint-clipping
theorem establishing it is supplied here.

No progression-discrepancy estimate, singular-integral evaluation,
minor-arc bound, finite-exception result, or Goldbach theorem is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientBoundary

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
open GRWTSK.NumberTheory.Primes.GoldbachTruncatedSeries
open GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition

noncomputable section

/-- The coefficient-weighted progression block at one denominator. The
singular integral is still retained separately for every numerator. -/
def goldbachProgressionDenominatorMajorBlock
    (Q N q : ℕ) : ℂ :=
  ∑ a ∈ goldbachCoprimeResidues q,
    goldbachProgressionArithmeticCoefficient N a q *
      goldbachProgressionArcSingularIntegral Q N (a, q)

/-- If every reduced numerator has one common singular integral, the
denominator block factors through the arithmetic denominator coefficient.
This theorem deliberately requires that common-window premise. -/
theorem goldbachProgressionDenominatorMajorBlock_factor_of_common
    {Q N q : ℕ} {J : ℂ}
    (hcommon : ∀ a ∈ goldbachCoprimeResidues q,
      goldbachProgressionArcSingularIntegral Q N (a, q) = J) :
    goldbachProgressionDenominatorMajorBlock Q N q =
      goldbachProgressionDenominatorCoefficient q N * J := by
  unfold goldbachProgressionDenominatorMajorBlock
    goldbachProgressionDenominatorCoefficient
  calc
    (∑ a ∈ goldbachCoprimeResidues q,
        goldbachProgressionArithmeticCoefficient N a q *
          goldbachProgressionArcSingularIntegral Q N (a, q)) =
      ∑ a ∈ goldbachCoprimeResidues q,
        goldbachProgressionArithmeticCoefficient N a q * J := by
      apply Finset.sum_congr rfl
      intro a ha
      rw [hcommon a ha]
    _ =
      (∑ a ∈ goldbachCoprimeResidues q,
        goldbachProgressionArithmeticCoefficient N a q) * J := by
      rw [Finset.sum_mul]

/-- The finite local main scale written through prime-denominator Euler
factors rather than directly through the pre-existing local product. -/
def goldbachCoefficientTruncatedMainScale
    (Q N : ℕ) (scale : ℝ) : ℝ :=
  (goldbachFiniteCoefficientEulerProduct
      (goldbachPrimeCutoff Q) N).re * scale

/-- Once the cutoff contains two, the coefficient Euler-product scale is
exactly the existing truncated local main scale. -/
theorem goldbachCoefficientTruncatedMainScale_eq
    {Q N : ℕ} (hQ : 2 ≤ Q) (scale : ℝ) :
    goldbachCoefficientTruncatedMainScale Q N scale =
      goldbachTruncatedMainScale Q N scale := by
  unfold goldbachCoefficientTruncatedMainScale
    goldbachTruncatedMainScale
  rw [goldbachFiniteCoefficientEulerProduct_eq_truncatedSeries hQ]
  simp

/-- On an even target, the real part of the finite coefficient Euler product
is strictly positive. This is local admissibility only. -/
theorem goldbachFiniteCoefficientEulerProduct_re_pos
    {Q N : ℕ} (hQ : 2 ≤ Q) (hN : Even N) :
    0 <
      (goldbachFiniteCoefficientEulerProduct
        (goldbachPrimeCutoff Q) N).re := by
  rw [goldbachFiniteCoefficientEulerProduct_eq_truncatedSeries hQ]
  simpa using goldbachTruncatedSeries_pos
    (Q := Q) (N := N) hN

/-- On an odd target, the finite coefficient Euler product vanishes because
the prime denominator two contributes the zero local factor. -/
theorem goldbachFiniteCoefficientEulerProduct_eq_zero_of_not_even
    {Q N : ℕ} (hQ : 2 ≤ Q) (hN : ¬ Even N) :
    goldbachFiniteCoefficientEulerProduct
        (goldbachPrimeCutoff Q) N = 0 := by
  rw [goldbachFiniteCoefficientEulerProduct_eq_truncatedSeries hQ,
    goldbachTruncatedSeries_eq_zero_of_not_even hN]
  norm_num

/-- The coefficient-factorized major sum may be used directly by the existing
progression-residue terminal consumer. -/
theorem goldbachCount_pos_of_factored_progression_residue_bounds
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1)
    (residueError : (ℕ × ℕ) → ℕ → ℝ)
    (modelLower minorError : ℝ)
    (hmodel : modelLower ≤
      (goldbachProgressionFactoredMajorSum Q N).re)
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
      ‖goldbachRationalMinorContribution Q N‖ ≤ minorError)
    (hmargin :
      (∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachProgressionArcErrorBudget
          Q N aq residueError) +
        minorError < modelLower) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_progression_residue_bounds
    hscale residueError modelLower minorError
  · rw [goldbachProgressionArcModelMajorSum_eq_factored]
    exact hmodel
  · exact hnonneg
  · exact hresidue
  · exact hminor
  · exact hmargin

/-- Fully factorized finite-local-main certificate. The local-factor scale is
written through the prime-denominator Euler product, while the major model is
written through the exact coefficient-weighted clipped singular integrals.
All residue, model-to-main, and minor errors remain explicit and are charged
once. -/
theorem goldbachCount_pos_of_coefficient_truncated_certificate
    {arcQ localQ N : ℕ}
    (harcScale : 2 * arcQ ^ 2 < N + 1)
    (hlocalQ : 2 ≤ localQ)
    (residueError : (ℕ × ℕ) → ℕ → ℝ)
    (scale modelError minorError : ℝ)
    (hmodel :
      goldbachCoefficientTruncatedMainScale
          localQ N scale - modelError ≤
        (goldbachProgressionFactoredMajorSum arcQ N).re)
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
      modelError +
          (∑ aq ∈ goldbachRationalArcIndices arcQ,
            goldbachProgressionArcErrorBudget
              arcQ N aq residueError) +
          minorError <
        goldbachCoefficientTruncatedMainScale
          localQ N scale) :
    0 < goldbachCount N := by
  have hscaleEq :=
    goldbachCoefficientTruncatedMainScale_eq
      (Q := localQ) (N := N) hlocalQ scale
  apply goldbachCount_pos_of_progression_truncated_certificate
    harcScale residueError scale modelError minorError
  · rw [goldbachProgressionArcModelMajorSum_eq_factored,
      ← hscaleEq]
    exact hmodel
  · exact hnonneg
  · exact hresidue
  · exact hminor
  · rw [← hscaleEq]
    exact hmargin

end
end GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientBoundary
