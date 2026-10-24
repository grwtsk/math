-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ELpNormDirac.Variant636aef221a027dc7cc31fc4b6041f35a94063f9dd299927916df7e32e4fc0173","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"636aef221a027dc7cc31fc4b6041f35a94063f9dd299927916df7e32e4fc0173","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.ELpNormDirac.Variant636aef221a027dc7cc31fc4b6041f35a94063f9dd299927916df7e32e4fc0173","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"636aef221a027dc7cc31fc4b6041f35a94063f9dd299927916df7e32e4fc0173","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/Function/LpSeminorm/Count.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
module

public import Mathlib.MeasureTheory.Function.LpSeminorm.Indicator

import Mathlib.MeasureTheory.Function.StronglyMeasurable.Lemmas

/-!
# `L^p`-seminorms on `count` and `dirac`
-/


namespace GRWTSK.Analysis.MeasureTheory.ELpNormDirac.Variant636aef221a027dc7cc31fc4b6041f35a94063f9dd299927916df7e32e4fc0173

public section

open MeasureTheory Measure ENNReal Set Filter
variable {α ε : Type*} [MeasurableSpace α] [MeasurableSingletonClass α]
  [TopologicalSpace ε] [ContinuousENorm ε] {f : α → ε} {p : ℝ≥0∞} {x : α}

namespace MeasureTheory

@[simp]
lemma eLpNorm_dirac (f : α → ε) (i : α) (hp : p ≠ 0) :
    eLpNorm f p (dirac i) = ‖f i‖ₑ := by
  have hf : AEStronglyMeasurable f (dirac i) := aestronglyMeasurable_dirac
  simp_rw [eLpNorm, hf, ite_true, ite_eq_right hp]
  split_ifs
  · simp [eLpNormEssSup, essSup, limsup, limsSup, Set.Ici_def]
  · simp [eLpNorm', ENNReal.toReal_eq_zero_iff, *]

lemma enorm_le_eLpNorm_count (f : α → ε) (i : α) (hp : p ≠ 0) :
    ‖f i‖ₑ ≤ eLpNorm f p count := by
  rw [← eLpNorm_dirac _ _ hp]
  apply eLpNorm_mono_measure
  exact le_sum dirac i

lemma eLpNorm_count_lt_top_of_lt [Finite α]
    (h : ∀ i, ‖f i‖ₑ < ∞) : eLpNorm f p .count < ∞ := by
  have := Fintype.ofFinite α
  refine (eLpNorm_mono_enorm (by fun_prop)
    (g := fun _ ↦ Finset.univ.sup (‖f ·‖ₑ)) ?_).trans_lt ?_
  · exact fun x ↦ Finset.le_sup (f := (‖f ·‖ₑ)) (Finset.mem_univ x)
  · exact (memLp_const_enorm <| by simp [h, LT.lt.ne]).eLpNorm_lt_top

lemma eLpNorm_count_lt_top [Finite α] (hp : p ≠ 0) :
    eLpNorm f p .count < ∞ ↔ ∀ i, ‖f i‖ₑ < ∞ :=
  ⟨fun h i ↦ (enorm_le_eLpNorm_count f i hp).trans_lt h,
    eLpNorm_count_lt_top_of_lt⟩

end MeasureTheory
