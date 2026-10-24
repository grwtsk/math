# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Integrable.Variant7b5a9dda8f8fa1c6914ae42bf05ff36ee9b6a96cbc0f8432ea61f674a92fac94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d13e24dfe684c670f0dd0e15c42bfb899917b0cb` · SHA-256 `775ca78cfae09573c9e98ab7e186f81b58bad08de36f5f555624ec421140d888`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.MemLpIsProbabilityMeasureOfIndepFun.Variantc71e512a93e4c5cb47cd982181264dd3d059652afc7033f3f4dd67461dc009c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c71e512a93e4c5cb47cd982181264dd3d059652afc7033f3f4dd67461dc009c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.MemLpIsProbabilityMeasureOfIndepFun.Variantc71e512a93e4c5cb47cd982181264dd3d059652afc7033f3f4dd67461dc009c1","mathematical_subject":"Probability.Independence","original_sha256":"c71e512a93e4c5cb47cd982181264dd3d059652afc7033f3f4dd67461dc009c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Probability/Independence/Integrable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.MeasureTheory.Function.L1Space.Integrable
import Mathlib.Probability.Independence.Basic

/-!
# Independence of functions implies that the measure is a probability measure

If a nonzero function belongs to `ℒ^p` (in particular if it is integrable) and is independent
of another function, then the space is a probability space.

-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.MemLpIsProbabilityMeasureOfIndepFun.Variantc71e512a93e4c5cb47cd982181264dd3d059652afc7033f3f4dd67461dc009c1

open Filter ProbabilityTheory

open scoped ENNReal NNReal Topology

namespace MeasureTheory

variable {Ω E F : Type*} [MeasurableSpace Ω] {μ : Measure Ω}
  [NormedAddCommGroup E] [MeasurableSpace E] [OpensMeasurableSpace E]
  [MeasurableSpace F]

/-- If a nonzero function belongs to `ℒ^p` and is independent of another function, then
the space is a probability space. -/
lemma MemLp.isProbabilityMeasure_of_indepFun
    (f : Ω → E) (g : Ω → F) {p : ℝ≥0∞} (hp : p ≠ 0) (hp' : p ≠ ∞)
    (hℒp : MemLp f p μ) (h'f : ¬ (∀ᵐ ω ∂μ, f ω = 0)) (hindep : IndepFun f g μ) :
    IsProbabilityMeasure μ := by
  obtain ⟨c, c_pos, hc⟩ : ∃ (c : ℝ≥0), 0 < c ∧ 0 < μ {ω | c ≤ ‖f ω‖₊} := by
    contrapose! h'f
    have A (c : ℝ≥0) (hc : 0 < c) : ∀ᵐ ω ∂μ, ‖f ω‖₊ < c := by simpa [ae_iff] using h'f c hc
    obtain ⟨u, -, u_pos, u_lim⟩ : ∃ u, StrictAnti u ∧ (∀ (n : ℕ), 0 < u n)
      ∧ Tendsto u atTop (𝓝 0) := exists_seq_strictAnti_tendsto (0 : ℝ≥0)
    filter_upwards [ae_all_iff.2 (fun n ↦ A (u n) (u_pos n))] with ω hω
    simpa using ge_of_tendsto' u_lim (fun i ↦ (hω i).le)
  have h'c : μ {ω | c ≤ ‖f ω‖₊} < ∞ := hℒp.meas_ge_lt_top hp hp' c_pos.ne'
  have := hindep.measure_inter_preimage_eq_mul {x | c ≤ ‖x‖₊} Set.univ
    (isClosed_le continuous_const continuous_nnnorm).measurableSet MeasurableSet.univ
  simp only [Set.preimage_setOf_eq, Set.preimage_univ, Set.inter_univ] at this
  exact ⟨(ENNReal.mul_eq_left hc.ne' h'c.ne).1 this.symm⟩

@[deprecated (since := "2025-02-21")]
alias Memℒp.isProbabilityMeasure_of_indepFun := MemLp.isProbabilityMeasure_of_indepFun


/-- If a nonzero function is integrable and is independent of another function, then
the space is a probability space. -/
lemma Integrable.isProbabilityMeasure_of_indepFun (f : Ω → E) (g : Ω → F)
    (hf : Integrable f μ) (h'f : ¬ (∀ᵐ ω ∂μ, f ω = 0)) (hindep : IndepFun f g μ) :
    IsProbabilityMeasure μ :=
  MemLp.isProbabilityMeasure_of_indepFun f g one_ne_zero ENNReal.one_ne_top
    (memLp_one_iff_integrable.mpr hf) h'f hindep

end MeasureTheory
```
