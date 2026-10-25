# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Constructors.Variantce70d8bdf2916f045ec231f937d9a6ef0614bca23eb2088fbfc5d3d2e17aa31c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75933a3d4f367728fd64b25394eb21a3c175bb36` · SHA-256 `ce70d8bdf2916f045ec231f937d9a6ef0614bca23eb2088fbfc5d3d2e17aa31c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[aesop safe]
inductive Even : Nat → Type
  | zero : Even 0
  | plusTwo : Even n → Even (n + 2)

example : Even 6 := by
  aesop

attribute [-aesop] Even

def T n := Even n

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : T 6 := by
  aesop (config := { terminal := true })

example : T 6 := by
  aesop (add safe constructors (transparency! := default) Even)
```
