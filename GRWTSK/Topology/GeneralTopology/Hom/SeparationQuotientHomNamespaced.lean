-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.LiftContinuousMonoidHom.Variant104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.LiftContinuousMonoidHom.Variant104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e","mathematical_subject":"Topology.GeneralTopology","original_sha256":"104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/SeparationQuotient/Hom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yoh Tanimoto. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yoh Tanimoto
-/
import Mathlib.Topology.Algebra.ContinuousMonoidHom
import Mathlib.Topology.Algebra.SeparationQuotient.Basic

/-!
# Lift of `MonoidHom M N` to `MonoidHom (SeparationQuotient M) N`

In this file we define the lift of a continuous monoid homomorphism `f` from `M` to `N` to
`SeparationQuotient M`, assuming that `f` maps two inseparable elements to the same element.
-/


namespace GRWTSK.Topology.GeneralTopology.LiftContinuousMonoidHom.Variant104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e

namespace SeparationQuotient

section Monoid

variable {M N : Type*} [TopologicalSpace M] [TopologicalSpace N]

/-- The lift of a monoid hom from `M` to a monoid hom from `SeparationQuotient M`. -/
@[to_additive "The lift of an additive monoid hom from `M` to an additive monoid hom from
`SeparationQuotient M`."]
noncomputable def liftContinuousMonoidHom [CommMonoid M] [ContinuousMul M] [CommMonoid N]
    (f : ContinuousMonoidHom M N) (hf : ∀ x y, Inseparable x y → f x = f y) :
    ContinuousMonoidHom (SeparationQuotient M) N where
  toFun := SeparationQuotient.lift f hf
  map_one' := map_one f
  map_mul' := Quotient.ind₂ <| map_mul f
  continuous_toFun := SeparationQuotient.continuous_lift.mpr f.2

@[to_additive (attr := simp)]
theorem liftContinuousCommMonoidHom_mk [CommMonoid M] [ContinuousMul M] [CommMonoid N]
    (f : ContinuousMonoidHom M N) (hf : ∀ x y, Inseparable x y → f x = f y) (x : M) :
    liftContinuousMonoidHom f hf (mk x) = f x := rfl

end Monoid

end SeparationQuotient
