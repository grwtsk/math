# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.43.Variant2b87d9a52c827ac7a31504d35d8ad13f615cd139c2986b333b88b81e90be84c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `727a7c42c875af9f8eb1c5fb360ed0524d44d366` · SHA-256 `2b87d9a52c827ac7a31504d35d8ad13f615cd139c2986b333b88b81e90be84c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

structure A

open Lean.Elab.Tactic in
@[aesop norm]
def tac : TacticM Unit := do
  evalTactic $ ← `(tactic| exact A.mk)

example : A := by
  set_option aesop.check.script false in
  set_option aesop.check.script.steps false in
  aesop
```
