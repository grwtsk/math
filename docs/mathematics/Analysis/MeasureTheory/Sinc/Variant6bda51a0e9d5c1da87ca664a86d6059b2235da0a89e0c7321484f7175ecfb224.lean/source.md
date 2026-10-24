# Complete source: GRWTSK.Analysis.MeasureTheory.Sinc.Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19a421b63d2c4641772b39c8ba2fdb65bcdab732` · SHA-256 `01967e485b4c88ded02bac26ed07bef7c152ae55847cb9189c781a000a02c12d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableSinc.Variant6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableSinc.Variant6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Function/SpecialFunctions/Sinc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc
import Mathlib.MeasureTheory.Function.SpecialFunctions.Basic
import Mathlib.MeasureTheory.Function.L1Space.Integrable

/-!
# Measurability and integrability of the sinc function

## Main statements

* `measurable_sinc`: the sinc function is measurable.
* `integrable_sinc`: the sinc function is integrable with respect to any finite measure on `ℝ`.

-/


namespace GRWTSK.Analysis.MeasureTheory.MeasurableSinc.Variant6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453

open MeasureTheory

variable {α : Type*} {_ : MeasurableSpace α} {f : α → ℝ} {μ : Measure α}

namespace Real

@[fun_prop, measurability]
lemma measurable_sinc : Measurable sinc := continuous_sinc.measurable

@[fun_prop, measurability]
lemma stronglyMeasurable_sinc : StronglyMeasurable sinc := measurable_sinc.stronglyMeasurable

@[fun_prop]
lemma integrable_sinc {μ : Measure ℝ} [IsFiniteMeasure μ] :
    Integrable sinc μ := by
  refine Integrable.mono' (g := fun _ ↦ 1) (by fun_prop) (by fun_prop) <| ae_of_all _ fun x ↦ ?_
  rw [Real.norm_eq_abs]
  exact abs_sinc_le_one x

end Real

open Real

@[fun_prop, measurability]
protected theorem Measurable.sinc (hf : Measurable f) : Measurable fun x ↦ sinc (f x) :=
  Real.measurable_sinc.comp hf

@[fun_prop, measurability]
protected theorem AEMeasurable.sinc (hf : AEMeasurable f μ) : AEMeasurable (fun x ↦ sinc (f x)) μ :=
  Real.measurable_sinc.comp_aemeasurable hf

@[fun_prop, measurability]
protected theorem MeasureTheory.StronglyMeasurable.sinc (hf : StronglyMeasurable f) :
    StronglyMeasurable fun x ↦ sinc (f x) :=
  Real.stronglyMeasurable_sinc.comp_measurable hf.measurable

@[fun_prop, measurability]
protected theorem MeasureTheory.AEStronglyMeasurable.sinc (hf : AEStronglyMeasurable f μ) :
    AEStronglyMeasurable (fun x ↦ sinc (f x)) μ := by
  rw [aestronglyMeasurable_iff_aemeasurable] at hf ⊢
  exact hf.sinc
```
