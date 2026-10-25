# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExposeNames.Variant3f0c9ca17756dfafc8fa182c3514e37d570e28cf18a6631d36fbb8dae6eb51cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3486689acbba8aa3b5f0cd9bef3bf148a5c47a24` · SHA-256 `eaf8327d5f6f0f7039235be6f88c3124f96d102489ba40cd35dc1fcff5c9bb11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLCtxWithExposedNames.Variant325e7d530ddab86a58c2803a4832f03c37c93fa5440e5aee986392e5d81b9685","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"325e7d530ddab86a58c2803a4832f03c37c93fa5440e5aee986392e5d81b9685","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetLCtxWithExposedNames.Variant325e7d530ddab86a58c2803a4832f03c37c93fa5440e5aee986392e5d81b9685","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"325e7d530ddab86a58c2803a4832f03c37c93fa5440e5aee986392e5d81b9685","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/ExposeNames.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Util
import Init.While


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLCtxWithExposedNames.Variant325e7d530ddab86a58c2803a4832f03c37c93fa5440e5aee986392e5d81b9685

public section

namespace Lean.Meta

/-- Returns a copy of the local context in which all declarations have clear, accessible names. -/
private def getLCtxWithExposedNames : MetaM LocalContext := do
  let mut map : Std.HashMap Name FVarId := {}
  let mut toRename := #[]
  let mut lctx ← getLCtx
  for localDecl in lctx do
    let userName := localDecl.userName
    if userName.hasMacroScopes then
      toRename := toRename.push localDecl.fvarId
    else
      if let some fvarId := map[userName]? then
        -- Variable has been shadowed
        toRename := toRename.push fvarId
      map := map.insert userName localDecl.fvarId
  if toRename.isEmpty then
    return lctx
  let mut next : Std.HashMap Name Nat := {}
  -- Remark: Shadowed variables may be inserted later.
  toRename := toRename.qsort fun fvarId₁ fvarId₂ =>
    (lctx.get! fvarId₁).index < (lctx.get! fvarId₂).index
  for fvarId in toRename do
    let localDecl := lctx.get! fvarId
    let mut baseName := localDecl.userName
    if baseName.hasMacroScopes then
      baseName := baseName.eraseMacroScopes
      if baseName == `x || baseName == `a then
        if (← isProp localDecl.type) then
          baseName := `h
    let mut userName := baseName
    let mut i := next[baseName]?.getD 0
    repeat
      if !map.contains userName then
        break
      i := i + 1
      userName := baseName.appendIndexAfter i
    next := next.insert baseName i
    map := map.insert userName fvarId
    lctx := lctx.modifyLocalDecl fvarId (·.setUserName userName)
  return lctx

/--
Creates a new goal whose local context has been "exposed" so that every local declaration has a clear, accessible name.
If no local declarations require renaming, the original goal is returned unchanged.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLCtxWithExposedNames.Variant325e7d530ddab86a58c2803a4832f03c37c93fa5440e5aee986392e5d81b9685.Lean.MVarId.exposeNames (mvarId : MVarId) : MetaM MVarId := mvarId.withContext do
  mvarId.checkNotAssigned `expose_names
  let lctx ← getLCtxWithExposedNames
  let mvarNew ← mkFreshExprMVarAt lctx (← getLocalInstances) (← mvarId.getType) .syntheticOpaque (← mvarId.getTag)
  mvarId.assign mvarNew
  return mvarNew.mvarId!

/-- Creates a temporary local context where all names are exposed, and executes `k` -/
def withExposedNames (k : MetaM α) : MetaM α := do
  withNewMCtxDepth <| withLCtx (← getLCtxWithExposedNames) (← getLocalInstances) k

end Lean.Meta
```
