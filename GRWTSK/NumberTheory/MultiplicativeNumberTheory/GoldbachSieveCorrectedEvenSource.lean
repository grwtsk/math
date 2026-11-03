/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachExcludedPrimeReindex

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Full even target and exact finite-sieve correction, with normalized
baseline retaining that correction. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachSieveCorrectedEvenSource
open GoldbachWeighted GoldbachTruncatedOddAggregate GoldbachAllCutoffWindowBoundary
open GoldbachFiniteSieveUpperComparison GoldbachSieveOrientedCutoffCorrection
open GoldbachExcludedPrimeReindex

def regularMass (S : Finset ℕ) (X N : ℕ) : ℝ :=
  ∑ p ∈ Finset.range (N+1), regularBoundaryAtom S X N p

def excludedMass (S : Finset ℕ) (X N : ℕ) : ℝ :=
  ∑ ℓ ∈ S, if X<N-ℓ then primeLogWeight (N-ℓ)*Real.log (ℓ : ℝ) else 0

theorem actual_even_sieve_source (S : Finset ℕ) (X N : ℕ)
    (hprime : ∀ ℓ ∈ S, Nat.Prime ℓ) (hSX : ∀ ℓ ∈ S, ℓ≤X)
    (hSN : ∀ ℓ ∈ S, ℓ≤N) (hNX : N≤2*X) (hN : 4<N) (he : N%2=0) :
    goldbachLogMass N=truncatedOddMass X N+2*(regularMass S X N+excludedMass S X N) := by
  rw [full_even_source_any_cutoff X N hNX hN he,
    full_boundary_oriented_sieve_split S X N hSX,
    actual_excluded_prime_correction S X N hprime hSN]
  rfl

theorem actual_corrected_normalized_error (S : Finset ℕ) (X N : ℕ)
    (hprime : ∀ ℓ ∈ S, Nat.Prime ℓ) (hSX : ∀ ℓ ∈ S, ℓ≤X)
    (hSN : ∀ ℓ ∈ S, ℓ≤N) (hNX : N≤2*X) (hN : 4<N) (he : N%2=0)
    (b β : ℝ) (hD : b+2*(β+excludedMass S X N)≠0) :
    goldbachLogMass N/(b+2*(β+excludedMass S X N))-1 =
      (truncatedOddMass X N-b+2*(regularMass S X N-β))/
        (b+2*(β+excludedMass S X N)) := by
  rw [actual_even_sieve_source S X N hprime hSX hSN hNX hN he]
  field_simp
  <;> ring

/- The correction cancels in the centered numerator only because the same
exact quantity remains in the denominator. Accuracy of b and beta, a
positive baseline and full targetwise/window error bounds are unsupplied. -/
end GRWTSK.NumberTheory.Primes.GoldbachSieveCorrectedEvenSource
