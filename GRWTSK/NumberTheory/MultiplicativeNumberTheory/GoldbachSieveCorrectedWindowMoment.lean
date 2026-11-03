/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachSieveCorrectedEvenSource

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact full-target corrected window moment. No sign is assigned to the
mixed term and no distribution bound is supplied. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachSieveCorrectedWindowMoment
open GoldbachWeighted GoldbachTruncatedOddAggregate GoldbachSieveCorrectedEvenSource

theorem full_corrected_window_moment (S : Finset ℕ) (X : ℕ) (W : Finset ℕ)
    (hprime : ∀ ℓ ∈ S, Nat.Prime ℓ) (hSX : ∀ ℓ ∈ S, ℓ≤X)
    (hW : ∀ N ∈ W, (∀ ℓ ∈ S, ℓ≤N) ∧ N≤2*X ∧ 4<N ∧ N%2=0)
    (b β ω : ℕ → ℝ)
    (hD : ∀ N ∈ W, b N+2*(β N+excludedMass S X N)≠0) :
    (∑ N ∈ W, ω N*(goldbachLogMass N/(b N+2*(β N+excludedMass S X N))-1)^2) =
    ∑ N ∈ W, ω N*
      ((truncatedOddMass X N-b N)^2+
       4*(truncatedOddMass X N-b N)*(regularMass S X N-β N)+
       4*(regularMass S X N-β N)^2)/
      (b N+2*(β N+excludedMass S X N))^2 := by
  apply Finset.sum_congr rfl
  intro N hN
  obtain ⟨hSN,hNX,hlarge,heven⟩ := hW N hN
  rw [actual_corrected_normalized_error S X N hprime hSX hSN hNX hlarge heven
    (b N) (β N) (hD N hN),div_pow]
  ring

/- All targets in W and all source endpoints remain. Exact exception
centering removes E from the numerator but never from its target-dependent
denominator. For a positivity conclusion, one still needs positive
baselines and a strict actual error budget; an average alone leaves
exceptional targets. No finite-to-universal inference is made. -/
end GRWTSK.NumberTheory.Primes.GoldbachSieveCorrectedWindowMoment
