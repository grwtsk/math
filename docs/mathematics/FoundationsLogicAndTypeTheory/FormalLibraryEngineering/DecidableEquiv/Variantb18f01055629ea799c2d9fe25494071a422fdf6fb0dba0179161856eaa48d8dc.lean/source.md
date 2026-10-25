# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variantb18f01055629ea799c2d9fe25494071a422fdf6fb0dba0179161856eaa48d8dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aaf5e8cd7915035daa48d7a96019247fb6f4eb23` · SHA-256 `b18f01055629ea799c2d9fe25494071a422fdf6fb0dba0179161856eaa48d8dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DTreeMap.Internal.Lemmas
public import Std.Data.DTreeMap.Raw.Basic

public section

/-!
# Decidable equivalence for `DTreeMap.Raw`
-/

open Std.DTreeMap.Internal.Impl

namespace Std.DTreeMap.Raw

def instDecidableEquiv {α : Type u} {β : α → Type v} {cmp : α → α → Ordering} [TransCmp cmp] [LawfulEqCmp cmp] [∀ k, BEq (β k)] [∀ k, LawfulBEq (β k)] {t₁ t₂ : Raw α β cmp} (h₁ : t₁.WF) (h₂ : t₂.WF) : Decidable (t₁ ~m t₂) :=
  let : Ord α := ⟨cmp⟩;
  let : Decidable (t₁.inner ~m t₂.inner) := decidableEquiv t₁.1 t₂.1 h₁ h₂;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.DTreeMap.Raw
```
