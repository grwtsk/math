# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Take.Variant0eb875608fcc4f1d13bd7f1530180b2c7e8f37d3e002499cae8a904d4e5b5504

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f28a0c2b9a1083312b7c46c16906f1787200645f` · SHA-256 `0eb875608fcc4f1d13bd7f1530180b2c7e8f37d3e002499cae8a904d4e5b5504`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Combinators.Monadic.Take

@[expose] public section

namespace Std
open Std.Iterators Std.Iterators.Types

/--
Given an iterator `it` and a natural number `n`, `it.take n` is an iterator that outputs
up to the first `n` of `it`'s values in order and then terminates.

**Marble diagram:**

```text
it          ---a----b---c--d-e--⊥
it.take 3   ---a----b---c⊥

it          ---a--⊥
it.take 3   ---a--⊥
```

**Termination properties:**

* `Finite` instance: only if `it` is productive
* `Productive` instance: only if `it` is productive

**Performance:**

This combinator incurs an additional O(1) cost with each output of `it`.
-/
@[cbv_opaque, always_inline, inline]
def Iter.take {α : Type w} {β : Type w} [Iterator α Id β] (n : Nat) (it : Iter (α := α) β) :
    Iter (α := Take α Id) β :=
  it.toIterM.take n |>.toIter

/--
This combinator is only useful for advanced use cases.

Given a finite iterator `it`, returns an iterator that behaves exactly like `it` but is of the same
type as `it.take n`.

**Marble diagram:**

```text
it          ---a----b---c--d-e--⊥
it.toTake   ---a----b---c--d-e--⊥
```

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always

**Performance:**

This combinator incurs an additional O(1) cost with each output of `it`.
-/
@[always_inline, inline]
def Iter.toTake {α : Type w} {β : Type w} [Iterator α Id β] [Finite α Id] (it : Iter (α := α) β) :
    Iter (α := Take α Id) β :=
  it.toIterM.toTake.toIter

end Std
````
