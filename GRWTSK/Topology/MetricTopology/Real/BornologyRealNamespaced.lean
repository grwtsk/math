-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.Bounded.Variant3a7f709c3851a595206af9a381d4707b3a9256fe091e8401f00ccf12ac211a58","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a7f709c3851a595206af9a381d4707b3a9256fe091e8401f00ccf12ac211a58","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.Bounded.Variant3a7f709c3851a595206af9a381d4707b3a9256fe091e8401f00ccf12ac211a58","mathematical_subject":"Topology.MetricSpaces","original_sha256":"3a7f709c3851a595206af9a381d4707b3a9256fe091e8401f00ccf12ac211a58","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Bornology/Real.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Topology.MetricSpace.Bounded
import Mathlib.Topology.Order.Bornology

/-!
# The reals are equipped with their order bornology

This file contains results related to the order bornology on (non-negative) real numbers.
We prove that `ℝ` and `ℝ≥0` are equipped with the order topology and bornology.
-/


namespace GRWTSK.Topology.MetricTopology.Bounded.Variant3a7f709c3851a595206af9a381d4707b3a9256fe091e8401f00ccf12ac211a58

assert_not_exists IsTopologicalRing UniformContinuousConstSMul UniformOnFun

open Metric Set

instance instIsOrderBornology : IsOrderBornology ℝ where
  isBounded_iff_bddBelow_bddAbove s := by
    refine ⟨fun bdd ↦ ?_, fun h ↦ isBounded_of_bddAbove_of_bddBelow h.2 h.1⟩
    obtain ⟨r, hr⟩ : ∃ r : ℝ, s ⊆ Icc (-r) r := by
      simpa [Real.closedBall_eq_Icc] using bdd.subset_closedBall 0
    exact ⟨bddBelow_Icc.mono hr, bddAbove_Icc.mono hr⟩

namespace NNReal

/-!
Every instance is inherited from the corresponding structures on the reals.
-/

instance : OrderTopology ℝ≥0 :=
  orderTopology_of_ordConnected (t := Ici 0)

-- TODO: generalize this to a broader class of subtypes
instance : IsOrderBornology ℝ≥0 where
  isBounded_iff_bddBelow_bddAbove s := by
    refine ⟨fun bdd ↦ ?_, fun h ↦ isBounded_of_bddAbove_of_bddBelow h.2 h.1⟩
    obtain ⟨r, hr⟩ : ∃ r : ℝ≥0, s ⊆ Icc 0 r := by
      obtain ⟨rreal, hrreal⟩ := bdd.subset_closedBall 0
      use rreal.toNNReal
      simp only [← NNReal.closedBall_zero_eq_Icc', Real.coe_toNNReal']
      exact subset_trans hrreal (Metric.closedBall_subset_closedBall (le_max_left rreal 0))
    exact ⟨bddBelow_Icc.mono hr, bddAbove_Icc.mono hr⟩

end NNReal
