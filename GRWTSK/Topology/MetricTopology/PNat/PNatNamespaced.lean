-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.DistEq.Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.DistEq.Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe","mathematical_subject":"Topology.MetricSpaces","original_sha256":"3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Instances/PNat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/
import Mathlib.Topology.Instances.Nat

/-!
# Topology on the positive natural numbers

The structure of a metric space on `ℕ+` is introduced in this file, induced from `ℝ`.
-/


namespace GRWTSK.Topology.MetricTopology.DistEq.Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe

noncomputable section

open Metric

namespace PNat

instance : MetricSpace ℕ+ := inferInstanceAs (MetricSpace { n : ℕ // 0 < n })

theorem dist_eq (x y : ℕ+) : dist x y = |(↑x : ℝ) - ↑y| := rfl

@[simp, norm_cast]
theorem dist_coe (x y : ℕ+) : dist (↑x : ℕ) (↑y : ℕ) = dist x y := rfl

theorem isUniformEmbedding_coe : IsUniformEmbedding ((↑) : ℕ+ → ℕ) := isUniformEmbedding_subtype_val

instance : DiscreteTopology ℕ+ := inferInstanceAs (DiscreteTopology { n : ℕ // 0 < n })

instance : ProperSpace ℕ+ where
  isCompact_closedBall n r := by
    change IsCompact (((↑) : ℕ+ → ℕ) ⁻¹' closedBall (↑n : ℕ) r)
    rw [Nat.closedBall_eq_Icc]
    exact ((Set.finite_Icc _ _).preimage PNat.coe_injective.injOn).isCompact

instance : NoncompactSpace ℕ+ :=
  noncompactSpace_of_neBot <| by simp only [Filter.cocompact_eq_cofinite, Filter.cofinite_neBot]

end PNat
