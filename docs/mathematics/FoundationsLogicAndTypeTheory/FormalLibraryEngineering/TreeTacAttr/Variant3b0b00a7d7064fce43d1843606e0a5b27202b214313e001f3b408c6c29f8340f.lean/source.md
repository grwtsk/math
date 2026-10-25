# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TreeTacAttr.Variant3b0b00a7d7064fce43d1843606e0a5b27202b214313e001f3b408c6c29f8340f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb028f1f2d321c8ac81f13e08f753ea9537ce2de` · SHA-256 `3b0b00a7d7064fce43d1843606e0a5b27202b214313e001f3b408c6c29f8340f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Lean.Meta.Tactic.Simp

public section

open Lean.Meta

namespace Std.Internal

builtin_initialize treeTacExt : SimpExtension
  ← registerSimpAttr `Std.Internal.tree_tac "simp theorems used by internal DTreeMap lemmas"

end Std.Internal
```
