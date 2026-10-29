-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LieCharacter.Variant44bbe23168087175086c58e29183c4b2a7eaf96c1b91fd39f2195945b4546ea9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44bbe23168087175086c58e29183c4b2a7eaf96c1b91fd39f2195945b4546ea9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LieCharacter.Variant44bbe23168087175086c58e29183c4b2a7eaf96c1b91fd39f2195945b4546ea9","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"44bbe23168087175086c58e29183c4b2a7eaf96c1b91fd39f2195945b4546ea9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Lie/Character.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Algebra.Lie.Abelian
import Mathlib.Algebra.Lie.Solvable
import Mathlib.LinearAlgebra.Dual.Defs

/-!
# Characters of Lie algebras

A character of a Lie algebra `L` over a commutative ring `R` is a morphism of Lie algebras `L → R`,
where `R` is regarded as a Lie algebra over itself via the ring commutator. For an Abelian Lie
algebra (e.g., a Cartan subalgebra of a semisimple Lie algebra) a character is just a linear form.

## Main definitions

  * `LieAlgebra.LieCharacter`
  * `LieAlgebra.lieCharacterEquivLinearDual`

## Tags

lie algebra, lie character
-/



namespace GRWTSK.Algebra.LinearAlgebra.LieCharacter.Variant44bbe23168087175086c58e29183c4b2a7eaf96c1b91fd39f2195945b4546ea9

universe u v w w₁

namespace LieAlgebra

variable (R : Type u) (L : Type v) [CommRing R] [LieRing L] [LieAlgebra R L]

/-- A character of a Lie algebra is a morphism to the scalars. -/
abbrev LieCharacter :=
  L →ₗ⁅R⁆ R

variable {R L}

theorem lieCharacter_apply_lie (χ : LieCharacter R L) (x y : L) : χ ⁅x, y⁆ = 0 := by
  rw [LieHom.map_lie, LieRing.of_associative_ring_bracket, mul_comm, sub_self]

@[simp]
theorem lieCharacter_apply_lie' (χ : LieCharacter R L) (x y : L) : ⁅χ x, χ y⁆ = 0 := by
  rw [LieRing.of_associative_ring_bracket, mul_comm, sub_self]

theorem lieCharacter_apply_of_mem_derived (χ : LieCharacter R L) {x : L}
    (h : x ∈ derivedSeries R L 1) : χ x = 0 := by
  rw [derivedSeries_def, derivedSeriesOfIdeal_succ, derivedSeriesOfIdeal_zero, ←
    LieSubmodule.mem_toSubmodule, LieSubmodule.lieIdeal_oper_eq_linear_span] at h
  refine Submodule.span_induction ?_ ?_ ?_ ?_ h
  · rintro y ⟨⟨z, hz⟩, ⟨⟨w, hw⟩, rfl⟩⟩; apply lieCharacter_apply_lie
  · exact χ.map_zero
  · intro y z _ _ hy hz; rw [LieHom.map_add, hy, hz, add_zero]
  · intro t y _ hy; rw [LieHom.map_smul, hy, smul_zero]

/-- For an Abelian Lie algebra, characters are just linear forms. -/
@[simps! apply symm_apply]
def lieCharacterEquivLinearDual [IsLieAbelian L] : LieCharacter R L ≃ Module.Dual R L where
  toFun χ := (χ : L →ₗ[R] R)
  invFun ψ :=
    { ψ with
      map_lie' := fun {x y} => by
        rw [LieModule.IsTrivial.trivial, LieRing.of_associative_ring_bracket, mul_comm, sub_self,
          LinearMap.toFun_eq_coe, LinearMap.map_zero] }
  left_inv χ := by ext; rfl
  right_inv ψ := by ext; rfl

end LieAlgebra
