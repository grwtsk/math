# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OccursCheck.Variant8ac184a5eb5f7e44741ad3bc3216ef2b93c3d2183e41aa60f2a220a338c2d84f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e85922849a042ae8c072706a73ed10029b6b41e` · SHA-256 `bc540e7c652887464650cc5f4860458fcbc625028b0fbcfd9eeeff4311403319`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OccursCheck.Variant9a0347d7506964b10a00eb77f4855ae7fe6fd965c44a581ee85923d1a6bf6345","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a0347d7506964b10a00eb77f4855ae7fe6fd965c44a581ee85923d1a6bf6345","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OccursCheck.Variant9a0347d7506964b10a00eb77f4855ae7fe6fd965c44a581ee85923d1a6bf6345","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9a0347d7506964b10a00eb77f4855ae7fe6fd965c44a581ee85923d1a6bf6345","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/OccursCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.MetavarContext


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OccursCheck.Variant9a0347d7506964b10a00eb77f4855ae7fe6fd965c44a581ee85923d1a6bf6345

public section

namespace Lean

/--
  Return true if `e` does **not** contain `mvarId` directly or indirectly
  This function considers assignments and delayed assignments. -/
partial def occursCheck [Monad m] [MonadMCtx m] (mvarId : MVarId) (e : Expr) : m Bool := do
  if !e.hasExprMVar then
    return true
  else
    match (← visit e |>.run |>.run {}) with
    | (.ok .., _)    => return true
    | (.error .., _) => return false
where
  visitMVar (mvarId' : MVarId) : ExceptT Unit (StateT ExprSet m) Unit := do
    if mvarId == mvarId' then
      throw () -- found
    else
      match (← getExprMVarAssignment? mvarId') with
      | some v => visit v
      | none   =>
        match (← getDelayedMVarAssignment? mvarId') with
        | some d => visitMVar d.mvarIdPending
        | none   => return ()

  visit (e : Expr) : ExceptT Unit (StateT ExprSet m) Unit := do
    if !e.hasExprMVar then
      return ()
    else if (← get).contains e then
      return ()
    else
      modify fun s => s.insert e
      match e with
      | Expr.proj _ _ s      => visit s
      | Expr.forallE _ d b _ => visit d; visit b
      | Expr.lam _ d b _     => visit d; visit b
      | Expr.letE _ t v b _  => visit t; visit v; visit b
      | Expr.mdata _ b       => visit b
      | Expr.app f a         => visit f; visit a
      | Expr.mvar mvarId     => visitMVar mvarId
      | _                    => return ()

end Lean
```
