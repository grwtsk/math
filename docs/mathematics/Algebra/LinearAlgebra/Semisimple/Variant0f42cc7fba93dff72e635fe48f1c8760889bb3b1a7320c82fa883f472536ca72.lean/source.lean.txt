-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.OrthogonalComplementMemInvtSubmodule.Variantb4f53d911a2b8189d9eaac037cefe065bfc4360dac75111baf524172600fdd31","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4f53d911a2b8189d9eaac037cefe065bfc4360dac75111baf524172600fdd31","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.OrthogonalComplementMemInvtSubmodule.Variantb4f53d911a2b8189d9eaac037cefe065bfc4360dac75111baf524172600fdd31","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b4f53d911a2b8189d9eaac037cefe065bfc4360dac75111baf524172600fdd31","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/InnerProductSpace/Semisimple.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Analysis.InnerProductSpace.Projection
import Mathlib.LinearAlgebra.Semisimple

/-!
# Semisimple operators on inner product spaces

This file is a place to gather results related to semisimplicity of linear operators on inner
product spaces.

-/


namespace GRWTSK.Algebra.LinearAlgebra.OrthogonalComplementMemInvtSubmodule.Variantb4f53d911a2b8189d9eaac037cefe065bfc4360dac75111baf524172600fdd31

variable {𝕜 E : Type*} [RCLike 𝕜] [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]

namespace LinearMap.IsSymmetric

variable {T : Module.End 𝕜 E} {p : Submodule 𝕜 E} (hT : T.IsSymmetric)

include hT

/-- The orthogonal complement of an invariant submodule is invariant. -/
lemma orthogonalComplement_mem_invtSubmodule (hp : p ∈ T.invtSubmodule) :
    pᗮ ∈ T.invtSubmodule :=
  fun x hx y hy ↦ hT y x ▸ hx (T y) (hp hy)

/-- Symmetric operators are semisimple on finite-dimensional subspaces. -/
theorem isFinitelySemisimple :
    T.IsFinitelySemisimple := by
  refine Module.End.isFinitelySemisimple_iff.mpr fun p hp₁ hp₂ q hq₁ hq₂ ↦
    ⟨qᗮ ⊓ p, inf_le_right, Module.End.invtSubmodule.inf_mem ?_ hp₁, ?_, ?_⟩
  · exact orthogonalComplement_mem_invtSubmodule hT hq₁
  · simp [disjoint_iff, ← inf_assoc, Submodule.inf_orthogonal_eq_bot q]
  · suffices q ⊔ qᗮ = ⊤ by rw [← sup_inf_assoc_of_le _ hq₂, this, top_inf_eq p]
    replace hp₂ : Module.Finite 𝕜 q := Submodule.finiteDimensional_of_le hq₂
    exact Submodule.sup_orthogonal_of_completeSpace

end LinearMap.IsSymmetric
