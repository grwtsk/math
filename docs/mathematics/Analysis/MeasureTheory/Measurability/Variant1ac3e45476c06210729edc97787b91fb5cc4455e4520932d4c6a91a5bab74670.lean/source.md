# Complete source: GRWTSK.Analysis.MeasureTheory.Measurability.Variant1ac3e45476c06210729edc97787b91fb5cc4455e4520932d4c6a91a5bab74670

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `150f6d0025a7893ebf3874f679a8941b7e731e0a` · SHA-256 `83d95000c044603e585230925f3f5cf02c27ae10c8612004b80ce569f20c2d05`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableSpace.Variant70738a0d64c1a7ad92356c485e8e3681a36404fe3bd51b05c7131141c6710c4f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70738a0d64c1a7ad92356c485e8e3681a36404fe3bd51b05c7131141c6710c4f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableSpace.Variant70738a0d64c1a7ad92356c485e8e3681a36404fe3bd51b05c7131141c6710c4f","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"70738a0d64c1a7ad92356c485e8e3681a36404fe3bd51b05c7131141c6710c4f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/measurability.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
import Mathlib.MeasureTheory.MeasurableSpace.Basic
import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic
import Mathlib.MeasureTheory.Function.SpecialFunctions.Basic
import Mathlib.MeasureTheory.Function.SpecialFunctions.Inner
import Mathlib.MeasureTheory.Function.StronglyMeasurable.Lemmas



namespace GRWTSK.Analysis.MeasureTheory.MeasurableSpace.Variant70738a0d64c1a7ad92356c485e8e3681a36404fe3bd51b05c7131141c6710c4f

open MeasureTheory TopologicalSpace

variable {α β : Type*} [MeasurableSpace α] [MeasurableSpace β]
  {f g : α → β} {s₁ s₂ : Set α} {t₁ t₂ : Set β} {μ ν : MeasureTheory.Measure α}

set_option linter.unusedVariables false

-- Test the use of assumption

example (hf : Measurable f) : Measurable f := by measurability

-- Test that intro does not unfold `Measurable`

example : Measurable f → Measurable f := by measurability

-- Test the use of apply_assumption to get (h i) from a hypothesis (h : ∀ i, ...).

example {F : ℕ → α → β} (hF : ∀ i, Measurable (F i)) : Measurable (F 0) := by measurability

example {ι} [Encodable ι] {S₁ S₂ : ι → Set α} (hS₁ : ∀ i, MeasurableSet (S₁ i))
    (hS₂ : ∀ i, MeasurableSet (S₂ i)) : MeasurableSet (⋃ i, (S₁ i) ∪ (S₂ i)) := by measurability

-- Tests on sets

example (hs₁ : MeasurableSet s₁) (hs₂ : MeasurableSet s₂) : MeasurableSet (s₁ ∪ s₁) := by
  measurability

example {ι} [Encodable ι] {S : ι → Set α} (hs : ∀ i, MeasurableSet (S i)) :
    MeasurableSet (⋃ i, S i) := by measurability

example (hf : Measurable f) (hs₁ : MeasurableSet s₁) (ht₂ : MeasurableSet t₂) :
    MeasurableSet ((f ⁻¹' t₂) ∩ s₁) := by measurability

-- Strong measurability
section strong_measurability

variable [TopologicalSpace β] [PseudoMetrizableSpace β] [BorelSpace β]

-- Test the use of apply_assumption to get (h i) from a hypothesis (h : ∀ i, ...).

example {F : ℕ → α → β} (hF : ∀ i, StronglyMeasurable (F i)) : Measurable (F 0) := by
  measurability

example [Zero β] {F : ℕ → α → β} (hF : ∀ i, AEFinStronglyMeasurable (F i) μ) :
    AEMeasurable (F 0) μ := by measurability

example {ι} [Encodable ι] {S₁ S₂ : ι → Set α} (hS₁ : ∀ i, MeasurableSet (S₁ i))
    (hS₂ : ∀ i, MeasurableSet (S₂ i)) : MeasurableSet (⋃ i, (S₁ i) ∪ (S₂ i)) := by measurability

end strong_measurability

/-- `ℝ` is a good test case because it verifies many assumptions, hence many lemmas apply and we
are more likely to detect a bad lemma. In a previous version of the tactic, `measurability` got
stuck trying to apply `Set.Finite.MeasurableSet` here. -/
example {a b : ℝ} : MeasurableSet (Set.Icc a b) := by measurability

-- Tests on functions

example [Mul β] [MeasurableMul₂ β] (hf : Measurable f) (c : β) :
    Measurable (fun x => c * f x) := by measurability  -- uses const_mul, not mul

example [Add β] [MeasurableAdd₂ β] (hf : Measurable f) (hg : Measurable g) :
    Measurable (fun x => f x + g x) := by measurability

example [Add β] [MeasurableAdd₂ β] (hf : Measurable f) (hg : AEMeasurable g μ) :
    AEMeasurable (fun x => f x + g x) μ := by measurability

example [Div β] [MeasurableDiv₂ β] (hf : Measurable f) (hg : Measurable g)
    (ht : MeasurableSet t₂) : MeasurableSet ((fun x => f x / g x) ⁻¹' t₂) := by measurability

example [AddCommMonoid β] [MeasurableAdd₂ β] {s : Finset ℕ} {F : ℕ → α → β}
    (hF : ∀ i, Measurable (F i)) : Measurable (∑ i ∈ s, (fun x => F (i+1) x + F i x)) := by
  fun_prop

example [AddCommMonoid β] [MeasurableAdd₂ β] {s : Finset ℕ} {F : ℕ → α → β}
    (hF : ∀ i, AEMeasurable (F i) μ) : AEMeasurable (∑ i ∈ s, (fun x => F (i+1) x + F i x)) μ := by
  measurability

-- even with many assumptions, the tactic is not trapped by a bad lemma
example [TopologicalSpace α] [BorelSpace α] [NormedAddCommGroup β] [BorelSpace β]
    [MeasurableAdd₂ β] [MeasurableSub₂ β] {s : Finset ℕ} {F : ℕ → α → β}
    (hF : ∀ i, Measurable (F i)) : AEMeasurable (∑ i ∈ s, (fun x => F (i+1) x - F i x)) μ := by
  measurability

open scoped RealInnerProductSpace

example : Measurable (fun x : ℝ => Real.exp (2 * ⟪3, x⟫)) := by measurability

example : StronglyMeasurable (fun x : ℝ => Real.exp (2 * ⟪3, x⟫)) := by measurability

example {γ : MeasureTheory.Measure ℝ} :
  AEMeasurable (fun x : ℝ => Real.exp (2 * ⟪3, x⟫)) γ := by measurability

example {γ : MeasureTheory.Measure ℝ} :
  AEStronglyMeasurable (fun x : ℝ => Real.exp (2 * ⟪3, x⟫)) γ := by measurability

example {γ : MeasureTheory.Measure ℝ} [SigmaFinite γ] :
  FinStronglyMeasurable (fun x : ℝ => Real.exp (2 * ⟪3, x⟫)) γ := by measurability

example {γ : MeasureTheory.Measure ℝ} [SigmaFinite γ] :
  AEFinStronglyMeasurable (fun x : ℝ => Real.exp (2 * ⟪3, x⟫)) γ := by measurability

/-- An older version of the tactic failed in the presence of a negated hypothesis due to an
internal call to `apply_assumption`. -/
example {ι : Type _} (i k : ι) (hik : i ≠ k) : Measurable (id : α → α) := by measurability

--This search problem loops (StronglyMeasurable -> Measurable -> StronglyMeasurable) but fails
--quickly nevertheless.
--example (f : ℝ → ℝ) : StronglyMeasurable f := by measurability
```
