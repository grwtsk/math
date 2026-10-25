# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variantc1848db878145ff4ffd343f2c57ef1d3da76fb80027738baced6d039f203229e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c02a629990ecccdc44be5de8581216ab968118fc` · SHA-256 `c1848db878145ff4ffd343f2c57ef1d3da76fb80027738baced6d039f203229e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude

public import Std.Data.TreeMap.Raw.DecidableEquiv
public import Std.Data.TreeSet.Raw.Basic

public section

/-!
# Decidable equivalence for `TreeSet.Raw`
-/

open Std.TreeMap.Raw

namespace Std.TreeSet.Raw

def instDecidableEquiv {α : Type u} {cmp : α → α → Ordering} [TransCmp cmp] [LawfulEqCmp cmp] {t₁ t₂ : Raw α cmp} (h₁ : t₁.WF) (h₂ : t₂.WF) : Decidable (t₁ ~m t₂) :=
  let : Ord α := ⟨cmp⟩;
  let : Decidable (t₁.inner ~m t₂.inner) := TreeMap.Raw.instDecidableEquiv h₁ h₂;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.TreeSet.Raw
```
