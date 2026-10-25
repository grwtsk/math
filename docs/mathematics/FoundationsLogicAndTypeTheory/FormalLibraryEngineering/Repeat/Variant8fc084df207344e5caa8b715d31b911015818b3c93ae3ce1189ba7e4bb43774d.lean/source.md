# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Repeat.Variant8fc084df207344e5caa8b715d31b911015818b3c93ae3ce1189ba7e4bb43774d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `346347d39c508ff8bd3db3391bbf693ff429be6f` · SHA-256 `8fc084df207344e5caa8b715d31b911015818b3c93ae3ce1189ba7e4bb43774d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Consumers.Monadic

@[expose] public section

/-!
# Function-unfolding iterator

This module provides an infinite iterator that, given an initial value `init` and a function `f`,
emits the iterates `init`, `f init`, `f (f init)`, and so on.
-/

namespace Std

universe u v

variable {α : Type w} {m : Type w → Type w'} {f : α → α}

namespace Iterators.Types

/--
Internal state of the `repeat` combinator. Do not depend on its internals.
-/
@[unbox]
structure RepeatIterator (α : Type u) (f : α → α) where
  /-- Internal implementation detail of the iterator library. -/
  next : α

@[always_inline, inline]
instance RepeatIterator.instIterator : Iterator (RepeatIterator α f) Id α where
  IsPlausibleStep it
    | .yield it' out => out = it.internalState.next ∧ it' = ⟨⟨f it.internalState.next⟩⟩
    | .skip _ => False
    | .done => False
  step it := pure <| .deflate <| .yield ⟨⟨f it.internalState.next⟩⟩ it.internalState.next (by simp)

private def RepeatIterator.instProductivenessRelation :
    ProductivenessRelation (RepeatIterator α f) Id where
  Rel := emptyWf.rel
  wf := emptyWf.wf
  subrelation {it it'} h := by cases h

instance RepeatIterator.instProductive :
    Productive (RepeatIterator α f) Id := by
  exact Productive.of_productivenessRelation instProductivenessRelation

instance RepeatIterator.instIteratorLoop {α : Type w} {f : α → α} {n : Type w → Type w'} [Monad n] :
    IteratorLoop (RepeatIterator α f) Id n :=
  .defaultImplementation

end Iterators.Types

/--
Creates an infinite iterator from an initial value `init` and a function `f : α → α`.
First it yields `init`, and in each successive step, the iterator applies `f` to the previous value.
So if the iterator just emitted `a`, in the next step it will yield `f a`. In other words, the
`n`-th value is `Nat.repeat f n init`.

For example, if `f := (· + 1)` and `init := 0`, then the iterator emits all natural numbers in
order.

**Termination properties:**

* `Finite` instance: not available and never possible
* `Productive` instance: always
-/
@[always_inline, inline]
def Iter.repeat {α : Type w} (f : α → α) (init : α) :=
  (⟨Std.Iterators.Types.RepeatIterator.mk (f := f) init⟩ : Std.Iter α)
```
