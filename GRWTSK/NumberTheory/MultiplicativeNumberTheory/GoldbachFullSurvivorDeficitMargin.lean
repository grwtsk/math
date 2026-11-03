/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachActualSurvivorDeficit

set_option autoImplicit false
noncomputable section

/-! Exact full target deficit margin, retaining interior and excluded-prime
mass. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachFullSurvivorDeficitMargin
open GoldbachWeighted GoldbachTruncatedOddAggregate GoldbachSieveCorrectedEvenSource
open GoldbachActualSurvivorDeficit

theorem actual_even_full_deficit_source (S : Finset ℕ) (X N : ℕ)
    (hprime : ∀ ℓ ∈ S, Nat.Prime ℓ) (hSX : ∀ ℓ ∈ S, ℓ≤X)
    (hSN : ∀ ℓ ∈ S, ℓ≤N) (hNX : N≤2*X) (hN : 4<N) (he : N%2=0) :
    goldbachLogMass N=truncatedOddMass X N+
      2*(survivorMass S X N-compositeSurvivorMass S X N+excludedMass S X N) := by
  have hs := actual_survivor_mass_split S hprime X N
  have hg := actual_even_sieve_source S X N hprime hSX hSN hNX hN he
  linarith

theorem actual_full_target_deficit_margin (S : Finset ℕ) (X N : ℕ)
    (hprime : ∀ ℓ ∈ S, Nat.Prime ℓ) (hSX : ∀ ℓ ∈ S, ℓ≤X)
    (hSN : ∀ ℓ ∈ S, ℓ≤N) (hNX : N≤2*X) (hN : 4<N) (he : N%2=0) :
    (∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p+q=N) ↔
      compositeSurvivorMass S X N<survivorMass S X N+excludedMass S X N+
        truncatedOddMass X N/2 := by
  rw [← goldbachLogMass_pos_iff]
  rw [actual_even_full_deficit_source S X N hprime hSX hSN hNX hN he]
  constructor <;> intro h <;> linarith

/- This is an exact source equivalence, not an arithmetic proof of its
strict right-hand side. It neither replaces actual masks by sieve support
nor discards interior/exception terms. A uniform strict targetwise margin
or a full error bound excluding every exceptional target remains missing. -/
end GRWTSK.NumberTheory.Primes.GoldbachFullSurvivorDeficitMargin
