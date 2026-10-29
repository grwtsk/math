/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Imported GRWTSK and Mathlib authorship and licenses are retained. -/
import GRWTSK.MeasureAndIntegration.TentZeroEstimates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupDyadicEndpoint

/-!
# Compatibility adapters: arithmetic input -> RH -> prime consequences

RH-free geometry, signed source identities and count extraction now live in
TentZeroEstimates and TentPrimeConsequences. All old public names and types
are retained. RH occurs here only as one supplier for the canonical envelope;
the pickup adapter derives it from the unchanged DyadicBirthBound interface.
No converse from unweighted short-interval counts to RH is claimed.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Chebyshev.RHShortIntervalCount
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentKernelTail
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.CanonicalHighCounting
open GRWTSK.RiemannHypothesis.CriticalDensityCriterion
open ShortIntervalPrimeCount

/-- Apply exactly the canonical RH exclusions to each actual source point. -/
theorem re_zero_of_RH (hRH : _root_.RiemannHypothesis) (z : ZeroPoint) :
    z.1.re = 1 / 2 := hRH z.1 z.2.1 z.2.2.1 z.2.2.2

/-- A pole-free low-height bound; it includes zero height and both signs. -/
theorem norm_tentKernel_le_low (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (z : ℂ) (hz : z.re ≤ 1 / 2) :
    ‖tentKernel x h z‖ ≤ 2 * h * densityBound (x - h) (x + h) (1 / 2) :=
  TentZeroEstimates.norm_tentKernel_le_low x h hh ha z hz

/-- RH improves the numerator of the complete omitted tail from b^2 to b^(3/2).
The finite low inventory is not dropped, and no coefficient-one count is used. -/
theorem rh_complement_bound (hRH : _root_.RiemannHypothesis)
    (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h) (hT : 2 ≤ T) :
    (∑' z : {z : ZeroPoint // z ∉ heightHead T},
      ‖(multiplicity z.1 : ℂ) * tentKernel x h z.1.1‖) ≤
      countingCoefficient * tentTailBudget x h (1 / 2) T :=
  TentZeroEstimates.complement_bound_of_upper
    (upper_of_riemannHypothesis hRH) x h T hh ha hT

/-- Full RH spectral allowance with the actual finite low count retained. -/
theorem rh_zeroContribution_bound (hRH : _root_.RiemannHypothesis)
    (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h) (hT : 2 ≤ T) :
    ‖zeroContribution x h‖ ≤
      (2 * h * densityBound (x - h) (x + h) (1 / 2)) *
        ((heightCount 2 : ℝ) + countingCoefficient * (T * Real.log T)) +
      countingCoefficient * tentTailBudget x h (1 / 2) T :=
  TentZeroEstimates.zeroContribution_bound_of_upper
    (upper_of_riemannHypothesis hRH) x h T hh ha hT

/-- Compatibility name; the source constant is defined upstream. -/
abbrev coarseSpectralConstant : ℝ := TentZeroEstimates.coarseSpectralConstant

theorem coarseSpectralConstant_nonnegative : 0 ≤ coarseSpectralConstant :=
  TentZeroEstimates.coarseSpectralConstant_nonnegative

/-- A coarse, uniform spectral estimate in one-sided logarithmic coordinates.
Both the radius and the high/low cutoff are specified, not postulated. -/
theorem rh_log_window_zero_bound (hRH : _root_.RiemannHypothesis)
    (t h : ℝ) (ht : 1 ≤ t) (hh : 1 ≤ h)
    (hshort : 2 * h ≤ (Real.exp t) ^ 2) :
    ‖zeroContribution ((Real.exp t) ^ 2 + h) h‖ ≤
      coarseSpectralConstant * (t * Real.exp t) :=
  TentZeroEstimates.log_window_zero_bound_of_upper
    (upper_of_riemannHypothesis hRH) t h ht hh hshort

/-- Elementary growth control, with no unquantified limit interchange. -/
theorem exp_ge_square_quarter (t : ℝ) (ht : 0 ≤ t) : t ^ 2 / 4 ≤ Real.exp t :=
  TentPrimeConsequences.exp_ge_square_quarter t ht

/-- Full RH consequence with a nonoptimal fixed Cramer constant.
The only analytic hypothesis is canonical RH; the power constant is constructed. -/
theorem many_primes_in_log_coordinates_of_RH (hRH : _root_.RiemannHypothesis) :
    ∃ B : ℝ, 0 < B ∧ ∀ t : ℝ, max 1 (8 * B) ≤ t →
      Real.exp t < (primeCount ((Real.exp t) ^ 2)
        ((Real.exp t) ^ 2 + 2 * B * t * Real.exp t) : ℝ) := by
  obtain ⟨A, hA, hnet⟩ := TentPrimeConsequences.signed_bound_of_zero_bound
    coarseSpectralConstant_nonnegative (rh_log_window_zero_bound hRH)
  exact TentPrimeConsequences.many_primes_in_log_coordinates_of_signed_bound A hA hnet

/-- For some fixed B>0, every sufficiently large real interval
(x, x+B*sqrt(x)*log(x)] contains more than sqrt(x) actual primes. -/
theorem many_primes_of_RH (hRH : _root_.RiemannHypothesis) :
    ∃ B X : ℝ, 0 < B ∧ 0 < X ∧ ∀ x : ℝ, X ≤ x →
      Real.sqrt x < (primeCount x (x + B * Real.sqrt x * Real.log x) : ℝ) :=
  TentPrimeConsequences.many_primes_of_zero_bound
    coarseSpectralConstant_nonnegative (rh_log_window_zero_bound hRH)

/-- The same theorem returns a literal prime, not only positive prime-power mass. -/
theorem prime_in_short_interval_of_RH (hRH : _root_.RiemannHypothesis) :
    ∃ B X : ℝ, 0 < B ∧ 0 < X ∧ ∀ x : ℝ, X ≤ x →
      ∃ p : ℕ, Nat.Prime p ∧ x < (p : ℝ) ∧
        (p : ℝ) ≤ x + B * Real.sqrt x * Real.log x :=
  TentPrimeConsequences.prime_in_short_interval_of_many_primes (many_primes_of_RH hRH)

/-- Consecutive-prime gap consequence with the same fixed constant.
The least-successor condition is literal; natural subtraction is cast only
with p<q supplied. No finite numerical prime inventory is used. -/
theorem consecutive_prime_gap_of_RH (hRH : _root_.RiemannHypothesis) :
    ∃ B X : ℝ, 0 < B ∧ 0 < X ∧ ∀ p q : ℕ,
      Nat.Prime p → Nat.Prime q → p < q →
      (∀ r : ℕ, Nat.Prime r → p < r → q ≤ r) → X ≤ (p : ℝ) →
      ((q - p : ℕ) : ℝ) ≤ B * Real.sqrt (p : ℝ) * Real.log (p : ℝ) :=
  TentPrimeConsequences.consecutive_prime_gap_of_prime_windows
    (prime_in_short_interval_of_RH hRH)

/-- The same downstream conclusion at every sufficiently late actual dyadic cutoff.
The elementary cutoff coverage is proved, not passed as a sequence hypothesis. -/
theorem many_primes_dyadic_of_RH (hRH : _root_.RiemannHypothesis) :
    ∃ B : ℝ, 0 < B ∧ ∃ J : ℕ, ∀ j : ℕ, J ≤ j →
      Real.sqrt ((2 ^ j : ℕ) : ℝ) <
        (primeCount ((2 ^ j : ℕ) : ℝ)
          (((2 ^ j : ℕ) : ℝ) + B * Real.sqrt ((2 ^ j : ℕ) : ℝ) *
            ((j : ℝ) * Real.log 2)) : ℝ) :=
  TentPrimeConsequences.many_primes_dyadic_of_many_primes (many_primes_of_RH hRH)

/-- The existing signed pickup programme can feed the downstream consequence.
DyadicBirthBound remains an explicit upstream arithmetic hypothesis. -/
theorem many_primes_of_dyadicBirthBound
    (h : GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.DyadicBirthBound) :
    ∃ B X : ℝ, 0 < B ∧ 0 < X ∧ ∀ x : ℝ, X ≤ x →
      Real.sqrt x < (primeCount x (x + B * Real.sqrt x * Real.log x) : ℝ) :=
  many_primes_of_RH
    (GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.riemannHypothesis_of_dyadicBirthBound h)

end GRWTSK.NumberTheory.Chebyshev.RHShortIntervalCount
