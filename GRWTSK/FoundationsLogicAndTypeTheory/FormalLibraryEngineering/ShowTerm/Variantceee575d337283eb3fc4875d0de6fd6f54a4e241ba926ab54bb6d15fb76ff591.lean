-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabRules.Variant4ff9e82f2e78abd0ca5d12688f56fd47dbe0f3a24c43485bbe9e471814cdb405","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ff9e82f2e78abd0ca5d12688f56fd47dbe0f3a24c43485bbe9e471814cdb405","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabRules.Variant4ff9e82f2e78abd0ca5d12688f56fd47dbe0f3a24c43485bbe9e471814cdb405","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4ff9e82f2e78abd0ca5d12688f56fd47dbe0f3a24c43485bbe9e471814cdb405","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/ShowTerm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Mario Carneiro
-/
module

prelude
public import Lean.Elab.ElabRules
public import Lean.Meta.Tactic.TryThis


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabRules.Variant4ff9e82f2e78abd0ca5d12688f56fd47dbe0f3a24c43485bbe9e471814cdb405

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
