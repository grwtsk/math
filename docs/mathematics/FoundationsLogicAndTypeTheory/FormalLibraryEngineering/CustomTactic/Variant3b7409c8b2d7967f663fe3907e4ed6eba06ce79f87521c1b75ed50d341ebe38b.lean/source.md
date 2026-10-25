# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CustomTactic.Variant3b7409c8b2d7967f663fe3907e4ed6eba06ce79f87521c1b75ed50d341ebe38b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aeb434a2f09ecdc12bae300c567918d41949bfcd` · SHA-256 `3b7409c8b2d7967f663fe3907e4ed6eba06ce79f87521c1b75ed50d341ebe38b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

def Foo := True

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : Foo := by
  aesop (config := { terminal := true })

example : Foo := by
  simp [Foo]

open Lean.Elab.Tactic in
@[aesop safe]
def myTactic : TacticM Unit := do
  evalTactic $ ← `(tactic| rw [Foo])

example : Foo := by
  set_option aesop.check.script false in
  set_option aesop.check.script.steps false in
  aesop
```
