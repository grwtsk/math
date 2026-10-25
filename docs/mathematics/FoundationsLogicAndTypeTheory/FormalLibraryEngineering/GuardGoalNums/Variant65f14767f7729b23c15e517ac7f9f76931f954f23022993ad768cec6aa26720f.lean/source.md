# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardGoalNums.Variant65f14767f7729b23c15e517ac7f9f76931f954f23022993ad768cec6aa26720f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27531fd64874f0c5e71fa535e9a8e0ef6b30b987` · SHA-256 `65f14767f7729b23c15e517ac7f9f76931f954f23022993ad768cec6aa26720f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis
-/
import Mathlib.Init
import Lean.Elab.Tactic.Basic

/-!

A tactic stub file for the `guard_goal_nums` tactic.

-/

open Lean Meta Elab Tactic

/-- `guard_goal_nums n` succeeds if there are exactly `n` goals and fails otherwise. -/
elab (name := guardGoalNums) "guard_goal_nums " n:num : tactic => do
  let numGoals := (← getGoals).length
  guard (numGoals = n.getNat) <|>
    throwError "expected {n.getNat} goals but found {numGoals}"
```
