-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.NonZeroDivisorsLeft.Variant91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.NonZeroDivisorsLeft.Variant91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9","mathematical_subject":"Algebra.Groups","original_sha256":"91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/GroupTheory/Submonoid/ZeroDivisors.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.GroupTheory.Submonoid.Basic

/-!
# Zero divisors

## Main definitions

 * `nonZeroDivisorsLeft`: the elements of a `MonoidWithZero` that are not left zero divisors.
 * `nonZeroDivisorsRight`: the elements of a `MonoidWithZero` that are not right zero divisors.

-/


namespace GRWTSK.Algebra.GroupTheory.NonZeroDivisorsLeft.Variant91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9

section MonoidWithZero

variable (M₀ : Type _) [MonoidWithZero M₀]

/-- The collection of elements of a `MonoidWithZero` that are not left zero divisors form a
`Submonoid`. -/
def nonZeroDivisorsLeft : Submonoid M₀ where
  carrier := {x | ∀ y, y * x = 0 → y = 0}
  one_mem' := by simp
  mul_mem' {x} {y} hx hy := fun z hz ↦ hx _ <| hy _ (mul_assoc z x y ▸ hz)

@[simp] lemma mem_nonZeroDivisorsLeft_iff {x : M₀} :
    x ∈ nonZeroDivisorsLeft M₀ ↔ ∀ y, y * x = 0 → y = 0 :=
  Iff.rfl

/-- The collection of elements of a `MonoidWithZero` that are not right zero divisors form a
`Submonoid`. -/
def nonZeroDivisorsRight : Submonoid M₀ where
  carrier := {x | ∀ y, x * y = 0 → y = 0}
  one_mem' := by simp
  mul_mem' := fun {x} {y} hx hy z hz ↦ hy _ (hx _ ((mul_assoc x y z).symm ▸ hz))

@[simp] lemma mem_nonZeroDivisorsRight_iff {x : M₀} :
    x ∈ nonZeroDivisorsRight M₀ ↔ ∀ y, x * y = 0 → y = 0 :=
  Iff.rfl

lemma nonZeroDivisorsLeft_eq_right (M₀ : Type _) [CommMonoidWithZero M₀] :
    nonZeroDivisorsLeft M₀ = nonZeroDivisorsRight M₀ := by
  ext x; simp [mul_comm x]

@[simp] lemma coe_nonZeroDivisorsLeft_eq [NoZeroDivisors M₀] [Nontrivial M₀] :
    nonZeroDivisorsLeft M₀ = {x : M₀ | x ≠ 0} := by
  ext x
  simp only [SetLike.mem_coe, mem_nonZeroDivisorsLeft_iff, mul_eq_zero, forall_eq_or_imp, true_and,
    Set.mem_setOf_eq]
  refine' ⟨fun h ↦ _, fun hx y hx' ↦ by contradiction⟩
  contrapose! h
  exact ⟨1, h, one_ne_zero⟩

@[simp] lemma coe_nonZeroDivisorsRight_eq [NoZeroDivisors M₀] [Nontrivial M₀] :
    nonZeroDivisorsRight M₀ = {x : M₀ | x ≠ 0} := by
  ext x
  simp only [SetLike.mem_coe, mem_nonZeroDivisorsRight_iff, mul_eq_zero, Set.mem_setOf_eq]
  refine' ⟨fun h ↦ _, fun hx y hx' ↦ by aesop⟩
  contrapose! h
  exact ⟨1, Or.inl h, one_ne_zero⟩

end MonoidWithZero
