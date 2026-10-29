import Folder.Rebuild.NumberTheory.MultiplicativeFunction
import Mathlib.Data.Finset.NatDivisors

/-!
# Folder.Rebuild.NumberTheory.DivisorSum

Finite divisor sums for arithmetic functions.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

open scoped BigOperators

noncomputable def divisorSum
    [AddCommMonoid R]
    (f : ArithFn R) : ArithFn R :=
  fun n => ∑ d ∈ Nat.divisors n, f d

theorem divisorSum_one
    [AddCommMonoid R]
    (f : ArithFn R) :
    divisorSum f 1 = f 1 := by
  simp [divisorSum]

theorem divisorSum_congr
    [AddCommMonoid R]
    {f g : ArithFn R}
    (h : ∀ n, f n = g n) :
    divisorSum f = divisorSum g := by
  funext n
  simp [divisorSum, h]

end NumberTheory
end Rebuild
end Folder
