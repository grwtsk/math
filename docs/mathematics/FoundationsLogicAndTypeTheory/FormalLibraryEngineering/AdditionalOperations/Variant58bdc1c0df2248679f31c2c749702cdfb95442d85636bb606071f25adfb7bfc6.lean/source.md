# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditionalOperations.Variant58bdc1c0df2248679f31c2c749702cdfb95442d85636bb606071f25adfb7bfc6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17c457a328326ca396a8828f36a15f34cddc3423` · SHA-256 `58bdc1c0df2248679f31c2c749702cdfb95442d85636bb606071f25adfb7bfc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.DTreeMap.AdditionalOperations

@[expose] public section

/-!
# Additional dependent raw tree map operations

This file defines more operations on `Std.DTreeMap.Raw`.
We currently do not provide lemmas for these functions.
-/

set_option autoImplicit false
set_option linter.missingDocs true

universe u v w

variable {α : Type u} {β : α → Type v} {γ : α → Type w} {cmp : α → α → Ordering}

namespace Std.DTreeMap
open Std.DTreeMap.Internal (Impl)

namespace Raw
local instance : Coe (Type v) (α → Type v) where coe γ := fun _ => γ

@[inline, inherit_doc DTreeMap.filterMap]
def filterMap (f : (a : α) → β a → Option (γ a)) (t : Raw α β cmp) : Raw α γ cmp :=
  letI : Ord α := ⟨cmp⟩; ⟨t.inner.filterMap! f⟩

@[inline, inherit_doc DTreeMap.map]
def map (f : (a : α) → β a → γ a) (t : Raw α β cmp) : Raw α γ cmp :=
  letI : Ord α := ⟨cmp⟩; ⟨t.inner.map f⟩

/-!
We do not provide `get*GE`, `get*GT`, `get*LE` and `get*LT` functions for the raw trees.
-/

end Raw

end Std.DTreeMap
```
