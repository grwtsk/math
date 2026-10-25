# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variante9f6701732955690e1700d6b0e87d7ca488f1600a30125b9f11d3487f8aa4c47

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d7a26e36b98b7aae78e385a6838062b2e4f29b3` · SHA-256 `e9f6701732955690e1700d6b0e87d7ca488f1600a30125b9f11d3487f8aa4c47`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

example (f g : α → β) (h : ∀ a, f a = g a) : f = g := by
  aesop

example (x y : α × β) (h₁ : x.1 = y.1) (h₂ : x.2 = y.2) : x = y := by
  aesop
```
