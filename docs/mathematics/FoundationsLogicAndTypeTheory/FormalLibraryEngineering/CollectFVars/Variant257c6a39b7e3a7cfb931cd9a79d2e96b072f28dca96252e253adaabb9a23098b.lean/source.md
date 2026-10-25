# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectFVars.Variant257c6a39b7e3a7cfb931cd9a79d2e96b072f28dca96252e253adaabb9a23098b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36312ac9257a3d8f2d22d03c9564010bd92a5639` · SHA-256 `257c6a39b7e3a7cfb931cd9a79d2e96b072f28dca96252e253adaabb9a23098b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Sebastian Ullrich
-/
module

prelude
public import Lean.Util.CollectFVars
public import Lean.Meta.Basic

public section

namespace Lean

open Meta

def Expr.collectFVars (e : Expr) : StateRefT CollectFVars.State MetaM Unit := do
  let e ← instantiateMVars e
  modify fun used => Lean.collectFVars used e

def LocalDecl.collectFVars (localDecl : LocalDecl) : StateRefT CollectFVars.State MetaM Unit := do
  match localDecl with
  | .cdecl (type := type) .. => type.collectFVars
  | .ldecl (type := type) (value := value) .. => type.collectFVars; value.collectFVars

/-- For each variable in `s.fvarSet`, include its dependencies. -/
partial def CollectFVars.State.addDependencies (s : CollectFVars.State) : MetaM CollectFVars.State := do
  let (_, s) ← go |>.run 0 |>.run s
  return s
where
  getNext? : StateRefT Nat (StateRefT CollectFVars.State MetaM) (Option FVarId) := do
    let s ← getThe CollectFVars.State
    let i ← get
    if h : i < s.fvarIds.size then
      let r := s.fvarIds[i]
      modify (· + 1)
      return some r
    else
      return none

  go : StateRefT Nat (StateRefT CollectFVars.State MetaM) Unit := do
    let some fvarId ← getNext? | return ()
    /- We don't use `getLocalDecl` because `CollectFVars.State` may contains local variables that are not in the
       current local context. Recall that we use this method to process match-expressions, and each AltLHS has
       each own its extra local declarations. -/
    let some localDecl := (← getLCtx).find? fvarId | return ()
    localDecl.collectFVars
    go

namespace Meta

def removeUnused (vars : Array Expr) (used : CollectFVars.State) : MetaM (LocalContext × LocalInstances × Array Expr) := do
  let localInsts ← getLocalInstances
  let lctx ← getLCtx
  let (lctx, localInsts, newVars, _) ← vars.foldrM
    (fun var (lctx, localInsts, newVars, used) => do
      if used.fvarSet.contains var.fvarId! then
        let varType ← inferType var
        let (_, used) ← varType.collectFVars.run used
        pure (lctx, localInsts, newVars.push var, used)
      else
        pure (lctx.erase var.fvarId!, localInsts.erase var.fvarId!, newVars, used))
    (lctx, localInsts, #[], used)
  pure (lctx, localInsts, newVars.reverse)

end Meta
end Lean
```
