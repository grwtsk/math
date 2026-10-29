-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Visitor.Variantaa25f958aa682fbdc889642b4eed4ac332badf39d488052008890a67e9e91537","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa25f958aa682fbdc889642b4eed4ac332badf39d488052008890a67e9e91537","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Visitor.Variantaa25f958aa682fbdc889642b4eed4ac332badf39d488052008890a67e9e91537","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"aa25f958aa682fbdc889642b4eed4ac332badf39d488052008890a67e9e91537","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/FindMVar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Visitor.Variantaa25f958aa682fbdc889642b4eed4ac332badf39d488052008890a67e9e91537

public section

namespace Lean

namespace FindMVar

abbrev Visitor := Option MVarId → Option MVarId

mutual
  partial def visit (p : MVarId → Bool) (e : Expr) : Visitor := fun s =>
    if s.isSome || !e.hasExprMVar then s else main p e s

  partial def main (p : MVarId → Bool) : Expr → Visitor
    | Expr.proj _ _ e      => visit p e
    | Expr.forallE _ d b _ => visit p b ∘ visit p d
    | Expr.lam _ d b _     => visit p b ∘ visit p d
    | Expr.letE _ t v b _  => visit p b ∘ visit p v ∘ visit p t
    | Expr.app f a         => visit p a ∘ visit p f
    | Expr.mdata _ b       => visit p b
    | Expr.mvar mvarId     => fun s => if s.isNone && p mvarId then some mvarId else s
    | _                    => id
end

end FindMVar

@[inline] def Expr.findMVar? (e : Expr) (p : MVarId → Bool) : Option MVarId :=
  FindMVar.main p e none

end Lean
