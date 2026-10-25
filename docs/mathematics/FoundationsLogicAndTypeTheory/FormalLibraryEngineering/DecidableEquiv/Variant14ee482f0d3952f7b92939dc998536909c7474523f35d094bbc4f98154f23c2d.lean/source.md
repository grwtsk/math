# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variant14ee482f0d3952f7b92939dc998536909c7474523f35d094bbc4f98154f23c2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36514917a1d438bed1d19ca66d234dbc4001877c` · SHA-256 `14ee482f0d3952f7b92939dc998536909c7474523f35d094bbc4f98154f23c2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DTreeMap.Raw

public section

/-!
# Decidable equivalence for `DTreeMap`
-/

open Std.DTreeMap.Internal.Impl

namespace Std.DTreeMap

instance {α : Type u} {β : α → Type v} {cmp : α → α → Ordering} [TransCmp cmp] [LawfulEqCmp cmp] [∀ k, BEq (β k)] [∀ k, LawfulBEq (β k)] {t₁ t₂ : DTreeMap α β cmp} : Decidable (t₁ ~m t₂) :=
  let : Ord α := ⟨cmp⟩;
  let : Decidable (t₁.inner ~m t₂.inner) := decidableEquiv t₁.1 t₂.1 t₁.2 t₂.2;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.DTreeMap
```
