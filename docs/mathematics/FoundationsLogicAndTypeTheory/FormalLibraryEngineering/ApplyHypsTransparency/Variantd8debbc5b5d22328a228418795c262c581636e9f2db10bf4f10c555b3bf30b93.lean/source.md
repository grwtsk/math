# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyHypsTransparency.Variantd8debbc5b5d22328a228418795c262c581636e9f2db10bf4f10c555b3bf30b93

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31e643462178e452511fb9e0dd26f71fbcbd8f79` · SHA-256 `d8debbc5b5d22328a228418795c262c581636e9f2db10bf4f10c555b3bf30b93`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

def T := Unit → Nat

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) : Nat := by
  aesop (config := { applyHypsTransparency := .reducible, terminal := true })

example (h : T) : Nat := by
  aesop

@[irreducible] def U := Empty

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : Unit → Empty) : U := by
  aesop (config := { applyHypsTransparency := .reducible, terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : Unit → Empty) : U := by
  aesop (config := { terminal := true })

example (h : Unit → Empty) : U := by
  aesop (config := { applyHypsTransparency := .all })
```
