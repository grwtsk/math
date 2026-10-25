# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DropWhile.Variante6e4b8687b224d273fc4d7cf50eccdc8704ee195172323d2b2ad8a0d0da13c46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38d89d5072ad5e209e87a329ddfcc8e21c712c6b` · SHA-256 `e6e4b8687b224d273fc4d7cf50eccdc8704ee195172323d2b2ad8a0d0da13c46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Combinators.Monadic.DropWhile

@[expose] public section

namespace Std

/--
Constructs intermediate states of an iterator created with the combinator `Iter.dropWhile`.
When `it.dropWhile P` has stopped dropping elements, its new state cannot be created
directly with `Iter.dropWhile` but only with `Intermediate.dropWhile`.

`Intermediate.dropWhile` is meant to be used only for internally or for verification purposes.
-/
@[always_inline, inline]
def Iter.Intermediate.dropWhile (P : β → Bool) (dropping : Bool)
    (it : Iter (α := α) β) :=
  ((IterM.Intermediate.dropWhile P dropping it.toIterM).toIter : Iter β)

/--
Given an iterator `it` and a predicate `P`, `it.dropWhile P` is an iterator that
emits the values emitted by `it` starting from the first value that is rejected by `P`.
The elements before are dropped.

In situations where `P` is monadic, use `dropWhileM` instead.

**Marble diagram:**

Assuming that the predicate `P` accepts `a` and `b` but rejects `c`:

```text
it               ---a----b---c--d-e--⊥
it.dropWhile P   ------------c--d-e--⊥

it               ---a----⊥
it.dropWhile P   --------⊥
```

**Termination properties:**

* `Finite` instance: only if `it` is finite
* `Productive` instance: only if `it` is finite

Depending on `P`, it is possible that `it.dropWhileM P` is productive although
`it` is not. In this case, the `Productive` instance needs to be proved manually.

**Performance:**

This combinator calls `P` on each output of `it` until the predicate evaluates to false. After
that, the combinator incurs an additional O(1) cost for each value emitted by `it`.
-/
@[cbv_opaque, always_inline, inline]
def Iter.dropWhile {α : Type w} {β : Type w} (P : β → Bool) (it : Iter (α := α) β) :=
  (it.toIterM.dropWhile P |>.toIter : Iter β)

end Std
````
