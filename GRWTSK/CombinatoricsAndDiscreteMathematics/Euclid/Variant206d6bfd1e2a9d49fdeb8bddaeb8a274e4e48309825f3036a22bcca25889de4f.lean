import Folder.Rebuild.NumberTheory.FactorizationRebuild

/-!
# Folder.Rebuild.NumberTheory.Euclid

Euclid's prime construction rebuilt through project factorization support.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

open Folder.NumberTheory
open scoped BigOperators

theorem euclid_prime_not_in_finite_set
    (S : Finset Nat)
    (hS : ∀ p ∈ S, Nat.Prime p) :
    ∃ q, Nat.Prime q ∧ q ∉ S := by
  let M : Nat := ∏ p ∈ S, p
  have hMpos : 0 < M := by
    exact Finset.prod_pos (fun p hp => (hS p hp).pos)
  let n : PositiveNat := ⟨M + 1, by omega⟩
  have hn : 1 < n.val := by
    dsimp [n, PositiveNat.val]
    omega
  rcases exists_prime_support_of_gt_one n hn with ⟨q, hqSupport, hqPrime⟩
  refine ⟨q, hqPrime, ?_⟩
  intro hqS
  have hqM : q ∣ M := by
    exact Finset.dvd_prod_of_mem (fun p => p) hqS
  have hqn : q ∣ n.val := by
    exact Nat.dvd_of_factorization_pos hqSupport
  have hq1 : q ∣ 1 := by
    have hsub : q ∣ n.val - M := Nat.dvd_sub hqn hqM
    simpa [n, PositiveNat.val, M] using hsub
  exact hqPrime.not_dvd_one hq1

theorem infinitely_many_primes_checked :
    Set.Infinite {p : Nat | Nat.Prime p} := by
  classical
  intro hfinite
  rcases hfinite.exists_finset with ⟨S, hS⟩
  have hSprimes : ∀ p ∈ S, Nat.Prime p := by
    intro p hp
    have : p ∈ ({p : Nat | Nat.Prime p} : Set Nat) := by
      simpa [hS] using hp
    exact this
  rcases euclid_prime_not_in_finite_set S hSprimes with ⟨q, hqPrime, hqNotS⟩
  have hqInS : q ∈ S := by
    have : q ∈ ({p : Nat | Nat.Prime p} : Set Nat) := hqPrime
    simpa [hS] using this
  exact hqNotS hqInS

end NumberTheory
end Rebuild
end Folder
