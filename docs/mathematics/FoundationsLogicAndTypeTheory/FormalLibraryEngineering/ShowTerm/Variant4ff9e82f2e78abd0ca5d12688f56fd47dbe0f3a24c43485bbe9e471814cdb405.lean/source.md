# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShowTerm.Variant4ff9e82f2e78abd0ca5d12688f56fd47dbe0f3a24c43485bbe9e471814cdb405

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f66d9937f72c8efc2da51fd4269f52e54f7c82bc` · SHA-256 `4ff9e82f2e78abd0ca5d12688f56fd47dbe0f3a24c43485bbe9e471814cdb405`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Mario Carneiro
-/
module

prelude
public import Lean.Elab.ElabRules
public import Lean.Meta.Tactic.TryThis

public section

namespace Lean.Elab.Tactic.ShowTerm
open Lean Elab Term Tactic Meta.Tactic.TryThis Parser.Tactic

@[builtin_tactic showTerm] def evalShowTerm : Tactic := fun stx =>
  match stx with
  | `(tactic| show_term%$tk $t) => withMainContext do
    let g ← getMainGoal
    let initialState ← saveState
    evalTactic t
    let e := (← instantiateMVars (mkMVar g)).headBeta
    addExactSuggestion tk e (origSpan? := ← getRef) (checkState? := initialState) (tacticErrorAsInfo := true)
  | _ => throwUnsupportedSyntax

/-- Implementation of `show_term` term elaborator. -/
@[builtin_term_elab showTermElabImpl] def elabShowTerm : TermElab
  | `(show_term_elab%$tk $t), ty => do
    let e ← Term.elabTermEnsuringType t ty
    Term.synthesizeSyntheticMVarsNoPostponing
    addTermSuggestion tk (← instantiateMVars e).headBeta (origSpan? := ← getRef)
    pure e
  | _, _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.ShowTerm
```
