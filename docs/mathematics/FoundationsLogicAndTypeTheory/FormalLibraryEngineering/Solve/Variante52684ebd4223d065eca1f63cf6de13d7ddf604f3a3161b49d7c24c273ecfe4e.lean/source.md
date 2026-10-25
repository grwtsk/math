# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Solve.Variante52684ebd4223d065eca1f63cf6de13d7ddf604f3a3161b49d7c24c273ecfe4e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1c679096c93ec97eaee4569a7e176dcd4744467` · SHA-256 `e52684ebd4223d065eca1f63cf6de13d7ddf604f3a3161b49d7c24c273ecfe4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
import Lean.Meta.Tactic.Grind.Finish
public section
namespace Lean.Meta.Grind
/--
Try to solve/close the given goal.
Returns `some goal` if this subgoal failed to be closed,
and `none` if all subgoals were closed.
-/
def solve (goal : Goal) : GrindM (Option Goal) := do
  let a ← Action.mkFinish
  match (← a.run goal) with
  | .closed _ => return none
  | .stuck gs =>
    let goal :: _ := gs | return some goal
    return goal

end Lean.Meta.Grind
```
