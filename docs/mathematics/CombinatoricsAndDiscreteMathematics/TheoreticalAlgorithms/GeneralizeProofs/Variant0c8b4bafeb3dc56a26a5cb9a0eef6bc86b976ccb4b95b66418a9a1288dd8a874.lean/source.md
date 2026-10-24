# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GeneralizeProofs.Variant0c8b4bafeb3dc56a26a5cb9a0eef6bc86b976ccb4b95b66418a9a1288dd8a874

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b0576ec9b060f223fd4fdfd9532111e1daa5acc` · SHA-256 `0c8b4bafeb3dc56a26a5cb9a0eef6bc86b976ccb4b95b66418a9a1288dd8a874`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic.GeneralizeProofs
import Std.Tactic.GuardExpr
import Mathlib.Tactic.LibrarySearch

set_option autoImplicit true
def List.nthLe (l : List α) (n) (h : n < l.length) : α := sorry

example : List.nthLe [1, 2] 1 (by simp) = 2 := by
  -- ⊢ [1 2].nth_le 1 _ = 2
  generalize_proofs h
  -- h : 1 < [1 2].length
  -- ⊢ [1 2].nth_le 1 h = 2
  sorry

example (x : ℕ) (h : x < 2) : Classical.choose (⟨x, h⟩ : ∃ x, x < 2) < 2 := by
  generalize_proofs a
  guard_hyp a : ∃ x, x < 2
  guard_target = Classical.choose a < 2
  exact Classical.choose_spec a

example (x : ℕ) (h : x < 2) : Classical.choose (⟨x, h⟩ : ∃ x, x < 2) = Classical.choose (⟨x, h⟩ : ∃ x, x < 2) := by
  generalize_proofs a
  guard_hyp a : ∃ x, x < 2
  guard_target = Classical.choose a = Classical.choose a
  rfl

example (x : ℕ) (h : x < 2) : Classical.choose (⟨x, h⟩ : ∃ x, x < 2) =
  Classical.choose (⟨x, Nat.lt_succ_of_lt h⟩ : ∃ x, x < 3) := by
  generalize_proofs a
  guard_hyp a : ∃ x, x < 2
  guard_target = Classical.choose a = Classical.choose _
  sorry

example (x : ℕ) (h : x < 2) : Classical.choose (⟨x, h⟩ : ∃ x, x < 2) =
  Classical.choose (⟨x, Nat.lt_succ_of_lt h⟩ : ∃ x, x < 3) := by
  generalize_proofs
  guard_target = Classical.choose _ = Classical.choose _
  sorry

example (x : ℕ) (h : x < 2) : Classical.choose (⟨x, h⟩ : ∃ x, x < 2) =
  Classical.choose (⟨x, Nat.lt_succ_of_lt h⟩ : ∃ x, x < 3) := by
  generalize_proofs _ a
  guard_hyp a : ∃ x, x < 3
  guard_target = Classical.choose _ = Classical.choose a
  sorry

example (a : ∃ x, x < 2) : Classical.choose a < 2 := by
  generalize_proofs
  guard_target = Classical.choose a < 2
  exact Classical.choose_spec a

example (a : ∃ x, x < 2) : Classical.choose a < 2 := by
  generalize_proofs t
  guard_target = Classical.choose a < 2
  exact Classical.choose_spec a

example (x : ℕ) (h : x < 2) (H : Classical.choose (⟨x, h⟩ : ∃ x, x < 2) < 2) :
    Classical.choose (⟨x, h⟩ : ∃ x, x < 2) < 2 := by
  generalize_proofs a at H ⊢
  guard_hyp a : ∃ x, x < 2
  guard_hyp H : Classical.choose a < 2
  guard_target = Classical.choose a < 2
  exact H

-- FIXME: result is not type correct
-- example (H : ∀ y, ∃ (x : ℕ) (h : x < y), Classical.choose (⟨x, h⟩ : ∃ x, x < y) < y) :
--   ∀ y, ∃ (x : ℕ) (h : x < y), Classical.choose (⟨x, h⟩ : ∃ x, x < y) < y := by
--   generalize_proofs a at H ⊢

attribute [local instance] Classical.propDecidable

example (H : ∀ x, x = 1) : (if h : ∃ (k : ℕ), k = 1 then Classical.choose h else 0) = 1 := by
  rw [dif_pos]
  rotate_left
  { exact ⟨1, rfl⟩ }
  generalize_proofs h g
  guard_target = Classical.choose h = 1
  apply H
```
