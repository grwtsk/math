# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConvEquals.Variantd4c31da5ec91fb5565338b023e8580772afba843ad3ade33a80e99e35eb2b4c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5495c1a4c20bfc7451843cd22ac729b7d3046203` · SHA-256 `d4c31da5ec91fb5565338b023e8580772afba843ad3ade33a80e99e35eb2b4c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Joachim Breitner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

import Std.Tactic.Basic
import Std.Tactic.GuardMsgs
import Std.Tactic.GuardExpr

-- The example from the doc string, for quick comparision
-- and keeping the doc up-to-date
-- (only `guard_target` added)

/-- warning: declaration uses 'sorry' -/
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
error: no goals to be solved
-/
#guard_msgs in
example (P : (Nat → Nat) → Prop) : P (fun n => n - n) := by
  conv in (_ - _) =>
    equals 0 => skip -- this should complain
    -- and at this point, there should be no goal left
    tactic => sorry
  sorry
```
