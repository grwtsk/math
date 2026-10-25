# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExistsAndEq.Variant7f9914251a3f85bdd16a2e0ba3c07760e68980994b4ec65228f6181c8cc58c43

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a78226c0d984f82667c68d6f1cee1062cfbfd92` · SHA-256 `7f9914251a3f85bdd16a2e0ba3c07760e68980994b4ec65228f6181c8cc58c43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Simproc.ExistsAndEq

universe u
variable (α : Type u) (p q : α → Prop)

example (a : α) (hp : p a) (hq : q a) : ∃ b : α, (p b ∧ b = a) ∧ q b := by
  simp only [existsAndEq]
  guard_target = (p a ∧ True) ∧ q a
  exact ⟨⟨hp, trivial⟩, hq⟩

example (a : α) : ∃ b : α, b = a := by
  simp only [existsAndEq]

/--
error: simp made no progress
-/
#guard_msgs in
example (f : α → α) : ∃ a : α, a = f a := by
  simp only [existsAndEq]
  sorry

open Lean Meta Simp

set_option linter.unusedTactic false in
example (a : α) (hp : p a) (hq : q a) : (∃ b : α, p b ∧ (∃ c : α, b = a ∧ q c)) := by
  -- the simproc doesn't handle nested `Exists`
  simp -failIfUnchanged only [existsAndEq]
  guard_target = ∃ b : α, p b ∧ (∃ c : α, b = a ∧ q c)
  simp only [exists_and_left]
  guard_target = ∃ b, p b ∧ b = a ∧ ∃ x, q x
  -- but can clean up the rest
  simp only [existsAndEq]
  guard_target = p a ∧ True ∧ ∃ x, q x
  exact ⟨hp, trivial, a, hq⟩
```
