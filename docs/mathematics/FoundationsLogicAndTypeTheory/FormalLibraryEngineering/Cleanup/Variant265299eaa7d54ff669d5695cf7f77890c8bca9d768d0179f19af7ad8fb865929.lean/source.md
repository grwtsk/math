# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cleanup.Variant265299eaa7d54ff669d5695cf7f77890c8bca9d768d0179f19af7ad8fb865929

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3dd254d06e14cb5e5c56932c6c578c5f169689d1` · SHA-256 `2cefa6c7e1669411362899c6c812d1f3130d1162829a7bb8d038254ac018a097`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CleanupCore.Variantc15985f87ec936697a3ac7b612a48c314fa00d2b5ea7861c7beab67ff3b34515","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c15985f87ec936697a3ac7b612a48c314fa00d2b5ea7861c7beab67ff3b34515","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CleanupCore.Variantc15985f87ec936697a3ac7b612a48c314fa00d2b5ea7861c7beab67ff3b34515","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c15985f87ec936697a3ac7b612a48c314fa00d2b5ea7861c7beab67ff3b34515","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Cleanup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Basic
import Lean.Meta.CollectFVars
import Lean.Meta.Tactic.Util


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CleanupCore.Variantc15985f87ec936697a3ac7b612a48c314fa00d2b5ea7861c7beab67ff3b34515

namespace Lean.Meta

partial def cleanupCore (mvarId : MVarId) (toPreserve : Array FVarId) (indirectProps : Bool) : MetaM MVarId := do
  mvarId.withContext do
    mvarId.checkNotAssigned `cleanup
    let used ← collectUsed |>.run' (false, {})
    let mut lctx ← getLCtx
    for localDecl in lctx do
      unless used.contains localDecl.fvarId do
        lctx := lctx.erase localDecl.fvarId
    let localInsts := (← getLocalInstances).filter fun inst => used.contains inst.fvar.fvarId!
    let mvarNew ← mkFreshExprMVarAt lctx localInsts (← instantiateMVars (← mvarId.getType)) .syntheticOpaque (← mvarId.getTag)
    mvarId.assign mvarNew
    return mvarNew.mvarId!
where
  addUsedFVars (e : Expr) : StateRefT (Bool × FVarIdSet) MetaM Unit := do
    let (_, s) ← (← instantiateMVars e).collectFVars |>.run {}
    for fvarId in s.fvarSet do
      addUsedFVar fvarId

  addDeps (fvarId : FVarId) : StateRefT (Bool × FVarIdSet) MetaM Unit := do
    let localDecl ← fvarId.getDecl
    addUsedFVars localDecl.type
    if let some val := localDecl.value? then
      addUsedFVars val

  addUsedFVar (fvarId : FVarId) : StateRefT (Bool × FVarIdSet) MetaM Unit := do
    unless (← get).2.contains fvarId do
      modify fun (_, s) => (true, s.insert fvarId)
      addDeps fvarId

  /-- We include `p` in the used-set, if `p` is a proposition that contains a `x` that is in the used-set. -/
  collectPropsStep : StateRefT (Bool × FVarIdSet) MetaM Unit := do
    for localDecl in (← getLCtx) do
      let usedSet := (← get).2
      unless usedSet.contains localDecl.fvarId do
        if (← isProp localDecl.type) then
          if (← dependsOnPred localDecl.type usedSet.contains) then
            addUsedFVar localDecl.fvarId
        if let some v := localDecl.value? then
          if (← dependsOnPred v usedSet.contains) then
            addUsedFVar localDecl.fvarId

  collectProps : StateRefT (Bool × FVarIdSet) MetaM Unit := do
    modify fun s => (false, s.2)
    collectPropsStep
    if (← get).1 then
      collectProps

  collectUsed : StateRefT (Bool × FVarIdSet) MetaM FVarIdSet := do
    addUsedFVars (← instantiateMVars (← mvarId.getType))
    toPreserve.forM addUsedFVar
    if indirectProps then collectProps
    return (← get).2

/--
  Auxiliary tactic for cleaning the local context. It removes local declarations (aka hypotheses) that are *not* relevant.
  We say a variable `x` is "relevant" if
  - It occurs in the `toPreserve` array, or
  - It occurs in the target type, or
  - There is a relevant variable `y` that depends on `x`, or
  - If `indirectProps` is true, the type of `x` is a proposition and it depends on a relevant variable `y`.
  - If `indirectProps` is true, `x` is a local declaration and its value mentions a relevant variable `y`.

  By default, `toPreserve := #[]` and `indirectProps := true`. These settings are used in the mathlib tactic `extract_goal`
  to give the user more control over which variables to include.
-/
@[inline] public def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CleanupCore.Variantc15985f87ec936697a3ac7b612a48c314fa00d2b5ea7861c7beab67ff3b34515.Lean.MVarId.cleanup (mvarId : MVarId) (toPreserve : Array FVarId := #[]) (indirectProps : Bool := true) : MetaM MVarId := do
  cleanupCore mvarId toPreserve indirectProps

end Lean.Meta
```
