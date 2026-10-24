# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LT.Variantf817e8e77858af4f04309f18866c8f6b952659a663c4971f83fe743030cf4e42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce9e8ffc795b1d2abd14478bb28ddda043cde531` · SHA-256 `c3179957b60f31347c9bb4f9e683b8bb408b89e2e6f3c54468f9ddcfb8fbd11f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReLT.Variant0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ReLT.Variant0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/XiPrime/Coeff/LT.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/XiPrime/Coeff/LT.lean — elementary facts about the parameter L_T := ½ l(T) + iπ/4  (Defs.LT),
collected in a single home for use by Coeff.lean and Coeff/Reexpansion.lean.  Canonical names are unprimed.
-/
import Zeta23.XiPrime.Defs


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReLT.Variant0b5f30a72b63cfbd287cd7c0db182ebb0fa2dcc01adbcfee0168f34ca4f25259

noncomputable section

namespace Zeta23
namespace XiPrime

lemma re_LT (T : ℝ) : (LT T).re = l T / 2 := by simp [LT]

lemma im_LT (T : ℝ) : (LT T).im = Real.pi / 4 := by simp [LT]

lemma abs_im_LT_le (T : ℝ) : |(LT T).im| ≤ 1 := by
  rw [im_LT, abs_of_nonneg (by positivity)]
  linarith [Real.pi_le_four]

lemma norm_LT_ge (T : ℝ) : l T / 2 ≤ ‖LT T‖ := by
  calc l T / 2 ≤ |(LT T).re| := by rw [re_LT]; exact le_abs_self _
    _ ≤ ‖LT T‖ := Complex.abs_re_le_norm _

lemma LT_ne_zero {T : ℝ} (hl : 0 < l T) : LT T ≠ 0 := by
  intro h
  have := congrArg Complex.re h
  rw [re_LT, Complex.zero_re] at this
  linarith

lemma LT_add_ne_zero {T δ : ℝ} (hl : 0 < l T) (hδ : 0 ≤ δ) : LT T + (δ : ℂ) ≠ 0 := by
  intro h
  have := congrArg Complex.re h
  rw [Complex.add_re, re_LT, Complex.ofReal_re, Complex.zero_re] at this
  linarith

end XiPrime
end Zeta23
```
