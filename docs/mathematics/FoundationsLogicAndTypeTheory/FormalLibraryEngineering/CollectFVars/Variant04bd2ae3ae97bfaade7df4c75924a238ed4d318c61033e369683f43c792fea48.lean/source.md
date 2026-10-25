# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectFVars.Variant04bd2ae3ae97bfaade7df4c75924a238ed4d318c61033e369683f43c792fea48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12b06562180a9f7250ebb154bf463534094e6b6a` · SHA-256 `1ca3ea3af566edb89d90aef5a7c6a74f8271018158843167877e451e0287d347`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprCollectFVars.Variant257c6a39b7e3a7cfb931cd9a79d2e96b072f28dca96252e253adaabb9a23098b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"257c6a39b7e3a7cfb931cd9a79d2e96b072f28dca96252e253adaabb9a23098b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExprCollectFVars.Variant257c6a39b7e3a7cfb931cd9a79d2e96b072f28dca96252e253adaabb9a23098b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"257c6a39b7e3a7cfb931cd9a79d2e96b072f28dca96252e253adaabb9a23098b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/CollectFVars.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Sebastian Ullrich
-/
module

prelude
public import Lean.Util.CollectFVars
public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprCollectFVars.Variant257c6a39b7e3a7cfb931cd9a79d2e96b072f28dca96252e253adaabb9a23098b

public section

namespace Lean

open Meta

def Expr.collectFVars (e : Expr) : StateRefT CollectFVars.State MetaM Unit := do
  let e ← instantiateMVars e
  modify fun used => Lean.collectFVars used e

def LocalDecl.collectFVars (localDecl : LocalDecl) : StateRefT CollectFVars.State MetaM Unit := do
  match localDecl with
  | .cdecl (type := type) .. => type.collectFVars
  | .ldecl (type := type) (value := value) .. => type.collectFVars; value.collectFVars

/-- For each variable in `s.fvarSet`, include its dependencies. -/
partial def CollectFVars.State.addDependencies (s : CollectFVars.State) : MetaM CollectFVars.State := do
  let (_, s) ← go |>.run 0 |>.run s
  return s
where
  getNext? : StateRefT Nat (StateRefT CollectFVars.State MetaM) (Option FVarId) := do
    let s ← getThe CollectFVars.State
    let i ← get
    if h : i < s.fvarIds.size then
      let r := s.fvarIds[i]
      modify (· + 1)
      return some r
    else
      return none

  go : StateRefT Nat (StateRefT CollectFVars.State MetaM) Unit := do
    let some fvarId ← getNext? | return ()
    /- We don't use `getLocalDecl` because `CollectFVars.State` may contains local variables that are not in the
       current local context. Recall that we use this method to process match-expressions, and each AltLHS has
       each own its extra local declarations. -/
    let some localDecl := (← getLCtx).find? fvarId | return ()
    localDecl.collectFVars
    go

namespace Meta

def removeUnused (vars : Array Expr) (used : CollectFVars.State) : MetaM (LocalContext × LocalInstances × Array Expr) := do
  let localInsts ← getLocalInstances
  let lctx ← getLCtx
  let (lctx, localInsts, newVars, _) ← vars.foldrM
    (fun var (lctx, localInsts, newVars, used) => do
      if used.fvarSet.contains var.fvarId! then
        let varType ← inferType var
        let (_, used) ← varType.collectFVars.run used
        pure (lctx, localInsts, newVars.push var, used)
      else
        pure (lctx.erase var.fvarId!, localInsts.erase var.fvarId!, newVars, used))
    (lctx, localInsts, #[], used)
  pure (lctx, localInsts, newVars.reverse)

end Meta
end Lean
```
