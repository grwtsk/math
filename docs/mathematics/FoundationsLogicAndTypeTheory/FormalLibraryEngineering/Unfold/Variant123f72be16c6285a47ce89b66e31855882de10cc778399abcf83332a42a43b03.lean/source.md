# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variant123f72be16c6285a47ce89b66e31855882de10cc778399abcf83332a42a43b03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc4be802ed175298ae3096c467352b389b33918a` · SHA-256 `123f72be16c6285a47ce89b66e31855882de10cc778399abcf83332a42a43b03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Unfold
public import Lean.Elab.Tactic.Location

public section

namespace Lean.Elab.Tactic
open Meta

def unfoldLocalDecl (declName : Name) (fvarId : FVarId) : TacticM Unit := do
  replaceMainGoal [← Meta.unfoldLocalDecl (← getMainGoal) fvarId declName]

def unfoldTarget (declName : Name) : TacticM Unit := do
  replaceMainGoal [← Meta.unfoldTarget (← getMainGoal) declName]

def zetaDeltaLocalDecl (declFVarId : FVarId) (fvarId : FVarId) : TacticM Unit := do
  replaceMainGoal [← Meta.zetaDeltaLocalDecl (← getMainGoal) fvarId declFVarId]

def zetaDeltaTarget (declFVarId : FVarId) : TacticM Unit := do
  replaceMainGoal [← Meta.zetaDeltaTarget (← getMainGoal) declFVarId]

/-- "unfold " ident+ (location)? -/
@[builtin_tactic Lean.Parser.Tactic.unfold] def evalUnfold : Tactic := fun stx => do
  let loc := expandOptLocation stx[2]
  for declNameId in stx[1].getArgs do
    go declNameId loc
where
  go (declNameId : Syntax) (loc : Location) : TacticM Unit := withMainContext <| withRef declNameId do
    let e ← withoutRecover <| elabTermForApply declNameId (mayPostpone := false)
    match e with
    | .const declName _ =>
      withLocation loc (unfoldLocalDecl declName) (unfoldTarget declName) (throwTacticEx `unfold · m!"did not unfold '{declName}'")
    | .fvar declFVarId =>
      unless ← declFVarId.isLetVar do
        throwError "Tactic `unfold` failed: Local variable `{Expr.fvar declFVarId}` has no definition"
      withLocation loc (zetaDeltaLocalDecl declFVarId) (zetaDeltaTarget declFVarId) (throwTacticEx `unfold · m!"did not unfold '{e}'")
    | _ => throwTacticEx `unfold (← getMainGoal) m!"expression {e} is not a global or local constant"

end Lean.Elab.Tactic
```
