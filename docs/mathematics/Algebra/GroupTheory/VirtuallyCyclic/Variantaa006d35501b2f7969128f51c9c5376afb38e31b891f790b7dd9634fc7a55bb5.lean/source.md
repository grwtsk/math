# Complete source: GRWTSK.Algebra.GroupTheory.VirtuallyCyclic.Variantaa006d35501b2f7969128f51c9c5376afb38e31b891f790b7dd9634fc7a55bb5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `860200fdf1bdb164b6fa71707ac5d1512534e2a2` · SHA-256 `f6f28b68172b8e9dfba490214b90a29df9c8db277bf13a9393f34252127eadb6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.RootAddGroupIsVirtuallyAddCyclic.Variant79249eb255c3b1d792e3614b65b6b987ac2bead392bc948c9f380e686a5498e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79249eb255c3b1d792e3614b65b6b987ac2bead392bc948c9f380e686a5498e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.RootAddGroupIsVirtuallyAddCyclic.Variant79249eb255c3b1d792e3614b65b6b987ac2bead392bc948c9f380e686a5498e4","mathematical_subject":"Algebra.Groups","original_sha256":"79249eb255c3b1d792e3614b65b6b987ac2bead392bc948c9f380e686a5498e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/GroupTheory/SpecificGroups/VirtuallyCyclic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Octavian Halmaghi. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Octavian Halmaghi
-/
module

public import Mathlib.GroupTheory.Nilpotent

/-!
# Virtually cyclic groups

A group is *virtually cyclic* if it has a cyclic subgroup of finite index.
Virtually cyclic groups are fundamental in geometric group theory: they are
exactly the elementary subgroups of hyperbolic groups, the groups with at most
two ends, and the conclusion of the curvature-free Margulis lemma of
Besson–Courtois–Gallot–Sambusetti.

## Main definitions and results

* `Group.IsVirtuallyCyclic` : a group with a cyclic subgroup of finite index.
* `Group.IsVirtuallyCyclic.isVirtuallyNilpotent` : virtually cyclic groups are
  virtually nilpotent.
* `Group.IsVirtuallyCyclic.of_surjective`, `Group.IsVirtuallyCyclic.of_injective` :
  preservation under surjective and injective homomorphisms.

## TODO

* A finitely generated group is virtually cyclic iff it has ≤ 2 ends
  (requires ends of groups, not yet in Mathlib).
-/


namespace GRWTSK.Algebra.GroupTheory.RootAddGroupIsVirtuallyAddCyclic.Variant79249eb255c3b1d792e3614b65b6b987ac2bead392bc948c9f380e686a5498e4

@[expose] public section

namespace Group

variable {G G' : Type*} [Group G] [Group G']

/-- An additive group is **virtually cyclic** if it has a cyclic additive
subgroup of finite index. -/
@[mk_iff]
class _root_.GRWTSK.Algebra.GroupTheory.RootAddGroupIsVirtuallyAddCyclic.Variant79249eb255c3b1d792e3614b65b6b987ac2bead392bc948c9f380e686a5498e4.AddGroup.IsVirtuallyAddCyclic (G : Type*) [AddGroup G] : Prop where
  exists_isAddCyclic_and_finiteIndex (G) : ∃ H : AddSubgroup G, IsAddCyclic H ∧ H.FiniteIndex

/-- A group is **virtually cyclic** if it has a cyclic subgroup of finite index. -/
@[mk_iff, to_additive existing]
class IsVirtuallyCyclic (G : Type*) [Group G] : Prop where
  exists_isCyclic_and_finiteIndex (G) : ∃ H : Subgroup G, IsCyclic H ∧ H.FiniteIndex

/-- A cyclic group is virtually cyclic. -/
@[to_additive]
-- see Note [lower instance priority]
instance (priority := 100) [IsCyclic G] : IsVirtuallyCyclic G :=
  ⟨⊤, inferInstance, inferInstance⟩

/-- A finite group is virtually cyclic. -/
@[to_additive]
-- see Note [lower instance priority]
instance (priority := 100) [Finite G] : IsVirtuallyCyclic G :=
  ⟨⊥, inferInstance, inferInstance⟩

variable (G) in
/-- A virtually cyclic group has a normal cyclic subgroup of finite index. -/
@[to_additive]
theorem IsVirtuallyCyclic.exists_isCyclic_and_finiteIndex_and_normal [IsVirtuallyCyclic G] :
    ∃ H : Subgroup G, IsCyclic H ∧ H.FiniteIndex ∧ H.Normal := by
  obtain ⟨H, hc, hfi⟩ := exists_isCyclic_and_finiteIndex G
  exact ⟨H.normalCore, Subgroup.isCyclic_of_le H.normalCore_le, inferInstance, inferInstance⟩

/-- A virtually cyclic group is virtually nilpotent. -/
@[to_additive]
theorem IsVirtuallyCyclic.isVirtuallyNilpotent [IsVirtuallyCyclic G] :
    IsVirtuallyNilpotent G := by
  obtain ⟨H, hc, hfi⟩ := exists_isCyclic_and_finiteIndex G
  exact ⟨H, inferInstance, hfi⟩

/-- The image of a virtually cyclic group under a surjective homomorphism is
virtually cyclic. -/
@[to_additive]
theorem IsVirtuallyCyclic.of_surjective (f : G →* G') (hf : Function.Surjective f)
    [IsVirtuallyCyclic G] : IsVirtuallyCyclic G' := by
  obtain ⟨H, hc, hfi⟩ := exists_isCyclic_and_finiteIndex G
  exact ⟨H.map f, isCyclic_of_surjective _ (f.subgroupMap_surjective H),
    Subgroup.FiniteIndex.map_of_surjective H hf⟩

/-- A group embedding into a virtually cyclic group is virtually cyclic. -/
@[to_additive]
theorem IsVirtuallyCyclic.of_injective (f : G →* G') (hf : Function.Injective f)
    [IsVirtuallyCyclic G'] : IsVirtuallyCyclic G := by
  obtain ⟨H, hc, hfi⟩ := exists_isCyclic_and_finiteIndex G'
  exact ⟨H.comap f, isCyclic_of_injective _ (f.subgroupComap_injective H hf), inferInstance⟩

/-- Every subgroup of a virtually cyclic group is virtually cyclic. -/
@[to_additive]
instance [IsVirtuallyCyclic G] (K : Subgroup G) : IsVirtuallyCyclic K :=
  .of_injective K.subtype K.subtype_injective

/-- Quotients of virtually cyclic groups are virtually cyclic. -/
@[to_additive]
instance [IsVirtuallyCyclic G] (N : Subgroup G) [N.Normal] : IsVirtuallyCyclic (G ⧸ N) :=
  .of_surjective (QuotientGroup.mk' N) (QuotientGroup.mk'_surjective N)

end Group
```
