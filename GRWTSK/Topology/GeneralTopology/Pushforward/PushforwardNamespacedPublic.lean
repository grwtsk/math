-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Map.Variant8f2b617434b59c206aa7b035ded64e3be19bf39ee567e3a48d91b05d8e3bb9f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f2b617434b59c206aa7b035ded64e3be19bf39ee567e3a48d91b05d8e3bb9f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Map.Variant8f2b617434b59c206aa7b035ded64e3be19bf39ee567e3a48d91b05d8e3bb9f7","mathematical_subject":"Topology.GeneralTopology","original_sha256":"8f2b617434b59c206aa7b035ded64e3be19bf39ee567e3a48d91b05d8e3bb9f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/LocallyFinsupp/Pushforward.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Raphael Douglas Giles. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Raphael Douglas Giles
-/
module

public import Mathlib.Topology.LocallyFinsupp
public import Mathlib.Topology.Spectral.Prespectral

/-!
# Pushforward of functions with locally finite support

In this file we define the notion of the pushforward of a function with locally finite support
between prespectral spaces along a spectral map. This is used for defining the (proper) pushforward
of algebraic cycles in algebraic geometry.

## Main declarations

- `Function.locallyFinsupp.map`: If `f : X → Y` is a spectral map between spectral spaces and
  `c : X → R` is locally of finite support, the pushforward of `c` along `f` at `y : Y` is
  `∑ᶠ x ∈ f ⁻¹' {y}, c x * w x`, where `w : X → R` is a weight function.

## Notes

In the case of algebraic cycles, the weight function used in `Function.locallyFinsupp.map` will be
specialized to the degree of the residue field extension
(see https://stacks.math.columbia.edu/tag/02R4).
-/


namespace GRWTSK.Topology.GeneralTopology.Map.Variant8f2b617434b59c206aa7b035ded64e3be19bf39ee567e3a48d91b05d8e3bb9f7

@[expose] public section

open Set TopologicalSpace

variable {X Y R : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  {f : X → Y} (hf : IsSpectralMap f) (w : X → R)

namespace Function.locallyFinsupp

variable [Semiring R] (c : Function.locallyFinsupp X R)
  [PrespectralSpace Y]

variable (f) in
/--
The pushforward of a function `c` of locally finite support by a spectral map with respect to a
weight function `w`.
-/
noncomputable
def map (hf : IsSpectralMap f) (c : locallyFinsupp X R) : Function.locallyFinsupp Y R where
  toFun z := ∑ᶠ x ∈ f ⁻¹' {z}, c x * w x
  supportWithinDomain' := by simp
  supportLocallyFiniteWithinDomain' y _ := by
    obtain ⟨U, hU⟩ := (PrespectralSpace.isTopologicalBasis (X := Y)).exists_subset_of_mem_open
      (by simp : y ∈ ⊤) (by simp)
    refine ⟨U, IsOpen.mem_nhds hU.1.1 hU.2.1, ?_⟩
    suffices h : (U ∩ {z | (f ⁻¹' {z} ∩ support ⇑c).Nonempty}).Finite by
      refine h.subset (inter_subset_inter_right U fun y hy ↦ ?_)
      obtain ⟨x, (hx : f x = y), h'⟩ := exists_ne_zero_of_finsum_mem_ne_zero hy
      use x
      grind [mem_support]
    suffices (f ⁻¹' (U ∩ {z | (f ⁻¹' {z} ∩ c.support).Nonempty}) ∩ c.support).Finite from
      (this.image f).subset (fun a ha ↦ by grind [Set.Nonempty])
    exact (c.locallyFiniteSupport.finite_inter_support_of_isCompact <| hf.2 hU.1.1 hU.1.2).subset
      (by simp; grind)

@[simp]
lemma map_apply (hf : IsSpectralMap f) (c : locallyFinsupp X R) (y : Y) :
    map f w hf c y = ∑ᶠ x ∈ f ⁻¹' {y}, c x * w x := rfl

lemma support_map_subset_of_forall_mem (s : Set X) (t : Set Y) (hc : c.support ⊆ s)
    (h : ∀ x : X, x ∈ s → w x ≠ 0 → f x ∈ t) : (map f w hf c).support ⊆ t := by
  intro y hy
  obtain ⟨x, (rfl : f x = y), h'⟩ := exists_ne_zero_of_finsum_mem_ne_zero hy
  grind [mem_support]

@[simp]
lemma map_id [PrespectralSpace X] (hw : ∀ z : X, w z = 1) :
    map id w isSpectralMap_id c = c := by
  ext
  simp [map, hw]

end Function.locallyFinsupp
