-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.DenseRangeRatCast.Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.DenseRangeRatCast.Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Order/Real.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Data.EReal.Basic
import Mathlib.Topology.Order.T5

/-!
# The reals are equipped with their order topology

This file contains results related to the order topology on (extended) (non-negative) real numbers.
We
- prove that `ℝ` and `ℝ≥0` are equipped with the order topology and bornology,
- endow `EReal` with the order topology (and prove some very basic lemmas),
- define the topology `ℝ≥0∞` (which is the order topology, *not* the `EMetricSpace` topology)
-/


namespace GRWTSK.Topology.GeneralTopology.DenseRangeRatCast.Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd

assert_not_exists IsTopologicalRing UniformSpace

open Set

namespace EReal

/-!
### Topological structure on `EReal`

We endow `EReal` with the order topology.
Most proofs are adapted from the corresponding proofs on `ℝ≥0∞`.
-/

instance : TopologicalSpace EReal := Preorder.topology EReal
instance : OrderTopology EReal := ⟨rfl⟩

instance : T5Space EReal := inferInstance
instance : T2Space EReal := inferInstance

lemma denseRange_ratCast : DenseRange (fun r : ℚ ↦ ((r : ℝ) : EReal)) :=
  dense_of_exists_between fun _ _ h => exists_range_iff.2 <| exists_rat_btwn_of_lt h

end EReal

namespace ENNReal

/-- Topology on `ℝ≥0∞`.

Note: this is different from the `EMetricSpace` topology. The `EMetricSpace` topology has
`IsOpen {∞}`, while this topology doesn't have singleton elements. -/
instance : TopologicalSpace ℝ≥0∞ := Preorder.topology ℝ≥0∞

instance : OrderTopology ℝ≥0∞ := ⟨rfl⟩

-- short-circuit type class inference
instance : T2Space ℝ≥0∞ := inferInstance
instance : T5Space ℝ≥0∞ := inferInstance
instance : T4Space ℝ≥0∞ := inferInstance

end ENNReal
