# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Polymorphic.Variantb83c2751f135f1a663936599fbf820b1e67c8df2cb02456c866370b33e6fedd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ca3273dae3fb1005885e2bf38f3424075402b10` · SHA-256 `b83c2751f135f1a663936599fbf820b1e67c8df2cb02456c866370b33e6fedd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Range.Polymorphic.Basic
public import Init.Data.Range.Polymorphic.Iterators
public import Init.Data.Range.Polymorphic.Stream
public import Init.Data.Range.Polymorphic.Lemmas
public import Init.Data.Range.Polymorphic.Map

public import Init.Data.Range.Polymorphic.Fin
public import Init.Data.Range.Polymorphic.Char
public import Init.Data.Range.Polymorphic.Nat
public import Init.Data.Range.Polymorphic.Int
public import Init.Data.Range.Polymorphic.BitVec
public import Init.Data.Range.Polymorphic.UInt
public import Init.Data.Range.Polymorphic.SInt

public import Init.Data.Range.Polymorphic.NatLemmas
public import Init.Data.Range.Polymorphic.IntLemmas
public import Init.Data.Range.Polymorphic.GetElemTactic

public section

/-!
# Polymorphic ranges

Any type that provides certain typeclasses supports range notation: For example, `2...<5`
stands for the numbers at least `2` and smaller than `5`. Such ranges support iteration with
`for .. in` and can be converted into a list with `PRange.toList`. After importing
`Std.Data.Iterators`, there will also be `PRange.iter`, which provides an iterator over the
elements of the range.

In order to support ranges of a certain type `α`, multiple instances need to be implemented.
An example of how this plays out can be found in `Init.Data.Range.Polymorphic.Nat`.

The typeclass system is experimental and will change soon, so at this point it is not recommended
to provide custom ranges outside of the standard library.
-/
```
