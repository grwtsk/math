-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Visitor.Variantd65aeebc46654febb02ea43458e79dea4e5d5eaf4c34fe211428c6056035fbfa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d65aeebc46654febb02ea43458e79dea4e5d5eaf4c34fe211428c6056035fbfa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Visitor.Variantd65aeebc46654febb02ea43458e79dea4e5d5eaf4c34fe211428c6056035fbfa","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d65aeebc46654febb02ea43458e79dea4e5d5eaf4c34fe211428c6056035fbfa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/FindLevelMVar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Daniel Selsam
-/
module

prelude
public import Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Visitor.Variantd65aeebc46654febb02ea43458e79dea4e5d5eaf4c34fe211428c6056035fbfa

public section

namespace Lean

namespace FindLevelMVar

abbrev Visitor := Option LMVarId → Option LMVarId

mutual
  partial def visit (p : LMVarId → Bool) (e : Expr) : Visitor := fun s =>
    if s.isSome || !e.hasLevelMVar then s else main p e s

  partial def main (p : LMVarId → Bool) : Expr → Visitor
    | .sort l          => visitLevel p l
    | .const _ ls      => ls.foldr (init := id) fun l acc => visitLevel p l ∘ acc
    | .forallE _ d b _ => visit p b ∘ visit p d
    | .lam _ d b _     => visit p b ∘ visit p d
    | .letE _ t v b _  => visit p b ∘ visit p v ∘ visit p t
    | .app f a         => visit p a ∘ visit p f
    | .mdata _ b       => visit p b
    | .proj _ _ e      => visit p e
    | _                    => id

  partial def visitLevel (p : LMVarId → Bool) (l : Level) : Visitor := fun s =>
    if s.isSome || !l.hasMVar then s else mainLevel p l s

  partial def mainLevel (p : LMVarId → Bool) : Level → Visitor
    | .zero        => id
    | .succ l      => visitLevel p l
    | .max l₁ l₂   => visitLevel p l₁ ∘ visitLevel p l₂
    | .imax l₁ l₂  => visitLevel p l₁ ∘ visitLevel p l₂
    | .param _     => id
    | .mvar mvarId => fun s => if p mvarId then some mvarId else s
end

end FindLevelMVar

@[inline] def Expr.findLevelMVar? (e : Expr) (p : LMVarId → Bool) : Option LMVarId :=
  FindLevelMVar.main p e none

end Lean
