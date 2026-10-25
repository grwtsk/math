# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtractLets.Variant381eb61f806544d0fa16e3d3cb4c9a8480a1f38c98bc91d862e6e197d366b345

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `472759c348e5256472bad80f26cabbeb7ca0cfb8` · SHA-256 `381eb61f806544d0fa16e3d3cb4c9a8480a1f38c98bc91d862e6e197d366b345`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Lean.Expr.Basic
import Mathlib.Tactic.Basic
import Batteries.Tactic.Lint.Misc
import Mathlib.Tactic.Linter.DeprecatedModule

deprecated_module "The extract_let tactic was moved to Lean core; \
  you can probably just remove this import" (since := "2025-05-02")
```
