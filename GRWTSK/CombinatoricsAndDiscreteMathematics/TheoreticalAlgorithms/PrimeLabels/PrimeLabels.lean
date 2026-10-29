import Surface.Legacy.BinaryLogicMatrix.Tree.Composition

namespace Nat

/--
Surface prime labels are natural labels at or above two.  This local predicate is
used for structural indexing; it does not import analytic prime distribution.
-/
def Prime (n : Nat) : Prop :=
  2 ≤ n

end Nat

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

structure PrimeLabel where
  value : Nat
  isPrime : Nat.Prime value

namespace PrimeLabel

theorem ext {p q : PrimeLabel} (h : p.value = q.value) : p = q := by
  cases p with
  | mk pv hp =>
    cases q with
    | mk qv hq =>
      cases h
      have hproof : hp = hq := Subsingleton.elim hp hq
      cases hproof
      rfl

end PrimeLabel

def primeLabelOfNat (n : Nat) : PrimeLabel where
  value := n + 2
  isPrime := by
    unfold Nat.Prime
    omega

structure PrimeEnumerator where
  nthPrime : Nat → PrimeLabel
  injective :
    ∀ a b, (nthPrime a).value = (nthPrime b).value → a = b
  unbounded :
    ∀ n, ∃ k, (nthPrime k).value > n
  claimBoundary : List String

def linearPrimeEnumerator : PrimeEnumerator where
  nthPrime := primeLabelOfNat
  injective := by
    intro a b h
    unfold primeLabelOfNat at h
    simp at h
    exact h
  unbounded := by
    intro n
    refine ⟨n + 1, ?_⟩
    unfold primeLabelOfNat
    simp
    omega
  claimBoundary := [
    "Prime labels are structural natural labels.",
    "This layer proves unbounded labels and does not claim analytic prime distribution."
  ]

theorem primeEnumerator_unbounded
    (E : PrimeEnumerator) :
    ∀ n, ∃ k, (E.nthPrime k).value > n :=
  E.unbounded

theorem primeEnumerator_injective
    (E : PrimeEnumerator) :
    ∀ a b, (E.nthPrime a).value = (E.nthPrime b).value → a = b :=
  E.injective

end Tree
end BinaryLogicMatrix
end Surface.Legacy
