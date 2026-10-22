/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachPeriodizedSingularWindow
import GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientBoundary
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Goldbach coefficient boundary with common singular windows

The periodized change-of-variables theorem removes numerator dependence from
the clipped finite singular integral. This module rewrites the exact factored
progression major sum through either the intrinsic circle window or, under the
inherited separation scale, the ordinary symmetric real window.

The resulting expressions remain finite exact identities. No singular
integral is evaluated, no denominator sum is replaced by an infinite Euler
product, and every progression, model-to-main, and signed minor error remains
an explicit premise of the terminal consumers.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachCommonWindowBoundary

open scoped BigOperators Real
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
open GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
open GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientBoundary
open GRWTSK.NumberTheory.Primes.GoldbachPeriodizedSingularWindow
open GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition

noncomputable section

/-- The exact coefficient-weighted major sum with the common intrinsic circle
window inserted at every indexed denominator. -/
def goldbachProgressionCircleWindowMajorSum
    (Q N : ℕ) : ℂ :=
  ∑ aq ∈ goldbachRationalArcIndices Q,
    goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
      goldbachCommonCircleSingularIntegral Q N aq.2

/-- Under the safe radius regime, the same finite major sum written with the
ordinary symmetric real window. -/
def goldbachProgressionSymmetricWindowMajorSum
    (Q N : ℕ) : ℂ :=
  ∑ aq ∈ goldbachRationalArcIndices Q,
    goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
      goldbachSymmetricRealSingularIntegral Q N aq.2

/-- The exact factored major sum is always the intrinsic common-circle-window
sum. No disjointness or small-radius premise is needed for this identity. -/
theorem goldbachProgressionFactoredMajorSum_eq_circleWindow
    (Q N : ℕ) :
    goldbachProgressionFactoredMajorSum Q N =
      goldbachProgressionCircleWindowMajorSum Q N := by
  unfold goldbachProgressionFactoredMajorSum
    goldbachProgressionCircleWindowMajorSum
  apply Finset.sum_congr rfl
  intro aq haq
  rw [goldbachProgressionArcSingularIntegral_eq_common haq]

/-- Under the inherited global separation scale, the exact factored major sum
is the finite symmetric-window sum. -/
theorem goldbachProgressionFactoredMajorSum_eq_symmetricWindow
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) :
    goldbachProgressionFactoredMajorSum Q N =
      goldbachProgressionSymmetricWindowMajorSum Q N := by
  unfold goldbachProgressionFactoredMajorSum
    goldbachProgressionSymmetricWindowMajorSum
  apply Finset.sum_congr rfl
  intro aq haq
  rw [goldbachProgressionArcSingularIntegral_eq_symmetric
    haq hscale]

/-- Every reduced numerator at one admitted denominator has the same intrinsic
circle singular integral. Hence the denominator block collapses without an
additional common-window premise. -/
theorem goldbachProgressionDenominatorMajorBlock_eq_common
    {Q N q : ℕ} (hq : 0 < q) (hqQ : q ≤ Q) :
    goldbachProgressionDenominatorMajorBlock Q N q =
      goldbachProgressionDenominatorCoefficient q N *
        goldbachCommonCircleSingularIntegral Q N q := by
  apply goldbachProgressionDenominatorMajorBlock_factor_of_common
  intro a ha
  have harange : a < q :=
    Finset.mem_range.mp (Finset.mem_filter.mp ha).1
  have hacoprime : q.Coprime a :=
    (Finset.mem_filter.mp ha).2
  have haQ : a ≤ Q :=
    (Nat.le_of_lt harange).trans hqQ
  have hindex :
      (a, q) ∈ goldbachRationalArcIndices Q := by
    exact mem_goldbachRationalArcIndices.mpr
      ⟨haQ, hqQ, hq, harange, hacoprime.symm⟩
  exact goldbachProgressionArcSingularIntegral_eq_common hindex

/-- Under the inherited separation scale, a complete denominator block
collapses to its arithmetic coefficient times the symmetric real singular
integral. -/
theorem goldbachProgressionDenominatorMajorBlock_eq_symmetric
    {Q N q : ℕ}
    (hq : 0 < q) (hqQ : q ≤ Q)
    (hscale : 2 * Q ^ 2 < N + 1) :
    goldbachProgressionDenominatorMajorBlock Q N q =
      goldbachProgressionDenominatorCoefficient q N *
        goldbachSymmetricRealSingularIntegral Q N q := by
  rw [goldbachProgressionDenominatorMajorBlock_eq_common hq hqQ,
    goldbachCommonCircleSingularIntegral_eq_symmetric]
  exact goldbachRationalArcRadius_lt_half_of_denominator
    hq hqQ hscale

/-- A lower bound for the intrinsic common-window major sum can be passed to
the inherited strict progression-residue consumer. -/
theorem goldbachCount_pos_of_circleWindow_progression_bounds
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1)
    (residueError : (ℕ × ℕ) → ℕ → ℝ)
    (modelLower minorError : ℝ)
    (hmodel : modelLower ≤
      (goldbachProgressionCircleWindowMajorSum Q N).re)
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
  apply goldbachCount_pos_of_factored_progression_residue_bounds
    hscale residueError modelLower minorError
  · rw [goldbachProgressionFactoredMajorSum_eq_circleWindow]
    exact hmodel
  · exact hnonneg
  · exact hresidue
  · exact hminor
  · exact hmargin

/-- Under the separation scale, a lower bound for the symmetric-window major
sum can be passed to the inherited strict progression-residue consumer. -/
theorem goldbachCount_pos_of_symmetricWindow_progression_bounds
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1)
    (residueError : (ℕ × ℕ) → ℕ → ℝ)
    (modelLower minorError : ℝ)
    (hmodel : modelLower ≤
      (goldbachProgressionSymmetricWindowMajorSum Q N).re)
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
  apply goldbachCount_pos_of_factored_progression_residue_bounds
    hscale residueError modelLower minorError
  · rw [goldbachProgressionFactoredMajorSum_eq_symmetricWindow hscale]
    exact hmodel
  · exact hnonneg
  · exact hresidue
  · exact hminor
  · exact hmargin

/-- Fully factorized finite-local-main certificate with the major model written
through the symmetric common windows. Every progression, model-to-main, and
signed minor error is retained and charged once. -/
theorem goldbachCount_pos_of_symmetricWindow_coefficient_certificate
    {arcQ localQ N : ℕ}
    (harcScale : 2 * arcQ ^ 2 < N + 1)
    (hlocalQ : 2 ≤ localQ)
    (residueError : (ℕ × ℕ) → ℕ → ℝ)
    (scale modelError minorError : ℝ)
    (hmodel :
      goldbachCoefficientTruncatedMainScale
          localQ N scale - modelError ≤
        (goldbachProgressionSymmetricWindowMajorSum
          arcQ N).re)
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
  apply goldbachCount_pos_of_coefficient_truncated_certificate
    harcScale hlocalQ residueError
    scale modelError minorError
  · rw [goldbachProgressionFactoredMajorSum_eq_symmetricWindow
      harcScale]
    exact hmodel
  · exact hnonneg
  · exact hresidue
  · exact hminor
  · exact hmargin

end
end GRWTSK.NumberTheory.Primes.GoldbachCommonWindowBoundary
