# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SolveByElim.Variant5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bab28c930e9ccf8dd381bfedf0bc684e84a7f640` · SHA-256 `5b226444ff652d3f4c92e0b3f183ea14154247ca911608cc27887629021ece13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Batteries.Tactic.PermuteGoals
import BatteriesTest.Internal.DummyLabelAttr
import Lean.Meta.Tactic.Constructor
import Lean.Elab.SyntheticMVars
import Lean.Elab.Tactic.SolveByElim -- FIXME we need to make SolveByElimConfig builtin

set_option autoImplicit true

open Lean Elab Tactic in
/--
`fconstructor` is like `constructor`
(it calls `apply` using the first matching constructor of an inductive datatype)
except that it does not reorder goals.
-/
elab "fconstructor" : tactic => withMainContext do
  let mvarIds' ← (← getMainGoal).constructor {newGoals := .all}
  Term.synthesizeSyntheticMVarsNoPostponing
  replaceMainGoal mvarIds'

-- Test that `solve_by_elim*`, which works on multiple goals,
-- successfully uses the relevant local hypotheses for each goal.
example (f g : Nat → Prop) : (∃ k : Nat, f k) ∨ (∃ k : Nat, g k) ↔ ∃ k : Nat, f k ∨ g k := by
  fconstructor
  rintro (⟨n, fn⟩ | ⟨n, gn⟩)
  on_goal 3 => rintro ⟨n, hf | hg⟩
  solve_by_elim* (maxDepth := 13) [Or.inl, Or.inr, Exists.intro]

section «using»

/-- -/
@[dummy_label_attr] axiom foo : 1 = 2

example : 1 = 2 := by
  fail_if_success solve_by_elim
  solve_by_elim using dummy_label_attr

end «using»

section issue1581

/-- -/
axiom mySorry {α} : α

@[dummy_label_attr] theorem le_rfl [LE α] {b c : α} (_h : b = c) : b ≤ c := mySorry

example : 5 ≤ 7 := by
  apply_rules using dummy_label_attr
  guard_target = 5 = 7
  exact mySorry

example : 5 ≤ 7 := by
  apply_rules [le_rfl]
  guard_target = 5 = 7
  exact mySorry

end issue1581
```
