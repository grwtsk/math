/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachSaturatedSieveDeficit
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachFullSurvivorDeficitMargin
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachExcludedMassSupportBound

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact fully sieved full target, retaining every positive source sector.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachSaturatedFullSource
open GoldbachWeighted GoldbachTruncatedOddAggregate GoldbachBoundarySignedPrimeMasks
open GoldbachBoundaryMarginalLowerBound GoldbachFiniteSieveUpperComparison
open GoldbachActualSurvivorDeficit GoldbachSaturatedSieveDeficit GoldbachFullSurvivorDeficitMargin
open GoldbachSieveCorrectedEvenSource GoldbachExcludedMassSupportBound

theorem actual_survivor_mass_nonneg (S : Finset ℕ) (X N : ℕ) : 0≤survivorMass S X N := by
  unfold survivorMass
  apply Finset.sum_nonneg
  intro p _
  unfold survivorBoundaryAtom
  split_ifs
  · exact boundaryLogAtom_nonneg X N p
  · exact le_rfl

theorem actual_saturated_even_source (S : Finset ℕ) (X N : ℕ)
    (hprime : ∀ ℓ ∈ S, Nat.Prime ℓ) (hSX : ∀ ℓ ∈ S, ℓ≤X)
    (hSN : ∀ ℓ ∈ S, ℓ≤N) (hNX : N≤2*X) (hN : 4<N) (he : N%2=0)
    (hSat : ∀ ℓ : ℕ, Nat.Prime ℓ → ℓ^2≤N → ℓ ∈ S) :
    goldbachLogMass N=truncatedOddMass X N+2*(survivorMass S X N+excludedMass S X N) := by
  rw [actual_even_full_deficit_source S X N hprime hSX hSN hNX hN he,
    saturated_composite_mass_zero S X N hSat,sub_zero]

theorem actual_saturated_positive_sector_iff (S : Finset ℕ) (X N : ℕ)
    (hprime : ∀ ℓ ∈ S, Nat.Prime ℓ) (hSX : ∀ ℓ ∈ S, ℓ≤X)
    (hSN : ∀ ℓ ∈ S, ℓ≤N) (hNX : N≤2*X) (hN : 4<N) (he : N%2=0)
    (hSat : ∀ ℓ : ℕ, Nat.Prime ℓ → ℓ^2≤N → ℓ ∈ S) :
    (∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p+q=N) ↔
      0<truncatedOddMass X N ∨ 0<survivorMass S X N ∨ 0<excludedMass S X N := by
  rw [← goldbachLogMass_pos_iff,actual_saturated_even_source S X N hprime hSX hSN hNX hN he hSat]
  have hC := truncatedOddMass_nonneg X N
  have hS := actual_survivor_mass_nonneg S X N
  have hE := excluded_mass_nonneg S X N
  constructor
  · intro h
    by_contra hn
    push_neg at hn
    linarith
  · rintro (h | h | h) <;> linarith

/- Full small-prime saturation supplies zero composite deficit, not positive
finite survivor mass. At least one displayed actual sector must still be
shown positive at each target. Complete-period residue densities do not
supply that missing finite-interval arithmetic assertion. -/
end GRWTSK.NumberTheory.Primes.GoldbachSaturatedFullSource
