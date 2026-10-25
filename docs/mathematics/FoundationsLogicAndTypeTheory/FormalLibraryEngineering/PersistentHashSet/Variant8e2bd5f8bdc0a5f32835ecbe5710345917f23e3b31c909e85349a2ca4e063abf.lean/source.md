# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentHashSet.Variant8e2bd5f8bdc0a5f32835ecbe5710345917f23e3b31c909e85349a2ca4e063abf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a4ec0585a7d88f60e45136c1d85cae57dda2ab4` · SHA-256 `8e2bd5f8bdc0a5f32835ecbe5710345917f23e3b31c909e85349a2ca4e063abf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public import Lean.Data.PersistentHashMap

public section

namespace Lean
universe u v

structure PersistentHashSet (α : Type u) [BEq α] [Hashable α] where
  (set : PersistentHashMap α Unit)

abbrev PHashSet (α : Type u) [BEq α] [Hashable α] := PersistentHashSet α

namespace PersistentHashSet

@[inline] def empty [BEq α] [Hashable α] : PersistentHashSet α :=
  { set := PersistentHashMap.empty }

instance [BEq α] [Hashable α] : Inhabited (PersistentHashSet α) where
  default := empty

instance [BEq α] [Hashable α] : EmptyCollection (PersistentHashSet α) :=
  ⟨empty⟩

variable {_ : BEq α} {_ : Hashable α}

@[inline] def isEmpty (s : PersistentHashSet α) : Bool :=
  s.set.isEmpty

@[inline] def insert (s : PersistentHashSet α) (a : α) : PersistentHashSet α :=
  { set := s.set.insert a () }

@[inline] def erase (s : PersistentHashSet α) (a : α) : PersistentHashSet α :=
  { set := s.set.erase a }

@[inline] def find? (s : PersistentHashSet α) (a : α) : Option α :=
  match s.set.findEntry? a with
  | some (a, _) => some a
  | none        => none

@[inline] def findD (s : PersistentHashSet α) (a : α) (a₀ : α) : α :=
  s.set.findKeyD a a₀

@[inline] def contains (s : PersistentHashSet α) (a : α) : Bool :=
  s.set.contains a

@[inline] def foldM {β : Type v} {m : Type v → Type w} [Monad m] (f : β → α → m β) (init : β) (s : PersistentHashSet α) : m β :=
  s.set.foldlM (init := init) fun d a _ => f d a

@[inline] def fold {β : Type v} (f : β → α → β) (init : β) (s : PersistentHashSet α) : β :=
  Id.run $ s.foldM (pure <| f · ·) init

def toList (s : PersistentHashSet α) : List α :=
  s.set.toList.map (·.1)

protected def forIn {_ : BEq α} {_ : Hashable α} [Monad m]
    (s : PersistentHashSet α) (init : σ) (f : α → σ → m (ForInStep σ)) : m σ := do
  PersistentHashMap.forIn s.set init fun p s => f p.1 s

instance {_ : BEq α} {_ : Hashable α} [Monad m] : ForIn m (PersistentHashSet α) α where
  forIn := PersistentHashSet.forIn

end PersistentHashSet
```
