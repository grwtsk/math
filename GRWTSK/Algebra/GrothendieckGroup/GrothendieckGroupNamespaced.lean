-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GrothendieckGroup.Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.GrothendieckGroup.Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/MonoidLocalization/GrothendieckGroup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Alex J. Best, Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best, Yaël Dillies
-/
import Mathlib.GroupTheory.MonoidLocalization.Basic

/-!
# Grothendieck group

The Grothendieck group of a commutative monoid `M` is the "smallest" commutative group `G`
containing `M`, in the sense that monoid homs `M → H` are in bijection with monoid homs `G → H` for
any commutative group `H`.

Note that "Grothendieck group" also refers to the analogous construction in an abelian category
obtained by formally making the last term of each short exact sequence invertible.

### References

* [*Grothendieck group*, Wikipedia](https://en.wikipedia.org/wiki/Grothendieck_group#Grothendieck_group_of_a_commutative_monoid)
-/


namespace GRWTSK.Algebra.GrothendieckGroup.Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e

open Function Localization

namespace Algebra
variable {M G : Type*} [CommMonoid M] [CommGroup G]

variable (M) in
/-- The Grothendieck group of a monoid `M` is the localization at its top submonoid. -/
@[to_additive
"The Grothendieck group of an additive monoid `M` is the localization at its top submonoid."]
abbrev GrothendieckGroup : Type _ := Localization (⊤ : Submonoid M)

namespace GrothendieckGroup

/-- The inclusion from a commutative monoid `M` to its Grothendieck group.

Note that this is only injective if `M` is cancellative. -/
@[to_additive
"The inclusion from an additive commutative monoid `M` to its Grothendieck group.

Note that this is only injective if `M` is cancellative."]
abbrev of : M →* GrothendieckGroup M := (monoidOf ⊤).toMonoidHom

@[to_additive]
lemma of_injective [IsCancelMul M] : Injective (of (M := M)) :=
  fun m₁ m₂ ↦ by simp [of, ← mk_one_eq_monoidOf_mk, mk_eq_mk_iff']

@[to_additive]
instance : Inv (GrothendieckGroup M) where
  inv := rec (fun m s ↦ (.mk s ⟨m, Submonoid.mem_top m⟩ : GrothendieckGroup M))
    fun {m₁ m₂ s₁ s₂} h ↦ by simpa [r_iff_exists, mk_eq_mk_iff, eq_comm, mul_comm] using h

@[to_additive (attr := simp)]
lemma inv_mk (m : M) (s : (⊤ : Submonoid M)) : (mk m s)⁻¹ = .mk s ⟨m, Submonoid.mem_top _⟩ := rfl

/-- The Grothendieck group is a group. -/
@[to_additive "The Grothendieck group is a group."]
instance instCommGroup : CommGroup (GrothendieckGroup M) where
  __ : CommMonoid (GrothendieckGroup M) := inferInstance
  inv_mul_cancel a := by
    induction' a using ind
    rw [inv_mk, mk_eq_monoidOf_mk', ←Submonoid.LocalizationMap.mk'_mul]
    convert Submonoid.LocalizationMap.mk'_self' _ _
    rw [mul_comm, Submonoid.coe_mul]

@[to_additive (attr := simp)]
lemma mk_div_mk (m₁ m₂ : M) (s₁ s₂ : (⊤ : Submonoid M)) :
    mk m₁ s₁ / mk m₂ s₂ = .mk (m₁ * s₂) ⟨s₁ * m₂, Submonoid.mem_top _⟩ := by
  simp [div_eq_mul_inv, mk_mul]; rfl

/-- A monoid homomorphism from a monoid `M` to a group `G` lifts to a group homomorphism from the
Grothendieck group of `M` to `G`. -/
@[to_additive (attr := simps symm_apply)
"A monoid homomorphism from a monoid `M` to a group `G` lifts to a group homomorphism from the
Grothendieck group of `M` to `G`."]
noncomputable def lift : (M →* G) ≃ (GrothendieckGroup M →* G) where
  toFun f := (monoidOf ⊤).lift (g := f) fun _ ↦ Group.isUnit _
  invFun f := f.comp of
  left_inv f := by ext; simp
  right_inv f := by ext; simp

@[to_additive]
lemma lift_apply (f : M →* G) (x : GrothendieckGroup M) :
    lift f x = f ((monoidOf ⊤).sec x).1 / f ((monoidOf ⊤).sec x).2 := by
  simp [lift, (monoidOf ⊤).lift_apply, div_eq_mul_inv]; congr

end Algebra.GrothendieckGroup
