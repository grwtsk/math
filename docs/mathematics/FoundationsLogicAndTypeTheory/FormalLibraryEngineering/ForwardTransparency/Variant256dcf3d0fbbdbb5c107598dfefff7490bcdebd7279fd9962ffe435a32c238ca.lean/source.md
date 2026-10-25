# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardTransparency.Variant256dcf3d0fbbdbb5c107598dfefff7490bcdebd7279fd9962ffe435a32c238ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bd6233a06600d9746098a5d14d6923f3b7980c6` · SHA-256 `256dcf3d0fbbdbb5c107598dfefff7490bcdebd7279fd9962ffe435a32c238ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

-- Forward rules always operate at reducible transparency.

def T := Unit → Empty

variable {α : Type}

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) (u : Unit) : α := by
  aesop (config := { terminal := true })

def U := Unit

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) (u : U) : α := by
  aesop (config := { terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) (u : U) : α := by
  aesop (add forward safe h) (config := { terminal := true })

abbrev V := Unit

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : Unit → Empty) (u : V) : α := by
  aesop (config := { terminal := true })

example (h : Unit → Empty) (u : V) : α := by
  aesop (add forward safe h)
```
