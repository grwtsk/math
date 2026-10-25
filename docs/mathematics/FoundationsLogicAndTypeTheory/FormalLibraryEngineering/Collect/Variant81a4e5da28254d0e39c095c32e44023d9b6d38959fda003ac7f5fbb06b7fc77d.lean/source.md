# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Collect.Variant81a4e5da28254d0e39c095c32e44023d9b6d38959fda003ac7f5fbb06b7fc77d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `329917d62fd7b21ee77d3e07835db63170159f4f` · SHA-256 `81a4e5da28254d0e39c095c32e44023d9b6d38959fda003ac7f5fbb06b7fc77d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Consumers.Partial
public import Init.Data.Iterators.Consumers.Total
public import Init.Data.Iterators.Consumers.Monadic.Collect

@[expose] public section

/-!
# Collectors

This module provides consumers that collect the values emitted by an iterator in a data structure.
Concretely, the following operations are provided:

* `Iter.toList`, collecting the values in a list
* `Iter.toListRev`, collecting the values in a list in reverse order but more efficiently
* `Iter.toArray`, collecting the values in an array
-/

namespace Std
open Std.Iterators

/--
Traverses the given iterator and stores the emitted values in an array.

If the iterator is not finite, this function might run forever. The variant
`it.ensureTermination.toArray` always terminates after finitely many steps.
-/
@[cbv_opaque, always_inline, inline]
def Iter.toArray {α : Type w} {β : Type w}
    [Iterator α Id β] (it : Iter (α := α) β) : Array β :=
  it.toIterM.toArray.run

/--
Traverses the given iterator and stores the emitted values in an array.

This function is deprecated. Instead of `it.allowNontermination.toArray`, use `it.toArray`.
-/
@[always_inline, inline, deprecated Iter.toArray (since := "2025-12-04")]
def Iter.Partial.toArray {α : Type w} {β : Type w}
    [Iterator α Id β] (it : Iter.Partial (α := α) β) : Array β :=
  it.it.toArray

/--
Traverses the given iterator and stores the emitted values in an array.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using `Iter.toArray`.
-/
@[always_inline, inline]
def Iter.Total.toArray {α : Type w} {β : Type w}
    [Iterator α Id β] [Finite α Id] (it : Iter.Total (α := α) β) :
    Array β :=
  it.it.toArray

/--
Traverses the given iterator and stores the emitted values in reverse order in a list. Because
lists are prepend-only, this `toListRev` is usually more efficient that `toList`.

If the iterator is not finite, this function might run forever. The variant
`it.ensureTermination.toListRev` always terminates after finitely many steps.
-/
@[always_inline, inline, cbv_opaque]
def Iter.toListRev {α : Type w} {β : Type w}
    [Iterator α Id β] (it : Iter (α := α) β) : List β :=
  it.toIterM.toListRev.run

/--
Traverses the given iterator and stores the emitted values in reverse order in a list. Because
lists are prepend-only, this `toListRev` is usually more efficient that `toList`.

This function is deprecated. Instead of `it.allowNontermination.toListRev`, use `it.toListRev`.
-/
@[always_inline, inline, deprecated Iter.toListRev (since := "2025-12-04")]
def Iter.Partial.toListRev {α : Type w} {β : Type w}
    [Iterator α Id β] (it : Iter.Partial (α := α) β) : List β :=
  it.it.toListRev

/--
Traverses the given iterator and stores the emitted values in reverse order in a list. Because
lists are prepend-only, this `toListRev` is usually more efficient that `toList`.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using `Iter.toListRev`.
-/
@[always_inline, inline]
def Iter.Total.toListRev {α : Type w} {β : Type w}
    [Iterator α Id β] [Finite α Id] (it : Iter.Total (α := α) β) : List β :=
  it.it.toListRev

/--
Traverses the given iterator and stores the emitted values in a list. Because
lists are prepend-only, `toListRev` is usually more efficient that `toList`.

If the iterator is not finite, this function might run forever. The variant
`it.ensureTermination.toList` always terminates after finitely many steps.
-/
@[cbv_opaque, always_inline, inline]
def Iter.toList {α : Type w} {β : Type w}
    [Iterator α Id β] (it : Iter (α := α) β) : List β :=
  it.toIterM.toList.run

/--
Traverses the given iterator and stores the emitted values in a list. Because
lists are prepend-only, `toListRev` is usually more efficient that `toList`.

This function is deprecated. Instead of `it.allowNontermination.toList`, use `it.toList`.
-/
@[always_inline, deprecated Iter.toList (since := "2025-12-04")]
def Iter.Partial.toList {α : Type w} {β : Type w}
    [Iterator α Id β] (it : Iter.Partial (α := α) β) : List β :=
  it.it.toList

/--
Traverses the given iterator and stores the emitted values in a list. Because
lists are prepend-only, `toListRev` is usually more efficient that `toList`.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using `Iter.toList`.
-/
@[always_inline, inline]
def Iter.Total.toList {α : Type w} {β : Type w}
    [Iterator α Id β] [Finite α Id] (it : Iter.Total (α := α) β) :
    List β :=
  it.it.toList

end Std
```
