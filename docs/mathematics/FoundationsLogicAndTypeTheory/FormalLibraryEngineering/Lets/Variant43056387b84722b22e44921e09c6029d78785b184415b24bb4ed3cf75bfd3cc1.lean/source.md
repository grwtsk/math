# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lets.Variant43056387b84722b22e44921e09c6029d78785b184415b24bb4ed3cf75bfd3cc1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1955e3fe7ea49d61f77f85f5282dc40204892efb` · SHA-256 `43056387b84722b22e44921e09c6029d78785b184415b24bb4ed3cf75bfd3cc1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

prelude
public import Lean.Elab.Tactic.Lets
public import Lean.Elab.Tactic.Conv.Basic

public section

/-!
# Conv tactics to manipulate `let` expressions
-/

open Lean Meta

namespace Lean.Elab.Tactic.Conv

/-!
### `extract_lets`
-/

@[builtin_tactic Lean.Parser.Tactic.Conv.extractLets] def evalExtractLets : Tactic
  | `(conv| extract_lets $cfg:optConfig $ids*) => do
    let mut config ← elabExtractLetsConfig cfg
    let givenNames := (ids.map getNameOfIdent').toList
    let (lhs, rhs) ← getLhsRhs
    let fvars ← liftMetaTacticAux fun mvarId => do
      mvarId.checkNotAssigned `extract_lets
      Meta.extractLets #[lhs] givenNames (config := config) fun fvarIds es _ => do
        let lhs' := es[0]!
        if fvarIds.isEmpty && lhs == lhs' then
          throwTacticEx `extract_lets mvarId m!"made no progress"
        let (rhs', g) ← mkConvGoalFor lhs' (← mvarId.getTag)
        let fvars := fvarIds.map .fvar
        let assign (mvar : MVarId) (e : Expr) : MetaM Unit := do
          let e ← mkLetFVars (usedLetOnly := false) fvars e
          mvar.withContext do
            unless ← isDefEq (.mvar mvar) e do
              throwTacticEx `extract_lets mvarId m!"(internal error) non-defeq in assignment"
            mvar.assign e
        assign rhs'.mvarId! rhs
        assign mvarId g
        return (fvarIds, [g.mvarId!])
    extractLetsAddVarInfo ids fvars
  | _ => throwUnsupportedSyntax

/-!
### `lift_lets`
-/

@[builtin_tactic Lean.Parser.Tactic.Conv.liftLets] def evalLiftLets : Tactic
  | `(conv| lift_lets $cfg:optConfig) => do
    let mut config ← elabLiftLetsConfig cfg
    withMainContext do
      let lhs ← getLhs
      let lhs' ← Meta.liftLets lhs config
      if lhs == lhs' then
        throwTacticEx `lift_lets (← getMainGoal) m!"made no progress"
      changeLhs lhs'
  | _ => throwUnsupportedSyntax

/-!
### `let_to_have`
-/

@[builtin_tactic Lean.Parser.Tactic.Conv.letToHave] def evalLetToHave : Tactic
  | `(conv| let_to_have) => do
    withMainContext do
      let lhs ← getLhs
      let lhs' ← Meta.letToHave lhs
      if lhs == lhs' then
        throwTacticEx `let_to_have (← getMainGoal) m!"made no progress"
      changeLhs lhs'
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.Conv
```
