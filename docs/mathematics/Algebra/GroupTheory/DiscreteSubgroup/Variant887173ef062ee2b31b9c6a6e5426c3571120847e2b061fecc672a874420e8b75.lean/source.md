# Complete source: GRWTSK.Algebra.GroupTheory.DiscreteSubgroup.Variant887173ef062ee2b31b9c6a6e5426c3571120847e2b061fecc672a874420e8b75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `346ce87c1ac3b9ffffdb6f7a63d702ec7b228e7d` · SHA-256 `63f6c4c8f3afd94628342578351ca2c574382ca514e68b8c101a25938162e911`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SubgroupSubgroupOfContinuousMulEquivOfLe.Variantbd5da5bc177b66e10c1ed1ae1bb6c00066099b06ac2bed32699f89041ba7d5ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd5da5bc177b66e10c1ed1ae1bb6c00066099b06ac2bed32699f89041ba7d5ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SubgroupSubgroupOfContinuousMulEquivOfLe.Variantbd5da5bc177b66e10c1ed1ae1bb6c00066099b06ac2bed32699f89041ba7d5ab","mathematical_subject":"Algebra.Groups","original_sha256":"bd5da5bc177b66e10c1ed1ae1bb6c00066099b06ac2bed32699f89041ba7d5ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/IsUniformGroup/DiscreteSubgroup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
module

public import Mathlib.GroupTheory.Commensurable
public import Mathlib.Topology.Algebra.ContinuousMonoidHom
public import Mathlib.Topology.Algebra.Group.ClosedSubgroup
public import Mathlib.Topology.Algebra.OpenSubgroup

/-!
# Discrete subgroups of topological groups

Note that the instance `Subgroup.isClosed_of_discrete` does not live here, in order that it can
be used in other files without requiring lots of group-theoretic imports.
-/


namespace GRWTSK.Algebra.GroupTheory.SubgroupSubgroupOfContinuousMulEquivOfLe.Variantbd5da5bc177b66e10c1ed1ae1bb6c00066099b06ac2bed32699f89041ba7d5ab

@[expose] public section

open Filter Topology

variable {G : Type*} [Group G] [TopologicalSpace G]

/-- If `G` has a topology, and `H ≤ K` are subgroups, then `H` as a subgroup of `K` is isomorphic,
as a topological group, to `H` as a subgroup of `G`. This is `subgroupOfEquivOfLe` upgraded to a
`ContinuousMulEquiv`. -/
@[to_additive (attr := simps! apply) /-- If `G` has a topology, and `H ≤ K` are
subgroups, then `H` as a subgroup of `K` is isomorphic, as a topological group, to `H` as a subgroup
of `G`. This is `addSubgroupOfEquivOfLe` upgraded to a `ContinuousAddEquiv`.-/]
def Subgroup.subgroupOfContinuousMulEquivOfLe {H K : Subgroup G} (hHK : H ≤ K) :
    (H.subgroupOf K) ≃ₜ* H :=
  (subgroupOfEquivOfLe hHK).toContinuousMulEquiv (by
    simp only [subgroupOfEquivOfLe, Topology.IsInducing.subtypeVal.isOpen_iff,
      exists_exists_and_eq_and]
    simpa [Set.ext_iff] using fun s ↦ exists_congr
      fun t ↦ and_congr_right fun _ ↦ ⟨fun aux g hgh ↦ aux g (hHK hgh) hgh, by grind⟩)

@[to_additive (attr := simp)]
lemma Subgroup.subgroupOfContinuousMulEquivOfLe_symm_apply
    {H K : Subgroup G} (hHK : H ≤ K) (g : H) :
    (subgroupOfContinuousMulEquivOfLe hHK).symm g = ⟨⟨g.1, hHK g.2⟩, g.2⟩ :=
  rfl

@[to_additive (attr := simp)]
lemma Subgroup.subgroupOfContinuousMulEquivOfLe_toMulEquiv {H K : Subgroup G} (hHK : H ≤ K) :
    (subgroupOfContinuousMulEquivOfLe hHK : H.subgroupOf K ≃* H) = subgroupOfEquivOfLe hHK := by
  rfl

variable [IsTopologicalGroup G] [T2Space G]

/-- If `G` is a topological group and `H` a finite-index subgroup, then `G` is topologically
discrete iff `H` is. -/
@[to_additive /-- If `G` is an additive topological group and `H` a finite-index additive subgroup,
then `G` is topologically discrete iff `H` is. -/]
lemma Subgroup.discreteTopology_iff_of_finiteIndex {H : Subgroup G} [H.FiniteIndex] :
    DiscreteTopology H ↔ DiscreteTopology G := by
  refine ⟨fun hH ↦ ?_, fun hG ↦ inferInstance⟩
  suffices IsOpen (H : Set G) by
    rw [discreteTopology_iff_isOpen_singleton_one, isOpen_singleton_iff_nhds_eq_pure,
        ← H.coe_one, ← this.isOpenEmbedding_subtypeVal.map_nhds_eq, nhds_discrete, map_pure]
  exact H.isOpen_of_isClosed_of_finiteIndex Subgroup.isClosed_of_discreteTopology

@[to_additive]
lemma Subgroup.discreteTopology_iff_of_isFiniteRelIndex {H K : Subgroup G} (hHK : H ≤ K)
    [IsFiniteRelIndex H K] : DiscreteTopology H ↔ DiscreteTopology K := by
  have : (H.subgroupOf K).FiniteIndex := IsFiniteRelIndex.to_finiteIndex_subgroupOf
  rw [← (subgroupOfContinuousMulEquivOfLe hHK).discreteTopology_iff,
    discreteTopology_iff_of_finiteIndex]

@[to_additive]
lemma Subgroup.Commensurable.discreteTopology_iff
    {G : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [T2Space G]
    {H K : Subgroup G} (h : Commensurable H K) :
    DiscreteTopology H ↔ DiscreteTopology K :=
  calc DiscreteTopology H ↔ DiscreteTopology ↑(H ⊓ K) :=
    haveI : IsFiniteRelIndex (H ⊓ K) H := ⟨Subgroup.inf_relIndex_left H K ▸ h.2.relIndex_ne_zero⟩
    (Subgroup.discreteTopology_iff_of_isFiniteRelIndex inf_le_left).symm
  _ ↔ DiscreteTopology K :=
    haveI : IsFiniteRelIndex (H ⊓ K) K := ⟨Subgroup.inf_relIndex_right H K ▸ h.1.relIndex_ne_zero⟩
    Subgroup.discreteTopology_iff_of_isFiniteRelIndex inf_le_right
```
