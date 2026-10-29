-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variant8446c46a9aab1626946cab3dc19c18d085a2f8111c99e1b16c0a59315edcd3ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8446c46a9aab1626946cab3dc19c18d085a2f8111c99e1b16c0a59315edcd3ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabTerm.Variant8446c46a9aab1626946cab3dc19c18d085a2f8111c99e1b16c0a59315edcd3ae","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8446c46a9aab1626946cab3dc19c18d085a2f8111c99e1b16c0a59315edcd3ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Rename.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Lean.Elab.Tactic.ElabTerm
import Mathlib.Init

/-!
# The `rename'` tactic
The `rename'` tactic renames one or several hypotheses.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variant8446c46a9aab1626946cab3dc19c18d085a2f8111c99e1b16c0a59315edcd3ae

namespace Mathlib.Tactic

open Lean Elab.Tactic Meta

/-- A parser for a single rename to perform in the `rename` tactic:
these should have the form `h => hnew` (describing a rename of a hypothesis `h` to `hnew`). -/
syntax renameArg := term " => " ident

/-- `rename' h => hnew` renames the hypothesis named `h` to `hnew`.
To rename several hypothesis, use `rename' h₁ => h₁new, h₂ => h₂new`.
You can use `rename' a => b, b => a` to swap two variables. -/
syntax (name := rename') "rename' " renameArg,+ : tactic

elab_rules : tactic
  | `(tactic| rename' $[$as:term => $bs:ident],*) => do
    let ids ← getFVarIds as
    liftMetaTactic1 fun goal ↦ do
      let mut lctx ← getLCtx
      for fvar in ids, tgt in bs do
        lctx := lctx.setUserName fvar tgt.getId
      let mvarNew ← mkFreshExprMVarAt lctx (← getLocalInstances)
        (← goal.getType) MetavarKind.syntheticOpaque (← goal.getTag)
      goal.assign mvarNew
      pure mvarNew.mvarId!
    withMainContext do
      for fvar in ids, tgt in bs do
        Elab.Term.addTermInfo' tgt (mkFVar fvar)

end Mathlib.Tactic
