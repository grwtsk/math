-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IdealIsPrimeExistsMemPrimeOfNeBot.Variantfa9527c56eb43a725ee89c4d25cd1d12ff5e25542a3f573f1ac10dcdd32f2ee8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa9527c56eb43a725ee89c4d25cd1d12ff5e25542a3f573f1ac10dcdd32f2ee8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IdealIsPrimeExistsMemPrimeOfNeBot.Variantfa9527c56eb43a725ee89c4d25cd1d12ff5e25542a3f573f1ac10dcdd32f2ee8","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"fa9527c56eb43a725ee89c4d25cd1d12ff5e25542a3f573f1ac10dcdd32f2ee8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/UniqueFactorizationDomain/Ideal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jens Wagemaker, Aaron Anderson
-/
module

public import Mathlib.RingTheory.Ideal.Operations
public import Mathlib.RingTheory.UniqueFactorizationDomain.Defs

/-!
# Unique factorization and ascending chain condition on ideals

## Main results
* `Ideal.setOfPred_isPrincipal_wellFoundedOn_gt`,
  `WfDvdMonoid.of_setOfPred_isPrincipal_wellFoundedOn_gt`
  in a domain, well-foundedness of the strict version of ∣ is equivalent to the ascending
  chain condition on principal ideals.
-/


namespace GRWTSK.Algebra.IdealIsPrimeExistsMemPrimeOfNeBot.Variantfa9527c56eb43a725ee89c4d25cd1d12ff5e25542a3f573f1ac10dcdd32f2ee8

public section

variable {α : Type*}

open UniqueFactorizationMonoid in
/-- Every non-zero prime ideal in a unique factorization domain contains a prime element. -/
theorem Ideal.IsPrime.exists_mem_prime_of_ne_bot {R : Type*} [CommSemiring R]
    [UniqueFactorizationMonoid R] {I : Ideal R} (hI₂ : I.IsPrime) (hI : I ≠ ⊥) :
    ∃ x ∈ I, Prime x := by
  obtain ⟨a : R, ha₁ : a ∈ I, ha₂ : a ≠ 0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hI
  replace ha₁ : (factors a).prod ∈ I := by
    obtain ⟨u : Rˣ, hu : (factors a).prod * u = a⟩ := factors_prod ha₂
    rwa [← hu, mul_unit_mem_iff_mem _ u.isUnit] at ha₁
  obtain ⟨p : R, hp₁ : p ∈ factors a, hp₂ : p ∈ I⟩ :=
    (hI₂.multiset_prod_mem_iff_exists_mem <| factors a).1 ha₁
  exact ⟨p, hp₂, prime_of_factor p hp₁⟩

section Ideal

/-- The ascending chain condition on principal ideals holds in a `WfDvdMonoid` domain. -/
lemma Ideal.setOfPred_isPrincipal_wellFoundedOn_gt [CommSemiring α] [WfDvdMonoid α] [IsDomain α] :
    {I : Ideal α | I.IsPrincipal}.WellFoundedOn (· > ·) := by
  have : {I : Ideal α | I.IsPrincipal} = ((fun a ↦ Ideal.span {a}) '' Set.univ) := by
    ext
    simp [Submodule.isPrincipal_iff, eq_comm]
  rw [this, Set.wellFoundedOn_image, Set.wellFoundedOn_univ]
  convert! wellFounded_dvdNotUnit (α := α)
  ext
  exact Ideal.span_singleton_lt_span_singleton

@[deprecated (since := "2026-07-09")]
alias Ideal.setOf_isPrincipal_wellFoundedOn_gt := Ideal.setOfPred_isPrincipal_wellFoundedOn_gt

/-- The ascending chain condition on principal ideals in a domain is sufficient to prove that
the domain is `WfDvdMonoid`. -/
lemma WfDvdMonoid.of_setOfPred_isPrincipal_wellFoundedOn_gt [CommSemiring α] [IsDomain α]
    (h : {I : Ideal α | I.IsPrincipal}.WellFoundedOn (· > ·)) :
    WfDvdMonoid α := by
  have : WellFoundedGT {I : Ideal α // I.IsPrincipal} := h
  convert! InvImage.wf (fun a => ⟨Ideal.span ({a} : Set α), _, rfl⟩) this
  ext
  exact Ideal.span_singleton_lt_span_singleton.symm

@[deprecated (since := "2026-07-09")]
alias WfDvdMonoid.of_setOf_isPrincipal_wellFoundedOn_gt :=
  WfDvdMonoid.of_setOfPred_isPrincipal_wellFoundedOn_gt

end Ideal
