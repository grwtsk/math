# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variant8518b9f8775199d07b63cbb771b48a0ca7c765a5f7b477a699f988f99f83e432

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2c212224966c3cf785ba8b13a6bdeb5af5e5e81` · SHA-256 `8518b9f8775199d07b63cbb771b48a0ca7c765a5f7b477a699f988f99f83e432`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
import Init.Data.Nat.Lemmas

public import Init.Data.Iterators.Consumers

public import Std.Data.DHashMap.Internal.AssocList.Basic

/-!
# Iterators on associative lists
-/

namespace Std.DHashMap.Internal.AssocList

open Std.Iterators

/-- Internal implementation detail of the hash map -/
@[ext, unbox]
public structure AssocListIterator (α : Type u) (β : α → Type v) where
  l : AssocList α β

public instance : Iterator (α := AssocListIterator α β) Id ((a : α) × β a) where
  IsPlausibleStep it
    | .yield it' out => it.internalState.l = .cons out.1 out.2 it'.internalState.l
    | .skip _ => False
    | .done => it.internalState.l = .nil
  step it := pure (match it with
        | ⟨⟨.nil⟩⟩ => .deflate ⟨.done, rfl⟩
        | ⟨⟨.cons k v l⟩⟩ => .deflate ⟨.yield ⟨⟨l⟩⟩ ⟨k, v⟩, rfl⟩)

def AssocListIterator.finitenessRelation :
    FinitenessRelation (AssocListIterator α β) Id where
  Rel := InvImage WellFoundedRelation.rel (AssocListIterator.l ∘ IterM.internalState)
  wf := InvImage.wf _ WellFoundedRelation.wf
  subrelation {it it'} h := by
    simp_wf
    obtain ⟨step, h, h'⟩ := h
    cases step <;> simp_all [IterStep.successor, IterM.IsPlausibleStep, Iterator.IsPlausibleStep, instIteratorAssocListIteratorIdSigma] -- TODO

public instance : Finite (AssocListIterator α β) Id :=
  Finite.of_finitenessRelation AssocListIterator.finitenessRelation

public instance {α : Type u} {β : α → Type v} {m : Type (max u v) → Type w''} [Monad m] :
    IteratorLoop (AssocListIterator α β) Id m :=
  .defaultImplementation

/--
Internal implementation detail of the hash map. Returns a finite iterator on an associative list.
-/
@[expose]
public def iter {α : Type u} {β : α → Type v} (l : AssocList α β) :
    Iter (α := AssocListIterator α β) ((a : α) × β a) :=
  ⟨⟨l⟩⟩

end Std.DHashMap.Internal.AssocList
```
