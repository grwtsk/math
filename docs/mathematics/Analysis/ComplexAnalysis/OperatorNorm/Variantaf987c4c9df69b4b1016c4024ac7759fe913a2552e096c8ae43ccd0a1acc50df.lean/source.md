# Complete source: GRWTSK.Analysis.ComplexAnalysis.OperatorNorm.Variantaf987c4c9df69b4b1016c4024ac7759fe913a2552e096c8ae43ccd0a1acc50df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e19f3689df7ea2a0ced7fa4194023e6094f9974` · SHA-256 `057021b48563115d04944f1395ee163048544810aff3f43b424aa4761df4dd7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.DetConjLIE.Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.DetConjLIE.Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Complex/OperatorNorm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace
import Mathlib.Data.Complex.Determinant

/-! # The basic continuous linear maps associated to `ℂ`

The continuous linear maps `Complex.reCLM` (real part), `Complex.imCLM` (imaginary part),
`Complex.conjCLE` (conjugation), and `Complex.ofRealCLM` (inclusion of `ℝ`) were introduced in
`Analysis.Complex.Basic`. This file contains a few calculations requiring more imports:
the operator norm and (for `Complex.conjCLE`) the determinant.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.DetConjLIE.Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e

open ContinuousLinearMap

namespace Complex

/-- The determinant of `conjLIE`, as a linear map. -/
@[simp]
theorem det_conjLIE : LinearMap.det (conjLIE.toLinearEquiv : ℂ →ₗ[ℝ] ℂ) = -1 :=
  det_conjAe

/-- The determinant of `conjLIE`, as a linear equiv. -/
@[simp]
theorem linearEquiv_det_conjLIE : LinearEquiv.det conjLIE.toLinearEquiv = -1 :=
  linearEquiv_det_conjAe

@[simp]
theorem reCLM_norm : ‖reCLM‖ = 1 :=
  le_antisymm (LinearMap.mkContinuous_norm_le _ zero_le_one _) <|
    calc
      1 = ‖reCLM 1‖ := by simp
      _ ≤ ‖reCLM‖ := unit_le_opNorm _ _ (by simp)

@[simp]
theorem reCLM_nnnorm : ‖reCLM‖₊ = 1 :=
  Subtype.ext reCLM_norm

@[simp]
theorem imCLM_norm : ‖imCLM‖ = 1 :=
  le_antisymm (LinearMap.mkContinuous_norm_le _ zero_le_one _) <|
    calc
      1 = ‖imCLM I‖ := by simp
      _ ≤ ‖imCLM‖ := unit_le_opNorm _ _ (by simp)

@[simp]
theorem imCLM_nnnorm : ‖imCLM‖₊ = 1 :=
  Subtype.ext imCLM_norm

@[simp]
theorem conjCLE_norm : ‖(conjCLE : ℂ →L[ℝ] ℂ)‖ = 1 :=
  conjLIE.toLinearIsometry.norm_toContinuousLinearMap

@[simp]
theorem conjCLE_nnorm : ‖(conjCLE : ℂ →L[ℝ] ℂ)‖₊ = 1 :=
  Subtype.ext conjCLE_norm

@[simp]
theorem ofRealCLM_norm : ‖ofRealCLM‖ = 1 :=
  ofRealLI.norm_toContinuousLinearMap

@[simp]
theorem ofRealCLM_nnnorm : ‖ofRealCLM‖₊ = 1 :=
  Subtype.ext <| ofRealCLM_norm

end Complex
```
