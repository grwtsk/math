# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Collect.Variant65909e37703eca0ee3e7ca97f79667ac2e49c9c3aa8ad1e67776b7d6f79ec6ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `262c9f8fb92f9f1e6a362f2084ae9eb2384361c6` · SHA-256 `65909e37703eca0ee3e7ca97f79667ac2e49c9c3aa8ad1e67776b7d6f79ec6ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Lemmas.Consumers.Collect
public import Std.Data.Iterators.Lemmas.Consumers.Monadic.Collect

@[expose] public section

namespace Std
open Std.Iterators

theorem Iter.Equiv.toListRev_eq
    [Iterator α₁ Id β] [Iterator α₂ Id β] [Finite α₁ Id] [Finite α₂ Id]
    {ita : Iter (α := α₁) β} {itb : Iter (α := α₂) β} (h : Iter.Equiv ita itb) :
    ita.toListRev = itb.toListRev := by
  simp [Iter.toListRev_eq_toListRev_toIterM, h.toIterM.toListRev_eq]

theorem Iter.Equiv.toList_eq
    [Iterator α₁ Id β] [Iterator α₂ Id β] [Finite α₁ Id] [Finite α₂ Id]
    {ita : Iter (α := α₁) β} {itb : Iter (α := α₂) β} (h : Iter.Equiv ita itb) :
    ita.toList = itb.toList := by
  simp only [← Iter.reverse_toListRev, toListRev_eq h]

theorem Iter.Equiv.toArray_eq
    [Iterator α₁ Id β] [Iterator α₂ Id β] [Finite α₁ Id] [Finite α₂ Id]
    {ita : Iter (α := α₁) β} {itb : Iter (α := α₂) β} (h : Iter.Equiv ita itb) :
    ita.toArray = itb.toArray := by
  simp only [← Iter.toArray_toList, toList_eq h]

end Std
```
