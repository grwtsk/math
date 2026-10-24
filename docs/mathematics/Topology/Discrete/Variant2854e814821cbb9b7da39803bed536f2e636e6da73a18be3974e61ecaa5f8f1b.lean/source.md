# Complete source: GRWTSK.Topology.Discrete.Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc2ea58632e795f6e9ab23908fb3a7c864441766` · SHA-256 `17584e8d0763b1a1673e806541ed952e3c91cd676c67f6f53c824f5fe12aa40d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.LinearOrderBotTopologicalSpaceEqPreorderTopology.Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.LinearOrderBotTopologicalSpaceEqPreorderTopology.Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Instances/Discrete.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
module

public import Mathlib.Topology.Order.Basic
public import Mathlib.Order.SuccPred.LinearLocallyFinite

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


namespace GRWTSK.Topology.LinearOrderBotTopologicalSpaceEqPreorderTopology.Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562

public section


open Set TopologicalSpace Filter

variable {α : Type*} [TopologicalSpace α]

instance (priority := 100) DiscreteTopology.firstCountableTopology [DiscreteTopology α] :
    FirstCountableTopology α where
  nhds_generated_countable := by rw [nhds_discrete]; exact isCountablyGenerated_pure

instance (priority := 100) DiscreteTopology.secondCountableTopology_of_countable
    [hd : DiscreteTopology α] [Countable α] : SecondCountableTopology α :=
  haveI : ∀ i : α, SecondCountableTopology (↥({i} : Set α)) := fun i =>
    { is_open_generated_countable :=
        ⟨{univ}, countable_singleton _, by simp only [eq_iff_true_of_subsingleton]⟩ }
  secondCountableTopology_of_countable_cover (fun _ ↦ isOpen_discrete _)
    (iUnion_of_singleton α)

theorem LinearOrder.bot_topologicalSpace_eq_preorderTopology {α} [LinearOrder α] [PredOrder α]
    [SuccOrder α] : (⊥ : TopologicalSpace α) = Preorder.topology α := by
  let _ := Preorder.topology α
  have : OrderTopology α := ⟨rfl⟩
  exact DiscreteTopology.of_predOrder_succOrder.eq_bot.symm

@[deprecated (since := "2026-03-22")]
alias LinearOrder.bot_topologicalSpace_eq_generateFrom :=
  LinearOrder.bot_topologicalSpace_eq_preorderTopology

theorem discreteTopology_iff_orderTopology_of_pred_succ [LinearOrder α] [PredOrder α]
    [SuccOrder α] : DiscreteTopology α ↔ OrderTopology α := by
  refine ⟨fun h ↦ ⟨?_⟩, fun h ↦ .of_predOrder_succOrder⟩
  rw [h.eq_bot, LinearOrder.bot_topologicalSpace_eq_preorderTopology]

instance OrderTopology.of_discreteTopology [LinearOrder α] [PredOrder α] [SuccOrder α]
    [DiscreteTopology α] : OrderTopology α :=
  discreteTopology_iff_orderTopology_of_pred_succ.mp ‹_›

instance OrderTopology.of_linearLocallyFinite
    [LinearOrder α] [LocallyFiniteOrder α] [DiscreteTopology α] : OrderTopology α :=
  haveI := LinearLocallyFiniteOrder.succOrder α
  haveI := LinearLocallyFiniteOrder.predOrder α
  inferInstance
```
