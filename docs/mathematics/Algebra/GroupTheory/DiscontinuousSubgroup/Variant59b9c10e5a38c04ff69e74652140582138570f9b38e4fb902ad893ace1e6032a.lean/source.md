# Complete source: GRWTSK.Algebra.GroupTheory.DiscontinuousSubgroup.Variant59b9c10e5a38c04ff69e74652140582138570f9b38e4fb902ad893ace1e6032a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05289db960e901f1787677899ec22ac9c4f7414b` · SHA-256 `fc30bb7dc4e731f27a9c16b1aaebec5c11493a47fb4959b687eb15b1f4aaf25c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SubgroupProperlyDiscontinuousSMulIff.Variantbe3ad2e832a2cde02ff62a7abd17126286208dc2ec5877e6d693d7586e6bd2e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be3ad2e832a2cde02ff62a7abd17126286208dc2ec5877e6d693d7586e6bd2e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SubgroupProperlyDiscontinuousSMulIff.Variantbe3ad2e832a2cde02ff62a7abd17126286208dc2ec5877e6d693d7586e6bd2e4","mathematical_subject":"Algebra.Groups","original_sha256":"be3ad2e832a2cde02ff62a7abd17126286208dc2ec5877e6d693d7586e6bd2e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/Group/DiscontinuousSubgroup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/

module

public import Mathlib.GroupTheory.Commensurable
public import Mathlib.GroupTheory.Complement
public import Mathlib.Topology.Algebra.ConstMulAction

/-!
# Properly discontinuous actions of subgroups
-/


namespace GRWTSK.Algebra.GroupTheory.SubgroupProperlyDiscontinuousSMulIff.Variantbe3ad2e832a2cde02ff62a7abd17126286208dc2ec5877e6d693d7586e6bd2e4

open Topology Pointwise Filter Set TopologicalSpace Subgroup

public section

variable {Γ α : Type*} [Group Γ] [TopologicalSpace α]

@[to_additive]
protected lemma Subgroup.properlyDiscontinuousSMul_iff
    [SMul Γ α] (S : Subgroup Γ) : ProperlyDiscontinuousSMul S α ↔ ∀ {K L : Set α},
      IsCompact K → IsCompact L →  {g : Γ | g ∈ S ∧ (g • K ∩ L).Nonempty}.Finite := by
  rw [properlyDiscontinuousSMul_iff]
  congr! with K L hK hL
  convert! injOn_subtype_val (s := {m : S | (m • K ∩ L).Nonempty}) |>.bijOn_image.finite_iff_finite
  ext g
  simp [Set.subtype_smul_set, and_comm]

@[to_additive]
lemma Subgroup.properlyDiscontinuousSMul_of_le
    [SMul Γ α] {G H : Subgroup Γ} (hG : ProperlyDiscontinuousSMul G α) (hGH : H ≤ G) :
    ProperlyDiscontinuousSMul H α := by
  rw [Subgroup.properlyDiscontinuousSMul_iff] at hG ⊢
  intro K L hK hL
  exact (hG hK hL).subset fun _ ⟨hg, hg'⟩ ↦ ⟨hGH hg, hg'⟩

/-- If `Γ` acts properly discontinuously, so does every subgroup of `Γ`. -/
@[to_additive /-- If `Γ` acts properly discontinuously, so does every additive subgroup of `Γ`. -/]
instance [SMul Γ α] [ProperlyDiscontinuousSMul Γ α] (G : Subgroup Γ) :
    ProperlyDiscontinuousSMul G α := by
  refine Subgroup.properlyDiscontinuousSMul_of_le ?_ le_top
  simp only [Subgroup.properlyDiscontinuousSMul_iff, Subgroup.mem_top, true_and]
  exact finite_disjoint_inter_image

open Pointwise in
/-- If `G, H` are subgroups of `Γ` which acts on `α`, and `G ∩ H` has finite index in `G`,
then `G` acts properly discontinuously if `H` does. -/
@[to_additive /-- If `G, H` are additive subgroups of `Γ` which acts on `α`, and `G ∩ H` has finite
index in `G`, then `G` acts properly discontinuously if `H` does. -/]
lemma ProperlyDiscontinuousSMul.ofFiniteRelIndex [MulAction Γ α] [ContinuousConstSMul Γ α]
    (G H : Subgroup Γ) [hH : ProperlyDiscontinuousSMul H α] [H.IsFiniteRelIndex G] :
    ProperlyDiscontinuousSMul G α := by
  rw [Subgroup.properlyDiscontinuousSMul_iff] at hH ⊢
  intro K L hK hL
  have (t : Γ) : {g | g ∈ H ∧ (g • t • K ∩ L).Nonempty}.Finite :=
    hH (hK.image <| continuous_const_smul t) hL
  obtain ⟨S, hS, -⟩ := (H.subgroupOf G).exists_isComplement_right 1
  have hT : (Subtype.val '' S).Finite := by
    have : Fintype (G ⧸ H.subgroupOf G) := Subgroup.fintypeQuotientOfFiniteIndex
    have : Fintype S := .ofEquiv _ hS.rightQuotientEquiv
    exact (toFinite S).image _
  have hS' {g : Γ} (hg : g ∈ G) : ∃ t ∈ Subtype.val '' S, g * t⁻¹ ∈ H := by
    obtain ⟨p, hp⟩ := (hS.existsUnique ⟨g, hg⟩).exists
    aesop
  refine (hT.biUnion <| fun t ht ↦ (this t).map fun g ↦ g * t).subset fun g ↦ ?_
  simp [mul_smul]
  grind

@[to_additive]
lemma Subgroup.properlyDiscontinuousSMul_iff_of_isFiniteRelIndex
    [MulAction Γ α] [ContinuousConstSMul Γ α]
    {G H : Subgroup Γ} (hGH : G ≤ H) [IsFiniteRelIndex G H] :
    ProperlyDiscontinuousSMul G α ↔ ProperlyDiscontinuousSMul H α :=
  ⟨fun _ ↦ .ofFiniteRelIndex H G, (properlyDiscontinuousSMul_of_le · hGH)⟩

@[to_additive]
lemma Subgroup.Commensurable.properlyDiscontinuousSMul_iff
    [MulAction Γ α] [ContinuousConstSMul Γ α]
    {G H : Subgroup Γ} (h : G.Commensurable H) :
    ProperlyDiscontinuousSMul G α ↔ ProperlyDiscontinuousSMul H α := by
  have : IsFiniteRelIndex (G ⊓ H) H := ⟨Subgroup.inf_relIndex_right G H ▸ h.1.relIndex_ne_zero⟩
  have : IsFiniteRelIndex (G ⊓ H) G := ⟨Subgroup.inf_relIndex_left G H ▸ h.2.relIndex_ne_zero⟩
  calc ProperlyDiscontinuousSMul G α ↔ ProperlyDiscontinuousSMul ↑(G ⊓ H) α :=
    (properlyDiscontinuousSMul_iff_of_isFiniteRelIndex inf_le_left).symm
  _ ↔ ProperlyDiscontinuousSMul H α :=
    properlyDiscontinuousSMul_iff_of_isFiniteRelIndex inf_le_right

end
```
