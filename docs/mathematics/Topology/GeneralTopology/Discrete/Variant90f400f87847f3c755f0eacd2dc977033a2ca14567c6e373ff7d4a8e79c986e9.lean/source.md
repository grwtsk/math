# Complete source: GRWTSK.Topology.GeneralTopology.Discrete.Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78cd887693d5aa55cc26a253cc4bdb9f4e157f61` · SHA-256 `7172cc39b966280cf78e9d5d05e2e386b50f2bd573fe949da4ce05ddd0cf2e67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.BotTopologicalSpaceEqGenerateFromOfPredSuccOrder.Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.BotTopologicalSpaceEqGenerateFromOfPredSuccOrder.Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6","mathematical_subject":"Topology.GeneralTopology","original_sha256":"8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Instances/Discrete.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
import Mathlib.Order.SuccPred.Basic
import Mathlib.Topology.Order.Basic
import Mathlib.Topology.MetricSpace.MetrizableUniformity


namespace GRWTSK.Topology.GeneralTopology.BotTopologicalSpaceEqGenerateFromOfPredSuccOrder.Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6

#align_import topology.instances.discrete from "leanprover-community/mathlib"@"bcfa726826abd57587355b4b5b7e78ad6527b7e4"

/-!
# Instances related to the discrete topology

We prove that the discrete topology is
* first-countable,
* second-countable for an encodable type,
* equal to the order topology in linear orders which are also `PredOrder` and `SuccOrder`,
* metrizable.

When importing this file and `Data.Nat.SuccPred`, the instances `SecondCountableTopology ℕ`
and `OrderTopology ℕ` become available.

-/


open Order Set TopologicalSpace Filter

variable {α : Type*} [TopologicalSpace α]

instance (priority := 100) DiscreteTopology.firstCountableTopology [DiscreteTopology α] :
    FirstCountableTopology α where
  nhds_generated_countable := by rw [nhds_discrete]; exact isCountablyGenerated_pure
#align discrete_topology.first_countable_topology DiscreteTopology.firstCountableTopology

instance (priority := 100) DiscreteTopology.secondCountableTopology_of_encodable
    [hd : DiscreteTopology α] [Encodable α] : SecondCountableTopology α :=
  haveI : ∀ i : α, SecondCountableTopology (↥({i} : Set α)) := fun i =>
    { is_open_generated_countable :=
        ⟨{univ}, countable_singleton _, by simp only [eq_iff_true_of_subsingleton]⟩ }
  secondCountableTopology_of_countable_cover (singletons_open_iff_discrete.mpr hd)
    (iUnion_of_singleton α)
#align discrete_topology.second_countable_topology_of_encodable DiscreteTopology.secondCountableTopology_of_encodable

theorem bot_topologicalSpace_eq_generateFrom_of_pred_succOrder [PartialOrder α] [PredOrder α]
    [SuccOrder α] [NoMinOrder α] [NoMaxOrder α] :
    (⊥ : TopologicalSpace α) = generateFrom { s | ∃ a, s = Ioi a ∨ s = Iio a } := by
  refine' (eq_bot_of_singletons_open fun a => _).symm
  have h_singleton_eq_inter : {a} = Iio (succ a) ∩ Ioi (pred a) := by
    suffices h_singleton_eq_inter' : {a} = Iic a ∩ Ici a
    · rw [h_singleton_eq_inter', ← Ioi_pred, ← Iio_succ]
    rw [inter_comm, Ici_inter_Iic, Icc_self a]
  rw [h_singleton_eq_inter]
  -- Porting note: Specified instance for `IsOpen.inter` explicitly to fix an error.
  apply @IsOpen.inter _ _ _ (generateFrom { s | ∃ a, s = Ioi a ∨ s = Iio a })
  · exact isOpen_generateFrom_of_mem ⟨succ a, Or.inr rfl⟩
  · exact isOpen_generateFrom_of_mem ⟨pred a, Or.inl rfl⟩
#align bot_topological_space_eq_generate_from_of_pred_succ_order bot_topologicalSpace_eq_generateFrom_of_pred_succOrder

theorem discreteTopology_iff_orderTopology_of_pred_succ' [PartialOrder α] [PredOrder α]
    [SuccOrder α] [NoMinOrder α] [NoMaxOrder α] : DiscreteTopology α ↔ OrderTopology α := by
  refine' ⟨fun h => ⟨_⟩, fun h => ⟨_⟩⟩
  · rw [h.eq_bot]
    exact bot_topologicalSpace_eq_generateFrom_of_pred_succOrder
  · rw [h.topology_eq_generate_intervals]
    exact bot_topologicalSpace_eq_generateFrom_of_pred_succOrder.symm
#align discrete_topology_iff_order_topology_of_pred_succ' discreteTopology_iff_orderTopology_of_pred_succ'

instance (priority := 100) DiscreteTopology.orderTopology_of_pred_succ' [h : DiscreteTopology α]
    [PartialOrder α] [PredOrder α] [SuccOrder α] [NoMinOrder α] [NoMaxOrder α] : OrderTopology α :=
  discreteTopology_iff_orderTopology_of_pred_succ'.1 h
#align discrete_topology.order_topology_of_pred_succ' DiscreteTopology.orderTopology_of_pred_succ'

theorem LinearOrder.bot_topologicalSpace_eq_generateFrom [LinearOrder α] [PredOrder α]
    [SuccOrder α] : (⊥ : TopologicalSpace α) = generateFrom { s | ∃ a, s = Ioi a ∨ s = Iio a } := by
  refine' (eq_bot_of_singletons_open fun a => _).symm
  have h_singleton_eq_inter : {a} = Iic a ∩ Ici a := by rw [inter_comm, Ici_inter_Iic, Icc_self a]
  by_cases ha_top : IsTop a
  · rw [ha_top.Iic_eq, inter_comm, inter_univ] at h_singleton_eq_inter
    by_cases ha_bot : IsBot a
    · rw [ha_bot.Ici_eq] at h_singleton_eq_inter
      rw [h_singleton_eq_inter]
      -- Porting note: Specified instance for `isOpen_univ` explicitly to fix an error.
      apply @isOpen_univ _ (generateFrom { s | ∃ a, s = Ioi a ∨ s = Iio a })
    · rw [isBot_iff_isMin] at ha_bot
      rw [← Ioi_pred_of_not_isMin ha_bot] at h_singleton_eq_inter
      rw [h_singleton_eq_inter]
      exact isOpen_generateFrom_of_mem ⟨pred a, Or.inl rfl⟩
  · rw [isTop_iff_isMax] at ha_top
    rw [← Iio_succ_of_not_isMax ha_top] at h_singleton_eq_inter
    by_cases ha_bot : IsBot a
    · rw [ha_bot.Ici_eq, inter_univ] at h_singleton_eq_inter
      rw [h_singleton_eq_inter]
      exact isOpen_generateFrom_of_mem ⟨succ a, Or.inr rfl⟩
    · rw [isBot_iff_isMin] at ha_bot
      rw [← Ioi_pred_of_not_isMin ha_bot] at h_singleton_eq_inter
      rw [h_singleton_eq_inter]
      -- Porting note: Specified instance for `IsOpen.inter` explicitly to fix an error.
      apply @IsOpen.inter _ _ _ (generateFrom { s | ∃ a, s = Ioi a ∨ s = Iio a })
      · exact isOpen_generateFrom_of_mem ⟨succ a, Or.inr rfl⟩
      · exact isOpen_generateFrom_of_mem ⟨pred a, Or.inl rfl⟩
#align linear_order.bot_topological_space_eq_generate_from LinearOrder.bot_topologicalSpace_eq_generateFrom

theorem discreteTopology_iff_orderTopology_of_pred_succ [LinearOrder α] [PredOrder α]
    [SuccOrder α] : DiscreteTopology α ↔ OrderTopology α := by
  refine' ⟨fun h => ⟨_⟩, fun h => ⟨_⟩⟩
  · rw [h.eq_bot]
    exact LinearOrder.bot_topologicalSpace_eq_generateFrom
  · rw [h.topology_eq_generate_intervals]
    exact LinearOrder.bot_topologicalSpace_eq_generateFrom.symm
#align discrete_topology_iff_order_topology_of_pred_succ discreteTopology_iff_orderTopology_of_pred_succ

instance (priority := 100) DiscreteTopology.orderTopology_of_pred_succ [h : DiscreteTopology α]
    [LinearOrder α] [PredOrder α] [SuccOrder α] : OrderTopology α :=
  discreteTopology_iff_orderTopology_of_pred_succ.mp h
#align discrete_topology.order_topology_of_pred_succ DiscreteTopology.orderTopology_of_pred_succ

instance (priority := 100) DiscreteTopology.metrizableSpace [DiscreteTopology α] :
    MetrizableSpace α := by
  obtain rfl := DiscreteTopology.eq_bot (α := α)
  exact @UniformSpace.metrizableSpace α ⊥ (isCountablyGenerated_principal _) _
#align discrete_topology.metrizable_space DiscreteTopology.metrizableSpace
```
