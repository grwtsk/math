# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConvEquals.Variantec994b26604f6628ea2142b7b1af47f58a6258d3c6a3cecf4288984234ef96a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35f98a3baf5d6e7116763baa35cd7775b2ef6eca` · SHA-256 `ec994b26604f6628ea2142b7b1af47f58a6258d3c6a3cecf4288984234ef96a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Joachim Breitner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

import Batteries.Tactic.Basic

-- The example from the doc string, for quick comparision
-- and keeping the doc up-to-date
-- (only `guard_target` added)

/-- warning: declaration uses `sorry` -/
#guard_msgs in
example (P : (Nat → Nat) → Prop) : P (fun n => n - n) := by
  conv in (_ - _) => equals 0 =>
    -- current goal: ⊢ n - n = 0
    guard_target =ₛ n - n = 0
    apply Nat.sub_self
  guard_target =ₛ P (fun n => 0)
  -- current goal: P (fun n => 0)
  sorry

-- This tests that the goal created by equals must be closed

-- Using #guard_msgs below triggers this linter
set_option linter.unreachableTactic false

/--
error: unsolved goals
P : (Nat → Nat) → Prop
n : Nat
⊢ n - n = 0
---
error: No goals to be solved
-/
#guard_msgs in
example (P : (Nat → Nat) → Prop) : P (fun n => n - n) := by
  conv in (_ - _) =>
    equals 0 => skip -- this should complain
    -- and at this point, there should be no goal left
    tactic => sorry
  sorry

/-- warning: declaration uses `sorry` -/
#guard_msgs in
example (P : Nat → Prop) : P 12 := by
  conv =>
    enter [1]
    equals (12 : Fin 37) =>
      guard_target =ₛ (12 : Nat) = (12 : Fin 37)
      rfl
  guard_target =ₛ P (12 : Fin 37)
  sorry

/--
error: Type mismatch
  12
has type
  Nat
but is expected to have type
  Fin 37
---
error: unsolved goals
P : Fin 37 → Prop
⊢ 12 = sorry
-/
#guard_msgs in
example (P : Fin 37 → Prop) : P 12 := by
  conv =>
    enter [1]
    equals (12 : Nat) => skip
  sorry
```
