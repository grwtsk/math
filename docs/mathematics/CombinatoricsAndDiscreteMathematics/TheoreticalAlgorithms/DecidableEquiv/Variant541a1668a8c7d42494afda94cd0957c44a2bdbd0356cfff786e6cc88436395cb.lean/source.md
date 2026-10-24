# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DecidableEquiv.Variant541a1668a8c7d42494afda94cd0957c44a2bdbd0356cfff786e6cc88436395cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `370ce2bc4ea75f9e065a45262d1cc376ce13b9d9` · SHA-256 `541a1668a8c7d42494afda94cd0957c44a2bdbd0356cfff786e6cc88436395cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DHashMap.DecidableEquiv
public import Std.Data.HashMap.Basic

public section

/-!
# Decidable equivalence for `HashMap`
-/

namespace Std.HashMap

instance {α : Type u} {β : Type v} [BEq α] [LawfulBEq α] [Hashable α] [BEq β] [LawfulBEq β] (m₁ m₂ : HashMap α β) : Decidable (m₁ ~m m₂) :=
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.HashMap
```
