# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HashMap.Varianta770f1cbc1b60feb8725bf38c7fab476191dd23732fdb50cc2ee9b261afafc77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0986869626d9fe913a5476167811015b85bc7fd9` · SHA-256 `a770f1cbc1b60feb8725bf38c7fab476191dd23732fdb50cc2ee9b261afafc77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Std.Data.HashMap.Basic
import Mathlib.Init

/-!
# Convenience functions for hash maps

These will be reimplemented in the Lean standard library.
-/

namespace Std.HashMap

variable {α β γ : Type _} [BEq α] [Hashable α]

/-- Apply a function to the values of a hash map. -/
def mapVal (f : α → β → γ) (m : HashMap α β) : HashMap α γ :=
  m.fold (fun acc k v => acc.insert k (f k v)) ∅

end Std.HashMap
```
