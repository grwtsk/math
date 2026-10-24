# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Pairwise.Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fa76981ad3b7eab77d2d254970df37893dd7fe4` · SHA-256 `b22fe0a881ae1c7a8dd3d88c1744b72fcde8910e47412de183461bf7d1b7592b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FinsetPairwiseDisjointRangeSingleton.Variant1ee6255920f044b34114a75294db521cea8d5f324985f9fefed8649b53bc9e61","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ee6255920f044b34114a75294db521cea8d5f324985f9fefed8649b53bc9e61","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FinsetPairwiseDisjointRangeSingleton.Variant1ee6255920f044b34114a75294db521cea8d5f324985f9fefed8649b53bc9e61","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1ee6255920f044b34114a75294db521cea8d5f324985f9fefed8649b53bc9e61","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Finset/Pairwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Data.Finset.Lattice.Fold
public import Mathlib.Data.Set.Pairwise.List

/-!
# Relations holding pairwise on finite sets

In this file we prove a few results about the interaction of `Set.PairwiseDisjoint` and `Finset`,
as well as the interaction of `List.Pairwise Disjoint` and the condition of
`Disjoint` on `List.toFinset`, in `Set` form.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FinsetPairwiseDisjointRangeSingleton.Variant1ee6255920f044b34114a75294db521cea8d5f324985f9fefed8649b53bc9e61

public section


open Finset

variable {α ι ι' : Type*}

instance [DecidableEq α] {r : α → α → Prop} [DecidableRel r] {s : Finset α} :
    Decidable ((s : Set α).Pairwise r) :=
  decidable_of_iff' (∀ a ∈ s, ∀ b ∈ s, a ≠ b → r a b) Iff.rfl

theorem Finset.pairwiseDisjoint_range_singleton :
    (Set.range (singleton : α → Finset α)).PairwiseDisjoint id := by
  rintro _ ⟨a, rfl⟩ _ ⟨b, rfl⟩ h
  exact disjoint_singleton.2 (ne_of_apply_ne _ h)

namespace Set

theorem PairwiseDisjoint.elim_finset {s : Set ι} {f : ι → Finset α} (hs : s.PairwiseDisjoint f)
    {i j : ι} (hi : i ∈ s) (hj : j ∈ s) (a : α) (hai : a ∈ f i) (haj : a ∈ f j) : i = j :=
  hs.elim hi hj (Finset.not_disjoint_iff.2 ⟨a, hai, haj⟩)

section PartialOrder

variable [PartialOrder α] [OrderBot α] {s : Finset ι} {f : ι → α}

theorem PairwiseDisjoint.image_finset_of_le [DecidableEq ι] {s : Finset ι} {f : ι → α}
    (hs : (s : Set ι).PairwiseDisjoint f) {g : ι → ι} (hf : ∀ a, f (g a) ≤ f a) :
    (s.image g : Set ι).PairwiseDisjoint f := by
  rw [coe_image]
  exact hs.image_of_le hf

theorem PairwiseDisjoint.attach (hs : (s : Set ι).PairwiseDisjoint f) :
    (s.attach : Set { x // x ∈ s }).PairwiseDisjoint (f ∘ Subtype.val) := fun i _ j _ hij =>
  hs i.2 j.2 <| mt Subtype.ext hij

end PartialOrder

variable [Lattice α] [OrderBot α]

/-- Bind operation for `Set.PairwiseDisjoint`. In a complete lattice, you can use
`Set.PairwiseDisjoint.biUnion`. -/
theorem PairwiseDisjoint.biUnion_finset {s : Set ι'} {g : ι' → Finset ι} {f : ι → α}
    (hs : s.PairwiseDisjoint fun i' : ι' => (g i').sup f)
    (hg : ∀ i ∈ s, (g i : Set ι).PairwiseDisjoint f) : (⋃ i ∈ s, ↑(g i)).PairwiseDisjoint f := by
  rintro a ha b hb hab
  simp_rw [Set.mem_iUnion] at ha hb
  obtain ⟨c, hc, ha⟩ := ha
  obtain ⟨d, hd, hb⟩ := hb
  obtain hcd | hcd := eq_or_ne (g c) (g d)
  · exact hg d hd (by rwa [hcd] at ha) hb hab
  · exact (hs hc hd (ne_of_apply_ne _ hcd)).mono (Finset.le_sup ha) (Finset.le_sup hb)

end Set

namespace List

variable [DecidableEq α] {r : α → α → Prop} {l : List α}

theorem pairwise_of_coe_toFinset_pairwise (hl : (l.toFinset : Set α).Pairwise r) (hn : l.Nodup) :
    l.Pairwise r := by
  rw [coe_toFinset] at hl
  exact hn.pairwise_of_set_pairwise hl

theorem pairwise_iff_coe_toFinset_pairwise [Std.Symm r] (hn : l.Nodup) :
    (l.toFinset : Set α).Pairwise r ↔ l.Pairwise r := by
  rw [coe_toFinset, hn.pairwise_coe]

open scoped Function -- required for scoped `on` notation

theorem pairwise_disjoint_of_coe_toFinset_pairwiseDisjoint {α ι} [PartialOrder α] [OrderBot α]
    [DecidableEq ι] {l : List ι} {f : ι → α} (hl : (l.toFinset : Set ι).PairwiseDisjoint f)
    (hn : l.Nodup) : l.Pairwise (_root_.Disjoint on f) :=
  pairwise_of_coe_toFinset_pairwise hl hn

theorem pairwiseDisjoint_iff_coe_toFinset_pairwise_disjoint {α ι} [PartialOrder α] [OrderBot α]
    [DecidableEq ι] {l : List ι} {f : ι → α} (hn : l.Nodup) :
    (l.toFinset : Set ι).PairwiseDisjoint f ↔ l.Pairwise (_root_.Disjoint on f) :=
  pairwise_iff_coe_toFinset_pairwise hn

end List
```
