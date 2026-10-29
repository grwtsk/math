-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant53557c521c3e19d3c61e0bfc82ffdbaf801dc897a1ec87dc823936c2f7235dc3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53557c521c3e19d3c61e0bfc82ffdbaf801dc897a1ec87dc823936c2f7235dc3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Expr.Variant53557c521c3e19d3c61e0bfc82ffdbaf801dc897a1ec87dc823936c2f7235dc3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"53557c521c3e19d3c61e0bfc82ffdbaf801dc897a1ec87dc823936c2f7235dc3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/Meta/Expr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant53557c521c3e19d3c61e0bfc82ffdbaf801dc897a1ec87dc823936c2f7235dc3

@[expose] public section

namespace Lean.Literal

instance : Ord Literal where
  compare
    | natVal n₁, natVal n₂ => compare n₁ n₂
    | strVal s₁, strVal s₂ => compare s₁ s₂
    | natVal _, strVal _ => .lt
    | strVal _, natVal _ => .gt
