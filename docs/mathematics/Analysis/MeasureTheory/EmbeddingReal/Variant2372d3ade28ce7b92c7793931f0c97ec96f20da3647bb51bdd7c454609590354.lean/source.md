# Complete source: GRWTSK.Analysis.MeasureTheory.EmbeddingReal.Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c38dafd8a2f841d4ff3a8836bf2c14f2e54b0b4` · SHA-256 `5b304931686604ca0cbcb1dd55cc5c62efb870b714d3ddba79646301befbb81f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ExistsNatMeasurableEquivRangeCoeFinOfFinite.Variant9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.ExistsNatMeasurableEquivRangeCoeFinOfFinite.Variant9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Constructions/Polish/EmbeddingReal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
import Mathlib.Data.Real.Cardinality
import Mathlib.MeasureTheory.Constructions.Polish.Basic

/-!
# A Polish Borel space is measurably equivalent to a set of reals
-/


namespace GRWTSK.Analysis.MeasureTheory.ExistsNatMeasurableEquivRangeCoeFinOfFinite.Variant9b18e502a95fc3b32f0fd99d0668402a6a5f33a6bf7ffda1f45638cf72bc7908

open Set Function PolishSpace PiNat TopologicalSpace Bornology Metric Filter Topology MeasureTheory

namespace MeasureTheory
variable (α : Type*) [MeasurableSpace α] [StandardBorelSpace α]

theorem exists_nat_measurableEquiv_range_coe_fin_of_finite [Finite α] :
    ∃ n : ℕ, Nonempty (α ≃ᵐ range ((↑) : Fin n → ℝ)) := by
  obtain ⟨n, ⟨n_equiv⟩⟩ := Finite.exists_equiv_fin α
  refine ⟨n, ⟨PolishSpace.Equiv.measurableEquiv (n_equiv.trans ?_)⟩⟩
  exact Equiv.ofInjective _ (Nat.cast_injective.comp Fin.val_injective)

theorem measurableEquiv_range_coe_nat_of_infinite_of_countable [Infinite α] [Countable α] :
    Nonempty (α ≃ᵐ range ((↑) : ℕ → ℝ)) := by
  have : PolishSpace (range ((↑) : ℕ → ℝ)) :=
    Nat.isClosedEmbedding_coe_real.isClosedMap.isClosed_range.polishSpace
  refine ⟨PolishSpace.Equiv.measurableEquiv ?_⟩
  refine (nonempty_equiv_of_countable.some : α ≃ ℕ).trans ?_
  exact Equiv.ofInjective ((↑) : ℕ → ℝ) Nat.cast_injective

/-- Any standard Borel space is measurably equivalent to a subset of the reals. -/
theorem exists_subset_real_measurableEquiv : ∃ s : Set ℝ, MeasurableSet s ∧ Nonempty (α ≃ᵐ s) := by
  by_cases hα : Countable α
  · cases finite_or_infinite α
    · obtain ⟨n, h_nonempty_equiv⟩ := exists_nat_measurableEquiv_range_coe_fin_of_finite α
      refine ⟨_, ?_, h_nonempty_equiv⟩
      letI : MeasurableSpace (Fin n) := borel (Fin n)
      haveI : BorelSpace (Fin n) := ⟨rfl⟩
      apply MeasurableEmbedding.measurableSet_range (mα := by infer_instance)
      exact continuous_of_discreteTopology.measurableEmbedding
        (Nat.cast_injective.comp Fin.val_injective)
    · refine ⟨_, ?_, measurableEquiv_range_coe_nat_of_infinite_of_countable α⟩
      apply MeasurableEmbedding.measurableSet_range (mα := by infer_instance)
      exact continuous_of_discreteTopology.measurableEmbedding Nat.cast_injective
  · refine
      ⟨univ, MeasurableSet.univ,
        ⟨(PolishSpace.measurableEquivOfNotCountable hα ?_ : α ≃ᵐ (univ : Set ℝ))⟩⟩
    rw [countable_coe_iff]
    exact Cardinal.not_countable_real

/-- Any standard Borel space embeds measurably into the reals. -/
theorem exists_measurableEmbedding_real : ∃ f : α → ℝ, MeasurableEmbedding f := by
  obtain ⟨s, hs, ⟨e⟩⟩ := exists_subset_real_measurableEquiv α
  exact ⟨(↑) ∘ e, (MeasurableEmbedding.subtype_coe hs).comp e.measurableEmbedding⟩

/-- A measurable embedding of a standard Borel space into `ℝ`. -/
noncomputable
def embeddingReal (Ω : Type*) [MeasurableSpace Ω] [StandardBorelSpace Ω] : Ω → ℝ :=
  (exists_measurableEmbedding_real Ω).choose

lemma measurableEmbedding_embeddingReal (Ω : Type*) [MeasurableSpace Ω] [StandardBorelSpace Ω] :
    MeasurableEmbedding (embeddingReal Ω) :=
  (exists_measurableEmbedding_real Ω).choose_spec

@[fun_prop]
lemma measurable_embeddingReal (Ω : Type*) [MeasurableSpace Ω] [StandardBorelSpace Ω] :
    Measurable (embeddingReal Ω) :=
  (measurableEmbedding_embeddingReal Ω).measurable

end MeasureTheory
```
