# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertHypotheses.Variantf7a92aff629e2ba4ca9c43793224b20f3f3a1a49cf25bb1fb95a6c3f74869ca9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4eb2232a5af48e1c17faf0a4ee2f6a02123ff828` · SHA-256 `f7a92aff629e2ba4ca9c43793224b20f3f3a1a49cf25bb1fb95a6c3f74869ca9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Std.Lean.Meta.Basic

open Lean Lean.Meta

namespace Lean.Meta

/--
Description of a hypothesis for `Lean.MVarId.assertHypotheses'`.
-/
structure Hypothesis' extends Hypothesis where
  /-- The hypothesis' `BinderInfo` -/
  binderInfo : BinderInfo
  /-- The hypothesis' `LocalDeclKind` -/
  kind : LocalDeclKind

/--
Add the given hypotheses to the local context. This is a generalisation of
`Lean.MVarId.assertHypotheses` which lets you specify
-/
def _root_.Lean.MVarId.assertHypotheses' (mvarId : MVarId)
    (hs : Array Hypothesis') : MetaM (Array FVarId × MVarId) := do
  let (fvarIds, mvarId) ← mvarId.assertHypotheses $ hs.map (·.toHypothesis)
  mvarId.modifyLCtx λ lctx => Id.run do
    let mut lctx := lctx
    for h : i in [:hs.size] do
      let h := hs[i]'h.2
      if h.kind != .default then
        lctx := lctx.setKind fvarIds[i]! h.kind
      if h.binderInfo != .default then
        lctx := lctx.setBinderInfo fvarIds[i]! h.binderInfo
    pure lctx
  return (fvarIds, mvarId)

end Lean.Meta
```
