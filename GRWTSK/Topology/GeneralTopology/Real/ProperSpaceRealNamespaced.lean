-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Encodable.Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Encodable.Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64","mathematical_subject":"Topology.GeneralTopology","original_sha256":"7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/MetricSpace/ProperSpace/Real.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Data.Rat.Encodable
import Mathlib.Topology.MetricSpace.Isometry
import Mathlib.Topology.MetricSpace.ProperSpace
import Mathlib.Topology.Order.Compact
import Mathlib.Topology.Order.MonotoneContinuity
import Mathlib.Topology.Order.Real
import Mathlib.Topology.UniformSpace.Real

/-!
# Second countability of the reals

We prove that `ℝ`, `EReal`, `ℝ≥0` and `ℝ≥0∞` are second countable.
In the process, we also provide instances `ProperSpace ℝ` and `ProperSpace ℝ≥0`.
-/


namespace GRWTSK.Topology.GeneralTopology.Encodable.Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64

assert_not_exists IsTopologicalRing UniformContinuousConstSMul UniformOnFun

noncomputable section

open Set Topology TopologicalSpace

instance : ProperSpace ℝ where
  isCompact_closedBall x r := by
    rw [Real.closedBall_eq_Icc]
    apply isCompact_Icc

instance : SecondCountableTopology ℝ := secondCountable_of_proper

namespace EReal

instance : SecondCountableTopology EReal :=
  have : SeparableSpace EReal := ⟨⟨_, countable_range _, denseRange_ratCast⟩⟩
  .of_separableSpace_orderTopology _

end EReal

namespace NNReal

/-!
Instances for `ℝ≥0` are inherited from the corresponding structures on the reals.
-/

instance : SecondCountableTopology ℝ≥0 :=
  inferInstanceAs (SecondCountableTopology { x : ℝ | 0 ≤ x })

instance instProperSpace : ProperSpace ℝ≥0 where
  isCompact_closedBall x r := by
    have emb : IsClosedEmbedding ((↑) : ℝ≥0 → ℝ) := Isometry.isClosedEmbedding fun _ ↦ congrFun rfl
    exact emb.isCompact_preimage (K := Metric.closedBall x r) (isCompact_closedBall _ _)

end NNReal

namespace ENNReal

instance : SecondCountableTopology ℝ≥0∞ :=
  orderIsoUnitIntervalBirational.toHomeomorph.isEmbedding.secondCountableTopology

end ENNReal
