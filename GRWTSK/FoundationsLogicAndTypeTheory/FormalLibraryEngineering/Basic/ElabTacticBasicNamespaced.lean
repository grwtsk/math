-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetMainTargetPrimePrime.Variant8ddcd0b579593fe42acbd1c4ae89a33233daa89140dd05c744a9ee8f09fe0e9f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ddcd0b579593fe42acbd1c4ae89a33233daa89140dd05c744a9ee8f09fe0e9f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetMainTargetPrimePrime.Variant8ddcd0b579593fe42acbd1c4ae89a33233daa89140dd05c744a9ee8f09fe0e9f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8ddcd0b579593fe42acbd1c4ae89a33233daa89140dd05c744a9ee8f09fe0e9f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/Elab/Tactic/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Jon Eugster
-/
import Mathlib.Lean.Meta
/-!
# Additions to `Lean.Elab.Tactic.Basic`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetMainTargetPrimePrime.Variant8ddcd0b579593fe42acbd1c4ae89a33233daa89140dd05c744a9ee8f09fe0e9f

open Lean Elab Tactic

namespace Lean.Elab.Tactic

/-- Return expected type for the main goal, cleaning up annotations, using `Lean.MVarId.getType''`.
Remark: note that `MVarId.getType'` uses `whnf` instead of `cleanupAnnotations`, and
`MVarId.getType''` also uses `cleanupAnnotations` -/
def getMainTarget'' : TacticM Expr := do
  (← getMainGoal).getType''

/--
Like `done` but takes a scope (e.g. a tactic name) as an argument
to produce more detailed error messages.
-/
def doneWithScope (scope : MessageData) : TacticM Unit := do
  let gs ← getUnsolvedGoals
  unless gs.isEmpty do
    logError m!"{scope} failed to solve some goals.\n"
    Term.reportUnsolvedGoals gs
    throwAbortTactic

/--
Like `focusAndDone` but takes a scope (e.g. tactic name) as an argument to
produce more detailed error messages.
-/
def focusAndDoneWithScope {α : Type} (scope : MessageData) (tactic : TacticM α) : TacticM α :=
  focus do
    let a ← try tactic catch e =>
      if isAbortTacticException e then throw e
      else throwError "{scope} failed.\n{← nestedExceptionToMessageData e}"
    doneWithScope scope
    pure a

end Lean.Elab.Tactic
