-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RenameInaccessibles.Variantba0641125e0f77b2d5204b4d27acf536763a08cf5e0803b9230c06e0c4e7b726","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ba0641125e0f77b2d5204b4d27acf536763a08cf5e0803b9230c06e0c4e7b726","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RenameInaccessibles.Variantba0641125e0f77b2d5204b4d27acf536763a08cf5e0803b9230c06e0c4e7b726","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ba0641125e0f77b2d5204b4d27acf536763a08cf5e0803b9230c06e0c4e7b726","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/RenameInaccessibles.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Elab.Term
import Lean.Elab.Binders

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RenameInaccessibles.Variantba0641125e0f77b2d5204b4d27acf536763a08cf5e0803b9230c06e0c4e7b726

namespace Lean.Elab.Tactic
public def renameInaccessibles (mvarId : MVarId) (hs : TSyntaxArray ``binderIdent) : TermElabM MVarId := do
  if hs.isEmpty then
    return mvarId
  else
    let mvarDecl ← mvarId.getDecl
    let mut lctx  := mvarDecl.lctx
    let mut hs    := hs
    let mut info  := #[]
    let mut found : NameSet := {}
    let n := lctx.numIndices
    -- hypotheses are inaccessible if their scopes are different from the caller's (we assume that
    -- the scopes are the same for all the hypotheses in `hs`, which is reasonable to expect in
    -- practice and otherwise the expected semantics of `rename_i` really are not clear)
    let some callerScopes := hs.findSome? (fun
        | `(binderIdent| $h:ident) => some <| extractMacroScopes h.getId
        | _ => none)
      | return mvarId
    for i in *...n do
      let j := n - i - 1
      match lctx.getAt? j with
      | none => pure ()
      | some localDecl =>
        if localDecl.isImplementationDetail then
          continue
        let inaccessible := !(extractMacroScopes localDecl.userName |>.equalScope callerScopes)
        let shadowed := found.contains localDecl.userName
        if inaccessible || shadowed then
          if let `(binderIdent| $h:ident) := hs.back! then
            let newName := h.getId
            lctx := lctx.setUserName localDecl.fvarId newName
            info := info.push (localDecl.fvarId, h)
          hs := hs.pop
          if hs.isEmpty then
            break
        found := found.insert localDecl.userName
    unless hs.isEmpty do
      logError m!"too many variable names provided"
    let mvarNew ← Meta.mkFreshExprMVarAt lctx mvarDecl.localInstances mvarDecl.type MetavarKind.syntheticOpaque mvarDecl.userName
    withSaveInfoContext <| mvarNew.mvarId!.withContext do
      for (fvarId, stx) in info do
        Term.addLocalVarInfo stx (mkFVar fvarId)
    mvarId.assign mvarNew
    return mvarNew.mvarId!

end Lean.Elab.Tactic
