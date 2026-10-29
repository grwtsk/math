-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.NontrivialOfAlgebraMapInjectiveOfIsDomain.Variant90191a09056d0ecdd49a564cbd989aed20a089053ee494176cc60a6664e9ee5c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"90191a09056d0ecdd49a564cbd989aed20a089053ee494176cc60a6664e9ee5c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.NontrivialOfAlgebraMapInjectiveOfIsDomain.Variant90191a09056d0ecdd49a564cbd989aed20a089053ee494176cc60a6664e9ee5c","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"90191a09056d0ecdd49a564cbd989aed20a089053ee494176cc60a6664e9ee5c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/TensorProduct/Nontrivial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
import Mathlib.LinearAlgebra.Basis.VectorSpace
import Mathlib.RingTheory.Flat.FaithfullyFlat.Basic
import Mathlib.RingTheory.Localization.FractionRing

/-!

# Nontriviality of tensor product of algebras

This file contains some more results on nontriviality of tensor product of algebras.

-/


namespace GRWTSK.Algebra.NontrivialOfAlgebraMapInjectiveOfIsDomain.Variant90191a09056d0ecdd49a564cbd989aed20a089053ee494176cc60a6664e9ee5c

open TensorProduct

namespace Algebra.TensorProduct

/-- If `A`, `B` are `R`-algebras, `R` injects into `A` and `B`, and `A` and `B` are domains
(which implies `R` is also a domain), then `A ⊗[R] B` is nontrivial. -/
theorem nontrivial_of_algebraMap_injective_of_isDomain
    (R A B : Type*) [CommRing R] [CommRing A] [CommRing B] [Algebra R A] [Algebra R B]
    (ha : Function.Injective (algebraMap R A)) (hb : Function.Injective (algebraMap R B))
    [IsDomain A] [IsDomain B] : Nontrivial (A ⊗[R] B) := by
  haveI := ha.isDomain _
  let FR := FractionRing R
  let FA := FractionRing A
  let FB := FractionRing B
  let fa : FR →ₐ[R] FA := IsFractionRing.liftAlgHom (g := Algebra.ofId R FA)
    ((IsFractionRing.injective A FA).comp ha)
  let fb : FR →ₐ[R] FB := IsFractionRing.liftAlgHom (g := Algebra.ofId R FB)
    ((IsFractionRing.injective B FB).comp hb)
  algebraize_only [fa.toRingHom, fb.toRingHom]
  exact Algebra.TensorProduct.mapOfCompatibleSMul FR R FA FB |>.comp
    (Algebra.TensorProduct.map (IsScalarTower.toAlgHom R A FA) (IsScalarTower.toAlgHom R B FB))
    |>.toRingHom.domain_nontrivial

end Algebra.TensorProduct
