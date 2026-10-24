# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RawDecidableEquiv.Variantce4f43d64bab422c91b04e2e764ac634898759944882b352d418f4a70ebd97a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e9d3f306eea9d3758f35a25dfa424327b844dea` · SHA-256 `ce4f43d64bab422c91b04e2e764ac634898759944882b352d418f4a70ebd97a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DHashMap.RawDecidableEquiv
public import Std.Data.HashMap.Raw

public section

/-!
# Decidable equivalence for `HashMap.Raw`
-/

open Std.DHashMap.Raw

namespace Std.HashMap.Raw

def instDecidableEquiv {α : Type u} {β : Type v} [BEq α] [LawfulBEq α] [Hashable α] [BEq β] [LawfulBEq β] {m₁ m₂ : Raw α β} (h₁ : m₁.WF) (h₂ : m₂.WF) : Decidable (m₁ ~m m₂) :=
  let : Decidable (m₁.1 ~m m₂.1) := DHashMap.Raw.instDecidableEquiv h₁.out h₂.out;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.HashMap.Raw
```
