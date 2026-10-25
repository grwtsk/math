# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditionalOperations.Variant0cf3bd3110ccc8e43ceee5ed9fb56619866d7658a8a602be69f28e8979e81225

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d75fad92c6829530918a49b0a3a875b5aa94ea6` · SHA-256 `0cf3bd3110ccc8e43ceee5ed9fb56619866d7658a8a602be69f28e8979e81225`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.TreeMap.Basic
public import Std.Data.TreeMap.Raw.Basic
public import Std.Data.DTreeMap.AdditionalOperations

@[expose] public section

/-!
# Additional tree map operations

This file defines more operations on `Std.TreeMap`.
We currently do not provide lemmas for these functions.
-/

set_option autoImplicit false
set_option linter.missingDocs true

universe u v w

variable {α : Type u} {β : Type v} {γ : Type w} {cmp : α → α → Ordering}

namespace Std.TreeMap

@[inline, inherit_doc DTreeMap.filterMap]
def filterMap (f : (a : α) → β → Option γ) (m : TreeMap α β cmp) : TreeMap α γ cmp :=
  ⟨m.inner.filterMap f⟩

@[inline, inherit_doc DTreeMap.map]
def map (f : α → β → γ) (t : TreeMap α β cmp) : TreeMap α γ cmp :=
  ⟨t.inner.map f⟩

@[inline, inherit_doc DTreeMap.Const.getEntryGE]
def getEntryGE [TransCmp cmp] (t : TreeMap α β cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isGE) :
    α × β :=
  DTreeMap.Const.getEntryGE t.inner k h

@[inline, inherit_doc DTreeMap.Const.getEntryGT]
def getEntryGT [TransCmp cmp] (t : TreeMap α β cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .gt) :
    α × β :=
  DTreeMap.Const.getEntryGT t.inner k h

@[inline, inherit_doc DTreeMap.Const.getEntryLE]
def getEntryLE [TransCmp cmp] (t : TreeMap α β cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isLE) :
    α × β :=
  DTreeMap.Const.getEntryLE t.inner k h

@[inline, inherit_doc DTreeMap.Const.getEntryLT]
def getEntryLT [TransCmp cmp] (t : TreeMap α β cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .lt) :
    α × β :=
  DTreeMap.Const.getEntryLT t.inner k h

@[inline, inherit_doc DTreeMap.getKeyGE]
def getKeyGE [TransCmp cmp] (t : TreeMap α β cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isGE) : α :=
  DTreeMap.getKeyGE t.inner k h

@[inline, inherit_doc DTreeMap.getKeyGT]
def getKeyGT [TransCmp cmp] (t : TreeMap α β cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .gt) : α :=
  DTreeMap.getKeyGT t.inner k h

@[inline, inherit_doc DTreeMap.getKeyLE]
def getKeyLE [TransCmp cmp] (t : TreeMap α β cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isLE) : α :=
  DTreeMap.getKeyLE t.inner k h

@[inline, inherit_doc DTreeMap.getKeyLT]
def getKeyLT [TransCmp cmp] (t : TreeMap α β cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .lt) : α :=
  DTreeMap.getKeyLT t.inner k h

end Std.TreeMap
```
