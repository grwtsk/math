# Complete source: GRWTSK.Topology.GeneralTopology.Compact.Variantd13fbea40ace705b96fcb7be286eaea1769a07969d504676063eed164babdd01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `911e991be43d929d354bf2616a973e0c499eb3d4` · SHA-256 `ce50910f690462c6e835153714b3bfd5838a526a8c61cac869438c5f9cf59354`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TopologicalSpacePositiveCompactsLocallyCompactSpaceOfGroup.Variant7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TopologicalSpacePositiveCompactsLocallyCompactSpaceOfGroup.Variant7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c","mathematical_subject":"Topology.GeneralTopology","original_sha256":"7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Algebra/Group/Compact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Patrick Massot
-/
import Mathlib.Topology.Algebra.Group.Basic
import Mathlib.Topology.CompactOpen
import Mathlib.Topology.Sets.Compacts


namespace GRWTSK.Topology.GeneralTopology.TopologicalSpacePositiveCompactsLocallyCompactSpaceOfGroup.Variant7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c

#align_import topology.algebra.group.compact from "leanprover-community/mathlib"@"f2ce6086713c78a7f880485f7917ea547a215982"

/-!
# Additional results on topological groups

Two results on topological groups that have been separated out as they require more substantial
imports developing either positive compacts or the compact open topology.

-/


open Classical Set Filter TopologicalSpace Function

open Classical Topology Filter Pointwise

universe u v w x

variable {α : Type u} {β : Type v} {G : Type w} {H : Type x}

section

variable [TopologicalSpace G] [Group G] [TopologicalGroup G]

/-- Every separated topological group in which there exists a compact set with nonempty interior
is locally compact. -/
@[to_additive
      "Every separated topological group in which there exists a compact set with nonempty
      interior is locally compact."]
theorem TopologicalSpace.PositiveCompacts.locallyCompactSpace_of_group [T2Space G]
    (K : PositiveCompacts G) : LocallyCompactSpace G := by
  refine' locally_compact_of_compact_nhds fun x => _
  obtain ⟨y, hy⟩ := K.interior_nonempty
  let F := Homeomorph.mulLeft (x * y⁻¹)
  refine' ⟨F '' K, _, K.isCompact.image F.continuous⟩
  suffices F.symm ⁻¹' K ∈ 𝓝 x by
    convert this using 1
    apply Equiv.image_eq_preimage
  apply ContinuousAt.preimage_mem_nhds F.symm.continuous.continuousAt
  have : F.symm x = y := by simp only [Homeomorph.mulLeft_symm, mul_inv_rev,
      inv_inv, Homeomorph.coe_mulLeft, inv_mul_cancel_right]
  rw [this]
  exact mem_interior_iff_mem_nhds.1 hy
#align topological_space.positive_compacts.locally_compact_space_of_group TopologicalSpace.PositiveCompacts.locallyCompactSpace_of_group
#align topological_space.positive_compacts.locally_compact_space_of_add_group TopologicalSpace.PositiveCompacts.locallyCompactSpace_of_addGroup

end

section Quotient

variable [Group G] [TopologicalSpace G] [TopologicalGroup G] {Γ : Subgroup G}

@[to_additive]
instance QuotientGroup.continuousSMul [LocallyCompactSpace G] : ContinuousSMul G (G ⧸ Γ)
    where
  continuous_smul := by
    let F : G × G ⧸ Γ → G ⧸ Γ := fun p => p.1 • p.2
    change Continuous F
    have H : Continuous (F ∘ fun p : G × G => (p.1, QuotientGroup.mk p.2)) := by
      change Continuous fun p : G × G => QuotientGroup.mk (p.1 * p.2)
      refine' continuous_coinduced_rng.comp continuous_mul
    exact QuotientMap.continuous_lift_prod_right quotientMap_quotient_mk' H
#align quotient_group.has_continuous_smul QuotientGroup.continuousSMul
#align quotient_add_group.has_continuous_vadd QuotientAddGroup.continuousVAdd

end Quotient
```
