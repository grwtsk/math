# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameSet.Variantb11f52493d6b86eaf0459a511345af20a4a933403b10f7867f5accf8aebc0662

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a05b48f3c24f751e44dbdb2b7b44512816ad3a3` · SHA-256 `b11f52493d6b86eaf0459a511345af20a4a933403b10f7867f5accf8aebc0662`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Lean.Data.NameMap.Basic

@[expose] public section


namespace Lean.NameSet

instance : Singleton Name NameSet where
  singleton := fun n => (∅ : NameSet).insert n

instance : Union NameSet where
  union := fun s t => s.foldl (fun t n => t.insert n) t

instance : Inter NameSet where
  inter := fun s t => s.foldl (fun r n => if t.contains n then r.insert n else r) {}

instance : SDiff NameSet where
  sdiff := fun s t => t.foldl (fun s n => s.erase n) s

end Lean.NameSet
```
