# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Revert.Variant29b12680cc9d35b84d5ba1fb572c60772bfd272ef81940339548d8f6dc8ba856

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d2bac9d8022e3002c34dbf586410777c6417c70` · SHA-256 `910d83daa60d11fc8e95f02cac63010d2cb817ce5a5ef196aa78b4547df41284`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRevert.Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RootLeanMVarIdRevert.Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Revert.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Clear


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRevert.Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971

public section

namespace Lean.Meta

/--
Revert free variables `fvarIds` at goal `mvarId`.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRevert.Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.Lean.MVarId.revert (mvarId : MVarId) (fvarIds : Array FVarId) (preserveOrder : Bool := false)
    (clearAuxDeclsInsteadOfRevert := false) : MetaM (Array FVarId × MVarId) := do
  if fvarIds.isEmpty then
    pure (#[], mvarId)
  else mvarId.withContext do
    mvarId.checkNotAssigned `revert
    unless clearAuxDeclsInsteadOfRevert do
      for fvarId in fvarIds do
        if (← fvarId.getDecl) |>.isAuxDecl then
          throwError "Failed to revert `{mkFVar fvarId}`: It is an auxiliary declaration created to \
            represent a recursive reference to an in-progress definition"
    let fvars := fvarIds.map mkFVar
    let toRevert ← collectForwardDeps fvars preserveOrder
    /- We should clear any `auxDecl` in `toRevert` -/
    let mut mvarId      := mvarId
    let mut toRevertNew := #[]
    for x in toRevert do
      if (← x.fvarId!.getDecl).isAuxDecl then
        mvarId ← mvarId.clear x.fvarId!
      else
        toRevertNew := toRevertNew.push x
    let tag ← mvarId.getTag
    -- TODO: the following code can be optimized because `MetavarContext.revert` will compute `collectDeps` again.
    -- We should factor out the relevant part

    -- Set metavariable kind to natural to make sure `revert` will assign it.
    mvarId.setKind .natural
    let (e, toRevert) ←
      try
        liftMkBindingM <| MetavarContext.revert toRevertNew mvarId preserveOrder
      finally
        mvarId.setKind .syntheticOpaque
    let mvar := e.getAppFn
    mvar.mvarId!.setKind .syntheticOpaque
    mvar.mvarId!.setTag tag
    return (toRevert.map Expr.fvarId!, mvar.mvarId!)

/-- Reverts all local declarations after `fvarId`. -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRevert.Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.Lean.MVarId.revertAfter (mvarId : MVarId) (fvarId : FVarId) : MetaM (Array FVarId × MVarId) :=
  mvarId.withContext do
    let localDecl ← fvarId.getDecl
    let fvarIds := (← getLCtx).foldl (init := #[]) (start := localDecl.index+1) fun fvarIds decl => fvarIds.push decl.fvarId
    mvarId.revert fvarIds (preserveOrder := true) (clearAuxDeclsInsteadOfRevert := true)

/-- Reverts all local declarations starting from `fvarId`. -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRevert.Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.Lean.MVarId.revertFrom (mvarId : MVarId) (fvarId : FVarId) : MetaM (Array FVarId × MVarId) :=
  mvarId.withContext do
    let localDecl ← fvarId.getDecl
    let fvarIds := (← getLCtx).foldl (init := #[]) (start := localDecl.index) fun fvarIds decl => fvarIds.push decl.fvarId
    mvarId.revert fvarIds (preserveOrder := true) (clearAuxDeclsInsteadOfRevert := true)

/--
Reverts all free variables in the goal `mvarId`.
**Remark**: Auxiliary local declarations are cleared.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRevert.Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.Lean.MVarId.revertAll (mvarId : MVarId) : MetaM MVarId := mvarId.withContext do
  mvarId.checkNotAssigned `revertAll
  let mut toRevert := #[]
  for fvarId in (← getLCtx).getFVarIds do
    unless (← fvarId.getDecl).isAuxDecl do
      toRevert := toRevert.push fvarId
  let (_, mvarId) ← mvarId.revert toRevert
    (preserveOrder := true)
    (clearAuxDeclsInsteadOfRevert := true)
  return mvarId

end Lean.Meta
```
