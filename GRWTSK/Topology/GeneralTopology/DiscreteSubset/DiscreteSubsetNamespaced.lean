-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TendstoCofiniteCocompactIff.Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TendstoCofiniteCocompactIff.Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2","mathematical_subject":"Topology.GeneralTopology","original_sha256":"3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/DiscreteSubset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash, Bhavik Mehta
-/
import Mathlib.Topology.SubsetProperties
import Mathlib.Topology.Separation

/-!
# Discrete subsets of topological spaces

Given a topological space `X` together with a subset `s ⊆ X`, there are two distinct concepts of
"discreteness" which may hold. These are:
  (i) Every point of `s` is isolated (i.e., the subset topology induced on `s` is the discrete
      topology).
 (ii) Every compact subset of `X` meets `s` only finitely often (i.e., the inclusion map `s → X`
      tends to the cocompact filter along the cofinite filter on `s`).

When `s` is closed, the two conditions are equivalent provided `X` is locally compact and T1,
see `IsClosed.tendsto_coe_cofinite_iff`.

## Main statements

 * `tendsto_cofinite_cocompact_iff`:
 * `IsClosed.tendsto_coe_cofinite_iff`:

-/


namespace GRWTSK.Topology.GeneralTopology.TendstoCofiniteCocompactIff.Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2

open Set Filter Function Topology

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] {f : X → Y}

lemma tendsto_cofinite_cocompact_iff :
    Tendsto f cofinite (cocompact _) ↔ ∀ K, IsCompact K → Set.Finite (f ⁻¹' K) := by
  rw [hasBasis_cocompact.tendsto_right_iff]
  refine' forall₂_congr (fun K _ ↦ _)
  simp only [mem_compl_iff, eventually_cofinite, not_not, preimage]

lemma Continuous.discrete_of_tendsto_cofinite_cocompact [T1Space X] [LocallyCompactSpace Y]
    (hf' : Continuous f) (hf : Tendsto f cofinite (cocompact _)) :
    DiscreteTopology X := by
  refine' singletons_open_iff_discrete.mp (fun x ↦ _)
  obtain ⟨K : Set Y, hK : IsCompact K, hK' : K ∈ 𝓝 (f x)⟩ := exists_compact_mem_nhds (f x)
  obtain ⟨U : Set Y, hU₁ : U ⊆ K, hU₂ : IsOpen U, hU₃ : f x ∈ U⟩ := mem_nhds_iff.mp hK'
  have hU₄ : Set.Finite (f⁻¹' U) :=
    Finite.subset (tendsto_cofinite_cocompact_iff.mp hf K hK) (preimage_mono hU₁)
  exact isOpen_singleton_of_finite_mem_nhds _ ((hU₂.preimage hf').mem_nhds hU₃) hU₄

lemma tendsto_cofinite_cocompact_of_discrete [DiscreteTopology X]
    (hf : Tendsto f (cocompact _) (cocompact _)) :
    Tendsto f cofinite (cocompact _) := by
  convert hf
  rw [cocompact_eq_cofinite X]

lemma IsClosed.tendsto_coe_cofinite_of_discreteTopology
    {s : Set X} (hs : IsClosed s) (_hs' : DiscreteTopology s) :
    Tendsto ((↑) : s → X) cofinite (cocompact _) :=
  tendsto_cofinite_cocompact_of_discrete hs.closedEmbedding_subtype_val.tendsto_cocompact

lemma IsClosed.tendsto_coe_cofinite_iff [T1Space X] [LocallyCompactSpace X]
    {s : Set X} (hs : IsClosed s) :
    Tendsto ((↑) : s → X) cofinite (cocompact _) ↔ DiscreteTopology s :=
  ⟨continuous_subtype_val.discrete_of_tendsto_cofinite_cocompact,
   fun _ ↦ hs.tendsto_coe_cofinite_of_discreteTopology inferInstance⟩
