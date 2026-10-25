# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Drop.Variant468ef218846357c4891577d5c4f31f883cbd77f4d58eb57407d7ff12cb80eec9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27b1a337145041dca608edc207453ad2b02073b8` · SHA-256 `468ef218846357c4891577d5c4f31f883cbd77f4d58eb57407d7ff12cb80eec9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Combinators.Monadic.Drop

@[expose] public section

namespace Std
open Std.Iterators.Types

/--
Given an iterator `it` and a natural number `n`, `it.drop n` is an iterator that forwards all of
`it`'s output values except for the first `n`.

**Marble diagram:**

```text
it          ---a----b---c--d-e--⊥
it.drop 3   ---------------d-e--⊥

it          ---a--⊥
it.drop 3   ------⊥
```

**Termination properties:**

* `Finite` instance: only if `it` is finite
* `Productive` instance: only if `it` is productive

**Performance:**

Currently, this combinator incurs an additional O(1) cost with each output of `it`, even when the iterator
does not drop any elements anymore.
-/
@[cbv_opaque, always_inline, inline]
def Iter.drop {α : Type w} {β : Type w} (n : Nat) (it : Iter (α := α) β) :
    Iter (α := Drop α Id β) β :=
  it.toIterM.drop n |>.toIter

end Std
````
