# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SetIntegral.Variantad105fed749bc981d16eff6b35f756f280bb667d86406d1c80c925c744af9b23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c718682a48bb088b77e49ef8953b3c8e76a91b6` · SHA-256 `8e8d23706a21d3772c0cc8524d8c484d689672d0a5a2b2b7d58cae5b8a2c1b86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegralIntegralIndicator.Variante7de90f7b1c68bfd78e1189e74a8568af6533661af4b5beeaac1adb892bf57d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7de90f7b1c68bfd78e1189e74a8568af6533661af4b5beeaac1adb892bf57d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegralIntegralIndicator.Variante7de90f7b1c68bfd78e1189e74a8568af6533661af4b5beeaac1adb892bf57d5","mathematical_subject":"Analysis.Integration","original_sha256":"e7de90f7b1c68bfd78e1189e74a8568af6533661af4b5beeaac1adb892bf57d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Probability/Kernel/SetIntegral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Etienne Marion. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Etienne Marion
-/
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Probability.Kernel.Integral

/-! # Integral against a kernel over a set

This file contains lemmas about the integral against a kernel and over a set.

-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegralIntegralIndicator.Variante7de90f7b1c68bfd78e1189e74a8568af6533661af4b5beeaac1adb892bf57d5

open MeasureTheory ProbabilityTheory

namespace ProbabilityTheory.Kernel

variable {X Y E : Type*} {mX : MeasurableSpace X} {mY : MeasurableSpace Y}
  [NormedAddCommGroup E] [NormedSpace ℝ E] (κ : Kernel X Y)

lemma integral_integral_indicator (μ : Measure X) (f : X → Y → E) {s : Set X}
    (hs : MeasurableSet s) :
    ∫ x, ∫ y, s.indicator (f · y) x ∂κ x ∂μ = ∫ x in s, ∫ y, f x y ∂κ x ∂μ := by
  simp_rw [← integral_indicator hs, Kernel.integral_indicator₂]

end ProbabilityTheory.Kernel
```
