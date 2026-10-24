# Complete source: GRWTSK.Topology.GeneralTopology.SmallInductiveDimension.Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `266080d76e16da8d8d3b09ba309f76a53522b584` · SHA-256 `2aeceafde0c52032db5ed226c8d9520d6c17affbc61841d1da2c0e095cd2f3df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Inductive.Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Inductive.Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da","mathematical_subject":"Topology.GeneralTopology","original_sha256":"2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/SmallInductiveDimension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Fernando Chu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Fernando Chu, Andrew Yang, Felix Pernegger
-/
module

public import Mathlib.Data.ENat.Lattice
public import Mathlib.Topology.Bases
public import Mathlib.Topology.Clopen

import Mathlib.Data.Nat.Cast.Order.Basic

/-!
# Small inductive dimension

The small inductive dimension of a space is inductively defined as follows. Empty spaces have
small inductive dimension less than 0, and a topological space has dimension less than `n + 1` if
it has a topological basis whose elements have frontiers of dimension strictly less `n`.

In this file we formalize this notion, and characterize the cases `n = 0` and `n = 1`.

## Main definitions

* `HasSmallInductiveDimensionLT X n` : Provides a class stating that `X` has small inductive
  dimension less than `n`.
* `HasSmallInductiveDimensionLE X n` : Provides an abbrev for
  `HasSmallInductiveDimensionLT X (n + 1)`.
* `smallInductiveDimension X` : The small inductive dimension of `X`, with values in `WithBot ℕ∞`.

## References

* https://en.wikipedia.org/wiki/Inductive_dimension
-/


namespace GRWTSK.Topology.GeneralTopology.Inductive.Variant2f4dc6d49f69c025be395dc8995c6dab6ffb8c81ee00ef6e18fba8e993c113da

public section

open Set Topology TopologicalSpace

/--
For a topological space, the property of having small inductive dimension less than `n : ℕ`  is
inductively defined as follows. Empty spaces have small inductive dimension less than 0, and a
topological space has dimension less than `n + 1` if it has a topological basis whose elements have
frontiers of dimension strictly less `n`.
-/
class inductive HasSmallInductiveDimensionLT.{u} :
  ∀ (X : Type u) [TopologicalSpace X], ℕ → Prop where
  | zero {X : Type u} [TopologicalSpace X] [IsEmpty X] : HasSmallInductiveDimensionLT X 0
  | succ {X : Type u} [TopologicalSpace X] (n : ℕ) (s : Set (Set X)) (hs : IsTopologicalBasis s)
      (h : ∀ U ∈ s, HasSmallInductiveDimensionLT (frontier U) n) :
      HasSmallInductiveDimensionLT X (n + 1)

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

variable (X) in
/-- A topological space has dimension `≤ n` if it has dimension `< n + 1`. -/
abbrev HasSmallInductiveDimensionLE (n : ℕ) :=
  HasSmallInductiveDimensionLT X (n + 1)

@[simp]
theorem hasSmallInductiveDimensionLT_zero_iff : HasSmallInductiveDimensionLT X 0 ↔ IsEmpty X :=
  ⟨fun h ↦ by cases h; assumption, fun _ ↦ .zero⟩

@[deprecated (since := "2026-06-21")]
alias HasSmallInductiveDimensionLT_zero_iff := hasSmallInductiveDimensionLT_zero_iff

lemma hasSmallInductiveDimensionLT_one_iff :
    HasSmallInductiveDimensionLT X 1 ↔ IsTopologicalBasis { s : Set X | IsClopen s } := by
  constructor
  · intro (.succ _ s hs h)
    refine hs.of_isOpen_of_subset (fun _ hU ↦ hU.isOpen) (fun U hU ↦ ⟨?_, hs.isOpen hU⟩)
    rw [← closure_subset_iff_isClosed]
    cases h U hU
    rwa [isEmpty_coe_sort, (hs.isOpen hU).frontier_eq, sdiff_eq_empty] at ‹_›
  · exact fun h ↦ .succ 0 _ h fun _ hU ↦ hU.frontier_eq ▸ .zero

@[deprecated (since := "2026-06-21")]
alias HasSmallInductiveDimensionLT_one_iff := hasSmallInductiveDimensionLT_one_iff

theorem HasSmallInductiveDimensionLT.mono {m n : ℕ} (hmn : m ≤ n)
    (H : HasSmallInductiveDimensionLT X m) : HasSmallInductiveDimensionLT X n := by
  induction n generalizing m X with
  | zero => simp_all
  | succ m IH =>
    cases H with
    | zero => exact .succ _ ∅ (by simpa) (by simp)
    | succ n s hs h =>
      refine .succ _ s hs fun U hU ↦ IH ?_ (h U hU)
      rwa [add_le_add_iff_right] at hmn

theorem HasSmallInductiveDimensionLE.mono {m n : ℕ} (hmn : m ≤ n)
    (H : HasSmallInductiveDimensionLE X m) : HasSmallInductiveDimensionLE X n := by
  apply HasSmallInductiveDimensionLT.mono _ H
  rwa [add_le_add_iff_right]

theorem HasSmallInductiveDimensionLT.hasSmallInductiveDimensionLE {n : ℕ}
    (H : HasSmallInductiveDimensionLT X n) : HasSmallInductiveDimensionLE X n :=
  HasSmallInductiveDimensionLT.mono n.le_succ H

instance (n : ℕ) [IsEmpty X] : HasSmallInductiveDimensionLT X n :=
  .mono zero_le <| hasSmallInductiveDimensionLT_zero_iff.2 ‹_›

/-! ### Small inductive dimension -/

variable (X) in
/-- The small inductive dimension of a topological space. -/
noncomputable def smallInductiveDimension : WithBot ℕ∞ :=
  sInf {n | ∀ i : ℕ, n < i → HasSmallInductiveDimensionLT X i}

private theorem hasSmallInductiveDimensionLT_of_smallInductiveDimension_lt {n : ℕ}
    (h : smallInductiveDimension X < n) : HasSmallInductiveDimensionLT X n := by
  contrapose! h
  simp only [smallInductiveDimension, le_sInf_iff, mem_ofPred_eq]
  intro a ha
  contrapose! ha
  exact ⟨n, ha, h⟩

private theorem hasSmallInductiveDimensionLE_of_smallInductiveDimension_le {n : ℕ}
    (h : smallInductiveDimension X ≤ n) : HasSmallInductiveDimensionLE X n := by
  apply hasSmallInductiveDimensionLT_of_smallInductiveDimension_lt (h.trans_lt _)
  exact_mod_cast n.lt_add_one

theorem smallInductiveDimension_le_iff {n : ℕ} :
    smallInductiveDimension X ≤ n ↔ HasSmallInductiveDimensionLE X n where
  mp := hasSmallInductiveDimensionLE_of_smallInductiveDimension_le
  mpr h := sInf_le fun m hm ↦ .mono (by simpa using hm) h

theorem smallInductiveDimension_lt_iff {n : ℕ} :
    smallInductiveDimension X < n ↔ HasSmallInductiveDimensionLT X n where
  mp := hasSmallInductiveDimensionLT_of_smallInductiveDimension_lt
  mpr h := by
    cases n with
    | zero =>
      rw [smallInductiveDimension, csInf_eq_bot_of_bot_mem]
      · simp
      · exact fun _ _ ↦ h.mono zero_le
    | succ n =>
      apply (smallInductiveDimension_le_iff.2 h).trans_lt
      exact_mod_cast n.lt_add_one

variable (X) in
theorem smallInductiveDimension_le (n : ℕ) [H : HasSmallInductiveDimensionLE X n] :
    smallInductiveDimension X ≤ n :=
  smallInductiveDimension_le_iff.2 H

variable (X) in
theorem smallInductiveDimension_lt (n : ℕ) [H : HasSmallInductiveDimensionLT X n] :
    smallInductiveDimension X < n :=
  smallInductiveDimension_lt_iff.2 H

theorem smallInductiveDimension_eq (n : ℕ)
    (hle : HasSmallInductiveDimensionLE X n) (hlt : ¬ HasSmallInductiveDimensionLT X n) :
    smallInductiveDimension X = n := by
  apply (smallInductiveDimension_le_iff.2 hle).antisymm
  rwa [← not_lt, smallInductiveDimension_lt_iff]

@[simp]
theorem smallInductiveDimension_eq_bot : smallInductiveDimension X = ⊥ ↔ IsEmpty X := by
  simp_rw [← hasSmallInductiveDimensionLT_zero_iff, ← smallInductiveDimension_lt_iff,
    WithBot.lt_coe_bot.symm, bot_eq_zero', Nat.cast_zero, WithBot.coe_zero]

variable (X) in
@[simp]
theorem smallInductiveDimension_of_isEmpty [IsEmpty X] : smallInductiveDimension X = ⊥ :=
  smallInductiveDimension_eq_bot.2 ‹_›

theorem Topology.IsInducing.hasSmallInductiveDimensionLT {f : X → Y} (hf : IsInducing f)
    {n : ℕ} (h : HasSmallInductiveDimensionLT Y n) : HasSmallInductiveDimensionLT X n := by
  induction h generalizing X with
  | zero => exact hasSmallInductiveDimensionLT_zero_iff.2 (Function.isEmpty f)
  | succ n s hs h ih =>
    refine .succ n _ (hf.isTopologicalBasis hs) (forall_mem_image.mpr fun U hU ↦ ?_)
    have : MapsTo f (frontier (f ⁻¹' U)) (frontier U) := hf.continuous.frontier_preimage_subset U
    exact ih U hU (hf.restrict this)

theorem Topology.IsInducing.hasSmallInductiveDimensionLE {f : X → Y} (hf : IsInducing f)
    {n : ℕ} (h : HasSmallInductiveDimensionLE Y n) : HasSmallInductiveDimensionLE X n :=
  hf.hasSmallInductiveDimensionLT h

/-- The small inductive dimension does not increase under inducing maps. -/
theorem Topology.IsInducing.smallInductiveDimension_le {f : X → Y} (hf : IsInducing f) :
    smallInductiveDimension X ≤ smallInductiveDimension Y :=
  sInf_le_sInf fun _ hm i hi ↦ hf.hasSmallInductiveDimensionLT (hm i hi)

/-- The small inductive dimension of a subspace is at most that of the ambient space. -/
theorem smallInductiveDimension_subtype_le {p : X → Prop} :
    smallInductiveDimension {x // p x} ≤ smallInductiveDimension X :=
  Topology.IsInducing.subtypeVal.smallInductiveDimension_le

protected theorem Homeomorph.hasSmallInductiveDimensionLT (f : X ≃ₜ Y) (n : ℕ) :
    HasSmallInductiveDimensionLT X n ↔ HasSmallInductiveDimensionLT Y n :=
  ⟨f.symm.isInducing.hasSmallInductiveDimensionLT, f.isInducing.hasSmallInductiveDimensionLT⟩

protected theorem Homeomorph.hasSmallInductiveDimensionLE (f : X ≃ₜ Y) (n : ℕ) :
    HasSmallInductiveDimensionLE X n ↔ HasSmallInductiveDimensionLE Y n :=
  f.hasSmallInductiveDimensionLT (n + 1)

instance {p : X → Prop} (n : ℕ) [h : HasSmallInductiveDimensionLT X n] :
    HasSmallInductiveDimensionLT (Subtype p) n :=
  Topology.IsInducing.subtypeVal.hasSmallInductiveDimensionLT h

/-- The small inductive dimension is preserved by homeomorphisms. -/
protected theorem Homeomorph.smallInductiveDimension_congr (f : X ≃ₜ Y) :
    smallInductiveDimension X = smallInductiveDimension Y :=
  le_antisymm f.isInducing.smallInductiveDimension_le f.symm.isInducing.smallInductiveDimension_le
```
