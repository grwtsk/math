# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variant1d605b94d0bdc8489910698c501002a2859f07604597f2b9ef8af87a06d44318

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed4df15730d439ff4292cdd65106f60387e7bb29` · SHA-256 `1d605b94d0bdc8489910698c501002a2859f07604597f2b9ef8af87a06d44318`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
# Decidable equivalence for `DHashMap`
-/

open Std.DHashMap.Internal

namespace Std.DHashMap

instance {α : Type u} {β : α → Type v} [BEq α] [LawfulBEq α] [Hashable α] [∀ k, BEq (β k)] [∀ k, LawfulBEq (β k)] (m₁ m₂ : DHashMap α β) : Decidable (m₁ ~m m₂) :=
  let : Decidable (m₁.1.Equiv m₂.1) := Raw₀.decidableEquiv ⟨m₁.1, m₁.2.size_buckets_pos⟩ ⟨m₂.1, m₂.2.size_buckets_pos⟩ m₁.2 m₂.2;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.DHashMap
```
