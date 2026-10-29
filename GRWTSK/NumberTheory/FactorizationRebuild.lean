import Folder.NumberTheory.Factorization
import Folder.NumberTheory.FundamentalTheorem

/-!
# Folder.Rebuild.NumberTheory.FactorizationRebuild

Local rebuild wrappers around the project's factorization map.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

open Folder.NumberTheory

theorem factorization_reconstructs
    (n : PositiveNat) :
    factorProduct (FactorizationMap n) = n.val :=
  factorProduct_factorization n

theorem factorization_support_prime_checked
    (n : PositiveNat)
    {p : Nat}
    (hp : IsPrimeSupport n p) :
    Nat.Prime p :=
  factorization_support_prime n hp

theorem no_prime_support_of_one
    (n : PositiveNat)
    (hn : n.val = 1) :
    ∀ p, ¬ IsPrimeSupport n p := by
  intro p hp
  have hz : FactorizationMap n p = 0 := by
    change n.val.factorization p = 0
    rw [hn]
    simp
  exact hp hz

theorem exists_prime_support_of_gt_one
    (n : PositiveNat)
    (hn : 1 < n.val) :
    ∃ p, IsPrimeSupport n p ∧ Nat.Prime p := by
  by_contra hnone
  have hzero : FactorizationMap n = 0 := by
    ext p
    by_contra hp
    exact hnone ⟨p, hp, factorization_support_prime n hp⟩
  have hone : n.val = 1 := by
    calc
      n.val = factorProduct (FactorizationMap n) := (factorProduct_factorization n).symm
      _ = factorProduct (0 : Nat →₀ Nat) := by rw [hzero]
      _ = 1 := factorProduct_one
  omega

end NumberTheory
end Rebuild
end Folder
