# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShowTerm.Variant98a603da5595f265a6fcb17c34984552489b32d920b1a0344da7d1c6e3237f0e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25b6aacb1d439169fce9b76c1a99eebc72787ea5` · SHA-256 `98a603da5595f265a6fcb17c34984552489b32d920b1a0344da7d1c6e3237f0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Std.Tactic.ShowTerm
import Std.Tactic.GuardMsgs

/-- info: Try this: exact (n, 37) -/
#guard_msgs in example (n : Nat) : Nat × Nat := by
  show_term
    constructor
    exact n
    exact 37

/-- info: Try this: refine (?fst, ?snd) -/
#guard_msgs in example : Nat × Nat := by
  show_term constructor
  repeat exact 42

/-- info: Try this: fun {X} => X -/
#guard_msgs in example : {_a : Nat} → Nat :=
  show_term by
    intro X
    exact X
```
