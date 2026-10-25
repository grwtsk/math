# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant996ec8a8a115d131ccd71728a15815e6fa29b0105bebea78423f8390353501db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d3d1cf1309cc228be6ae3a329f4a7a658f3e5eb` · SHA-256 `996ec8a8a115d131ccd71728a15815e6fa29b0105bebea78423f8390353501db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.Do.Basic
meta import Lean.Parser.Do

public section

namespace Lean.Elab.Do

open Lean.Parser.Term
open Lean.Meta

def elabDoIdDecl (x : Ident) (xType? : Option Term) (rhs : DoElem) (k : DoElabM Expr)
    (kind : DoElemContKind := .nonDuplicable) : DoElabM Expr := do
  let xType ← Term.elabType (xType?.getD (mkHole x))
  let lctx ← getLCtx
  let ctx ← read
  let ref ← getRef -- store the surrounding reference for error messages in `k`
  elabDoElem rhs <| .mk (kind := kind) x.getId xType do withRef ref do
    withLCtxKeepingMutVarDefs lctx ctx x.getId do
      Term.addLocalVarInfo x (← getFVarFromUserName x.getId)
      k
```
