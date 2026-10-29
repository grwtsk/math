-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstantiateMVarsInType.Variant414ec0eab586b66f311c5d59f01a1fde7d2c5c9ab0ab3d9df18aa511bcefe650","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"414ec0eab586b66f311c5d59f01a1fde7d2c5c9ab0ab3d9df18aa511bcefe650","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InstantiateMVarsInType.Variant414ec0eab586b66f311c5d59f01a1fde7d2c5c9ab0ab3d9df18aa511bcefe650","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"414ec0eab586b66f311c5d59f01a1fde7d2c5c9ab0ab3d9df18aa511bcefe650","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/Meta/InstantiateMVars.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Batteries.Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstantiateMVarsInType.Variant414ec0eab586b66f311c5d59f01a1fde7d2c5c9ab0ab3d9df18aa511bcefe650

@[expose] public section

open Lean Lean.Meta

namespace Lean.MVarId

/--
Instantiate metavariables in the type of the given metavariable, update the
metavariable's declaration and return the new type.
-/
def instantiateMVarsInType [Monad m] [MonadMCtx m] [MonadError m]
    (mvarId : MVarId) : m Expr := do
  let mdecl ← (← getMCtx).getExprMVarDecl mvarId
  let type := mdecl.type
  if type.hasMVar then
    let type ← instantiateMVars type
    let mdecl := { mdecl with type }
    modifyMCtx (·.declareExprMVar mvarId mdecl)
    return type
  else
    return type

/--
Instantiate metavariables in the `LocalDecl` of the given fvar, update the
`LocalDecl` and return the new `LocalDecl.`
-/
def instantiateMVarsInLocalDecl [Monad m] [MonadMCtx m] [MonadError m]
    (mvarId : MVarId) (fvarId : FVarId) : m LocalDecl := do
  let mdecl ← (← getMCtx).getExprMVarDecl mvarId
  let (some ldecl) := mdecl.lctx.find? fvarId | throwError
    "unknown fvar '{fvarId.name}' (in local context of mvar '?{mvarId.name}')"
  let ldecl ← Lean.instantiateLocalDeclMVars ldecl
  let mdecl :=
    { mdecl with lctx := mdecl.lctx.modifyLocalDecl fvarId fun _ => ldecl }
  modifyMCtx (·.declareExprMVar mvarId mdecl)
  return ldecl

/--
Instantiate metavariables in the local context of the given metavariable, update
the metavariable's declaration and return the new local context.
-/
def instantiateMVarsInLocalContext [Monad m] [MonadMCtx m] [MonadError m]
    (mvarId : MVarId) : m LocalContext := do
  let mdecl ← (← getMCtx).getExprMVarDecl mvarId
  let lctx ← instantiateLCtxMVars mdecl.lctx
  modifyMCtx (·.declareExprMVar mvarId { mdecl with lctx })
  return lctx

/--
Instantiate metavariables in the local context and type of the given
metavariable.
-/
def instantiateMVars [Monad m] [MonadMCtx m] [MonadError m] (mvarId : MVarId) :
    m Unit := do
  discard $ (← getMCtx).getExprMVarDecl mvarId
    -- The line above throws an error if the `mvarId` is not declared. The line
    -- below panics.
  instantiateMVarDeclMVars mvarId

end Lean.MVarId
