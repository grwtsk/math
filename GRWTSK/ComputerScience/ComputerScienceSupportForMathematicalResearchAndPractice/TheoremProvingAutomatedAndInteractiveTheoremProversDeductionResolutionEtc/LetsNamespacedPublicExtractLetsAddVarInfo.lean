-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtractLetsAddVarInfo.Variantbe11c5f074bae59c99c65007f7fd7e38fe7b1b548297f05fcb87bac2656a551d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be11c5f074bae59c99c65007f7fd7e38fe7b1b548297f05fcb87bac2656a551d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExtractLetsAddVarInfo.Variantbe11c5f074bae59c99c65007f7fd7e38fe7b1b548297f05fcb87bac2656a551d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"be11c5f074bae59c99c65007f7fd7e38fe7b1b548297f05fcb87bac2656a551d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Lets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtractLetsAddVarInfo.Variantbe11c5f074bae59c99c65007f7fd7e38fe7b1b548297f05fcb87bac2656a551d

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
