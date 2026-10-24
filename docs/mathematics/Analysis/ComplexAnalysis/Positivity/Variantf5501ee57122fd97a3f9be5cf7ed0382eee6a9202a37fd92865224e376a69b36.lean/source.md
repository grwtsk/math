# Complete source: GRWTSK.Analysis.ComplexAnalysis.Positivity.Variantf5501ee57122fd97a3f9be5cf7ed0382eee6a9202a37fd92865224e376a69b36

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b44c0396d403cf1cc4a168e937bd9bb19683c430` · SHA-256 `d2594c4c5814036c8f0a9ecbbbca3bae843685a844434c38bd41fd2fdd59bf58`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.NonnegOfIteratedDerivNonneg.Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.NonnegOfIteratedDerivNonneg.Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Complex/Positivity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Michael Stoll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Stoll
-/
import Mathlib.Analysis.Complex.TaylorSeries

/-!
# Nonnegativity of values of holomorphic functions

We show that if `f` is holomorphic on an open disk `B(c,r)` and all iterated derivatives of `f`
at `c` are nonnegative real, then `f z ≥ 0` for all `z ≥ c` in the disk; see
`DifferentiableOn.nonneg_of_iteratedDeriv_nonneg`. We also provide a
variant `Differentiable.nonneg_of_iteratedDeriv_nonneg` for entire functions and versions
showing `f z ≥ f c` when all iterated derivatives except `f` itseld are nonnegative.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.NonnegOfIteratedDerivNonneg.Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0

open Complex

open scoped ComplexOrder

namespace DifferentiableOn

/-- A function that is holomorphic on the open disk around `c` with radius `r` and whose iterated
derivatives at `c` are all nonnegative real has nonnegative real values on `c + [0,r)`. -/
theorem nonneg_of_iteratedDeriv_nonneg {f : ℂ → ℂ} {c : ℂ} {r : ℝ}
    (hf : DifferentiableOn ℂ f (Metric.ball c r)) (h : ∀ n, 0 ≤ iteratedDeriv n f c) ⦃z : ℂ⦄
    (hz₁ : c ≤ z) (hz₂ : z ∈ Metric.ball c r):
    0 ≤ f z := by
  have H := taylorSeries_eq_on_ball' hz₂ hf
  rw [← sub_nonneg] at hz₁
  have hz' := eq_re_of_ofReal_le hz₁
  rw [hz'] at hz₁ H
  refine H ▸ tsum_nonneg fun n ↦ ?_
  rw [← ofReal_natCast, ← ofReal_pow, ← ofReal_inv, eq_re_of_ofReal_le (h n), ← ofReal_mul,
    ← ofReal_mul]
  norm_cast at hz₁ ⊢
  have := zero_re ▸ (Complex.le_def.mp (h n)).1
  positivity

end DifferentiableOn

namespace Differentiable

/-- An entire function whose iterated derivatives at `c` are all nonnegative real has nonnegative
real values on `c + ℝ≥0`. -/
theorem nonneg_of_iteratedDeriv_nonneg {f : ℂ → ℂ} (hf : Differentiable ℂ f) {c : ℂ}
    (h : ∀ n, 0 ≤ iteratedDeriv n f c) ⦃z : ℂ⦄ (hz : c ≤ z) :
    0 ≤ f z := by
  refine hf.differentiableOn.nonneg_of_iteratedDeriv_nonneg (r := (z - c).re + 1) h hz ?_
  rw [← sub_nonneg] at hz
  rw [Metric.mem_ball, dist_eq, eq_re_of_ofReal_le hz]
  simpa only [Complex.norm_of_nonneg (nonneg_iff.mp hz).1] using lt_add_one _

/-- An entire function whose iterated derivatives at `c` are all nonnegative real (except
possibly the value itself) has values of the form `f c + nonneg. real` on the set `c + ℝ≥0`. -/
theorem apply_le_of_iteratedDeriv_nonneg {f : ℂ → ℂ} {c : ℂ} (hf : Differentiable ℂ f)
    (h : ∀ n ≠ 0, 0 ≤ iteratedDeriv n f c) ⦃z : ℂ⦄ (hz : c ≤ z) :
    f c ≤ f z := by
  have h' (n : ℕ) : 0 ≤ iteratedDeriv n (f · - f c) c := by
    cases n with
    | zero => simp only [iteratedDeriv_zero, sub_self, le_refl]
    | succ n =>
      specialize h (n + 1) n.succ_ne_zero
      rw [iteratedDeriv_succ'] at h ⊢
      rwa [funext fun x ↦ deriv_sub_const (f := f) (x := x) (f c)]
  exact sub_nonneg.mp <| nonneg_of_iteratedDeriv_nonneg (hf.sub_const _) h' hz

/-- An entire function whose iterated derivatives at `c` are all real with alternating signs
(except possibly the value itself) has values of the form `f c + nonneg. real` along the
set `c - ℝ≥0`. -/
theorem apply_le_of_iteratedDeriv_alternating {f : ℂ → ℂ} {c : ℂ} (hf : Differentiable ℂ f)
    (h : ∀ n ≠ 0, 0 ≤ (-1) ^ n * iteratedDeriv n f c) ⦃z : ℂ⦄ (hz : z ≤ c) :
    f c ≤ f z := by
  convert apply_le_of_iteratedDeriv_nonneg (f := fun z ↦ f (-z))
    (hf.comp <| differentiable_neg) (fun n hn ↦ ?_) (neg_le_neg_iff.mpr hz) using 1
  · simp only [neg_neg]
  · simp only [neg_neg]
  · simpa only [iteratedDeriv_comp_neg, neg_neg, smul_eq_mul] using h n hn

end Differentiable
```
