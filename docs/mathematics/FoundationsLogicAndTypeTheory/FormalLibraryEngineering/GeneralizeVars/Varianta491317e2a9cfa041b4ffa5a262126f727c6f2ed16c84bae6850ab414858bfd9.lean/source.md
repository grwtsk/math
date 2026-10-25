# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GeneralizeVars.Varianta491317e2a9cfa041b4ffa5a262126f727c6f2ed16c84bae6850ab414858bfd9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4a4006d809d8f0327ffe421a2fb63f7d062f472` · SHA-256 `35002398d826b4a1dffd03191eef1d9165d1103818e5211c5669d95cdf8b763d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkGeneralizationForbiddenSet.Variant2b038b993e71b95b60e610d98a51545445cba928394cec8fa11d1724b5de6a80","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b038b993e71b95b60e610d98a51545445cba928394cec8fa11d1724b5de6a80","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkGeneralizationForbiddenSet.Variant2b038b993e71b95b60e610d98a51545445cba928394cec8fa11d1724b5de6a80","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2b038b993e71b95b60e610d98a51545445cba928394cec8fa11d1724b5de6a80","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/GeneralizeVars.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Basic
public import Lean.Util.CollectFVars


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkGeneralizationForbiddenSet.Variant2b038b993e71b95b60e610d98a51545445cba928394cec8fa11d1724b5de6a80

public section

namespace Lean.Meta

/--
  Add to `forbidden` all a set of `FVarId`s containing `targets` and all variables they depend on.
-/
partial def mkGeneralizationForbiddenSet (targets : Array Expr) (forbidden : FVarIdSet := {}) : MetaM FVarIdSet := do
  let mut s := { fvarSet := forbidden }
  let mut todo := #[]
  for target in targets do
    if target.isFVar then
      todo := todo.push target.fvarId!
    else
      s := collectFVars s (← instantiateMVars (← inferType target))
  loop todo.toList s.fvarSet
where
  visit (fvarId : FVarId) (todo : List FVarId) (s : FVarIdSet) : MetaM (List FVarId × FVarIdSet) := do
    let localDecl ← fvarId.getDecl
    let mut s' := collectFVars {} (← instantiateMVars localDecl.type)
    if let some val := localDecl.value? then
      s' := collectFVars s' (← instantiateMVars val)
    let mut todo := todo
    let mut s := s
    for fvarId in s'.fvarSet do
      unless s.contains fvarId do
        todo := fvarId :: todo
        s := s.insert fvarId
    return (todo, s)

  loop (todo : List FVarId) (s : FVarIdSet) : MetaM FVarIdSet := do
    match todo with
    | [] => return s
    | fvarId::todo =>
      if s.contains fvarId then
        loop todo s
      else
        let (todo, s) ← visit fvarId todo <| s.insert fvarId
        loop todo s

/--
  Collect variables to be generalized.
  It uses the following heuristic
  - Collect forward dependencies that are not in the forbidden set, and depend on some variable in `targets`.

  - We use `mkForbiddenSet` to compute `forbidden`.

  Remark: we *not* collect instance implicit arguments nor auxiliary declarations for compiling
  recursive declarations.
-/
def getFVarSetToGeneralize (targets : Array Expr) (forbidden : FVarIdSet) (ignoreLetDecls := false) : MetaM FVarIdSet := do
  let mut s : FVarIdSet := targets.foldl (init := {}) fun s target => if target.isFVar then s.insert target.fvarId! else s
  let mut r : FVarIdSet := {}
  for localDecl in (← getLCtx) do
    unless forbidden.contains localDecl.fvarId do
      unless localDecl.isAuxDecl || localDecl.binderInfo.isInstImplicit || (ignoreLetDecls && localDecl.isLet) do
      if (← findLocalDeclDependsOn localDecl (s.contains ·)) then
        r := r.insert localDecl.fvarId
        s := s.insert localDecl.fvarId
  return r

def getFVarsToGeneralize (targets : Array Expr) (forbidden : FVarIdSet := {}) (ignoreLetDecls := false) : MetaM (Array FVarId) := do
  let forbidden ← mkGeneralizationForbiddenSet targets forbidden
  let s ← getFVarSetToGeneralize targets forbidden ignoreLetDecls
  sortFVarIds s.toArray

end Lean.Meta
```
