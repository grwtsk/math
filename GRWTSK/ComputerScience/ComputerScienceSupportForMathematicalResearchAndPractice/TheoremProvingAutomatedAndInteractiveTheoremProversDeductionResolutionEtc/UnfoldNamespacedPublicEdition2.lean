-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variant140d5ba4e7c4d25c6c088cea7ac46681849491a738903d118037bc07be482008","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"140d5ba4e7c4d25c6c088cea7ac46681849491a738903d118037bc07be482008","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Unfold.Variant140d5ba4e7c4d25c6c088cea7ac46681849491a738903d118037bc07be482008","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"140d5ba4e7c4d25c6c088cea7ac46681849491a738903d118037bc07be482008","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Conv/Unfold.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Tactic.Unfold
public import Lean.Elab.Tactic.Conv.Simp


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variant140d5ba4e7c4d25c6c088cea7ac46681849491a738903d118037bc07be482008

public section

namespace Lean.Elab.Tactic.Conv
open Meta

@[builtin_tactic Lean.Parser.Tactic.Conv.unfold] def evalUnfold : Tactic := fun stx => withMainContext do
  for declNameId in stx[1].getArgs do
    withRef declNameId do
      let e ← withoutRecover <| elabTermForApply declNameId (mayPostpone := false)
      match e with
      | .const declName _ =>
        applySimpResult (← unfold (← getLhs) declName)
      | .fvar declFVarId =>
        unless ← declFVarId.isLetVar do
          throwError "conv tactic `unfold` failed, local variable `{Expr.fvar declFVarId}` has no definition"
        let lhs ← instantiateMVars (← getLhs)
        changeLhs (← Meta.zetaDeltaFVars lhs #[declFVarId])
      | _ => throwError "conv tactic `unfold` failed, expression {e} is not a global or local constant"

end Lean.Elab.Tactic.Conv
