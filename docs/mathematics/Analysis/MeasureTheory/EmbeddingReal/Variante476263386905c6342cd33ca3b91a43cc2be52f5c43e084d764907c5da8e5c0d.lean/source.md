# Complete source: GRWTSK.Analysis.MeasureTheory.EmbeddingReal.Variante476263386905c6342cd33ca3b91a43cc2be52f5c43e084d764907c5da8e5c0d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8000aad9a663d4d69cda25a6b13ebc0a9248673` · SHA-256 `177731fda2a33e7bb8b17b064a31f1b096c4a316595dde3d6392077aac5a4eea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ExistsNatMeasurableEquivRangeCoeFinOfFinite.Variant76926295ee58e30ed649053bc99347d1bb3fbde495a02727525959d8ee0b5a5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76926295ee58e30ed649053bc99347d1bb3fbde495a02727525959d8ee0b5a5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.ExistsNatMeasurableEquivRangeCoeFinOfFinite.Variant76926295ee58e30ed649053bc99347d1bb3fbde495a02727525959d8ee0b5a5b","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"76926295ee58e30ed649053bc99347d1bb3fbde495a02727525959d8ee0b5a5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/Constructions/Polish/EmbeddingReal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
module

public import Mathlib.Analysis.Real.Cardinality
public import Mathlib.MeasureTheory.Constructions.Polish.Basic

/-!
# A Polish Borel space is measurably equivalent to a set of reals
-/


namespace GRWTSK.Analysis.MeasureTheory.ExistsNatMeasurableEquivRangeCoeFinOfFinite.Variant76926295ee58e30ed649053bc99347d1bb3fbde495a02727525959d8ee0b5a5b

@[expose] public section

open Set Function PolishSpace TopologicalSpace Topology MeasureTheory

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
      exact (Set.finite_range ((↑) : Fin n → ℝ)).measurableSet
    · refine ⟨_, ?_, measurableEquiv_range_coe_nat_of_infinite_of_countable α⟩
      exact Nat.isClosedEmbedding_coe_real.isClosed_range.measurableSet
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
