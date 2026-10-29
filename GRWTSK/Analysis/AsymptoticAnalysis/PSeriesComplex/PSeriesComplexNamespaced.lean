-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ComplexSummableOneDivNatCpow.Variant20bac47c718e6f4e4be86f5a8723e3dd1ffec0bf331d853e8e6c07f45cc8dde9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20bac47c718e6f4e4be86f5a8723e3dd1ffec0bf331d853e8e6c07f45cc8dde9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ComplexSummableOneDivNatCpow.Variant20bac47c718e6f4e4be86f5a8723e3dd1ffec0bf331d853e8e6c07f45cc8dde9","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"20bac47c718e6f4e4be86f5a8723e3dd1ffec0bf331d853e8e6c07f45cc8dde9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/PSeriesComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/

import Mathlib.Analysis.PSeries
import Mathlib.Analysis.Normed.Module.FiniteDimension
import Mathlib.Data.Complex.FiniteDimensional

/-!
# Convergence of `p`-series (complex case)

Here we show convergence of `∑ n : ℕ, 1 / n ^ p` for complex `p`. This is done in a separate file
rather than in `Analysis.PSeries` in order to keep the prerequisites of the former relatively light.

## Tags

p-series, Cauchy condensation test
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.ComplexSummableOneDivNatCpow.Variant20bac47c718e6f4e4be86f5a8723e3dd1ffec0bf331d853e8e6c07f45cc8dde9

lemma Complex.summable_one_div_nat_cpow {p : ℂ} :
    Summable (fun n : ℕ ↦ 1 / (n : ℂ) ^ p) ↔ 1 < re p := by
  rw [← Real.summable_one_div_nat_rpow, ← summable_nat_add_iff 1 (G := ℝ),
    ← summable_nat_add_iff 1 (G := ℂ), ← summable_norm_iff]
  simp only [norm_div, norm_one, ← ofReal_natCast, norm_cpow_eq_rpow_re_of_pos
    (Nat.cast_pos.mpr <| Nat.succ_pos _)]
