# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesTransparency.Variant693b915cc5d9f39684edccca61741e6e08cfae59c8686d4a477277c2135c709a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5939bd009b0582967c33e9104dbfb57f581e80b3` · SHA-256 `693b915cc5d9f39684edccca61741e6e08cfae59c8686d4a477277c2135c709a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

example (h : False) : α := by
  aesop

def T := False

variable {α : Type}

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) : α := by
  aesop (config := { terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) : α := by
  aesop (add safe cases (transparency! := reducible) False)
    (config := { terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) : α := by
  aesop (add safe cases (transparency := default) False)
    (config := { terminal := true })

example (h : T) : α := by
  aesop (add safe cases (transparency! := default) False)

def U := T

example (h : U) : α := by
  aesop (add safe cases (transparency! := default) False)
```
