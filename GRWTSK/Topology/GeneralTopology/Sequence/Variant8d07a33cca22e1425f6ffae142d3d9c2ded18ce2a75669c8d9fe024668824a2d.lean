-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.NatUnionInftyEmbedding.Variant1c16717074192edfea1939ba2000a1e9d1ba9210d8c0b05e4ab7c08bd47f36fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c16717074192edfea1939ba2000a1e9d1ba9210d8c0b05e4ab7c08bd47f36fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.NatUnionInftyEmbedding.Variant1c16717074192edfea1939ba2000a1e9d1ba9210d8c0b05e4ab7c08bd47f36fc","mathematical_subject":"Topology.GeneralTopology","original_sha256":"1c16717074192edfea1939ba2000a1e9d1ba9210d8c0b05e4ab7c08bd47f36fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Category/LightProfinite/Sequence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.Topology.Compactification.OnePoint.Basic
public import Mathlib.Topology.Category.LightProfinite.Basic
/-!

# The light profinite set classifying convergent sequences

This file defines the light profinite set `ℕ∪{∞}`, defined as the one point compactification of
`ℕ`.
-/


namespace GRWTSK.Topology.GeneralTopology.NatUnionInftyEmbedding.Variant1c16717074192edfea1939ba2000a1e9d1ba9210d8c0b05e4ab7c08bd47f36fc

@[expose] public section

open CategoryTheory OnePoint TopologicalSpace Topology

namespace LightProfinite

/-- The continuous map from `ℕ∪{∞}` to `ℝ` sending `n` to `1/(n+1)` and `∞` to `0`. -/
noncomputable def natUnionInftyEmbedding : C(OnePoint ℕ, ℝ) where
  toFun
    | ∞ => 0
    | OnePoint.some n => 1 / (n + 1 : ℝ)
  continuous_toFun := OnePoint.continuous_iff_from_nat _ |>.mpr
    tendsto_one_div_add_atTop_nhds_zero_nat

/--
The continuous map from `ℕ∪{∞}` to `ℝ` sending `n` to `1/(n+1)` and `∞` to `0` is a closed
embedding.
-/
lemma isClosedEmbedding_natUnionInftyEmbedding : IsClosedEmbedding natUnionInftyEmbedding := by
  refine .of_continuous_injective_isClosedMap
    natUnionInftyEmbedding.continuous ?_ ?_
  · rintro (_ | n) (_ | m) h
    · rfl
    · simp only [natUnionInftyEmbedding, one_div, ContinuousMap.coe_mk, zero_eq_inv] at h
      assumption_mod_cast
    · simp only [natUnionInftyEmbedding, one_div, ContinuousMap.coe_mk, inv_eq_zero] at h
      assumption_mod_cast
    · simp only [natUnionInftyEmbedding, one_div, ContinuousMap.coe_mk, inv_inj, add_left_inj,
        Nat.cast_inj] at h
      rw [h]
  · exact fun _ hC => (hC.isCompact.image natUnionInftyEmbedding.continuous).isClosed

instance : MetrizableSpace (OnePoint ℕ) := isClosedEmbedding_natUnionInftyEmbedding.metrizableSpace

/-- The one point compactification of the natural numbers as a light profinite set. -/
abbrev NatUnionInfty : LightProfinite := of (OnePoint ℕ)

@[inherit_doc]
scoped notation "ℕ∪{∞}" => NatUnionInfty

instance : Countable ℕ∪{∞} := (inferInstance : Countable <| Option _)

instance : Coe ℕ ℕ∪{∞} := optionCoe

open Filter

open scoped Topology

lemma continuous_iff_convergent {Y : Type*} [TopologicalSpace Y] (f : ℕ∪{∞} → Y) :
    Continuous f ↔ Tendsto (fun x : ℕ ↦ f x) atTop (𝓝 (f ∞)) :=
  continuous_iff_from_nat f

end LightProfinite
