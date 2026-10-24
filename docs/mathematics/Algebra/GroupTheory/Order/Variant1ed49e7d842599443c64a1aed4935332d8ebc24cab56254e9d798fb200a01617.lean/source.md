# Complete source: GRWTSK.Algebra.GroupTheory.Order.Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41b3e8577042d3a8524f6060088da8b056a89460` · SHA-256 `ed1e7b1e15d5eb6bb3fa0fbd4fbb2cce55897b1e738b5ac17ff07c57b2d03ee5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MabsMemIff.Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MabsMemIff.Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d","mathematical_subject":"Algebra.Groups","original_sha256":"4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Subgroup/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa, Ruben Van de Velde
-/
import Mathlib.Algebra.Group.Subgroup.Basic
import Mathlib.Algebra.Group.Subsemigroup.Operations
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Algebra.Order.Monoid.Basic
import Mathlib.Order.Atoms

/-!
# Facts about ordered structures and ordered instances on subgroups
-/


namespace GRWTSK.Algebra.GroupTheory.MabsMemIff.Variant4d5169921c7492476319ed60d5713e72370fe0d826c31df9770d78467e4a0f4d

open Subgroup

@[to_additive (attr := simp)]
theorem mabs_mem_iff {S G} [Group G] [LinearOrder G] {_ : SetLike S G}
    [InvMemClass S G] {H : S} {x : G} : |x|ₘ ∈ H ↔ x ∈ H := by
  cases mabs_choice x <;> simp [*]

section ModularLattice

variable {C : Type*} [CommGroup C]

@[to_additive]
instance : IsModularLattice (Subgroup C) :=
  ⟨fun {x} y z xz a ha => by
    rw [mem_inf, mem_sup] at ha
    rcases ha with ⟨⟨b, hb, c, hc, rfl⟩, haz⟩
    rw [mem_sup]
    exact ⟨b, hb, c, mem_inf.2 ⟨hc, (mul_mem_cancel_left (xz hb)).1 haz⟩, rfl⟩⟩

end ModularLattice

section Coatom
namespace Subgroup

variable {G : Type*} [Group G] (H : Subgroup G)

/-- In a group that satisfies the normalizer condition, every maximal subgroup is normal -/
theorem NormalizerCondition.normal_of_coatom (hnc : NormalizerCondition G) (hmax : IsCoatom H) :
    H.Normal :=
  normalizer_eq_top_iff.mp (hmax.2 _ (hnc H (lt_top_iff_ne_top.mpr hmax.1)))

@[simp]
theorem isCoatom_comap {H : Type*} [Group H] (f : G ≃* H) {K : Subgroup H} :
    IsCoatom (Subgroup.comap (f : G →* H) K) ↔ IsCoatom K :=
  OrderIso.isCoatom_iff (f.comapSubgroup) K

@[simp]
theorem isCoatom_map (f : G ≃* H) {K : Subgroup G} :
    IsCoatom (Subgroup.map (f : G →* H) K) ↔ IsCoatom K :=
  OrderIso.isCoatom_iff (f.mapSubgroup) K

lemma isCoatom_comap_of_surjective
    {H : Type*} [Group H] {φ : G →* H} (hφ : Function.Surjective φ)
    {M : Subgroup H} (hM : IsCoatom M) : IsCoatom (M.comap φ) := by
  refine And.imp (fun hM ↦ ?_) (fun hM ↦ ?_) hM
  · rwa [← (comap_injective hφ).ne_iff, comap_top] at hM
  · intro K hK
    specialize hM (K.map φ)
    rw [← comap_lt_comap_of_surjective hφ, ← (comap_injective hφ).eq_iff] at hM
    rw [comap_map_eq_self ((M.ker_le_comap φ).trans hK.le), comap_top] at hM
    exact hM hK

end Subgroup
end Coatom

namespace Subgroup

variable {G : Type*}

/-- A subgroup of an ordered group is an ordered group. -/
@[to_additive "An `AddSubgroup` of an `AddOrderedCommGroup` is an `AddOrderedCommGroup`."]
instance toIsOrderedMonoid [CommGroup G] [PartialOrder G] [IsOrderedMonoid G] (H : Subgroup G) :
    IsOrderedMonoid H :=
  Subtype.coe_injective.isOrderedMonoid _ rfl (fun _ _ => rfl) fun _ _ => rfl

end Subgroup

@[to_additive]
lemma Subsemigroup.strictMono_topEquiv {G : Type*} [CommMonoid G] [PartialOrder G] :
    StrictMono (topEquiv (M := G)) := fun _ _ ↦ id

@[to_additive]
lemma MulEquiv.strictMono_subsemigroupCongr {G : Type*}
    [CommMonoid G] [PartialOrder G] {S T : Subsemigroup G}
    (h : S = T) : StrictMono (subsemigroupCongr h) := fun _ _ ↦ id

@[to_additive]
lemma MulEquiv.strictMono_symm {G G' : Type*} [CommMonoid G] [LinearOrder G]
    [CommMonoid G'] [PartialOrder G'] {e : G ≃* G'} (he : StrictMono e) : StrictMono e.symm := by
  intro
  simp [← he.lt_iff_lt]
```
