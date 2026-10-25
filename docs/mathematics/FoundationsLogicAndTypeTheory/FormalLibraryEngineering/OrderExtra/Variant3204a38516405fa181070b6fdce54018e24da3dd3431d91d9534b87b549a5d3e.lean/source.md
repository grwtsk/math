# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderExtra.Variant3204a38516405fa181070b6fdce54018e24da3dd3431d91d9534b87b549a5d3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bb06c17ed147f7513dbf1f3a490e6452ca98922` · SHA-256 `3204a38516405fa181070b6fdce54018e24da3dd3431d91d9534b87b549a5d3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Ord.Basic

public instance {α : Type u} [Ord α] {P : α → Prop} : Ord (Subtype P) where
  compare a b := compare a.val b.val
```
