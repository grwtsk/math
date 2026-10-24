-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ExistsCompEqIdOfProjective.Variant57f1ea6e844b307c18b7e17e5cadd5ca528ce98fe01f7387d6a7011ac1516300","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57f1ea6e844b307c18b7e17e5cadd5ca528ce98fe01f7387d6a7011ac1516300","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ExistsCompEqIdOfProjective.Variant57f1ea6e844b307c18b7e17e5cadd5ca528ce98fe01f7387d6a7011ac1516300","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"57f1ea6e844b307c18b7e17e5cadd5ca528ce98fe01f7387d6a7011ac1516300","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Finiteness/Projective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.Module.Projective
import Mathlib.RingTheory.Finiteness.Cardinality

/-!
# Finite and projective modules

-/


namespace GRWTSK.Algebra.LinearAlgebra.ExistsCompEqIdOfProjective.Variant57f1ea6e844b307c18b7e17e5cadd5ca528ce98fe01f7387d6a7011ac1516300

open Function (Surjective)

namespace Module

namespace Finite

open Submodule Set

variable {R M N : Type*}
variable [Semiring R] [AddCommMonoid M] [Module R M] [AddCommMonoid N] [Module R N]

variable (R M) in
theorem exists_comp_eq_id_of_projective [Module.Finite R M] [Projective R M] :
    ∃ (n : ℕ) (f : (Fin n → R) →ₗ[R] M) (g : M →ₗ[R] Fin n → R),
      Function.Surjective f ∧ Function.Injective g ∧ f ∘ₗ g = .id :=
  have ⟨n, f, surj⟩ := exists_fin' R M
  have ⟨g, hfg⟩ := Module.projective_lifting_property f .id surj
  ⟨n, f, g, surj, LinearMap.injective_of_comp_eq_id _ _ hfg, hfg⟩

end Finite

end Module
