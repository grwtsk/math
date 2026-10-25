-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdClear.Variante8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RootLeanMVarIdClear.Variante8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Clear.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Util
import Init.Data.Nat.Order
import Init.Data.Order.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdClear.Variante8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd

public section

namespace Lean.Meta

/--
Erase the given free variable from the goal `mvarId`.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdClear.Variante8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd.Lean.MVarId.clear (mvarId : MVarId) (fvarId : FVarId) : MetaM MVarId :=
  mvarId.withContext do
    mvarId.checkNotAssigned `clear
    let lctx ← getLCtx
    unless lctx.contains fvarId do
      throwTacticEx `clear mvarId m!"unknown variable '{mkFVar fvarId}'"
    let tag ← mvarId.getTag
    lctx.forM fun localDecl => do
      unless localDecl.fvarId == fvarId do
        if (← localDeclDependsOn localDecl fvarId) then
          throwTacticEx `clear mvarId m!"variable '{localDecl.toExpr}' depends on '{mkFVar fvarId}'"
    let mvarDecl ← mvarId.getDecl
    if (← exprDependsOn mvarDecl.type fvarId) then
      throwTacticEx `clear mvarId m!"target depends on '{mkFVar fvarId}'"
    let lctx := lctx.erase fvarId
    let localInsts ← getLocalInstances
    let localInsts := match localInsts.findFinIdx? fun localInst => localInst.fvar.fvarId! == fvarId with
      | none => localInsts
      | some idx => localInsts.eraseIdx idx
    let newMVar ← mkFreshExprMVarAt lctx localInsts mvarDecl.type MetavarKind.syntheticOpaque tag
    mvarId.assign newMVar
    pure newMVar.mvarId!


/--
Try to erase the given free variable from the goal `mvarId`. It is no-op if the free variable
cannot be erased due to forward dependencies.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdClear.Variante8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd.Lean.MVarId.tryClear (mvarId : MVarId) (fvarId : FVarId) : MetaM MVarId :=
  mvarId.clear fvarId <|> pure mvarId

/--
Try to clear the given fvars from the local context.

The fvars must be given in the order they appear in the local context.

See also `tryClearMany'` which takes care of reordering internally,
and returns the cleared hypotheses along with the new goal.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdClear.Variante8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd.Lean.MVarId.tryClearMany (mvarId : MVarId) (fvarIds : Array FVarId) : MetaM MVarId := do
  fvarIds.foldrM (init := mvarId) fun fvarId mvarId => mvarId.tryClear fvarId

/--
Try to clear the given fvars from the local context. Returns the new goal and
the hypotheses that were cleared.

Does not require the `hyps` to be given in the order in which they
appear in the local context.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdClear.Variante8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd.Lean.MVarId.tryClearMany' (goal : MVarId) (fvarIds : Array FVarId) :
    MetaM (MVarId × Array FVarId) :=
  goal.withContext do
    let fvarIds := (← getLCtx).sortFVarsByContextOrder fvarIds
    fvarIds.foldrM (init := (goal, Array.mkEmpty fvarIds.size))
      fun h (goal, cleared) => do
        let goal' ← goal.tryClear h
        let cleared := if goal == goal' then cleared else cleared.push h
        return (goal', cleared)

end Lean.Meta
