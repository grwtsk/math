# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Restrict.Varianta1ec867a5bd4e90370a91d8a048ea4dd3ac0c16c044262947e4b39fe7543f80a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41f6b32bdca4ee637ca6d7a2c1acd44f2205c9b8` · SHA-256 `8a0a8da4e3bf6f5c2ea37bd1af6a1e76c174783a91d0995ade51e9c8f4116803`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.AffineSubspaceNonemptyMap.Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.AffineSubspaceNonemptyMap.Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/AffineSpace/Restrict.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Paul Reichert. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic

/-!
# Affine map restrictions

This file defines restrictions of affine maps.

## Main definitions

* The domain and codomain of an affine map can be restricted using
  `AffineMap.restrict`.

## Main theorems

* The associated linear map of the restriction is the restriction of the
  linear map associated to the original affine map.
* The restriction is injective if the original map is injective.
* The restriction in surjective if the codomain is the image of the domain.
-/



namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.AffineSubspaceNonemptyMap.Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7

variable {k V₁ P₁ V₂ P₂ : Type*} [Ring k] [AddCommGroup V₁] [AddCommGroup V₂] [Module k V₁]
  [Module k V₂] [AddTorsor V₁ P₁] [AddTorsor V₂ P₂]

-- not an instance because it loops with `Nonempty`
theorem AffineSubspace.nonempty_map {E : AffineSubspace k P₁} [Ene : Nonempty E] {φ : P₁ →ᵃ[k] P₂} :
    Nonempty (E.map φ) := by
  obtain ⟨x, hx⟩ := id Ene
  exact ⟨⟨φ x, AffineSubspace.mem_map.mpr ⟨x, hx, rfl⟩⟩⟩

attribute [local instance] AffineSubspace.nonempty_map AffineSubspace.toAddTorsor

/-- Restrict domain and codomain of an affine map to the given subspaces. -/
def AffineMap.restrict (φ : P₁ →ᵃ[k] P₂) {E : AffineSubspace k P₁} {F : AffineSubspace k P₂}
    [Nonempty E] [Nonempty F] (hEF : E.map φ ≤ F) : E →ᵃ[k] F := by
  refine ⟨?_, ?_, ?_⟩
  · exact fun x => ⟨φ x, hEF <| AffineSubspace.mem_map.mpr ⟨x, x.property, rfl⟩⟩
  · refine φ.linear.restrict (?_ : E.direction ≤ F.direction.comap φ.linear)
    rw [← Submodule.map_le_iff_le_comap, ← AffineSubspace.map_direction]
    exact AffineSubspace.direction_le hEF
  · intro p v
    simp only [Subtype.ext_iff, Subtype.coe_mk, AffineSubspace.coe_vadd]
    apply AffineMap.map_vadd

theorem AffineMap.restrict.coe_apply (φ : P₁ →ᵃ[k] P₂) {E : AffineSubspace k P₁}
    {F : AffineSubspace k P₂} [Nonempty E] [Nonempty F] (hEF : E.map φ ≤ F) (x : E) :
    ↑(φ.restrict hEF x) = φ x :=
  rfl

theorem AffineMap.restrict.linear_aux {φ : P₁ →ᵃ[k] P₂} {E : AffineSubspace k P₁}
    {F : AffineSubspace k P₂} (hEF : E.map φ ≤ F) : E.direction ≤ F.direction.comap φ.linear := by
  rw [← Submodule.map_le_iff_le_comap, ← AffineSubspace.map_direction]
  exact AffineSubspace.direction_le hEF

theorem AffineMap.restrict.linear (φ : P₁ →ᵃ[k] P₂) {E : AffineSubspace k P₁}
    {F : AffineSubspace k P₂} [Nonempty E] [Nonempty F] (hEF : E.map φ ≤ F) :
    (φ.restrict hEF).linear = φ.linear.restrict (AffineMap.restrict.linear_aux hEF) :=
  rfl

theorem AffineMap.restrict.injective {φ : P₁ →ᵃ[k] P₂} (hφ : Function.Injective φ)
    {E : AffineSubspace k P₁} {F : AffineSubspace k P₂} [Nonempty E] [Nonempty F]
    (hEF : E.map φ ≤ F) : Function.Injective (AffineMap.restrict φ hEF) := by
  intro x y h
  simp only [Subtype.ext_iff, Subtype.coe_mk, AffineMap.restrict.coe_apply] at h ⊢
  exact hφ h

theorem AffineMap.restrict.surjective (φ : P₁ →ᵃ[k] P₂) {E : AffineSubspace k P₁}
    {F : AffineSubspace k P₂} [Nonempty E] [Nonempty F] (h : E.map φ = F) :
    Function.Surjective (AffineMap.restrict φ (le_of_eq h)) := by
  rintro ⟨x, hx : x ∈ F⟩
  rw [← h, AffineSubspace.mem_map] at hx
  obtain ⟨y, hy, rfl⟩ := hx
  exact ⟨⟨y, hy⟩, rfl⟩

theorem AffineMap.restrict.bijective {E : AffineSubspace k P₁} [Nonempty E] {φ : P₁ →ᵃ[k] P₂}
    (hφ : Function.Injective φ) : Function.Bijective (φ.restrict (le_refl (E.map φ))) :=
  ⟨AffineMap.restrict.injective hφ _, AffineMap.restrict.surjective _ rfl⟩
```
