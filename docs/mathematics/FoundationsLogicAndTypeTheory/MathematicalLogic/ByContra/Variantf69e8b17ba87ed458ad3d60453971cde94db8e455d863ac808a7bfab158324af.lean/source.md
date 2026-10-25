# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ByContra.Variantf69e8b17ba87ed458ad3d60453971cde94db8e455d863ac808a7bfab158324af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f8e512cbcd2f738f866e00fed212098994df80d` · SHA-256 `f69e8b17ba87ed458ad3d60453971cde94db8e455d863ac808a7bfab158324af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.Basic


set_option linter.defProp false in
private def nonDecid (P : Prop) (x : P) : P := by
  by_contra h
  guard_hyp h : ¬P
  guard_target = False
  exact h x

set_option linter.defProp false in
private def decid (P : Prop) [Decidable P] (x : P) : P := by
  by_contra h
  guard_hyp h : ¬P
  guard_target = False
  exact h x

example (P : Prop) [Decidable P] : nonDecid P = decid P := by
  delta nonDecid decid
  guard_target =ₛ
    (fun x : P => Classical.byContradiction fun h => h x) =
    (fun x : P => Decidable.byContradiction fun h => h x)
  rfl

example (P : Prop) : P → P := by
  by_contra
  guard_hyp this : ¬(P → P)
  exact ‹¬(P → P)› id

example (P : Prop) : {_ : P} → P := by
  by_contra
  guard_hyp this : ¬(P → P)
  exact ‹¬(P → P)› id

/-!
https://github.com/leanprover-community/batteries/issues/1196:

Previously the second error had a `Decidable True` subgoal, which only appeared in the presence of
the first unclosed goal.
-/
/--
error: unsolved goals
case left
⊢ True
---
error: unsolved goals
case right
this : ¬True
⊢ False
-/
#guard_msgs in
example : True ∧ True := by
  constructor
  · skip
  · by_contra

example (n : Nat) (h : n ≠ 0) : n ≠ 0 := by
  by_contra rfl
  simp only [Ne, not_true_eq_false] at h

example (p q : Prop) (hnp : ¬ p) : ¬ (p ∧ q) := by
  by_contra ⟨hp, _⟩
  exact hnp hp

example (p q : Prop) (hnp : ¬ p) (hnq : ¬ q) : ¬ (p ∨ q) := by
  by_contra hp | hq
  · exact hnp hp
  · exact hnq hq

/--
error: unsolved goals
n : Nat
this : n ≠ 0
⊢ False
-/
#guard_msgs in
example (n : Nat) : n = 0 := by
  by_contra : n ≠ 0

/--
error: unsolved goals
n : Nat
h_ne : n ≠ 0
⊢ False
-/
#guard_msgs in
example (n : Nat) : n = 0 := by
  by_contra h_ne : n ≠ 0
```
