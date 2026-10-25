# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nat.Variant414a73198d5dc00dd4dfcf8fd4422ab34d43547a6b83c7c26944df9c36816f1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54aa20a8eb179dffba8b6ffd14fed328b2188c1f` · SHA-256 `414a73198d5dc00dd4dfcf8fd4422ab34d43547a6b83c7c26944df9c36816f1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module
prelude

public import Init.Grind.Ordered.Module
import Init.Omega

public section

namespace Lean.Grind

instance : AddRightCancel Nat where
  add_right_cancel _ _ _ := Nat.add_right_cancel

instance : ExistsAddOfLT Nat where
  exists_add_of_le {a b} h := ⟨b - a, by omega⟩

end Lean.Grind
```
