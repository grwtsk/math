# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IncompleteScript.Variant5c1202ddf14898a94bd5c7363092eff59801f3441d244bcc3f688cf47536e133

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f98ba99dfcb1acac5ce15c7dbada0a5d574b933` · SHA-256 `5c1202ddf14898a94bd5c7363092eff59801f3441d244bcc3f688cf47536e133`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

-- set_option aesop.check.script.steps false

/--
info: Try this:

  [apply]     intro a
    simp_all only [Nat.add_zero]
    sorry
---
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
n : Nat
P : Nat → Prop
a : P n
⊢ P (n + 1)
-/
#guard_msgs in
example {P : Nat → Prop} : P (n + 0) → P (n + 1) := by
  aesop?

inductive Even : Nat → Prop where
  | zero : Even 0
  | add_two : Even n → Even (n + 2)

/--
info: Try this:

  [apply]   sorry
---
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example : Even 5 := by
  aesop?

attribute [aesop safe constructors] Even

/--
info: Try this:

  [apply]     apply Even.add_two
    apply Even.add_two
    sorry
---
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
⊢ Even 1
-/
#guard_msgs in
example : Even 5 := by
  aesop?
```
