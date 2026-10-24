# Complete source: GRWTSK.NumberTheory.Primes.GoldbachPrimorialEulerTail

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc18a8b4f8e86ee7e3cb5a9c8ceded60e7105b31` · SHA-256 `0801fa5062ecf73aee2a27bf59dc8022715277ab22a3593d85160a80523fcc8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachCompositeCoefficient
import GRWTSK.NumberTheory.Primes.GoldbachFejerBoundary
import Mathlib.NumberTheory.Primorial
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite denominator sums, Euler products, and the explicit primorial tail

The multiplicative composite denominator coefficient turns the finite product

`prod_{p <= Q} (1 + C_p(N))`

into the exact sum of `C_d(N)` over divisors of the primorial `primorial Q`.
The rational-arc model only uses denominators `d <= Q`; the difference is
therefore an explicit finite sum over primorial divisors larger than `Q`.

The sign-aware Fejér lower source is also rewritten as a common core mass
times the short coefficient sum, minus one explicit negative-coefficient
penalty.  Combining both identities gives a fully explicit comparison between
the inherited finite coefficient Euler product and the exact Fejér lower
source.

All sums and products are finite.  No infinite singular series, prime-
progression estimate, minor-arc estimate, finite-exception result, or Goldbach
theorem is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachPrimorialEulerTail

open scoped BigOperators Real
open Finset Nat
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary
open GRWTSK.NumberTheory.Primes.GoldbachTruncatedSeries
open GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
open GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientBoundary
open GRWTSK.NumberTheory.Primes.GoldbachCompositeCoefficient
open GRWTSK.NumberTheory.Primes.GoldbachFejerCoreLowerBound
open GRWTSK.NumberTheory.Primes.GoldbachFejerBoundary

noncomputable section

/-- Prime cutoff agrees with Mathlib's finite set of primes at most `Q`. -/
theorem goldbachPrimeCutoff_eq_primesLE
    (Q : ℕ) :
    goldbachPrimeCutoff Q = Nat.primesLE Q := by
  rfl

/-- The finite sum of all composite denominator coefficients through `Q`. -/
def goldbachDenominatorCoefficientRangeSum
    (Q N : ℕ) : ℂ :=
  ∑ q ∈ goldbachDenominatorRange Q,
    goldbachProgressionDenominatorCoefficient q N

/-- Full divisor expansion attached to the primorial cutoff. -/
def goldbachPrimorialCoefficientDivisorSum
    (Q N : ℕ) : ℂ :=
  ∑ d ∈ (primorial Q).divisors,
    goldbachProgressionDenominatorCoefficient d N

/-- Divisors of the primorial which are also actual rational-arc
denominators. -/
def goldbachPrimorialShortDivisors
    (Q : ℕ) : Finset ℕ :=
  (primorial Q).divisors.filter (fun d => d ≤ Q)

/-- Primorial divisors omitted by the rational denominator cutoff. -/
def goldbachPrimorialTailDivisors
    (Q : ℕ) : Finset ℕ :=
  (primorial Q).divisors.filter (fun d => Q < d)

/-- Exact short primorial coefficient sum. -/
def goldbachPrimorialShortCoefficientSum
    (Q N : ℕ) : ℂ :=
  ∑ d ∈ goldbachPrimorialShortDivisors Q,
    goldbachProgressionDenominatorCoefficient d N

/-- Exact finite coefficient tail beyond the denominator cutoff. -/
def goldbachPrimorialCoefficientTail
    (Q N : ℕ) : ℂ :=
  ∑ d ∈ goldbachPrimorialTailDivisors Q,
    goldbachProgressionDenominatorCoefficient d N

/-- Absolute-value budget for the finite primorial tail. -/
def goldbachPrimorialCoefficientTailNorm
    (Q N : ℕ) : ℝ :=
  ∑ d ∈ goldbachPrimorialTailDivisors Q,
    ‖goldbachProgressionDenominatorCoefficient d N‖

/-- The finite coefficient Euler product is exactly the divisor sum over the
squarefree primorial. -/
theorem goldbachFiniteCoefficientEulerProduct_eq_primorialDivisorSum
    (Q N : ℕ) :
    goldbachFiniteCoefficientEulerProduct
        (goldbachPrimeCutoff Q) N =
      goldbachPrimorialCoefficientDivisorSum Q N := by
  let f := goldbachDenominatorCoefficientArithmeticFunction N
  have hmult : f.IsMultiplicative :=
    isMultiplicative_goldbachDenominatorCoefficientArithmeticFunction N
  have h :=
    hmult.prodPrimeFactors_one_add_of_squarefree
      (squarefree_primorial Q)
  unfold goldbachFiniteCoefficientEulerProduct
    goldbachPrimeCoefficientEulerFactor
    goldbachPrimorialCoefficientDivisorSum
  rw [primeFactors_primorial,
    ← goldbachPrimeCutoff_eq_primesLE] at h
  have hleft :
      (∏ p ∈ goldbachPrimeCutoff Q, (1 + f p)) =
        ∏ p ∈ goldbachPrimeCutoff Q,
          (1 + goldbachProgressionDenominatorCoefficient p N) := by
    apply Finset.prod_congr rfl
    intro p hp
    have hp0 : 0 < p := (mem_goldbachPrimeCutoff.mp hp).1.pos
    rw [show f p = goldbachProgressionDenominatorCoefficient p N from
      goldbachDenominatorCoefficientArithmeticFunction_apply_pos hp0]
  have hright :
      (∑ d ∈ (primorial Q).divisors, f d) =
        ∑ d ∈ (primorial Q).divisors,
          goldbachProgressionDenominatorCoefficient d N := by
    apply Finset.sum_congr rfl
    intro d hd
    exact goldbachDenominatorCoefficientArithmeticFunction_apply_pos
      (Nat.pos_of_mem_divisors hd)
  exact hleft.symm.trans (h.trans hright)

/-- The full primorial divisor sum splits exactly at the rational denominator
cutoff. -/
theorem goldbachPrimorialCoefficientDivisorSum_eq_short_add_tail
    (Q N : ℕ) :
    goldbachPrimorialCoefficientDivisorSum Q N =
      goldbachPrimorialShortCoefficientSum Q N +
        goldbachPrimorialCoefficientTail Q N := by
  unfold goldbachPrimorialCoefficientDivisorSum
    goldbachPrimorialShortCoefficientSum
    goldbachPrimorialCoefficientTail
    goldbachPrimorialShortDivisors
    goldbachPrimorialTailDivisors
  rw [← Finset.sum_filter_add_sum_filter_not
    (primorial Q).divisors (fun d => d ≤ Q)]
  simp only [not_le]

/-- Every short primorial divisor is a positive denominator at most `Q`. -/
theorem goldbachPrimorialShortDivisors_subset_denominatorRange
    (Q : ℕ) :
    goldbachPrimorialShortDivisors Q ⊆
      goldbachDenominatorRange Q := by
  intro d hd
  rw [goldbachPrimorialShortDivisors,
    Finset.mem_filter] at hd
  exact mem_goldbachDenominatorRange.mpr
    ⟨pos_of_mem_divisors hd.1, hd.2⟩

/-- A squarefree denominator through `Q` divides the primorial cutoff. -/
theorem squarefree_dvd_primorial_of_le
    {Q d : ℕ} (_hd0 : 0 < d)
    (hdQ : d ≤ Q) (hsq : Squarefree d) :
    d ∣ primorial Q := by
  exact dvd_trans hsq.dvd_primorial
    (primorial_dvd_primorial hdQ)

/-- The short primorial divisor sum equals the complete denominator-range
coefficient sum: nonsquarefree missing denominators contribute zero. -/
theorem goldbachPrimorialShortCoefficientSum_eq_denominatorRangeSum
    (Q N : ℕ) :
    goldbachPrimorialShortCoefficientSum Q N =
      goldbachDenominatorCoefficientRangeSum Q N := by
  unfold goldbachPrimorialShortCoefficientSum
    goldbachDenominatorCoefficientRangeSum
  apply Finset.sum_subset
    (goldbachPrimorialShortDivisors_subset_denominatorRange Q)
  intro d hdRange hdNot
  rcases mem_goldbachDenominatorRange.mp hdRange with
    ⟨hd0, hdQ⟩
  by_cases hsq : Squarefree d
  · exfalso
    apply hdNot
    unfold goldbachPrimorialShortDivisors
    rw [Finset.mem_filter]
    exact
      ⟨mem_divisors.mpr
        ⟨squarefree_dvd_primorial_of_le hd0 hdQ hsq,
          primorial_ne_zero Q⟩,
        hdQ⟩
  · exact
      goldbachProgressionDenominatorCoefficient_eq_zero_of_not_squarefree
        hd0 hsq

/-- Exact finite Euler-product decomposition into actual denominators and the
primorial tail. -/
theorem goldbachFiniteCoefficientEulerProduct_eq_range_add_tail
    (Q N : ℕ) :
    goldbachFiniteCoefficientEulerProduct
        (goldbachPrimeCutoff Q) N =
      goldbachDenominatorCoefficientRangeSum Q N +
        goldbachPrimorialCoefficientTail Q N := by
  rw [goldbachFiniteCoefficientEulerProduct_eq_primorialDivisorSum,
    goldbachPrimorialCoefficientDivisorSum_eq_short_add_tail,
    goldbachPrimorialShortCoefficientSum_eq_denominatorRangeSum]

/-- The finite primorial tail is controlled by its explicit absolute-value
budget. -/
theorem norm_goldbachPrimorialCoefficientTail_le
    (Q N : ℕ) :
    ‖goldbachPrimorialCoefficientTail Q N‖ ≤
      goldbachPrimorialCoefficientTailNorm Q N := by
  unfold goldbachPrimorialCoefficientTail
    goldbachPrimorialCoefficientTailNorm
  exact norm_sum_le _ _

/-- The tail norm budget is nonnegative. -/
theorem goldbachPrimorialCoefficientTailNorm_nonneg
    (Q N : ℕ) :
    0 ≤ goldbachPrimorialCoefficientTailNorm Q N := by
  unfold goldbachPrimorialCoefficientTailNorm
  exact Finset.sum_nonneg fun d hd => norm_nonneg _

/-- Penalty required when a real denominator coefficient is negative. -/
def goldbachFejerNegativeCoefficientPenalty
    (Q N : ℕ) : ℝ :=
  ∑ q ∈ goldbachDenominatorRange Q,
    if (goldbachProgressionDenominatorCoefficient q N).re < 0 then
      (-(goldbachProgressionDenominatorCoefficient q N).re) *
        (goldbachFejerWindowUpper Q N q -
          goldbachFejerCoreMain N)
    else 0

/-- Each indexed upper window dominates the common core mass. -/
theorem goldbachFejerCoreMain_le_windowUpper
    {Q N q : ℕ}
    (hq : q ∈ goldbachDenominatorRange Q) :
    goldbachFejerCoreMain N ≤
      goldbachFejerWindowUpper Q N q := by
  rcases mem_goldbachDenominatorRange.mp hq with
    ⟨hq0, hqQ⟩
  exact
    (goldbachFejerCoreMain_le_symmetric_re hq0 hqQ).trans
      (goldbachSymmetricRealSingularIntegral_re_le_upper Q N q)

/-- The negative-coefficient penalty is nonnegative. -/
theorem goldbachFejerNegativeCoefficientPenalty_nonneg
    (Q N : ℕ) :
    0 ≤ goldbachFejerNegativeCoefficientPenalty Q N := by
  unfold goldbachFejerNegativeCoefficientPenalty
  apply Finset.sum_nonneg
  intro q hq
  by_cases hc :
      (goldbachProgressionDenominatorCoefficient q N).re < 0
  · rw [if_pos hc]
    exact mul_nonneg (neg_nonneg.mpr hc.le)
      (sub_nonneg.mpr
        (goldbachFejerCoreMain_le_windowUpper hq))
  · rw [if_neg hc]

/-- One sign-aware lower term is a common-core contribution minus its exact
negative-coefficient penalty. -/
theorem goldbachFejerDenominatorLowerTerm_eq_core_sub_penalty
    {Q N q : ℕ}
    (_hq : q ∈ goldbachDenominatorRange Q) :
    goldbachFejerDenominatorLowerTerm Q N q =
      (goldbachProgressionDenominatorCoefficient q N).re *
          goldbachFejerCoreMain N -
        (if (goldbachProgressionDenominatorCoefficient q N).re < 0 then
          (-(goldbachProgressionDenominatorCoefficient q N).re) *
            (goldbachFejerWindowUpper Q N q -
              goldbachFejerCoreMain N)
        else 0) := by
  let c :=
    (goldbachProgressionDenominatorCoefficient q N).re
  unfold goldbachFejerDenominatorLowerTerm
  change
    (if 0 ≤ c then
      c * goldbachFejerCoreMain N
    else
      c * goldbachFejerWindowUpper Q N q) =
    c * goldbachFejerCoreMain N -
      (if c < 0 then
        (-c) *
          (goldbachFejerWindowUpper Q N q -
            goldbachFejerCoreMain N)
      else 0)
  by_cases hc : 0 ≤ c
  · rw [if_pos hc, if_neg (not_lt.mpr hc)]
    ring
  · have hclt : c < 0 := lt_of_not_ge hc
    rw [if_neg hc, if_pos hclt]
    ring

/-- Exact common-core-minus-penalty form of the complete sign-aware lower
source. -/
theorem goldbachFejerDenominatorLowerSum_eq_core_mul_range_sub_penalty
    (Q N : ℕ) :
    goldbachFejerDenominatorLowerSum Q N =
      goldbachFejerCoreMain N *
          (goldbachDenominatorCoefficientRangeSum Q N).re -
        goldbachFejerNegativeCoefficientPenalty Q N := by
  unfold goldbachFejerDenominatorLowerSum
    goldbachDenominatorCoefficientRangeSum
    goldbachFejerNegativeCoefficientPenalty
  simp only [Complex.re_sum]
  calc
    (∑ q ∈ goldbachDenominatorRange Q,
        goldbachFejerDenominatorLowerTerm Q N q) =
      ∑ q ∈ goldbachDenominatorRange Q,
        ((goldbachProgressionDenominatorCoefficient q N).re *
            goldbachFejerCoreMain N -
          (if (goldbachProgressionDenominatorCoefficient q N).re < 0 then
            (-(goldbachProgressionDenominatorCoefficient q N).re) *
              (goldbachFejerWindowUpper Q N q -
                goldbachFejerCoreMain N)
          else 0)) := by
            apply Finset.sum_congr rfl
            intro q hq
            exact
              goldbachFejerDenominatorLowerTerm_eq_core_sub_penalty hq
    _ =
      goldbachFejerCoreMain N *
          (∑ q ∈ goldbachDenominatorRange Q,
            (goldbachProgressionDenominatorCoefficient q N).re) -
        ∑ q ∈ goldbachDenominatorRange Q,
          (if (goldbachProgressionDenominatorCoefficient q N).re < 0 then
            (-(goldbachProgressionDenominatorCoefficient q N).re) *
              (goldbachFejerWindowUpper Q N q -
                goldbachFejerCoreMain N)
          else 0) := by
            rw [Finset.sum_sub_distrib]
            rw [← Finset.sum_mul]
            ring

/-- Explicit total comparison error: the primorial divisor tail plus the
negative-coefficient window penalty. -/
def goldbachFejerEulerTailError
    (Q N : ℕ) : ℝ :=
  goldbachFejerCoreMain N *
      goldbachPrimorialCoefficientTailNorm Q N +
    goldbachFejerNegativeCoefficientPenalty Q N

/-- The explicit Euler-tail comparison error is nonnegative. -/
theorem goldbachFejerEulerTailError_nonneg
    (Q N : ℕ) :
    0 ≤ goldbachFejerEulerTailError Q N := by
  unfold goldbachFejerEulerTailError
  exact add_nonneg
    (mul_nonneg
      (by unfold goldbachFejerCoreMain; positivity)
      (goldbachPrimorialCoefficientTailNorm_nonneg Q N))
    (goldbachFejerNegativeCoefficientPenalty_nonneg Q N)

/-- The finite coefficient Euler-product scale at the Fejér core mass, minus
the explicit tail and sign penalties, is a lower bound for the exact
denominator lower source. -/
theorem goldbachCoefficientTruncatedMainScale_sub_fejerEulerTailError_le
    (Q N : ℕ) :
    goldbachCoefficientTruncatedMainScale
        Q N (goldbachFejerCoreMain N) -
        goldbachFejerEulerTailError Q N ≤
      goldbachFejerDenominatorLowerSum Q N := by
  have hsplit :=
    goldbachFiniteCoefficientEulerProduct_eq_range_add_tail Q N
  have htail :=
    norm_goldbachPrimorialCoefficientTail_le Q N
  have htailRe :
      |(goldbachPrimorialCoefficientTail Q N).re| ≤
        goldbachPrimorialCoefficientTailNorm Q N :=
    (Complex.abs_re_le_norm
      (goldbachPrimorialCoefficientTail Q N)).trans htail
  have hcore0 : 0 ≤ goldbachFejerCoreMain N := by
    unfold goldbachFejerCoreMain
    positivity
  rw [goldbachFejerDenominatorLowerSum_eq_core_mul_range_sub_penalty]
  unfold goldbachCoefficientTruncatedMainScale
    goldbachFejerEulerTailError
  have hreal := congrArg Complex.re hsplit
  simp only [Complex.add_re] at hreal
  rw [hreal]
  have hupperTail :
      (goldbachPrimorialCoefficientTail Q N).re ≤
        goldbachPrimorialCoefficientTailNorm Q N :=
    (abs_le.mp htailRe).2
  nlinarith

/-- Terminal finite certificate using the exact composite coefficient formula,
the explicit primorial tail, the Fejér sign penalty, progression residuals,
and the complete signed minor contribution. -/
theorem goldbachCount_pos_of_fejerEulerTail_certificate
    {Q N : ℕ}
    (hQ : 2 ≤ Q)
    (hscale : 2 * Q ^ 2 < N + 1)
    (residueError : (ℕ × ℕ) → ℕ → ℝ)
    (minorError : ℝ)
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
      goldbachFejerEulerTailError Q N +
          (∑ aq ∈ goldbachRationalArcIndices Q,
            goldbachProgressionArcErrorBudget
              Q N aq residueError) +
          minorError <
        goldbachCoefficientTruncatedMainScale
          Q N (goldbachFejerCoreMain N)) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_fejerDenominator_coefficient_certificate
    hscale hQ residueError
    (goldbachFejerCoreMain N)
    (goldbachFejerEulerTailError Q N)
    minorError
  · exact
      goldbachCoefficientTruncatedMainScale_sub_fejerEulerTailError_le
        Q N
  · exact hnonneg
  · exact hresidue
  · exact hminor
  · exact hmargin

end
end GRWTSK.NumberTheory.Primes.GoldbachPrimorialEulerTail
```
