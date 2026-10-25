# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lets.Variantbe11c5f074bae59c99c65007f7fd7e38fe7b1b548297f05fcb87bac2656a551d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edc65e1c011bc1593522a27b24377f804e7d1efe` · SHA-256 `be11c5f074bae59c99c65007f7fd7e38fe7b1b548297f05fcb87bac2656a551d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

prelude
public import Lean.Meta.Tactic.Lets
public import Lean.Elab.Tactic.Location
import Lean.Elab.Binders
import Lean.Linter.Init
import Lean.Elab.ConfigEval

public section

/-!
# Tactics to manipulate `let` expressions
-/

open Lean Meta

namespace Lean.Elab.Tactic

register_builtin_option linter.tactic.unusedName : Bool := {
  defValue := true,
  descr := "enable the 'unused name' tactic linter"
}

/-!
### `extract_lets`
-/

def extractLetsAddVarInfo (ids : Array Syntax) (fvars : Array FVarId) : TacticM Unit :=
  withMainContext do
    for h : i in *...ids.size do
      if h' : i < fvars.size then
        Term.addLocalVarInfo ids[i] (mkFVar fvars[i])
      else
        Linter.logLintIf linter.tactic.unusedName ids[i] m!"unused name"

declare_config_elab elabExtractLetsConfig ExtractLetsConfig

@[builtin_tactic extractLets] def evalExtractLets : Tactic
  | `(tactic| extract_lets $cfg:optConfig $ids* $[$loc?:location]?) => do
    let mut config ← elabExtractLetsConfig cfg
    let givenNames := (ids.map getNameOfIdent').toList
    withLocation (expandOptLocation (Lean.mkOptionalNode loc?))
      (atLocal := fun h => do
        let fvars ← liftMetaTacticAux fun mvarId => do
          let ((fvars, _), mvarId) ← mvarId.extractLetsLocalDecl h givenNames config
          return (fvars, [mvarId])
        extractLetsAddVarInfo ids fvars)
      (atTarget := do
        let fvars ← liftMetaTacticAux fun mvarId => do
          let ((fvars, _), mvarId) ← mvarId.extractLets givenNames config
          return (fvars, [mvarId])
        extractLetsAddVarInfo ids fvars)
      (failed := fun _ => throwError "'extract_lets' tactic failed")
  | _ => throwUnsupportedSyntax

/-!
### `lift_lets`
-/

declare_config_elab elabLiftLetsConfig LiftLetsConfig

@[builtin_tactic liftLets] def evalLiftLets : Tactic
  | `(tactic| lift_lets $cfg:optConfig $[$loc?:location]?) => do
    let mut config ← elabLiftLetsConfig cfg
    withLocation (expandOptLocation (Lean.mkOptionalNode loc?))
      (atLocal := fun h => liftMetaTactic1 fun mvarId => mvarId.liftLetsLocalDecl h config)
      (atTarget := liftMetaTactic1 fun mvarId => mvarId.liftLets config)
      (failed := fun _ => throwError "'lift_lets' tactic failed")
  | _ => throwUnsupportedSyntax

/-!
### `let_to_have`
-/

@[builtin_tactic letToHave] def evalLetToHave : Tactic
  | `(tactic| let_to_have $[$loc?:location]?) => do
    withLocation (expandOptLocation (Lean.mkOptionalNode loc?))
      (atLocal := fun h => liftMetaTactic1 fun mvarId => mvarId.letToHaveLocalDecl h)
      (atTarget := liftMetaTactic1 fun mvarId => mvarId.letToHave)
      (failed := fun _ => throwError "'let_to_have' tactic failed")
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic
```
