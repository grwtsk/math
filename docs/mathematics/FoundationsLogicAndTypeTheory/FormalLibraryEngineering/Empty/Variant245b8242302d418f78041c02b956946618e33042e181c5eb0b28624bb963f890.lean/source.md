# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Empty.Variant245b8242302d418f78041c02b956946618e33042e181c5eb0b28624bb963f890

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69171a771e242e603f687d85b63091f851037382` · SHA-256 `245b8242302d418f78041c02b956946618e33042e181c5eb0b28624bb963f890`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Consumers.Loop

@[expose] public section

/-!
This file provides an empty iterator.
-/

namespace Std

variable {m : Type w → Type w'} {β : Type w}

/--
The internal state of the `IterM.empty` iterator.
-/
structure Iterators.Types.Empty (m : Type w → Type w') (β : Type w) : Type w where

/--
Returns an iterator that terminates immediately.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always

-/
@[always_inline, inline]
def IterM.empty (m : Type w → Type w') (β : Type w) :=
  (⟨Iterators.Types.Empty.mk (m := m) (β := β)⟩ : IterM m β)

namespace Iterators.Types

def Empty.PlausibleStep (_ : IterM (α := Empty m β) m β)
    (step : IterStep (IterM (α := Empty m β) m β) β) : Prop :=
  step = .done

instance Empty.instIterator [Monad m] : Iterator (Empty m β) m β where
  IsPlausibleStep := Empty.PlausibleStep
  step _ := return .deflate (.done rfl)

private def Empty.instFinitenessRelation [Monad m] :
    FinitenessRelation (Empty m β) m where
  Rel := emptyRelation
  wf := emptyWf.wf
  subrelation {it it'} h := by
    obtain ⟨step, h, h'⟩ := h
    cases h'
    cases h

instance Empty.instFinite [Monad m] : Finite (Empty m β) m := by
  exact Finite.of_finitenessRelation instFinitenessRelation

instance Empty.instIteratorLoop {n : Type x → Type x'} [Monad m] [Monad n] :
    IteratorLoop (Empty m β) m n :=
  .defaultImplementation

end Std.Iterators.Types
```
