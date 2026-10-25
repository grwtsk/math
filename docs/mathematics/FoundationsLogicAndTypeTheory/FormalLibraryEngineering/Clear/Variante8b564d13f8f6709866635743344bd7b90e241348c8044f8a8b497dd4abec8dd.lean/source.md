# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Clear.Variante8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `163c559d4b3d06ec6761f97f7a20dd0a61051e5f` · SHA-256 `e8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Util
import Init.Data.Nat.Order
import Init.Data.Order.Lemmas

public section

namespace Lean.Meta

/--
Erase the given free variable from the goal `mvarId`.
-/
def _root_.Lean.MVarId.clear (mvarId : MVarId) (fvarId : FVarId) : MetaM MVarId :=
  mvarId.withContext do
    mvarId.checkNotAssigned `clear
    let lctx ← getLCtx
    unless lctx.contains fvarId do
      throwTacticEx `clear mvarId m!"unknown variable '{mkFVar fvarId}'"
    let tag ← mvarId.getTag
    lctx.forM fun localDecl => do
      unless localDecl.fvarId == fvarId do
        if (← localDeclDependsOn localDecl fvarId) then
          throwTacticEx `clear mvarId m!"variable '{localDecl.toExpr}' depends on '{mkFVar fvarId}'"
    let mvarDecl ← mvarId.getDecl
    if (← exprDependsOn mvarDecl.type fvarId) then
      throwTacticEx `clear mvarId m!"target depends on '{mkFVar fvarId}'"
    let lctx := lctx.erase fvarId
    let localInsts ← getLocalInstances
    let localInsts := match localInsts.findFinIdx? fun localInst => localInst.fvar.fvarId! == fvarId with
      | none => localInsts
      | some idx => localInsts.eraseIdx idx
    let newMVar ← mkFreshExprMVarAt lctx localInsts mvarDecl.type MetavarKind.syntheticOpaque tag
    mvarId.assign newMVar
    pure newMVar.mvarId!


/--
Try to erase the given free variable from the goal `mvarId`. It is no-op if the free variable
cannot be erased due to forward dependencies.
-/
def _root_.Lean.MVarId.tryClear (mvarId : MVarId) (fvarId : FVarId) : MetaM MVarId :=
  mvarId.clear fvarId <|> pure mvarId

/--
Try to clear the given fvars from the local context.

The fvars must be given in the order they appear in the local context.

See also `tryClearMany'` which takes care of reordering internally,
and returns the cleared hypotheses along with the new goal.
-/
def _root_.Lean.MVarId.tryClearMany (mvarId : MVarId) (fvarIds : Array FVarId) : MetaM MVarId := do
  fvarIds.foldrM (init := mvarId) fun fvarId mvarId => mvarId.tryClear fvarId

/--
Try to clear the given fvars from the local context. Returns the new goal and
the hypotheses that were cleared.

Does not require the `hyps` to be given in the order in which they
appear in the local context.
-/
def _root_.Lean.MVarId.tryClearMany' (goal : MVarId) (fvarIds : Array FVarId) :
    MetaM (MVarId × Array FVarId) :=
  goal.withContext do
    let fvarIds := (← getLCtx).sortFVarsByContextOrder fvarIds
    fvarIds.foldrM (init := (goal, Array.mkEmpty fvarIds.size))
      fun h (goal, cleared) => do
        let goal' ← goal.tryClear h
        let cleared := if goal == goal' then cleared else cleared.push h
        return (goal', cleared)

end Lean.Meta
```
