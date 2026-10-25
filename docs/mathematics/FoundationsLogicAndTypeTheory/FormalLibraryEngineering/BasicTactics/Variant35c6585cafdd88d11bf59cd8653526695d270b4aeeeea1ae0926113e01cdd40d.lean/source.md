# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BasicTactics.Variant35c6585cafdd88d11bf59cd8653526695d270b4aeeeea1ae0926113e01cdd40d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b29b8f2bd836b927cdfe729f2884e18439e2da07` · SHA-256 `35c6585cafdd88d11bf59cd8653526695d270b4aeeeea1ae0926113e01cdd40d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Basic
import Batteries.Tactic.Init

example : ∀ a b : Nat, a = b → b = a := by
  introv h
  exact h.symm

set_option linter.unusedTactic false in
example (n : Nat) : n = n := by
  induction n
  exacts [rfl, rfl]
  exacts []

set_option linter.unusedVariables false in
example (n : Nat) : Nat := by
  guard_hyp n : Nat
  let m : Nat := 1
  guard_hyp m := 1
  guard_hyp m : Nat := 1
  guard_target = Nat
  exact 0

example (a b : Nat) : a ≠ b → ¬ a = b := by
  intros
  by_contra H
  contradiction

example (a b : Nat) : ¬¬ a = b → a = b := by
  intros
  by_contra H
  contradiction

example (p _q : Prop) : ¬¬ p → p := by
  intros
  by_contra H
  contradiction

-- Test `iterate n ...`
example (n m : Nat) : Unit := by
  cases n
  cases m
  iterate 3 exact ()

-- Test `iterate ...`, which should repeat until failure.
example (n m : Nat) : Unit := by
  cases n
  cases m
  iterate exact ()

set_option linter.unusedTactic false in
example (n : Nat) : Nat := by
  iterate exact () -- silently succeeds, after iterating 0 times
  iterate exact n

example (p q r s : Prop) : p → q → r → s → (p ∧ q) ∧ (r ∧ s ∧ p) ∧ (p ∧ r ∧ q) := by
  intros
  repeat' constructor
  repeat' assumption

example (p q : Prop) : p → q → (p ∧ q) ∧ (p ∧ q ∧ p) := by
  intros
  constructor
  fail_if_success any_goals assumption
  all_goals constructor
  any_goals assumption
  constructor
  any_goals assumption
```
