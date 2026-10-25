# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OccursCheck.Variant9a0347d7506964b10a00eb77f4855ae7fe6fd965c44a581ee85923d1a6bf6345

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7c24e7cbbf0f7ff4f31ede9c51ab17ec3ee4703` · SHA-256 `9a0347d7506964b10a00eb77f4855ae7fe6fd965c44a581ee85923d1a6bf6345`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.MetavarContext

public section

namespace Lean

/--
  Return true if `e` does **not** contain `mvarId` directly or indirectly
  This function considers assignments and delayed assignments. -/
partial def occursCheck [Monad m] [MonadMCtx m] (mvarId : MVarId) (e : Expr) : m Bool := do
  if !e.hasExprMVar then
    return true
  else
    match (← visit e |>.run |>.run {}) with
    | (.ok .., _)    => return true
    | (.error .., _) => return false
where
  visitMVar (mvarId' : MVarId) : ExceptT Unit (StateT ExprSet m) Unit := do
    if mvarId == mvarId' then
      throw () -- found
    else
      match (← getExprMVarAssignment? mvarId') with
      | some v => visit v
      | none   =>
        match (← getDelayedMVarAssignment? mvarId') with
        | some d => visitMVar d.mvarIdPending
        | none   => return ()

  visit (e : Expr) : ExceptT Unit (StateT ExprSet m) Unit := do
    if !e.hasExprMVar then
      return ()
    else if (← get).contains e then
      return ()
    else
      modify fun s => s.insert e
      match e with
      | Expr.proj _ _ s      => visit s
      | Expr.forallE _ d b _ => visit d; visit b
      | Expr.lam _ d b _     => visit d; visit b
      | Expr.letE _ t v b _  => visit t; visit v; visit b
      | Expr.mdata _ b       => visit b
      | Expr.app f a         => visit f; visit a
      | Expr.mvar mvarId     => visitMVar mvarId
      | _                    => return ()

end Lean
```
