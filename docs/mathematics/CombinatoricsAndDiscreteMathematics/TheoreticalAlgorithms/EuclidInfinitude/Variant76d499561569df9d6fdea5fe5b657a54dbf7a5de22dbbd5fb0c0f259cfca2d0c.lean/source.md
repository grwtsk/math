# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EuclidInfinitude.Variant76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b6abc75cd4fd8766419e4e20fc3ad8b6d47603b` · SHA-256 `76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
