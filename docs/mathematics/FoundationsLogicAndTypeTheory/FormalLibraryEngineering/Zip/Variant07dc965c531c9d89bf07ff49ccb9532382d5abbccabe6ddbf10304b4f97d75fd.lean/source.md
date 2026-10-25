# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Zip.Variant07dc965c531c9d89bf07ff49ccb9532382d5abbccabe6ddbf10304b4f97d75fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b90bf8bf6c97477381eadf207974a4096892d683` · SHA-256 `07dc965c531c9d89bf07ff49ccb9532382d5abbccabe6ddbf10304b4f97d75fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Combinators.Monadic.Zip

@[expose] public section

namespace Std

/--
Given two iterators `left` and `right`, `left.zip right` is an iterator that yields pairs of
outputs of `left` and `right`. When one of them terminates,
the `zip` iterator will also terminate.

**Marble diagram:**

```text
left               --a        ---b        --c
right                 --x         --y        --⊥
left.zip right     -----(a, x)------(b, y)-----⊥
```

**Termination properties:**

* `Finite` instance: only if either `left` or `right` is finite and the other is productive
* `Productive` instance: only if `left` and `right` are productive

There are situations where `left.zip right` is finite (or productive) but none of the instances
above applies. For example, if `left` immediately terminates but `right` always skips, then
`left.zip.right` is finite even though no `Finite` (or even `Productive`) instance is available.
Such instances need to be proved manually.

**Performance:**

This combinator incurs an additional O(1) cost with each step taken by `left` or `right`.

Right now, the compiler does not unbox the internal state, leading to worse performance than
theoretically possible.
-/
@[cbv_opaque, always_inline, inline]
def Iter.zip {α₁ : Type w} {β₁: Type w} {α₂ : Type w} {β₂ : Type w}
    [Iterator α₁ Id β₁] [Iterator α₂ Id β₂]
    (left : Iter (α := α₁) β₁) (right : Iter (α := α₂) β₂) :=
  ((left.toIterM.zip right.toIterM).toIter : Iter (β₁ × β₂))

end Std
````
