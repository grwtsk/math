/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvillePrimeDelayObstruction
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set Filter Topology
open GRWTSK.NumberTheory.LiouvillePrimeDelayObstruction

/-!
# Reciprocal-prime-mass obstruction for Liouville-style prime delays

This source records the exact formal interfaces for the stronger obstruction
proved in the companion mathematical review.

The earlier sparse-prime obstruction assumes summability at an exponent
`0 < ρ < 1 / 2`.  The new argument only assumes convergence of the selected
primes' reciprocal mass.  It then derives, on paper, a positive linear mean and
a positive exponential lower bound for the unchanged causal energy.

The analytical implication and the finite weighted-coverage estimates below
remain named propositions, not theorems or axioms.  No cancellation theorem for
the actual Liouville function is asserted.
-/

namespace GRWTSK.NumberTheory.LiouvilleReciprocalPrimeMassObstruction

/-- An infinite prime set with finite reciprocal-prime mass. -/
def ReciprocalSparsePrimeSet (S : Set ℕ) : Prop :=
  S.Infinite ∧ IsPrimeSet S ∧
    Summable (fun p : S => 1 / (p.1 : ℝ))

/-- The ordinary signed prefix associated with a real coefficient source. -/
def prefix (a : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, a n

/-- A positive linear Cesàro mean for the signed source. -/
def PositiveLinearMean (a : ℕ → ℝ) : Prop :=
  ∃ c : ℝ, 0 < c ∧
    Tendsto (fun N : ℕ => prefix a N / (N : ℝ)) atTop (𝓝 c)

/-- The exact all-positive-rate causal-energy upper target for a coefficient
source, with the original causal response retained. -/
def AllPositiveRateCausalEnergyUpperBound (a : ℕ → ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ T : ℝ, 0 ≤ T →
        causalEnergy a T ≤ C * Real.exp (ε * T)

/-- Arithmetic data for a reciprocal-sparse exact-delay mean model. -/
structure ReciprocalSparsePrimeDelayMeanModel where
  primes : Set ℕ
  coefficient : ℕ → ℝ
  reciprocalSparse : ReciprocalSparsePrimeSet primes
  exactDelays : ExactPrimeDelaysOn coefficient primes
  positiveMean : PositiveLinearMean coefficient

/-- The stronger obstruction proved in the companion review: there is an
infinite, unbounded exact-delay prime set with convergent reciprocal mass whose
completely multiplicative sign source has positive exponential causal energy
and therefore fails the all-positive-rate upper target.

This declaration is intentionally an open proposition. -/
def InfiniteReciprocalSparsePrimeDelayObstruction : Prop :=
  ∃ M : ReciprocalSparsePrimeDelayMeanModel,
    ExponentialCausalEnergyLowerBound M.coefficient ∧
      ¬ AllPositiveRateCausalEnergyUpperBound M.coefficient

/-- Weight not covered by the selected divisibility edges at the integer `n`. -/
def uncoveredWeight (P : Finset ℕ) (w : ℕ → ℝ) (n : ℕ) : ℝ :=
  ∑ p ∈ P.filter (fun p => ¬p ∣ n), w p

/-- Exact finite-band lower bound proved in the review:
the average uncovered weight is at least
`sum p in P, w p * (1 - 1 / p)`.

This is a named proposition pending Lean formalization. -/
def FiniteWeightedCoverageLowerBound : Prop :=
  ∀ (P : Finset ℕ) (w : ℕ → ℝ) (N : ℕ), 0 < N →
    (∀ p ∈ P, Nat.Prime p) →
    (∀ p ∈ P, 0 ≤ w p) →
    (∑ n ∈ Finset.Icc 1 N, uncoveredWeight P w n) / (N : ℝ) ≥
      ∑ p ∈ P, w p * (1 - 1 / (p : ℝ))

/-- Harmonic-weight diagonal floor proved in the review.  The square average of
the uncovered reciprocal-prime mass is at least the square of
`sum p in P, (1/p) * (1 - 1/p)`.

This proposition isolates why growing reciprocal mass alone cannot close a
norm-only prime-band bootstrap: signed cross-prime covariance is indispensable.
-/
def ReciprocalCoverageDiagonalFloor : Prop :=
  ∀ (P : Finset ℕ) (N : ℕ), 0 < N →
    (∀ p ∈ P, Nat.Prime p) →
    let U : ℕ → ℝ := uncoveredWeight P (fun p => 1 / (p : ℝ))
    (∑ n ∈ Finset.Icc 1 N, U n ^ 2) / (N : ℝ) ≥
      (∑ p ∈ P, (1 / (p : ℝ)) * (1 - 1 / (p : ℝ))) ^ 2

theorem reciprocalSparse_infinite
    {S : Set ℕ} (hS : ReciprocalSparsePrimeSet S) : S.Infinite :=
  hS.1

theorem reciprocalSparse_isPrimeSet
    {S : Set ℕ} (hS : ReciprocalSparsePrimeSet S) : IsPrimeSet S :=
  hS.2.1

theorem reciprocalSparse_summable
    {S : Set ℕ} (hS : ReciprocalSparsePrimeSet S) :
    Summable (fun p : S => 1 / (p.1 : ℝ)) :=
  hS.2.2

theorem meanModel_exactDelay
    (M : ReciprocalSparsePrimeDelayMeanModel) {p : ℕ}
    (hp : p ∈ M.primes) :
    ExactPrimeDelayAt M.coefficient p :=
  M.exactDelays p hp

end GRWTSK.NumberTheory.LiouvilleReciprocalPrimeMassObstruction
