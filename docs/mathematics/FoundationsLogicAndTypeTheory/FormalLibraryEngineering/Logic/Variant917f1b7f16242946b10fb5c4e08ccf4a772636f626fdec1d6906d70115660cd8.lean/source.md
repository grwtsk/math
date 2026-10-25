# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Logic.Variant917f1b7f16242946b10fb5c4e08ccf4a772636f626fdec1d6906d70115660cd8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23908e217ebd02a41002c35b8cec2a54d704a89e` · SHA-256 `917f1b7f16242946b10fb5c4e08ccf4a772636f626fdec1d6906d70115660cd8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

example : True := by
  aesop

example : Unit := by
  aesop

example : PUnit.{u} := by
  aesop

example (h : False) : α := by
  aesop

example (h : Empty) : α := by
  aesop

example (h : PEmpty.{u}) : α := by
  aesop
```
