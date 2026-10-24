# Complete source: GRWTSK.Topology.GeneralTopology.Basic.Varianta190b5f294a6903fc53553c709da74737acb287f41306533cdbbf204b5874415

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f656218f17302bc3ec20c22c212a288e45cbcf4` · SHA-256 `9751921cb759872309f1f5910182aaa527514ba27d02218ff3e0e2d8f0a5645c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.NonarchimedeanAddGroup.Variant07f5cdd95acee03a2dedf23dbdb927afc0c756a3db185a4d71f08afe57fc7840","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"07f5cdd95acee03a2dedf23dbdb927afc0c756a3db185a4d71f08afe57fc7840","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.NonarchimedeanAddGroup.Variant07f5cdd95acee03a2dedf23dbdb927afc0c756a3db185a4d71f08afe57fc7840","mathematical_subject":"Topology.GeneralTopology","original_sha256":"07f5cdd95acee03a2dedf23dbdb927afc0c756a3db185a4d71f08afe57fc7840","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/Nonarchimedean/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Ashwin Iyengar. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Buzzard, Johan Commelin, Ashwin Iyengar, Patrick Massot
-/
module

public import Mathlib.Algebra.Group.Subgroup.Basic
public import Mathlib.Topology.Algebra.OpenSubgroup
public import Mathlib.Topology.Algebra.Ring.Basic

/-!
# Nonarchimedean Topology

In this file we set up the theory of nonarchimedean topological groups and rings.

A nonarchimedean group is a topological group whose topology admits a basis of
open neighborhoods of the identity element in the group consisting of open subgroups.
A nonarchimedean ring is a topological ring whose underlying topological (additive)
group is nonarchimedean.

## Definitions

- `NonarchimedeanAddGroup`: nonarchimedean additive group.
- `NonarchimedeanGroup`: nonarchimedean multiplicative group.
- `NonarchimedeanRing`: nonarchimedean ring.

-/


namespace GRWTSK.Topology.GeneralTopology.NonarchimedeanAddGroup.Variant07f5cdd95acee03a2dedf23dbdb927afc0c756a3db185a4d71f08afe57fc7840

public section

open Topology
open scoped Pointwise

/-- A topological additive group is nonarchimedean if every neighborhood of 0
  contains an open subgroup. -/
class NonarchimedeanAddGroup (G : Type*) [AddGroup G] [TopologicalSpace G] : Prop
  extends IsTopologicalAddGroup G where
  is_nonarchimedean : ∀ U ∈ 𝓝 (0 : G), ∃ V : OpenAddSubgroup G, (V : Set G) ⊆ U

/-- A topological group is nonarchimedean if every neighborhood of 1 contains an open subgroup. -/
@[to_additive]
class NonarchimedeanGroup (G : Type*) [Group G] [TopologicalSpace G] : Prop
  extends IsTopologicalGroup G where
  is_nonarchimedean : ∀ U ∈ 𝓝 (1 : G), ∃ V : OpenSubgroup G, (V : Set G) ⊆ U

/-- A topological ring is nonarchimedean if its underlying topological additive
  group is nonarchimedean. -/
class NonarchimedeanRing (R : Type*) [Ring R] [TopologicalSpace R] : Prop
  extends IsTopologicalRing R where
  is_nonarchimedean : ∀ U ∈ 𝓝 (0 : R), ∃ V : OpenAddSubgroup R, (V : Set R) ⊆ U

-- see Note [lower instance priority]
/-- Every nonarchimedean ring is naturally a nonarchimedean additive group. -/
instance (priority := 100) NonarchimedeanRing.to_nonarchimedeanAddGroup (R : Type*) [Ring R]
    [TopologicalSpace R] [t : NonarchimedeanRing R] : NonarchimedeanAddGroup R :=
  { t with }

namespace NonarchimedeanGroup

variable {G : Type*} [Group G] [TopologicalSpace G] [NonarchimedeanGroup G]
variable {H : Type*} [Group H] [TopologicalSpace H] [IsTopologicalGroup H]
variable {K : Type*} [Group K] [TopologicalSpace K] [NonarchimedeanGroup K]

/-- If a topological group embeds into a nonarchimedean group, then it is nonarchimedean. -/
@[to_additive /-- If a topological additive group embeds into a nonarchimedean additive group, then
it is nonarchimedean. -/]
theorem nonarchimedean_of_emb (f : G →* H) (emb : IsOpenEmbedding f) : NonarchimedeanGroup H :=
  { is_nonarchimedean := fun U hU =>
      have h₁ : f ⁻¹' U ∈ 𝓝 (1 : G) := by
        apply emb.continuous.tendsto
        rwa [f.map_one]
      let ⟨V, hV⟩ := is_nonarchimedean (f ⁻¹' U) h₁
      ⟨{ Subgroup.map f V with isOpen' := emb.isOpenMap _ V.isOpen }, Set.image_subset_iff.2 hV⟩ }

/-- An open neighborhood of the identity in the Cartesian product of two nonarchimedean groups
contains the Cartesian product of an open neighborhood in each group. -/
@[to_additive NonarchimedeanAddGroup.prod_subset /-- An open neighborhood of the identity in
the Cartesian product of two nonarchimedean groups contains the Cartesian product of
an open neighborhood in each group. -/]
theorem prod_subset {U} (hU : U ∈ 𝓝 (1 : G × K)) :
    ∃ (V : OpenSubgroup G) (W : OpenSubgroup K), (V : Set G) ×ˢ (W : Set K) ⊆ U := by
  rw [nhds_prod_eq, Filter.mem_prod_iff] at hU
  rcases hU with ⟨U₁, hU₁, U₂, hU₂, h⟩
  obtain ⟨V, hV⟩ := is_nonarchimedean _ hU₁
  obtain ⟨W, hW⟩ := is_nonarchimedean _ hU₂
  use V
  grind

/-- An open neighborhood of the identity in the Cartesian square of a nonarchimedean group
contains the Cartesian square of an open neighborhood in the group. -/
@[to_additive NonarchimedeanAddGroup.prod_self_subset /-- An open neighborhood of the identity in
the Cartesian square of a nonarchimedean group contains the Cartesian square of
an open neighborhood in the group. -/]
theorem prod_self_subset {U} (hU : U ∈ 𝓝 (1 : G × G)) :
    ∃ V : OpenSubgroup G, (V : Set G) ×ˢ (V : Set G) ⊆ U :=
  let ⟨V, W, h⟩ := prod_subset hU
  ⟨V ⊓ W, by refine Set.Subset.trans (Set.prod_mono ?_ ?_) ‹_› <;> simp⟩

/-- The Cartesian product of two nonarchimedean groups is nonarchimedean. -/
@[to_additive /-- The Cartesian product of two nonarchimedean groups is nonarchimedean. -/]
instance Prod.instNonarchimedeanGroup : NonarchimedeanGroup (G × K) where
  is_nonarchimedean _ hU :=
    let ⟨V, W, h⟩ := prod_subset hU
    ⟨V.prod W, ‹_›⟩

end NonarchimedeanGroup

namespace NonarchimedeanRing

open NonarchimedeanAddGroup

variable {R S : Type*}
variable [Ring R] [TopologicalSpace R] [NonarchimedeanRing R]
variable [Ring S] [TopologicalSpace S] [NonarchimedeanRing S]

/-- The Cartesian product of two nonarchimedean rings is nonarchimedean. -/
instance : NonarchimedeanRing (R × S) where
  is_nonarchimedean := NonarchimedeanAddGroup.is_nonarchimedean

/-- Given an open subgroup `U` and an element `r` of a nonarchimedean ring, there is an open
  subgroup `V` such that `r • V` is contained in `U`. -/
theorem left_mul_subset (U : OpenAddSubgroup R) (r : R) :
    ∃ V : OpenAddSubgroup R, r • (V : Set R) ⊆ U :=
  ⟨U.comap (AddMonoidHom.mulLeft r) (continuous_const_mul r), (U : Set R).image_preimage_subset _⟩

/-- An open subgroup of a nonarchimedean ring contains the square of another one. -/
theorem mul_subset (U : OpenAddSubgroup R) : ∃ V : OpenAddSubgroup R, (V : Set R) * V ⊆ U := by
  let ⟨V, H⟩ := prod_self_subset <| (U.isOpen.preimage continuous_mul).mem_nhds <| by
    simpa only [Set.mem_preimage, Prod.snd_zero, mul_zero] using! U.zero_mem
  use V
  rintro v ⟨a, ha, b, hb, hv⟩
  have hy := H (Set.mk_mem_prod ha hb)
  simp only [Set.mem_preimage, SetLike.mem_coe, hv] at hy
  rw [SetLike.mem_coe]
  exact hy

end NonarchimedeanRing
```
