-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasureIccLtTop.Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasureIccLtTop.Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/BoxIntegral/Partition/Measure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.BoxIntegral.Partition.Additive
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic

/-!
# Box-additive functions defined by measures

In this file we prove a few simple facts about rectangular boxes, partitions, and measures:

- given a box `I : Box ι`, its coercion to `Set (ι → ℝ)` and `I.Icc` are measurable sets;
- if `μ` is a locally finite measure, then `(I : Set (ι → ℝ))` and `I.Icc` have finite measure;
- if `μ` is a locally finite measure, then `fun J ↦ μ.real J` is a box additive function.

For the last statement, we both prove it as a proposition and define a bundled
`BoxIntegral.BoxAdditiveMap` function.

## Tags

rectangular box, measure
-/


namespace GRWTSK.Analysis.MeasureTheory.MeasureIccLtTop.Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea

open Set

noncomputable section

open scoped ENNReal BoxIntegral

variable {ι : Type*}

namespace BoxIntegral

open MeasureTheory

namespace Box

variable (I : Box ι)

theorem measure_Icc_lt_top (μ : Measure (ι → ℝ)) [IsLocallyFiniteMeasure μ] : μ (Box.Icc I) < ∞ :=
  show μ (Icc I.lower I.upper) < ∞ from I.isCompact_Icc.measure_lt_top

theorem measure_coe_lt_top (μ : Measure (ι → ℝ)) [IsLocallyFiniteMeasure μ] : μ I < ∞ :=
  (measure_mono <| coe_subset_Icc).trans_lt (I.measure_Icc_lt_top μ)

section Countable

variable [Countable ι]

theorem measurableSet_coe : MeasurableSet (I : Set (ι → ℝ)) := by
  rw [coe_eq_pi]
  exact MeasurableSet.univ_pi fun i => measurableSet_Ioc

theorem measurableSet_Icc : MeasurableSet (Box.Icc I) :=
  _root_.measurableSet_Icc

theorem measurableSet_Ioo : MeasurableSet (Box.Ioo I) :=
  MeasurableSet.univ_pi fun _ => _root_.measurableSet_Ioo

end Countable

variable [Fintype ι]

theorem coe_ae_eq_Icc : (I : Set (ι → ℝ)) =ᵐ[volume] Box.Icc I := by
  rw [coe_eq_pi]
  exact Measure.univ_pi_Ioc_ae_eq_Icc

theorem Ioo_ae_eq_Icc : Box.Ioo I =ᵐ[volume] Box.Icc I :=
  Measure.univ_pi_Ioo_ae_eq_Icc

end Box

theorem Prepartition.measure_iUnion_toReal [Finite ι] {I : Box ι} (π : Prepartition I)
    (μ : Measure (ι → ℝ)) [IsLocallyFiniteMeasure μ] :
    μ.real π.iUnion = ∑ J ∈ π.boxes, μ.real J := by
  simp only [measureReal_def]
  rw [← ENNReal.toReal_sum (fun J _ => (J.measure_coe_lt_top μ).ne), π.iUnion_def]
  simp only [← mem_boxes]
  rw [measure_biUnion_finset π.pairwiseDisjoint]
  exact fun J _ => J.measurableSet_coe

end BoxIntegral

open BoxIntegral BoxIntegral.Box

namespace MeasureTheory

namespace Measure

/-- If `μ` is a locally finite measure on `ℝⁿ`, then `fun J ↦ μ.real J` is a box-additive
function. -/
@[simps]
def toBoxAdditive [Finite ι] (μ : Measure (ι → ℝ)) [IsLocallyFiniteMeasure μ] : ι →ᵇᵃ[⊤] ℝ where
  toFun J := μ.real J
  sum_partition_boxes' J _ π hπ := by rw [← π.measure_iUnion_toReal, hπ.iUnion_eq]

end Measure

end MeasureTheory

namespace BoxIntegral

open MeasureTheory

namespace Box

variable [Fintype ι]

-- This is not a `simp` lemma because the left hand side simplifies already.
-- See `volume_apply'` for the relevant `simp` lemma.
theorem volume_apply (I : Box ι) :
    (volume : Measure (ι → ℝ)).toBoxAdditive I = ∏ i, (I.upper i - I.lower i) := by
  rw [Measure.toBoxAdditive_apply, coe_eq_pi, measureReal_def,
    Real.volume_pi_Ioc_toReal I.lower_le_upper]

@[simp]
theorem volume_apply' (I : Box ι) :
    ((volume : Measure (ι → ℝ)) I).toReal = ∏ i, (I.upper i - I.lower i) := by
  rw [coe_eq_pi, Real.volume_pi_Ioc_toReal I.lower_le_upper]

theorem volume_face_mul {n} (i : Fin (n + 1)) (I : Box (Fin (n + 1))) :
    (∏ j, ((I.face i).upper j - (I.face i).lower j)) * (I.upper i - I.lower i) =
      ∏ j, (I.upper j - I.lower j) := by
  simp only [face_lower, face_upper, (· ∘ ·), Fin.prod_univ_succAbove _ i, mul_comm]

end Box

namespace BoxAdditiveMap

variable [Fintype ι]

/-- Box-additive map sending each box `I` to the continuous linear endomorphism
`x ↦ (volume I).toReal • x`. -/
protected def volume {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] : ι →ᵇᵃ E →L[ℝ] E :=
  (volume : Measure (ι → ℝ)).toBoxAdditive.toSMul

theorem volume_apply {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] (I : Box ι) (x : E) :
    BoxAdditiveMap.volume I x = (∏ j, (I.upper j - I.lower j)) • x := by
  rw [BoxAdditiveMap.volume, toSMul_apply]
  exact congr_arg₂ (· • ·) I.volume_apply rfl

end BoxAdditiveMap

end BoxIntegral
