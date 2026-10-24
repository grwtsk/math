-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TopologicalSpacePositiveCompactsLocallyCompactSpaceOfGroup.Variant8f2e57b6e2c6446c40a64599aa082df2f550efcfed565d2e6a652f7f61862d94","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f2e57b6e2c6446c40a64599aa082df2f550efcfed565d2e6a652f7f61862d94","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TopologicalSpacePositiveCompactsLocallyCompactSpaceOfGroup.Variant8f2e57b6e2c6446c40a64599aa082df2f550efcfed565d2e6a652f7f61862d94","mathematical_subject":"Topology.GeneralTopology","original_sha256":"8f2e57b6e2c6446c40a64599aa082df2f550efcfed565d2e6a652f7f61862d94","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Group/Compact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Patrick Massot
-/
import Mathlib.Topology.Algebra.Group.Pointwise
import Mathlib.Topology.Sets.Compacts

/-!
# Additional results on topological groups

A result on topological groups that has been separated out
as it requires more substantial imports developing positive compacts.
-/



namespace GRWTSK.Topology.GeneralTopology.TopologicalSpacePositiveCompactsLocallyCompactSpaceOfGroup.Variant8f2e57b6e2c6446c40a64599aa082df2f550efcfed565d2e6a652f7f61862d94

universe u
variable {G : Type u} [TopologicalSpace G] [Group G] [IsTopologicalGroup G]

/-- Every topological group in which there exists a compact set with nonempty interior
is locally compact. -/
@[to_additive
  "Every topological additive group
  in which there exists a compact set with nonempty interior is locally compact."]
theorem TopologicalSpace.PositiveCompacts.locallyCompactSpace_of_group
    (K : PositiveCompacts G) : LocallyCompactSpace G :=
  let ⟨_x, hx⟩ := K.interior_nonempty
  K.isCompact.locallyCompactSpace_of_mem_nhds_of_group (mem_interior_iff_mem_nhds.1 hx)
