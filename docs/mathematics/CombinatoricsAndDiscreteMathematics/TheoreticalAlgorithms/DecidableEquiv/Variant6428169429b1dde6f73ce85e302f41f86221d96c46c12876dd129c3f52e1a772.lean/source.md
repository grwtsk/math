# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DecidableEquiv.Variant6428169429b1dde6f73ce85e302f41f86221d96c46c12876dd129c3f52e1a772

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fba686c8a20dd719ab065aa5a71d5ba964ea446` · SHA-256 `6428169429b1dde6f73ce85e302f41f86221d96c46c12876dd129c3f52e1a772`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.HashMap.DecidableEquiv
public import Std.Data.HashSet.Basic

public section

/-!
# Decidable equivalence for `HashSet`
-/

namespace Std.HashSet

instance {α : Type u} [BEq α] [LawfulBEq α] [Hashable α] (m₁ m₂ : HashSet α) : Decidable (m₁ ~m m₂) :=
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.HashSet
```
