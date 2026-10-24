# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Intercalate.Variante50a720ca2f7f89d9f7cb3124c38aec85790805a1305e0ae115e8abda935c5d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d8e576d793b965314692222f35bd670605fef73` · SHA-256 `e50a720ca2f7f89d9f7cb3124c38aec85790805a1305e0ae115e8abda935c5d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia Markus Himmel
-/
module

prelude
public import Init.Data.Iterators.Combinators.Monadic.FilterMap
public import Init.Data.String.Basic
import Init.Data.String.Slice

set_option doc.verso true

namespace Std

/--
Appends all the elements in the iterator, in order.
-/
@[inline]
public def Iter.joinString {α β : Type} [Iterator α Id β] [ToString β]
    (it : Std.Iter (α := α) β) : String :=
  (it.map toString).fold (init := "") (· ++ ·)

/--
Appends the elements of the iterator into a string, placing the separator {name}`s` between them.
-/
@[inline]
public def Iter.intercalateString {α β : Type} [Iterator α Id β] [ToString β]
    (s : String.Slice) (it : Std.Iter (α := α) β) : String :=
  it.map toString
    |>.fold (init := none) (fun
      | none, sl => some sl
      | some str, sl => some (str ++ s ++ sl))
    |>.getD ""

end Std
```
