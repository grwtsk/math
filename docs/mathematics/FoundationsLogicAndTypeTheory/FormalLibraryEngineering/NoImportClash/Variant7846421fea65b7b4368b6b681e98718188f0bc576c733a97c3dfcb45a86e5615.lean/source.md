# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoImportClash.Variant7846421fea65b7b4368b6b681e98718188f0bc576c733a97c3dfcb45a86e5615

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f62a527eb6f4e361d04fd19eb4fb2cdee244219b` · SHA-256 `7846421fea65b7b4368b6b681e98718188f0bc576c733a97c3dfcb45a86e5615`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

/-
This test case ensures that Aesop does not define anything that already exists
in our dependencies.
-/

import Aesop
import Lean
import Batteries
```
