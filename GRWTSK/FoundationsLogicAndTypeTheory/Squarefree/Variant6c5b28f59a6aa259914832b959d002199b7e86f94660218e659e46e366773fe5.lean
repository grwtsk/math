import Folder.Rebuild.NumberTheory.FactorizationRebuild
import Mathlib.Data.Nat.Squarefree

/-!
# Folder.Rebuild.NumberTheory.Squarefree

Squarefree naturals repackaged through the project factorization map.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

open Folder.NumberTheory

def SquarefreeByFactorization (n : PositiveNat) : Prop :=
  ∀ p, FactorizationMap n p ≤ 1

/--
A positive natural is squarefree exactly when all project factorization
exponents are at most one.
-/
theorem squarefree_iff_factorization_le_one
    (n : PositiveNat) :
    Squarefree n.val ↔ SquarefreeByFactorization n := by
  simpa [SquarefreeByFactorization, FactorizationMap, PositiveNat.val] using
    Nat.squarefree_iff_factorization_le_one (Nat.ne_of_gt n.2)

end NumberTheory
end Rebuild
end Folder
