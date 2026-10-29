-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyCleanWfTactic.Varianta79ebc168f55150896777674f4708d35785c490d3659f9c951c7b407f2b67e4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a79ebc168f55150896777674f4708d35785c490d3659f9c951c7b407f2b67e4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ApplyCleanWfTactic.Varianta79ebc168f55150896777674f4708d35785c490d3659f9c951c7b407f2b67e4a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a79ebc168f55150896777674f4708d35785c490d3659f9c951c7b407f2b67e4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/PreDefinition/WF/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
public import Lean.Elab.Tactic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyCleanWfTactic.Varianta79ebc168f55150896777674f4708d35785c490d3659f9c951c7b407f2b67e4a

public section

namespace Lean.Elab.WF

register_builtin_option debug.rawDecreasingByGoal : Bool := {
  defValue := false
  descr    := "Shows the raw `decreasing_by` goal including internal implementation detail \
               instead of cleaning it up with the `clean_wf` tactic. Can be enabled for debugging \
               purposes. Please report an issue if you have to use this option for other reasons."
}

open Lean Elab Tactic

def applyCleanWfTactic : TacticM Unit := do
  unless debug.rawDecreasingByGoal.get (← getOptions) do
    Tactic.evalTactic (← `(tactic| all_goals clean_wf))

end Lean.Elab.WF
