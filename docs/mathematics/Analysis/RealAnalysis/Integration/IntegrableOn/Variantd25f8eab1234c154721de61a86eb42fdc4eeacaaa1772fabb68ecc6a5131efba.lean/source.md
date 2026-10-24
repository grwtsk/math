# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.IntegrableOn.Variantd25f8eab1234c154721de61a86eb42fdc4eeacaaa1772fabb68ecc6a5131efba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d5cbcceefae581b18a54c0cd7bd605a3797e51b` · SHA-256 `47e97fd9b1dcd5b8eb93a4e45c10aeb5fba48bbfeae3eebae1c045dbba15b4e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegrableOnMonoPrime.Variantfc826b689db5e32f2d52d2804c07f3e2662c3b9ef55ced5d6bec3f015e11dac3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc826b689db5e32f2d52d2804c07f3e2662c3b9ef55ced5d6bec3f015e11dac3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegrableOnMonoPrime.Variantfc826b689db5e32f2d52d2804c07f3e2662c3b9ef55ced5d6bec3f015e11dac3","mathematical_subject":"Analysis.Integration","original_sha256":"fc826b689db5e32f2d52d2804c07f3e2662c3b9ef55ced5d6bec3f015e11dac3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Mathlib/MeasureTheory/Integral/IntegrableOn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Mathlib.MeasureTheory.Integral.IntegrableOn

/-!
# Domination for `IntegrableOn`

A small `IntegrableOn` wrapper for a.e. norm domination on a restricted measure.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegrableOnMonoPrime.Variantfc826b689db5e32f2d52d2804c07f3e2662c3b9ef55ced5d6bec3f015e11dac3

@[expose] public section

namespace MeasureTheory

variable {α E : Type*} [MeasurableSpace α] [NormedAddCommGroup E]
variable {μ : Measure α} {s : Set α}

/-- If `‖f x‖ ≤ g x` a.e. on `s` and `g` is integrable on `s`, then so is `f`. -/
lemma IntegrableOn.mono' {f : α → E} {g : α → ℝ} (hg : IntegrableOn g s μ)
    (hf : AEStronglyMeasurable f (μ.restrict s))
    (h : ∀ᵐ x ∂μ.restrict s, ‖f x‖ ≤ g x) : IntegrableOn f s μ := by
  exact Integrable.mono' hg hf h

end MeasureTheory
```
