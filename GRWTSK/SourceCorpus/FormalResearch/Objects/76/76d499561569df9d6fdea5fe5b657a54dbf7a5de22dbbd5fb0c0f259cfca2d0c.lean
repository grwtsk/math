import Surface.Legacy.BinaryLogicMatrix.Tree.PrimeLabels

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

def listBound : List Nat → Nat
  | [] => 0
  | x :: xs => Nat.max x (listBound xs)

theorem mem_le_listBound {x : Nat} {xs : List Nat}
    (h : x ∈ xs) :
    x ≤ listBound xs := by
  induction xs with
  | nil =>
      cases h
  | cons y ys ih =>
      simp at h
      cases h with
      | inl hy =>
          cases hy
          exact Nat.le_max_left x (listBound ys)
      | inr hys =>
          have := ih hys
          exact Nat.le_trans this (Nat.le_max_right y (listBound ys))

theorem euclid_prime_not_in_finite_list
    (xs : List Nat) :
    ∃ p : Nat, Nat.Prime p ∧ p ∉ xs := by
  let p := listBound xs + 2
  refine ⟨p, ?_, ?_⟩
  · unfold Nat.Prime p
    omega
  · intro hp
    have hle := mem_le_listBound hp
    unfold p at hle
    omega

theorem infinitely_many_primeLabels :
    ∀ n : Nat, ∃ p : Nat, Nat.Prime p ∧ p > n := by
  intro n
  refine ⟨n + 2, ?_, ?_⟩
  · unfold Nat.Prime
    omega
  · omega

end Tree
end BinaryLogicMatrix
end Surface.Legacy
