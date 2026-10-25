# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Varianta1c3592ca1864525575c133c2e8f027406b21041ab78f550fe162dd3b449077a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bab3c81872a33c859fe2b77cf2f38c0be683f5bd` · SHA-256 `dc134b72d22e13416e8c80d8dcfb8a7135def989b978f02f4a7d694898d78486`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreprocessExpr.Variant560df362143968c46ce2cbb9d88a20ccf23ead456352ba8db8233e896d9b4d15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"560df362143968c46ce2cbb9d88a20ccf23ead456352ba8db8233e896d9b4d15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PreprocessExpr.Variant560df362143968c46ce2cbb9d88a20ccf23ead456352ba8db8233e896d9b4d15","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"560df362143968c46ce2cbb9d88a20ccf23ead456352ba8db8233e896d9b4d15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.SymM
public import Lean.Meta.Transform
import Lean.Util.ForEachExpr

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreprocessExpr.Variant560df362143968c46ce2cbb9d88a20ccf23ead456352ba8db8233e896d9b4d15

namespace Lean.Meta.Sym

/--
Instantiates metavariables and applies `shareCommon`, which maintains the `SymM`
invariants enabled in the current configuration (see `Sym.Config`).
-/
public def preprocessExpr (e : Expr) : SymM Expr := do
  -- This function relies on `shareCommon` to unfold reducible constants, so the
  -- corresponding check must not have been disabled (e.g., via `withoutShareCommonChecks`).
  assert! (← getConfig).enforceUnfoldReducible
  shareCommon (← instantiateMVars e)

/--
Helper function that removes gaps, instantiate metavariables, and applies `shareCommon`.
Gaps are `none` cells at `lctx.decls`. In `SymM`, we assume these cells don't exist.
-/
def preprocessLCtx (lctx : LocalContext) : SymM LocalContext := do
  let auxDeclToFullName := lctx.auxDeclToFullName
  let mut fvarIdToDecl := {}
  let mut decls := {}
  let mut index := 0
  for decl in lctx do
    let decl ← match decl with
      | .cdecl _ fvarId userName type bi kind =>
        let type ← preprocessExpr type
        pure <| LocalDecl.cdecl index fvarId userName type bi kind
      | .ldecl _ fvarId userName type value nondep kind =>
        let type ← preprocessExpr type
        let value ← preprocessExpr value
        pure <| LocalDecl.ldecl index fvarId userName type value nondep kind
    index := index + 1
    decls := decls.push (some decl)
    fvarIdToDecl := fvarIdToDecl.insert decl.fvarId decl
  return { fvarIdToDecl, decls, auxDeclToFullName }

/--
Instantiates assigned metavariables, applies `shareCommon`, and eliminates holes (aka `none` cells)
in the local context.
-/
public def preprocessMVar (mvarId : MVarId) : SymM MVarId := do
  let mvarDecl ← mvarId.getDecl
  let lctx ← preprocessLCtx mvarDecl.lctx
  let type ← preprocessExpr mvarDecl.type
  let mvarNew ← mkFreshExprMVarAt lctx mvarDecl.localInstances type .syntheticOpaque mvarDecl.userName
  mvarId.assign mvarNew
  return mvarNew.mvarId!

/-- Debug helper: throws if any subexpression of `e` is not in the table of maximally shared terms. -/
public def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreprocessExpr.Variant560df362143968c46ce2cbb9d88a20ccf23ead456352ba8db8233e896d9b4d15.Lean.Expr.checkMaxShared (e : Expr) (msg := "") : SymM Unit := do
  e.forEach fun e => do
    if let some prev := (← get).share.set.find? { expr := e } then
      unless isSameExpr prev.expr e do
        throwNotMaxShared e
    else
      throwNotMaxShared e
where
  throwNotMaxShared (e : Expr) : SymM Unit := do
    let msg := if msg == "" then msg else s!"[{msg}] "
    throwError "{msg}term is not in the maximally shared table{indentExpr e}"

/-- Debug helper: throws if any subexpression of the goal's target type is not in the table of maximally shared. -/
public def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreprocessExpr.Variant560df362143968c46ce2cbb9d88a20ccf23ead456352ba8db8233e896d9b4d15.Lean.MVarId.checkMaxShared (mvarId : MVarId) (msg := "") : SymM Unit := do
  (← mvarId.getDecl).type.checkMaxShared msg

/-- Quick filter for checking whether we can skip `normalizeLevels`. -/
def levelsAlreadyNormalized (e : Expr) : Bool :=
  Option.isNone <| e.find? fun
    | .const _ us => us.any (! ·.isAlreadyNormalizedCheap)
    | .sort u => !u.isAlreadyNormalizedCheap
    | _ => false

/--
Normalizes universe levels in constants and sorts.
-/
public def normalizeLevels (e : Expr) : CoreM Expr := do
  if levelsAlreadyNormalized e then return e
  let pre (e : Expr) := do
    match e with
    | .sort u => return .done <| e.updateSort! u.normalize
    | .const _ us => return .done <| e.updateConst! (us.map Level.normalize)
    | _ => return .continue
  Core.transform e (pre := pre)

end Lean.Meta.Sym
```
