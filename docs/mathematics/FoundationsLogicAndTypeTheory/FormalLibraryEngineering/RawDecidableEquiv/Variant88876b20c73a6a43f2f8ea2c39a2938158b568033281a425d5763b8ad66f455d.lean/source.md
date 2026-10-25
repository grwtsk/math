# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RawDecidableEquiv.Variant88876b20c73a6a43f2f8ea2c39a2938158b568033281a425d5763b8ad66f455d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `480a0d08e69a4c0dc8e2d7889c9f9e9ad6a22d20` · SHA-256 `88876b20c73a6a43f2f8ea2c39a2938158b568033281a425d5763b8ad66f455d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DHashMap.Internal.RawLemmas

public section

/-!
# Decidable equivalence for `DHashMap.Raw`
-/

open Std.DHashMap.Internal

namespace Std.DHashMap.Raw

def instDecidableEquiv {α : Type u} {β : α → Type v} [BEq α] [LawfulBEq α] [Hashable α] [∀ k, BEq (β k)] [∀ k, LawfulBEq (β k)] {m₁ m₂ : Raw α β} (h₁ : m₁.WF) (h₂ : m₂.WF) : Decidable (m₁ ~m m₂) :=
  Raw₀.decidableEquiv ⟨m₁, h₁.size_buckets_pos⟩ ⟨m₂, h₂.size_buckets_pos⟩ h₁ h₂

end Std.DHashMap.Raw
```
