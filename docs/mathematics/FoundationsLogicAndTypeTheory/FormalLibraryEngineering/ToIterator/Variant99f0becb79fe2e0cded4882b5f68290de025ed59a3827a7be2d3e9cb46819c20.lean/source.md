# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToIterator.Variant99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a365afe4972ef51df7e70df05c32ed327087ec1c` · SHA-256 `99f0becb79fe2e0cded4882b5f68290de025ed59a3827a7be2d3e9cb46819c20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Basic

public section

/-!
This module provides the typeclass `ToIterator`, which is implemented by types that can be
converted into iterators.
-/

namespace Std

/-- This typeclass provides an iterator for elements of type `γ`. -/
class ToIterator (γ : Type u) (m : Type w → Type w') (α β : outParam (Type w)) where
  iterMInternal (x : γ) : IterM (α := α) m β

/-- Converts `x` into a monadic iterator. -/
@[always_inline, inline, expose]
def ToIterator.iterM (x : γ) [ToIterator γ m α β] : IterM (α := α) m β :=
  ToIterator.iterMInternal (x := x)

/-- Converts `x` into a pure iterator. -/
@[always_inline, inline, expose]
def ToIterator.iter [ToIterator γ Id α β] (x : γ) : Iter (α := α) β :=
  ToIterator.iterM x |>.toIter

/-- Creates a monadic `ToIterator` instance. -/
@[always_inline, inline, expose, instance_reducible]
def ToIterator.ofM (α : Type w)
    (iterM : γ → IterM (α := α) m β) :
    ToIterator γ m α β where
  iterMInternal x := iterM x

/-- Creates a pure `ToIterator` instance. -/
@[always_inline, inline, expose, instance_reducible]
def ToIterator.of (α : Type w)
    (iter : γ → Iter (α := α) β) :
    ToIterator γ Id α β where
  iterMInternal x := iter x |>.toIterM

/-- Replaces `ToIterator.iterM` with its definition. -/
theorem ToIterator.iterM_eq {γ : Type u} {α β : Type v}
    {it : γ → IterM (α := α) Id β} {x} :
    letI : ToIterator γ Id α β := .ofM α it
    ToIterator.iterM x = it x :=
  rfl

/-- Replaces `ToIterator.iter` with its definition. -/
theorem ToIterator.iter_eq {γ : Type u} {x : γ} {α β : Type v} {it} :
    letI : ToIterator γ Id α β := .ofM α it
    ToIterator.iter x = (it x).toIter :=
  rfl

end Std
```
