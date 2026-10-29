-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology.UniformSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.UniformSpaces.IsTransitiveRelEntourageProd.Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.UniformSpaces.SourceCorpus.IsTransitiveRelEntourageProd.Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b","mathematical_subject":"Topology.UniformSpaces","original_sha256":"f74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/UniformSpace/Ultra/Constructions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
import Mathlib.Topology.UniformSpace.Pi
import Mathlib.Topology.UniformSpace.Ultra.Basic

/-!
# Products of ultrametric (nonarchimedean) uniform spaces

## Main results

* `IsUltraUniformity.prod`: a product of uniform spaces with nonarchimedean uniformities
  has a nonarchimedean uniformity.
* `IsUltraUniformity.pi`: an indexed product of uniform spaces with nonarchimedean uniformities
  has a nonarchimedean uniformity.

## Implementation details

This file can be split to separate imports to have the `Prod` and `Pi` instances separately,
but would be somewhat unnatural since they are closely related.
The `Prod` instance only requires `Mathlib/Topology/UniformSpace/Basic.lean`.

-/


namespace GRWTSK.Topology.GeneralTopology.UniformSpaces.IsTransitiveRelEntourageProd.Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b

variable {X Y : Type*}

lemma IsTransitiveRel.entourageProd {s : Set (X × X)} {t : Set (Y × Y)}
    (hs : IsTransitiveRel s) (ht : IsTransitiveRel t) :
    IsTransitiveRel (entourageProd s t) :=
  fun _ _ _ h h' ↦ ⟨hs h.left h'.left, ht h.right h'.right⟩

lemma IsUltraUniformity.comap {u : UniformSpace Y} (h : IsUltraUniformity Y) (f : X → Y) :
    @IsUltraUniformity _ (u.comap f) := by
  letI := u.comap f
  refine .mk_of_hasBasis (h.hasBasis.comap (Prod.map f f)) ?_ ?_
  · exact fun _ ⟨_, hU, _⟩ ↦ hU.preimage_prodMap f
  · exact fun _ ⟨_, _, hU⟩ ↦ hU.preimage_prodMap f

lemma IsUltraUniformity.inf {u u' : UniformSpace X} (h : @IsUltraUniformity _ u)
    (h' : @IsUltraUniformity _ u') :
    @IsUltraUniformity _ (u ⊓ u') := by
  letI := u ⊓ u'
  refine .mk_of_hasBasis (h.hasBasis.inf h'.hasBasis) ?_ ?_
  · exact fun _ ⟨⟨_, hU, _⟩, _, hU', _⟩ ↦ hU.inter hU'
  · exact fun _ ⟨⟨_, _, hU⟩, _, _, hU'⟩ ↦ hU.inter hU'

/-- The product of uniform spaces with nonarchimedean uniformities has a
nonarchimedean uniformity. -/
instance IsUltraUniformity.prod [UniformSpace X] [UniformSpace Y]
    [IsUltraUniformity X] [IsUltraUniformity Y] :
    IsUltraUniformity (X × Y) :=
  .inf (.comap ‹_› _) (.comap ‹_› _)

lemma IsUltraUniformity.iInf {ι : Type*} {U : (i : ι) → UniformSpace X}
    (hU : ∀ i, @IsUltraUniformity X (U i)) :
    @IsUltraUniformity _ (⨅ i, U i : UniformSpace X) := by
  letI : UniformSpace X := ⨅ i, U i
  refine .mk_of_hasBasis (iInf_uniformity ▸ Filter.HasBasis.iInf fun i ↦ (hU i).hasBasis) ?_ ?_
  · exact fun _ ⟨_, h⟩ ↦ IsSymmetricRel.iInter fun i ↦ (h i).right.left
  · exact fun _ ⟨_, h⟩ ↦ IsTransitiveRel.iInter fun i ↦ (h i).right.right

/-- The indexed product of uniform spaces with nonarchimedean uniformities has a
nonarchimedean uniformity. -/
instance IsUltraUniformity.pi {ι : Type*} {X : ι → Type*} [U : Π i, UniformSpace (X i)]
    [h : ∀ i, IsUltraUniformity (X i)] :
    IsUltraUniformity (Π i, X i) := by
  suffices @IsUltraUniformity _ (⨅ i, UniformSpace.comap (Function.eval i) (U i)) by
    simpa [Pi.uniformSpace_eq _] using this
  exact .iInf fun i ↦ .comap (h i) (Function.eval i)
