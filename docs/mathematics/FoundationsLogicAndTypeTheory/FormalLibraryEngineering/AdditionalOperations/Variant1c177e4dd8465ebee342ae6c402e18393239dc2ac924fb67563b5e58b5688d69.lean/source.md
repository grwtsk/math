# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditionalOperations.Variant1c177e4dd8465ebee342ae6c402e18393239dc2ac924fb67563b5e58b5688d69

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40ef4024dd9b0d21ea4f7f54e6c0f53875cf3cde` · SHA-256 `1c177e4dd8465ebee342ae6c402e18393239dc2ac924fb67563b5e58b5688d69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
public import Std.Data.DTreeMap.Raw.AdditionalOperations

@[expose] public section

/-!
# Additional raw tree map operations

This file defines more operations on `Std.TreeMap.Raw`.
We currently do not provide lemmas for these functions.
-/

set_option autoImplicit false
set_option linter.missingDocs true

universe u v w

variable {α : Type u} {β : Type v} {γ : Type w} {cmp : α → α → Ordering}

namespace Std.TreeMap.Raw

@[inline, inherit_doc DTreeMap.Raw.filterMap]
def filterMap (f : (a : α) → β → Option γ) (t : Raw α β cmp) : Raw α γ cmp :=
  ⟨t.inner.filterMap f⟩

@[inline, inherit_doc DTreeMap.Raw.map]
def map (f : α → β → γ) (t : Raw α β cmp) : Raw α γ cmp :=
  ⟨t.inner.map f⟩

/-!
We do not provide `get*GE`, `get*GT`, `get*LE` and `get*LT` functions for the raw trees.
-/

end Std.TreeMap.Raw
```
