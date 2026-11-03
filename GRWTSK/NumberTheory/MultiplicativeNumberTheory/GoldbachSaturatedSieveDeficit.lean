/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachActualSurvivorDeficit

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Full small-prime saturation removes composite survivors exactly, but
supplies no positive survivor count. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachSaturatedSieveDeficit
open GoldbachBoundarySignedPrimeMasks GoldbachFiniteSieveUpperComparison
open GoldbachActualSurvivorDeficit GoldbachSieveCorrectedEvenSource

theorem saturated_survivor_prime (S : Finset ℕ) (N n : ℕ)
    (hSat : ∀ ℓ : ℕ, Nat.Prime ℓ → ℓ^2≤N → ℓ ∈ S)
    (hn : 2≤n) (hnN : n≤N) (havoid : avoidsPrimeSet S n) : Nat.Prime n := by
  by_contra hprime
  have hp : Nat.Prime n.minFac := Nat.minFac_prime (by omega)
  have hs : n.minFac^2≤N := (Nat.minFac_sq_le_self (by omega) hprime).trans hnN
  exact havoid n.minFac (hSat n.minFac hp hs) (Nat.minFac_dvd n)

theorem saturated_composite_atom_zero (S : Finset ℕ) (X N p : ℕ)
    (hSat : ∀ ℓ : ℕ, Nat.Prime ℓ → ℓ^2≤N → ℓ ∈ S) (hpN : p≤N) :
    compositeSurvivorAtom S X N p=0 := by
  by_cases ha : avoidsPrimeSet S p ∧ avoidsPrimeSet S (N-p)
  · by_cases hp : 2≤p
    · by_cases hq : 2≤N-p
      · have hpp := saturated_survivor_prime S N p hSat hp hpN ha.1
        have hqp := saturated_survivor_prime S N (N-p) hSat hq (Nat.sub_le _ _) ha.2
        simp [compositeSurvivorAtom,ha,primeMask,hpp,hqp]
      · have hsmall : N-p=0 ∨ N-p=1 := by omega
        rcases hsmall with h | h
        all_goals simp [compositeSurvivorAtom,boundaryLogAtom,h]
    · have hsmall : p=0 ∨ p=1 := by omega
      rcases hsmall with rfl | rfl
      all_goals simp [compositeSurvivorAtom,boundaryLogAtom]
  · simp [compositeSurvivorAtom,ha]

theorem saturated_composite_mass_zero (S : Finset ℕ) (X N : ℕ)
    (hSat : ∀ ℓ : ℕ, Nat.Prime ℓ → ℓ^2≤N → ℓ ∈ S) :
    compositeSurvivorMass S X N=0 := by
  unfold compositeSurvivorMass
  apply Finset.sum_eq_zero
  intro p hp
  exact saturated_composite_atom_zero S X N p hSat
    (by simpa only [Finset.mem_range,Nat.lt_succ_iff] using hp)

/- Saturation requires all primes through sqrt(N). With this full sieve,
actual survivor mass is already the regular prime-pair mass (up to zero
logarithmic endpoint atoms). Its positivity remains the hard targetwise
counting obligation; local residue densities and a complete-period count
alone do not supply positivity in the finite target interval. -/
end GRWTSK.NumberTheory.Primes.GoldbachSaturatedSieveDeficit
