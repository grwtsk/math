# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AdditionalOperations.Variantad50d4bc48f3b14d8e2a2155071acf2b255d1b2f6f81a45cbeb12183f281b498

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4462ae8377c6f3bacf0e95eded37d8dbd4d1569` · SHA-256 `ad50d4bc48f3b14d8e2a2155071acf2b255d1b2f6f81a45cbeb12183f281b498`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Std.Data.DHashMap.AdditionalOperations
public import Std.Data.HashMap.Basic
public import Std.Data.HashMap.Raw

@[expose] public section

/-!
# Additional hash map operations

This module defines the operations `map` and `filterMap` on `Std.HashMap`.
Lemmas about these operations are found in `Std.Data.HashMap.Lemmas`.
-/

set_option linter.missingDocs true
set_option autoImplicit false

universe u v w

variable {α : Type u} {β : Type v} {γ : Type w}

namespace Std

namespace HashMap

namespace Raw

theorem WF.filterMap [BEq α] [Hashable α] {m : Raw α β} {f : α → β → Option γ} (h : m.WF) :
    (m.filterMap f).WF :=
  ⟨DHashMap.Raw.WF.filterMap h.out⟩

theorem WF.map [BEq α] [Hashable α] {m : Raw α β} {f : α → β → γ} (h : m.WF) : (m.map f).WF :=
  ⟨DHashMap.Raw.WF.map h.out⟩

end Raw

@[cbv_opaque, inline, inherit_doc DHashMap.filterMap] def filterMap [BEq α] [Hashable α] (f : α → β → Option γ)
    (m : HashMap α β) : HashMap α γ :=
  ⟨m.inner.filterMap f⟩

@[cbv_opaque, inline, inherit_doc DHashMap.map] def map [BEq α] [Hashable α] (f : α → β → γ) (m : HashMap α β) :
    HashMap α γ :=
  ⟨m.inner.map f⟩

end HashMap

end Std
```
