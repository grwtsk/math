# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variant4c8e85f4e6f6ee5cc5367f4d8d25da924a5098359d448e46ed88397f78dc004f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35a3f00bb389eeec2e7eb6c0353ec470aa113df6` · SHA-256 `4c8e85f4e6f6ee5cc5367f4d8d25da924a5098359d448e46ed88397f78dc004f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.TreeMap.DecidableEquiv
public import Std.Data.TreeSet.Basic

public section

/-!
# Decidable equivalence for `TreeSet`
-/

open Std.TreeMap

namespace Std.TreeSet

instance {α : Type u} {cmp : α → α → Ordering} [TransCmp cmp] [LawfulEqCmp cmp] {t₁ t₂ : TreeSet α cmp} : Decidable (t₁ ~m t₂) :=
  let : Ord α := ⟨cmp⟩;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.TreeSet
```
