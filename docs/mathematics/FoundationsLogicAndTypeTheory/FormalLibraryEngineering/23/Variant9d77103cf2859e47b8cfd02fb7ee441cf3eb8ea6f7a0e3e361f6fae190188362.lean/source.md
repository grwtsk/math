# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.23.Variant9d77103cf2859e47b8cfd02fb7ee441cf3eb8ea6f7a0e3e361f6fae190188362

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0add029957433771f919cf4a2a32781e48429c9` · SHA-256 `9d77103cf2859e47b8cfd02fb7ee441cf3eb8ea6f7a0e3e361f6fae190188362`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

def Involutive (f : α → α) : Prop :=
  ∀ x, f (f x) = x

example : Involutive not := by
  aesop (add norm simp Involutive)

example : Involutive not := by
  aesop (add norm unfold Involutive)
```
