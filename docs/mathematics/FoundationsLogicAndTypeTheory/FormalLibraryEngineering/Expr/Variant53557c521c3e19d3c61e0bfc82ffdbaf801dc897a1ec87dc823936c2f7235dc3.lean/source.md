# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant53557c521c3e19d3c61e0bfc82ffdbaf801dc897a1ec87dc823936c2f7235dc3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8957f625279c1fa8cacde569c44a1ef00ab17f8` · SHA-256 `53557c521c3e19d3c61e0bfc82ffdbaf801dc897a1ec87dc823936c2f7235dc3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Expr

@[expose] public section

namespace Lean.Literal

instance : Ord Literal where
  compare
    | natVal n₁, natVal n₂ => compare n₁ n₂
    | strVal s₁, strVal s₂ => compare s₁ s₂
    | natVal _, strVal _ => .lt
    | strVal _, natVal _ => .gt
```
