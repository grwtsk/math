# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadSimp.Variant01dd0f3201ebf8d33a3aa1b492c74b5921406bcf583b6652306d2aab461ae527

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c590519e116c0b0f181554f41ef82b528eae6dec` · SHA-256 `01dd0f3201ebf8d33a3aa1b492c74b5921406bcf583b6652306d2aab461ae527`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Expr
public section
namespace Lean.Meta
/-!
Abstract simplifier API
-/

inductive MonadSimp.Result where
  | rfl
  | step (e : Expr) (h : Expr)
  deriving Inhabited

class MonadSimp (m : Type → Type) where
  withNewLemmas (xs : Array Expr) (k : m α) : m α
  dsimp : Expr → m Expr
  simp : Expr → m MonadSimp.Result

end Lean.Meta
```
