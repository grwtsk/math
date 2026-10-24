-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabAsAuxLemma.Variant04c7020e1dc6f98db87ac13c32c06cbeab9fb5e09498fb4819041df7bd64c4ee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04c7020e1dc6f98db87ac13c32c06cbeab9fb5e09498fb4819041df7bd64c4ee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabAsAuxLemma.Variant04c7020e1dc6f98db87ac13c32c06cbeab9fb5e09498fb4819041df7bd64c4ee","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"04c7020e1dc6f98db87ac13c32c06cbeab9fb5e09498fb4819041df7bd64c4ee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/AsAuxLemma.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
module

prelude
public import Lean.Elab.Tactic.Meta


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabAsAuxLemma.Variant04c7020e1dc6f98db87ac13c32c06cbeab9fb5e09498fb4819041df7bd64c4ee

public section

open Lean Meta Elab Tactic Parser.Tactic

namespace Lean.Elab.Tactic

@[builtin_tactic as_aux_lemma]
def elabAsAuxLemma : Lean.Elab.Tactic.Tactic
| `(tactic| as_aux_lemma => $s) => withMainContext do
  let mvarId ← getMainGoal
  let mvars ← Tactic.run mvarId (evalTactic s)
  unless mvars.isEmpty do
    throwError "Cannot abstract term into auxiliary lemma because there are open goals."
  let e ← instantiateMVars (mkMVar mvarId)
  let e ← mkAuxTheorem (← mvarId.getType) e
  mvarId.assign e
| _ => throwError "Invalid as_aux_lemma syntax"

end Lean.Elab.Tactic
