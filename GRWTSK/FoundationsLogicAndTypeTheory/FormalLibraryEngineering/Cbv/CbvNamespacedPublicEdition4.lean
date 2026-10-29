-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cbv.Variante96080d3ab7c590204c62aa421f1dd96808a1880db8fc455a717f3cc113c3836","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e96080d3ab7c590204c62aa421f1dd96808a1880db8fc455a717f3cc113c3836","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Cbv.Variante96080d3ab7c590204c62aa421f1dd96808a1880db8fc455a717f3cc113c3836","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e96080d3ab7c590204c62aa421f1dd96808a1880db8fc455a717f3cc113c3836","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Cbv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Lean.Meta.Tactic.Cbv
public import Lean.Meta.Tactic
public import Lean.Elab.Tactic.Location


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cbv.Variante96080d3ab7c590204c62aa421f1dd96808a1880db8fc455a717f3cc113c3836

public section

namespace Lean.Elab.Tactic.Cbv

open Lean.Meta.Tactic.Cbv

@[builtin_tactic Lean.Parser.Tactic.cbv] def evalCbv : Tactic := fun stx => withMainContext do
  if cbv.warning.get (← getOptions) then
    logWarningAt stx "The `cbv` usage warning option is enabled. Disable it by setting `set_option cbv.warning false`."
  let (fvarIds, simplifyTarget) ← match expandOptLocation stx[1] with
    | Location.targets hyps simplifyTarget => pure (← getFVarIds hyps, simplifyTarget)
    | Location.wildcard => pure (← (← getMainGoal).getNondepPropHyps, true)
  liftMetaTactic fun mvar => do
    match (← cbvGoal mvar (simplifyTarget := simplifyTarget) (fvarIdsToSimp := fvarIds)) with
    | .none => return []
    | .some newGoal => return [newGoal]

@[builtin_tactic Lean.Parser.Tactic.decide_cbv] def evalDecideCbv : Tactic := fun stx =>
  match stx with
  | `(tactic| decide_cbv) => withMainContext do
    if cbv.warning.get (← getOptions) then
      logWarningAt stx "The `decide_cbv` usage warning option is enabled. Disable it by setting `set_option cbv.warning false`."
    liftMetaFinishingTactic fun mvar => do
      let [mvar'] ← mvar.applyConst ``of_decide_eq_true | throwError "Could not apply `of_decide_eq_true`"
      cbvDecideGoal mvar'
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.Cbv
