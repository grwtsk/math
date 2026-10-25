# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variant1ed28aa31038288ee34bcb3cf69ce51496008b738ef9138d4c324ce65ca2c3ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ca5af139ddcc2e283fa675383cfd8a5653cceb1` · SHA-256 `1ed28aa31038288ee34bcb3cf69ce51496008b738ef9138d4c324ce65ca2c3ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude

public import Std.Data.DTreeMap.DecidableEquiv
public import Std.Data.TreeMap.Raw.Basic

public section

/-!
# Decidable equivalence for `TreeMap.Raw`
-/

open Std.DTreeMap.Raw

namespace Std.TreeMap.Raw

def instDecidableEquiv {α : Type u} {β : Type v} {cmp : α → α → Ordering} [TransCmp cmp] [LawfulEqCmp cmp] [BEq β] [LawfulBEq β] {t₁ t₂ : Raw α β cmp} (h₁ : t₁.WF) (h₂ : t₂.WF) : Decidable (t₁ ~m t₂) :=
  let : Ord α := ⟨cmp⟩;
  let : Decidable (t₁.inner ~m t₂.inner) := DTreeMap.Raw.instDecidableEquiv h₁ h₂;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.TreeMap.Raw
```
