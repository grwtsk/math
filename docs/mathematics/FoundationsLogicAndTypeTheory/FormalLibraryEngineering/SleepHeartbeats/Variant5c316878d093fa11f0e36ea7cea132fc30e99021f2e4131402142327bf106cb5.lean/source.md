# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SleepHeartbeats.Variant5c316878d093fa11f0e36ea7cea132fc30e99021f2e4131402142327bf106cb5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6cb76c320e8dc1026397c3b117f3b4d2bfa5573` · SHA-256 `5c316878d093fa11f0e36ea7cea132fc30e99021f2e4131402142327bf106cb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
import Mathlib.Init
import Lean.Elab.Tactic.Basic

/-!
# Defines `sleep_heartbeats` tactic.

This is useful for testing / debugging long running commands or elaboration in a somewhat precise
manner.
-/
open Lean Elab

/-- A low level command to sleep for at least a given number of heartbeats by running in a loop
until the desired number of heartbeats is hit.
Warning: this function relies on interpreter / compiler
behaviour that is not guaranteed to function in the way that is relied upon here.
As such this function is not to be considered reliable, especially after future updates to Lean.
This should be used with caution and basically only for demo / testing purposes
and not in compiled code without further testing. -/
def sleepAtLeastHeartbeats (n : Nat) : IO Unit := do
  let i ← IO.getNumHeartbeats
  while (← IO.getNumHeartbeats) < i + n do
    continue

/-- do nothing for at least n heartbeats -/
elab "sleep_heartbeats " n:num : tactic => do
  match Syntax.isNatLit? n with
  | none    => throwIllFormedSyntax
  /- as this is a user facing command we multiply the user input by 1000 to match the maxHeartbeats
     option -/
  | some m => sleepAtLeastHeartbeats (m * 1000)

example : 1 = 1 := by
  sleep_heartbeats 1000
  rfl
```
