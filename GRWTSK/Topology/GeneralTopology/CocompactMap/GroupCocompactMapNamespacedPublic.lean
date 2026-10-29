-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.CocompactMapClassNormLe.Variant2e399b6f9dea78d5b2f75c6ef248dfbf9761439eb384a97fc7a13a0107fff2ce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e399b6f9dea78d5b2f75c6ef248dfbf9761439eb384a97fc7a13a0107fff2ce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.CocompactMapClassNormLe.Variant2e399b6f9dea78d5b2f75c6ef248dfbf9761439eb384a97fc7a13a0107fff2ce","mathematical_subject":"Topology.GeneralTopology","original_sha256":"2e399b6f9dea78d5b2f75c6ef248dfbf9761439eb384a97fc7a13a0107fff2ce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Normed/Group/CocompactMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/
module

public import Mathlib.Analysis.Normed.Group.Basic
public import Mathlib.Topology.ContinuousMap.CocompactMap
public import Mathlib.Topology.MetricSpace.Bounded

/-!
# Cocompact maps in normed groups

This file gives a characterization of cocompact maps in terms of norm estimates.

## Main statements

* `CocompactMapClass.norm_le`: Every cocompact map satisfies a norm estimate
* `ContinuousMapClass.toCocompactMapClass_of_norm`: Conversely, this norm estimate implies that a
  map is cocompact.

-/


namespace GRWTSK.Topology.GeneralTopology.CocompactMapClassNormLe.Variant2e399b6f9dea78d5b2f75c6ef248dfbf9761439eb384a97fc7a13a0107fff2ce

public section

open Filter Metric

variable {E F 𝓕 : Type*}
variable [NormedAddCommGroup E] [NormedAddCommGroup F]
variable {f : 𝓕}

theorem CocompactMapClass.norm_le [ProperSpace F] [FunLike 𝓕 E F] [CocompactMapClass 𝓕 E F]
    (ε : ℝ) : ∃ r : ℝ, ∀ x : E, r < ‖x‖ → ε < ‖f x‖ := by
  have h := cocompact_tendsto f
  rw [tendsto_def] at h
  specialize h (Metric.closedBall 0 ε)ᶜ (mem_cocompact_of_closedBall_compl_subset 0 ⟨ε, rfl.subset⟩)
  rcases closedBall_compl_subset_of_mem_cocompact h 0 with ⟨r, hr⟩
  use r
  intro x hx
  suffices x ∈ f ⁻¹' (Metric.closedBall 0 ε)ᶜ by simp_all
  apply hr
  simp [hx]

theorem Filter.tendsto_cocompact_cocompact_of_norm [ProperSpace E] {f : E → F}
    (h : ∀ ε : ℝ, ∃ r : ℝ, ∀ x : E, r < ‖x‖ → ε < ‖f x‖) :
    Tendsto f (cocompact E) (cocompact F) := by
  rw [tendsto_def]
  intro s hs
  rcases closedBall_compl_subset_of_mem_cocompact hs 0 with ⟨ε, hε⟩
  rcases h ε with ⟨r, hr⟩
  apply mem_cocompact_of_closedBall_compl_subset 0
  use r
  intro x hx
  simp only [Set.mem_compl_iff, Metric.mem_closedBall, dist_zero_right, not_le] at hx
  apply hε
  simp [hr x hx]

theorem ContinuousMapClass.toCocompactMapClass_of_norm [ProperSpace E] [FunLike 𝓕 E F]
    [ContinuousMapClass 𝓕 E F] (h : ∀ (f : 𝓕) (ε : ℝ), ∃ r : ℝ, ∀ x : E, r < ‖x‖ → ε < ‖f x‖) :
    CocompactMapClass 𝓕 E F where
  cocompact_tendsto := (tendsto_cocompact_cocompact_of_norm <| h ·)
