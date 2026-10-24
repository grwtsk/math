-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ModuleFiniteOfIsSemisimpleRing.Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ModuleFiniteOfIsSemisimpleRing.Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"c2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Jacobson/Artinian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu, Andrew Yang
-/
import Mathlib.RingTheory.HopkinsLevitzki
import Mathlib.RingTheory.Jacobson.Ring

/-!
# Artinian rings over jacobson rings

## Main results
- `Module.finite_iff_isArtinianRing`: If `A` is a finite type algebra over an artinian ring `R`,
then `A` is finite over `R` if and only if `A` is an artinian ring.

-/


namespace GRWTSK.Algebra.LinearAlgebra.ModuleFiniteOfIsSemisimpleRing.Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47

variable (R A : Type*) [CommRing R] [CommRing A] [Algebra R A] [Algebra.FiniteType R A]

attribute [local instance] IsArtinianRing.fieldOfSubtypeIsMaximal in
lemma Module.finite_of_isSemisimpleRing [IsJacobsonRing R] [IsSemisimpleRing A] :
    Module.Finite R A :=
  (Finite.equiv_iff <|
    (AlgEquiv.ofRingEquiv (f := IsArtinianRing.equivPi A) fun _ ↦ rfl).toLinearEquiv).mpr <|
  have (I : MaximalSpectrum A) := finite_of_finite_type_of_isJacobsonRing R (A ⧸ I.asIdeal)
  Finite.pi

/-- If `A` is a finite type algebra over `R`, then `A` is an artinian ring and `R` is jacobson
implies `A` is finite over `R`. -/
/- If made an instance, causes timeouts synthesizing `FaithfulSMul R I.ResidueField` at
`Ideal.algebraMap_residueField_eq_zero` and `Ideal.ker_algebraMap_residueField` during
simpNF linting. -/
lemma Module.finite_of_isArtinianRing [IsJacobsonRing R] [IsArtinianRing A] :
    Module.Finite R A :=
  have := finite_of_isSemisimpleRing R (A ⧸ Ring.jacobson A)
  IsSemiprimaryRing.finite_of_isArtinian R A A

/-- If `A` is a finite type algebra over an artinian ring `R`,
then `A` is finite over `R` if and only if `A` is an artinian ring. -/
lemma Module.finite_iff_isArtinianRing [IsArtinianRing R] :
    Module.Finite R A ↔ IsArtinianRing A :=
  ⟨isArtinian_of_tower _ ∘ ((IsArtinianRing.tfae R A).out 0 2).mp,
    fun _ ↦ finite_of_isArtinianRing R A⟩

/-- If `A` is a finite type algebra over an artinian ring `R`,
then `A` is finite over `R` if and only if `dim A = 0`. -/
lemma Module.finite_iff_krullDimLE_zero [IsArtinianRing R] :
    Module.Finite R A ↔ Ring.KrullDimLE 0 A := by
  have : IsNoetherianRing A := Algebra.FiniteType.isNoetherianRing R A
  rw [finite_iff_isArtinianRing, isArtinianRing_iff_isNoetherianRing_krullDimLE_zero,
    and_iff_right this]
