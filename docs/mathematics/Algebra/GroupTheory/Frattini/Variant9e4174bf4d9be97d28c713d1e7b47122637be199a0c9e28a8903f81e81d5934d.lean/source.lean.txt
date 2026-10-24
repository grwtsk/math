-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Frattini.Variantbae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Frattini.Variantbae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb","mathematical_subject":"Algebra.Groups","original_sha256":"bae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/GroupTheory/Frattini.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Colva Roney-Dougal. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Colva Roney-Dougal, Inna Capdeboscq, Susanna Fishel, Kim Morrison
-/
module

public import Mathlib.GroupTheory.Nilpotent
public import Mathlib.Order.Radical

/-!
# The Frattini subgroup

We give the definition of the Frattini subgroup of a group, and three elementary results:
* The Frattini subgroup is characteristic.
* If every subgroup of a group is contained in a maximal subgroup, then
  the Frattini subgroup consists of the non-generating elements of the group.
* The Frattini subgroup of a finite group is nilpotent.
-/


namespace GRWTSK.Algebra.GroupTheory.Frattini.Variantbae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb

@[expose] public section

/-- The Frattini subgroup of a group is the intersection of the maximal subgroups. -/
def frattini (G : Type*) [Group G] : Subgroup G :=
  Order.radical (Subgroup G)

variable {G H : Type*} [Group G] [Group H] {φ : G →* H}

lemma frattini_le_coatom {K : Subgroup G} (h : IsCoatom K) : frattini G ≤ K :=
  Order.radical_le_coatom h

open Subgroup

lemma frattini_le_comap_frattini_of_surjective (hφ : Function.Surjective φ) :
    frattini G ≤ (frattini H).comap φ := by
  simp_rw [frattini, Order.radical, comap_iInf, le_iInf_iff]
  intro M hM
  apply biInf_le
  exact isCoatom_comap_of_surjective hφ hM

/-- The Frattini subgroup is characteristic. -/
instance frattini_characteristic : (frattini G).Characteristic := by
  rw [characteristic_iff_comap_eq]
  intro φ
  apply φ.comapSubgroup.map_radical

/--
The Frattini subgroup consists of "non-generating" elements in the following sense:

If a subgroup together with the Frattini subgroup generates the whole group,
then the subgroup is already the whole group.
-/
theorem frattini_nongenerating [IsCoatomic (Subgroup G)] {K : Subgroup G}
    (h : K ⊔ frattini G = ⊤) : K = ⊤ :=
  Order.radical_nongenerating h

/-- When `G` is finite, the Frattini subgroup is nilpotent. -/
theorem frattini_nilpotent [Finite G] : Group.IsNilpotent (frattini G) := by
  -- We use the characterisation of nilpotency in terms of all Sylow subgroups being normal.
  have q := (Group.isNilpotent_of_finite_tfae (G := frattini G)).out 1 4
  rw [q]; clear q
  -- Consider each prime `p` and Sylow `p`-subgroup `P` of `frattini G`.
  intro p p_prime P
  -- The Frattini argument shows that the normalizer of `P` in `G`
  -- together with `frattini G` generates `G`.
  have frattini_argument := Sylow.normalizer_sup_eq_top P
  -- and hence by the nongenerating property of the Frattini subgroup that
  -- the normalizer of `P` in `G` is `G`.
  have normalizer_P := frattini_nongenerating frattini_argument
  -- This means that `P` is normal as a subgroup of `G`
  have P_normal_in_G : (map (frattini G).subtype P).Normal := normalizer_eq_top_iff.mp normalizer_P
  -- and hence also as a subgroup of `frattini G`, which was the remaining goal.
  exact P_normal_in_G.of_map_subtype
