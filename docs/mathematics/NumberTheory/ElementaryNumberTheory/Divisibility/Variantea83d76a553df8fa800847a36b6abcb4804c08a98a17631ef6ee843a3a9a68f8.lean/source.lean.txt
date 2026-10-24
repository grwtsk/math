import Folder.Rebuild.NumberTheory.FactorizationRebuild

/-!
# Folder.Rebuild.NumberTheory.Divisibility

Divisibility and coprimality rebuilt through the project factorization map.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

open Folder.NumberTheory

/--
Divisibility of positive naturals is pointwise comparison of prime exponents in
the project factorization map.
-/
theorem dvd_iff_factorization_le
    (a b : PositiveNat) :
    a.val ∣ b.val ↔
      ∀ p, FactorizationMap a p ≤ FactorizationMap b p := by
  constructor
  · intro h p
    exact
      (Nat.factorization_le_iff_dvd
        (Nat.ne_of_gt a.2) (Nat.ne_of_gt b.2)).mpr h p
  · intro h
    exact
      (Nat.factorization_le_iff_dvd
        (Nat.ne_of_gt a.2) (Nat.ne_of_gt b.2)).mp h

/--
Coprimality means the two project prime-support predicates do not overlap.
-/
theorem coprime_iff_disjoint_prime_support
    (a b : PositiveNat) :
    Nat.Coprime a.val b.val ↔
      ∀ p, ¬ (IsPrimeSupport a p ∧ IsPrimeSupport b p) := by
  constructor
  · intro hcop p hpab
    rcases hpab with ⟨hpa, hpb⟩
    have hpprime : Nat.Prime p := factorization_support_prime a hpa
    have hpda : p ∣ a.val := Nat.dvd_of_factorization_pos hpa
    have hpdb : p ∣ b.val := Nat.dvd_of_factorization_pos hpb
    have hp1 : p = 1 := Nat.eq_one_of_dvd_coprimes hcop hpda hpdb
    exact hpprime.ne_one hp1
  · intro hdis
    by_contra hnot
    rcases Nat.Prime.not_coprime_iff_dvd.mp hnot with
      ⟨p, hpprime, hpda, hpdb⟩
    have hpa : IsPrimeSupport a p := by
      exact Nat.ne_of_gt
        (hpprime.factorization_pos_of_dvd
          (Nat.ne_of_gt a.2) hpda)
    have hpb : IsPrimeSupport b p := by
      exact Nat.ne_of_gt
        (hpprime.factorization_pos_of_dvd
          (Nat.ne_of_gt b.2) hpdb)
    exact hdis p ⟨hpa, hpb⟩

end NumberTheory
end Rebuild
end Folder
