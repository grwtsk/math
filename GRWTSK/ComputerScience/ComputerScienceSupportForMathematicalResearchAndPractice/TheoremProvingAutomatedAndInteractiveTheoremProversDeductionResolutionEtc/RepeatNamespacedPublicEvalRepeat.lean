-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalRepeat.Variantaad44a2077de1901079fc5497c3809096ced40d255c59f0d8f7e9b29b14547b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aad44a2077de1901079fc5497c3809096ced40d255c59f0d8f7e9b29b14547b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EvalRepeat.Variantaad44a2077de1901079fc5497c3809096ced40d255c59f0d8f7e9b29b14547b9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"aad44a2077de1901079fc5497c3809096ced40d255c59f0d8f7e9b29b14547b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Repeat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kim Morrison
-/
module

prelude
public import Lean.Meta.Tactic.Repeat
public import Lean.Elab.Tactic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalRepeat.Variantaad44a2077de1901079fc5497c3809096ced40d255c59f0d8f7e9b29b14547b9

public section

namespace Lean.Elab.Tactic

@[builtin_tactic tacticRepeat_]
def evalRepeat : Tactic := fun stx => do
  match stx with
  | `(tactic| repeat $tac:tacticSeq) =>
    withoutRecover do
      while true do
          try
            evalTactic tac
          catch _ =>
            break
  | _ => throwUnsupportedSyntax

@[builtin_tactic repeat']
def evalRepeat' : Tactic := fun stx => do
  match stx with
  | `(tactic| repeat' $tac:tacticSeq) =>
     setGoals (← Meta.repeat' (evalTacticAtRaw tac) (← getGoals))
  | _ => throwUnsupportedSyntax

@[builtin_tactic repeat1']
def evalRepeat1' : Tactic := fun stx => do
  match stx with
  | `(tactic| repeat1' $tac:tacticSeq) =>
    setGoals (← Meta.repeat1' (evalTacticAtRaw tac) (← getGoals))
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic
