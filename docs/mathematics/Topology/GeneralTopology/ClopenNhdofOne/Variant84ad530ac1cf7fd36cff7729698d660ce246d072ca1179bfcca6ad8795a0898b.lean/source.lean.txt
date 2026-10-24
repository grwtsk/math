-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ExistOpenNormalSubgroupSubClopenNhdsOfOne.Variantc57fa1120b80a6da5a35bf326ed51cf7271b82bc58e247a65ca6fd987a580445","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c57fa1120b80a6da5a35bf326ed51cf7271b82bc58e247a65ca6fd987a580445","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ExistOpenNormalSubgroupSubClopenNhdsOfOne.Variantc57fa1120b80a6da5a35bf326ed51cf7271b82bc58e247a65ca6fd987a580445","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c57fa1120b80a6da5a35bf326ed51cf7271b82bc58e247a65ca6fd987a580445","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/ClopenNhdofOne.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Nailin Guan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nailin Guan, Yi Song, Xuchun Li
-/
import Mathlib.GroupTheory.Index
import Mathlib.Topology.Algebra.Group.ClosedSubgroup
import Mathlib.Topology.Algebra.OpenSubgroup
import Mathlib.Topology.Separation.Profinite
import Mathlib.Topology.Separation.Connected
/-!
# Existence of an open normal subgroup in any clopen neighborhood of the neutral element

This file proves the lemma `IsTopologicalGroup.exist_openNormalSubgroup_sub_clopen_nhds_of_one`,
which states that in a compact topological group, for any clopen neighborhood of 1,
there exists an open normal subgroup contained within it.

This file is split out from the file `OpenSubgroup` because it needs more imports.
-/


namespace GRWTSK.Topology.GeneralTopology.ExistOpenNormalSubgroupSubClopenNhdsOfOne.Variantc57fa1120b80a6da5a35bf326ed51cf7271b82bc58e247a65ca6fd987a580445

namespace IsTopologicalGroup

theorem exist_openNormalSubgroup_sub_clopen_nhds_of_one {G : Type*} [Group G] [TopologicalSpace G]
    [IsTopologicalGroup G] [CompactSpace G] {W : Set G} (WClopen : IsClopen W) (einW : 1 ∈ W) :
    ∃ H : OpenNormalSubgroup G, (H : Set G) ⊆ W := by
  rcases exist_openSubgroup_sub_clopen_nhds_of_one WClopen einW with ⟨H, hH⟩
  have : Subgroup.FiniteIndex H.toSubgroup := H.finiteIndex_of_finite_quotient
  use { toSubgroup := Subgroup.normalCore H
        isOpen' := Subgroup.isOpen_of_isClosed_of_finiteIndex _ (H.normalCore_isClosed H.isClosed) }
  exact fun _ b ↦ hH (H.normalCore_le b)

@[deprecated (since := "2025-05-22")]
alias exist_openNormalSubgroup_sub_clopen_nhd_of_one :=
  exist_openNormalSubgroup_sub_clopen_nhds_of_one

end IsTopologicalGroup

namespace ProfiniteGrp

theorem exist_openNormalSubgroup_sub_open_nhds_of_one {G : Type*} [Group G] [TopologicalSpace G]
    [IsTopologicalGroup G] [CompactSpace G] [TotallyDisconnectedSpace G] {U : Set G}
    (UOpen : IsOpen U) (einU : 1 ∈ U) : ∃ H : OpenNormalSubgroup G, (H : Set G) ⊆ U := by
  rcases ((Filter.HasBasis.mem_iff' ((nhds_basis_clopen (1 : G))) U ).mp <|
    mem_nhds_iff.mpr (by use U)) with ⟨W, hW, h⟩
  rcases IsTopologicalGroup.exist_openNormalSubgroup_sub_clopen_nhds_of_one hW.2 hW.1 with ⟨H, hH⟩
  exact ⟨H, fun _ a ↦ h (hH a)⟩

@[deprecated (since := "2025-05-22")]
alias exist_openNormalSubgroup_sub_open_nhd_of_one := exist_openNormalSubgroup_sub_open_nhds_of_one

end ProfiniteGrp
