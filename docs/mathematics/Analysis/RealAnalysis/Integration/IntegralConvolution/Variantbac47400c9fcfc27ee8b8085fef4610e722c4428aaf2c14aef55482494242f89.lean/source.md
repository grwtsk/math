# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.IntegralConvolution.Variantbac47400c9fcfc27ee8b8085fef4610e722c4428aaf2c14aef55482494242f89

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02544ccdbd740acf61936746d571e79fdc0aeaac` · SHA-256 `74e32bf6f15b87ede2223e6bf342da32326daf9e640cf2c4e9c5d6ff0876b8ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegrableMconvIff.Variant39279738bdf441987736785dea823831725a6783fa9caabdbb0013dce4366faa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39279738bdf441987736785dea823831725a6783fa9caabdbb0013dce4366faa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegrableMconvIff.Variant39279738bdf441987736785dea823831725a6783fa9caabdbb0013dce4366faa","mathematical_subject":"Analysis.Integration","original_sha256":"39279738bdf441987736785dea823831725a6783fa9caabdbb0013dce4366faa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Group/IntegralConvolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
import Mathlib.MeasureTheory.Group.Convolution
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Bochner integrals of convolutions

This file contains results about the Bochner integrals of convolutions of measures.

These results are not placed in the main convolution file because we don't want to import Bochner
integrals over there.

## Main statements

* `integrable_conv_iff`: A function is integrable with respect to the convolution `μ ∗ ν` iff
  the function `y ↦ f (x + y)` is integrable with respect to `ν` for `μ`-almost every `x` and
  the function `x ↦ ∫ y, ‖f (x + y)‖ ∂ν` is integrable with respect to `μ`.
* `integral_conv`: if `f` is integrable with respect to the convolution `μ ∗ ν`, then
  `∫ x, f x ∂(μ ∗ ν) = ∫ x, ∫ y, f (x + y) ∂ν ∂μ`.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegrableMconvIff.Variant39279738bdf441987736785dea823831725a6783fa9caabdbb0013dce4366faa

namespace MeasureTheory

variable {M F : Type*} [Monoid M] {mM : MeasurableSpace M} [MeasurableMul₂ M]
  [NormedAddCommGroup F] {μ ν : Measure M} {f : M → F}

@[to_additive]
lemma integrable_mconv_iff [SFinite ν] (hf : AEStronglyMeasurable f (μ ∗ ν)) :
    Integrable f (μ ∗ ν)
      ↔ (∀ᵐ x ∂μ, Integrable (fun y ↦ f (x * y)) ν)
        ∧ Integrable (fun x ↦ ∫ y, ‖f (x * y)‖ ∂ν) μ := by
  simp [Measure.mconv, integrable_map_measure hf (by fun_prop),
    integrable_prod_iff (hf.comp_measurable (by fun_prop))]

@[to_additive]
lemma integral_mconv [NormedSpace ℝ F] [SFinite μ] [SFinite ν] (hf : Integrable f (μ ∗ ν)) :
    ∫ x, f x ∂(μ ∗ ν) = ∫ x, ∫ y, f (x * y) ∂ν ∂μ := by
  unfold Measure.mconv
  rw [integral_map (by fun_prop) hf.1, integral_prod]
  exact (integrable_map_measure hf.1 (by fun_prop)).mp hf

end MeasureTheory
```
