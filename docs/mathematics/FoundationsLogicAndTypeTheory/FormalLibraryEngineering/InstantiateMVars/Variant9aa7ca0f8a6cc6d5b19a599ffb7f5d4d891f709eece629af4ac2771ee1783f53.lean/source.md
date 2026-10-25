# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstantiateMVars.Variant9aa7ca0f8a6cc6d5b19a599ffb7f5d4d891f709eece629af4ac2771ee1783f53

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e72d52961a7e8fb94b81034084f2161cbc2489cc` · SHA-256 `983133bcae331df0ae461a53be88a33834a11e8471122a59b68612397c811ff8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstantiateMVarsInType.Varianta09064d60989fe84630f175a44e80b20faf8bf2a32c0a085af15b28dfeaf060c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a09064d60989fe84630f175a44e80b20faf8bf2a32c0a085af15b28dfeaf060c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InstantiateMVarsInType.Varianta09064d60989fe84630f175a44e80b20faf8bf2a32c0a085af15b28dfeaf060c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a09064d60989fe84630f175a44e80b20faf8bf2a32c0a085af15b28dfeaf060c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Meta/InstantiateMVars.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
import Std.Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstantiateMVarsInType.Varianta09064d60989fe84630f175a44e80b20faf8bf2a32c0a085af15b28dfeaf060c

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
    { mdecl with lctx := mdecl.lctx.modifyLocalDecl fvarId λ _ => ldecl }
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
```
