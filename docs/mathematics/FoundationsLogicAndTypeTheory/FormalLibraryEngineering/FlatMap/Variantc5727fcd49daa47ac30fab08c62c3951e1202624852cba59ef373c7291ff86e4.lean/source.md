# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FlatMap.Variantc5727fcd49daa47ac30fab08c62c3951e1202624852cba59ef373c7291ff86e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ef274d9d8c44ef5967ad311d29a38f5453b4ef4` · SHA-256 `c5727fcd49daa47ac30fab08c62c3951e1202624852cba59ef373c7291ff86e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Combinators.Monadic.FlatMap
import Init.Data.Iterators.Combinators.FilterMap

set_option doc.verso true

/-!
# {lit}`flatMap` combinator

This file provides the {lit}`flatMap` iterator combinator and variants of it.

If {lit}`it` is any iterator, {lit}`it.flatMap f` maps each output of {lit}`it` to an iterator using
{lit}`f`.

{lit}`it.flatMap f` first emits all outputs of the first obtained iterator, then of the second,
and so on. In other words, {lit}`it` flattens the iterator of iterators obtained by mapping with
{lit}`f`.
-/

namespace Std

@[always_inline, inherit_doc IterM.flatMapAfterM]
public def Iter.flatMapAfterM {α : Type w} {β : Type w} {α₂ : Type w}
    {γ : Type w} {m : Type w → Type w'} [Monad m] [MonadAttach m] [Iterator α Id β] [Iterator α₂ m γ]
    (f : β → m (IterM (α := α₂) m γ)) (it₁ : Iter (α := α) β) (it₂ : Option (IterM (α := α₂) m γ)) :=
  ((it₁.mapWithPostcondition pure).flatMapAfterM f it₂ : IterM m γ)

@[always_inline, expose, inherit_doc IterM.flatMapM]
public def Iter.flatMapM {α : Type w} {β : Type w} {α₂ : Type w}
    {γ : Type w} {m : Type w → Type w'} [Monad m] [MonadAttach m] [Iterator α Id β] [Iterator α₂ m γ]
    (f : β → m (IterM (α := α₂) m γ)) (it : Iter (α := α) β) :=
  (it.flatMapAfterM f none : IterM m γ)

@[always_inline, inherit_doc IterM.flatMapAfter]
public def Iter.flatMapAfter {α : Type w} {β : Type w} {α₂ : Type w}
    {γ : Type w} [Iterator α Id β] [Iterator α₂ Id γ]
    (f : β → Iter (α := α₂) γ) (it₁ : Iter (α := α) β) (it₂ : Option (Iter (α := α₂) γ)) :=
  ((it₁.toIterM.flatMapAfter (fun b => (f b).toIterM) (Iter.toIterM <$> it₂)).toIter : Iter γ)

@[cbv_opaque, always_inline, expose, inherit_doc IterM.flatMap]
public def Iter.flatMap {α : Type w} {β : Type w} {α₂ : Type w}
    {γ : Type w} [Iterator α Id β] [Iterator α₂ Id γ]
    (f : β → Iter (α := α₂) γ) (it : Iter (α := α) β) :=
  (it.flatMapAfter f none : Iter γ)
```
