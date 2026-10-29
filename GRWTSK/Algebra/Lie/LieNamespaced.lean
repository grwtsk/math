-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutatorCoeLinearMap.Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CommutatorCoeLinearMap.Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"cee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Derivation/Lie.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Nicolò Cavalleri. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nicolò Cavalleri, Andrew Yang
-/
import Mathlib.Algebra.Lie.OfAssociative
import Mathlib.RingTheory.Derivation.Basic

/-!
# Results

- `Derivation.instLieAlgebra`: The `R`-derivations from `A` to `A` form a Lie algebra over `R`.

-/



namespace GRWTSK.Algebra.CommutatorCoeLinearMap.Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c

namespace Derivation

variable {R : Type*} [CommRing R]
variable {A : Type*} [CommRing A] [Algebra R A]
variable {D1 D2 : Derivation R A A} (a : A)

section LieStructures

/-! # Lie structures -/


/-- The commutator of derivations is again a derivation. -/
instance : Bracket (Derivation R A A) (Derivation R A A) :=
  ⟨fun D1 D2 =>
    mk' ⁅(D1 : Module.End R A), (D2 : Module.End R A)⁆ fun a b => by
      simp only [Ring.lie_def, map_add, Algebra.id.smul_eq_mul, Module.End.mul_apply, leibniz,
        coeFn_coe, LinearMap.sub_apply]
      ring⟩

@[simp]
theorem commutator_coe_linear_map : ↑⁅D1, D2⁆ = ⁅(D1 : Module.End R A), (D2 : Module.End R A)⁆ :=
  rfl

theorem commutator_apply : ⁅D1, D2⁆ a = D1 (D2 a) - D2 (D1 a) :=
  rfl

instance : LieRing (Derivation R A A) where
  add_lie d e f := by ext a; simp only [commutator_apply, add_apply, map_add]; ring
  lie_add d e f := by ext a; simp only [commutator_apply, add_apply, map_add]; ring
  lie_self d := by ext a; simp only [commutator_apply, add_apply, map_add]; ring_nf; simp
  leibniz_lie d e f := by ext a; simp only [commutator_apply, add_apply, sub_apply, map_sub]; ring

instance instLieAlgebra : LieAlgebra R (Derivation R A A) :=
  { Derivation.instModule with
    lie_smul := fun r d e => by
      ext a; simp only [commutator_apply, map_smul, smul_sub, smul_apply] }

end LieStructures

end Derivation
