# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SubboxInduction.Variant950f9ffd047fdbdfee3567f8fd683db5e4695cf4fde8b0530f4ff4b30268e7fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df28dab9542547f0eb2105551860525af83f9474` · SHA-256 `a6e54741d2e49fc3050db079375eae0aa4ecdd4dc00821d3a3c0a3730de094ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SplitCenter.Variant7625be8017598282d2456fe1333285868982c990d4316a876cf46ff068eaddc4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7625be8017598282d2456fe1333285868982c990d4316a876cf46ff068eaddc4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SplitCenter.Variant7625be8017598282d2456fe1333285868982c990d4316a876cf46ff068eaddc4","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"7625be8017598282d2456fe1333285868982c990d4316a876cf46ff068eaddc4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/BoxIntegral/Partition/SubboxInduction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.BoxIntegral.Box.SubboxInduction
import Mathlib.Analysis.BoxIntegral.Partition.Tagged

/-!
# Induction on subboxes

In this file we prove (see
`BoxIntegral.Box.exists_taggedPartition_isHenstock_isSubordinate_homothetic`) that for every box `I`
in `ℝⁿ` and a function `r : ℝⁿ → ℝ` positive on `I` there exists a tagged partition `π` of `I` such
that

* `π` is a Henstock partition;
* `π` is subordinate to `r`;
* each box in `π` is homothetic to `I` with coefficient of the form `1 / 2 ^ n`.

Later we will use this lemma to prove that the Henstock filter is nontrivial, hence the Henstock
integral is well-defined.

## Tags

partition, tagged partition, Henstock integral
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SplitCenter.Variant7625be8017598282d2456fe1333285868982c990d4316a876cf46ff068eaddc4

namespace BoxIntegral

open Set Metric

open Topology

noncomputable section

variable {ι : Type*} [Fintype ι] {I J : Box ι}

namespace Prepartition

/-- Split a box in `ℝⁿ` into `2 ^ n` boxes by hyperplanes passing through its center. -/
def splitCenter (I : Box ι) : Prepartition I where
  boxes := Finset.univ.map (Box.splitCenterBoxEmb I)
  le_of_mem' := by simp [I.splitCenterBox_le]
  pairwiseDisjoint := by
    rw [Finset.coe_map, Finset.coe_univ, image_univ]
    rintro _ ⟨s, rfl⟩ _ ⟨t, rfl⟩ Hne
    exact I.disjoint_splitCenterBox (mt (congr_arg _) Hne)

@[simp]
theorem mem_splitCenter : J ∈ splitCenter I ↔ ∃ s, I.splitCenterBox s = J := by simp [splitCenter]

theorem isPartition_splitCenter (I : Box ι) : IsPartition (splitCenter I) := fun x hx => by
  simp [hx]

theorem upper_sub_lower_of_mem_splitCenter (h : J ∈ splitCenter I) (i : ι) :
    J.upper i - J.lower i = (I.upper i - I.lower i) / 2 :=
  let ⟨s, hs⟩ := mem_splitCenter.1 h
  hs ▸ I.upper_sub_lower_splitCenterBox s i

end Prepartition

namespace Box

open Prepartition TaggedPrepartition

/-- Let `p` be a predicate on `Box ι`, let `I` be a box. Suppose that the following two properties
hold true.

* Consider a smaller box `J ≤ I`. The hyperplanes passing through the center of `J` split it into
  `2 ^ n` boxes. If `p` holds true on each of these boxes, then it true on `J`.
* For each `z` in the closed box `I.Icc` there exists a neighborhood `U` of `z` within `I.Icc` such
  that for every box `J ≤ I` such that `z ∈ J.Icc ⊆ U`, if `J` is homothetic to `I` with a
  coefficient of the form `1 / 2 ^ m`, then `p` is true on `J`.

Then `p I` is true. See also `BoxIntegral.Box.subbox_induction_on'` for a version using
`BoxIntegral.Box.splitCenterBox` instead of `BoxIntegral.Prepartition.splitCenter`. -/
@[elab_as_elim]
theorem subbox_induction_on {p : Box ι → Prop} (I : Box ι)
    (H_ind : ∀ J ≤ I, (∀ J' ∈ splitCenter J, p J') → p J)
    (H_nhds : ∀ z ∈ Box.Icc I, ∃ U ∈ 𝓝[Box.Icc I] z, ∀ J ≤ I, ∀ (m : ℕ),
      z ∈ Box.Icc J → Box.Icc J ⊆ U →
        (∀ i, J.upper i - J.lower i = (I.upper i - I.lower i) / 2 ^ m) → p J) :
    p I := by
  refine subbox_induction_on' I (fun J hle hs => H_ind J hle fun J' h' => ?_) H_nhds
  rcases mem_splitCenter.1 h' with ⟨s, rfl⟩
  exact hs s

/-- Given a box `I` in `ℝⁿ` and a function `r : ℝⁿ → (0, ∞)`, there exists a tagged partition `π` of
`I` such that

* `π` is a Henstock partition;
* `π` is subordinate to `r`;
* each box in `π` is homothetic to `I` with coefficient of the form `1 / 2 ^ m`.

This lemma implies that the Henstock filter is nontrivial, hence the Henstock integral is
well-defined. -/
theorem exists_taggedPartition_isHenstock_isSubordinate_homothetic (I : Box ι)
    (r : (ι → ℝ) → Ioi (0 : ℝ)) :
    ∃ π : TaggedPrepartition I, π.IsPartition ∧ π.IsHenstock ∧ π.IsSubordinate r ∧
      (∀ J ∈ π, ∃ m : ℕ, ∀ i, (J :).upper i - J.lower i = (I.upper i - I.lower i) / 2 ^ m) ∧
        π.distortion = I.distortion := by
  refine subbox_induction_on I (fun J _ hJ => ?_) fun z _ => ?_
  · choose! πi hP hHen hr Hn _ using hJ
    choose! n hn using Hn
    have hP : ((splitCenter J).biUnionTagged πi).IsPartition :=
      (isPartition_splitCenter _).biUnionTagged hP
    have hsub : ∀ J' ∈ (splitCenter J).biUnionTagged πi, ∃ n : ℕ, ∀ i,
        (J' :).upper i - J'.lower i = (J.upper i - J.lower i) / 2 ^ n := by
      intro J' hJ'
      rcases (splitCenter J).mem_biUnionTagged.1 hJ' with ⟨J₁, h₁, h₂⟩
      refine ⟨n J₁ J' + 1, fun i => ?_⟩
      simp only [hn J₁ h₁ J' h₂, upper_sub_lower_of_mem_splitCenter h₁, pow_succ', div_div]
    refine ⟨_, hP, isHenstock_biUnionTagged.2 hHen, isSubordinate_biUnionTagged.2 hr, hsub, ?_⟩
    refine TaggedPrepartition.distortion_of_const _ hP.nonempty_boxes fun J' h' => ?_
    rcases hsub J' h' with ⟨n, hn⟩
    exact Box.distortion_eq_of_sub_eq_div hn
  · refine ⟨Box.Icc I ∩ closedBall z (r z),
      inter_mem_nhdsWithin _ (closedBall_mem_nhds _ (r z).coe_prop), ?_⟩
    intro J _ n Hmem HIcc Hsub
    rw [Set.subset_inter_iff] at HIcc
    refine ⟨single _ _ le_rfl _ Hmem, isPartition_single _, isHenstock_single _,
      (isSubordinate_single _ _).2 HIcc.2, ?_, distortion_single _ _⟩
    simp only [TaggedPrepartition.mem_single, forall_eq]
    refine ⟨0, fun i => ?_⟩
    simp

end Box

namespace Prepartition

open TaggedPrepartition Finset Function

/-- Given a box `I` in `ℝⁿ`, a function `r : ℝⁿ → (0, ∞)`, and a prepartition `π` of `I`, there
exists a tagged prepartition `π'` of `I` such that

* each box of `π'` is included in some box of `π`;
* `π'` is a Henstock partition;
* `π'` is subordinate to `r`;
* `π'` covers exactly the same part of `I` as `π`;
* the distortion of `π'` is equal to the distortion of `π`.
-/
theorem exists_tagged_le_isHenstock_isSubordinate_iUnion_eq {I : Box ι} (r : (ι → ℝ) → Ioi (0 : ℝ))
    (π : Prepartition I) :
    ∃ π' : TaggedPrepartition I, π'.toPrepartition ≤ π ∧ π'.IsHenstock ∧ π'.IsSubordinate r ∧
      π'.distortion = π.distortion ∧ π'.iUnion = π.iUnion := by
  have := fun J => Box.exists_taggedPartition_isHenstock_isSubordinate_homothetic J r
  choose! πi πip πiH πir _ πid using this
  refine ⟨π.biUnionTagged πi, biUnion_le _ _, isHenstock_biUnionTagged.2 fun J _ => πiH J,
    isSubordinate_biUnionTagged.2 fun J _ => πir J, ?_, π.iUnion_biUnion_partition fun J _ => πip J⟩
  rw [distortion_biUnionTagged]
  exact sup_congr rfl fun J _ => πid J

/-- Given a prepartition `π` of a box `I` and a function `r : ℝⁿ → (0, ∞)`, `π.toSubordinate r`
is a tagged partition `π'` such that

* each box of `π'` is included in some box of `π`;
* `π'` is a Henstock partition;
* `π'` is subordinate to `r`;
* `π'` covers exactly the same part of `I` as `π`;
* the distortion of `π'` is equal to the distortion of `π`.
-/
def toSubordinate (π : Prepartition I) (r : (ι → ℝ) → Ioi (0 : ℝ)) : TaggedPrepartition I :=
  (π.exists_tagged_le_isHenstock_isSubordinate_iUnion_eq r).choose

theorem toSubordinate_toPrepartition_le (π : Prepartition I) (r : (ι → ℝ) → Ioi (0 : ℝ)) :
    (π.toSubordinate r).toPrepartition ≤ π :=
  (π.exists_tagged_le_isHenstock_isSubordinate_iUnion_eq r).choose_spec.1

theorem isHenstock_toSubordinate (π : Prepartition I) (r : (ι → ℝ) → Ioi (0 : ℝ)) :
    (π.toSubordinate r).IsHenstock :=
  (π.exists_tagged_le_isHenstock_isSubordinate_iUnion_eq r).choose_spec.2.1

theorem isSubordinate_toSubordinate (π : Prepartition I) (r : (ι → ℝ) → Ioi (0 : ℝ)) :
    (π.toSubordinate r).IsSubordinate r :=
  (π.exists_tagged_le_isHenstock_isSubordinate_iUnion_eq r).choose_spec.2.2.1

@[simp]
theorem distortion_toSubordinate (π : Prepartition I) (r : (ι → ℝ) → Ioi (0 : ℝ)) :
    (π.toSubordinate r).distortion = π.distortion :=
  (π.exists_tagged_le_isHenstock_isSubordinate_iUnion_eq r).choose_spec.2.2.2.1

@[simp]
theorem iUnion_toSubordinate (π : Prepartition I) (r : (ι → ℝ) → Ioi (0 : ℝ)) :
    (π.toSubordinate r).iUnion = π.iUnion :=
  (π.exists_tagged_le_isHenstock_isSubordinate_iUnion_eq r).choose_spec.2.2.2.2

end Prepartition

namespace TaggedPrepartition

/-- Given a tagged prepartition `π₁`, a prepartition `π₂` that covers exactly `I \ π₁.iUnion`, and
a function `r : ℝⁿ → (0, ∞)`, returns the union of `π₁` and `π₂.toSubordinate r`. This partition
`π` has the following properties:

* `π` is a partition, i.e. it covers the whole `I`;
* `π₁.boxes ⊆ π.boxes`;
* `π.tag J = π₁.tag J` whenever `J ∈ π₁`;
* `π` is Henstock outside of `π₁`: `π.tag J ∈ J.Icc` whenever `J ∈ π`, `J ∉ π₁`;
* `π` is subordinate to `r` outside of `π₁`;
* the distortion of `π` is equal to the maximum of the distortions of `π₁` and `π₂`.
-/
def unionComplToSubordinate (π₁ : TaggedPrepartition I) (π₂ : Prepartition I)
    (hU : π₂.iUnion = ↑I \ π₁.iUnion) (r : (ι → ℝ) → Ioi (0 : ℝ)) : TaggedPrepartition I :=
  π₁.disjUnion (π₂.toSubordinate r)
    (((π₂.iUnion_toSubordinate r).trans hU).symm ▸ disjoint_sdiff_self_right)

theorem isPartition_unionComplToSubordinate (π₁ : TaggedPrepartition I) (π₂ : Prepartition I)
    (hU : π₂.iUnion = ↑I \ π₁.iUnion) (r : (ι → ℝ) → Ioi (0 : ℝ)) :
    IsPartition (π₁.unionComplToSubordinate π₂ hU r) :=
  Prepartition.isPartitionDisjUnionOfEqDiff ((π₂.iUnion_toSubordinate r).trans hU)

open scoped Classical in
@[simp]
theorem unionComplToSubordinate_boxes (π₁ : TaggedPrepartition I) (π₂ : Prepartition I)
    (hU : π₂.iUnion = ↑I \ π₁.iUnion) (r : (ι → ℝ) → Ioi (0 : ℝ)) :
    (π₁.unionComplToSubordinate π₂ hU r).boxes = π₁.boxes ∪ (π₂.toSubordinate r).boxes := rfl

@[simp]
theorem iUnion_unionComplToSubordinate_boxes (π₁ : TaggedPrepartition I) (π₂ : Prepartition I)
    (hU : π₂.iUnion = ↑I \ π₁.iUnion) (r : (ι → ℝ) → Ioi (0 : ℝ)) :
    (π₁.unionComplToSubordinate π₂ hU r).iUnion = I :=
  (isPartition_unionComplToSubordinate _ _ _ _).iUnion_eq

@[simp]
theorem distortion_unionComplToSubordinate (π₁ : TaggedPrepartition I) (π₂ : Prepartition I)
    (hU : π₂.iUnion = ↑I \ π₁.iUnion) (r : (ι → ℝ) → Ioi (0 : ℝ)) :
    (π₁.unionComplToSubordinate π₂ hU r).distortion = max π₁.distortion π₂.distortion := by
  simp [unionComplToSubordinate]

end TaggedPrepartition

end

end BoxIntegral
```
