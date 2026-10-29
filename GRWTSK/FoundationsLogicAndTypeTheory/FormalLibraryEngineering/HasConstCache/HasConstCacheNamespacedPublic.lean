-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasConstCache.Variantc0ecef93ffee7ef3c3f97b4f3043e7c0ecad46a1a8faaf0ae200bda1d97ccfc8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0ecef93ffee7ef3c3f97b4f3043e7c0ecad46a1a8faaf0ae200bda1d97ccfc8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HasConstCache.Variantc0ecef93ffee7ef3c3f97b4f3043e7c0ecad46a1a8faaf0ae200bda1d97ccfc8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c0ecef93ffee7ef3c3f97b4f3043e7c0ecad46a1a8faaf0ae200bda1d97ccfc8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/HasConstCache.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr
public import Std.Data.HashMap.Raw


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasConstCache.Variantc0ecef93ffee7ef3c3f97b4f3043e7c0ecad46a1a8faaf0ae200bda1d97ccfc8

public section

namespace Lean

structure HasConstCache (declNames : Array Name) where
  cache : Std.HashMap.Raw Expr Bool := ∅

unsafe def HasConstCache.containsUnsafe (e : Expr) : StateM (HasConstCache declNames) Bool := do
  if let some r := (← get).cache.get? (beq := ⟨ptrEq⟩) e then
    return r
  else
    match e with
    | .const n ..        => return declNames.contains n
    | .app f a           => cache e (← containsUnsafe f <||> containsUnsafe a)
    | .lam _ d b _       => cache e (← containsUnsafe d <||> containsUnsafe b)
    | .forallE _ d b _   => cache e (← containsUnsafe d <||> containsUnsafe b)
    | .letE _ t v b _    => cache e (← containsUnsafe t <||> containsUnsafe v <||> containsUnsafe b)
    | .mdata _ b         => cache e (← containsUnsafe b)
    | .proj _ _ b        => cache e (← containsUnsafe b)
    | _                  => return false
where
  cache (e : Expr) (r : Bool) : StateM (HasConstCache declNames) Bool := do
    modify fun ⟨cache⟩ => ⟨cache.insert (beq := ⟨ptrEq⟩) e r⟩
    return r

/--
  Return true iff `e` contains the constant `declName`.
  Remark: the results for visited expressions are stored in the state cache. -/
@[implemented_by HasConstCache.containsUnsafe]
opaque HasConstCache.contains (e : Expr) : StateM (HasConstCache declNames) Bool

end Lean
