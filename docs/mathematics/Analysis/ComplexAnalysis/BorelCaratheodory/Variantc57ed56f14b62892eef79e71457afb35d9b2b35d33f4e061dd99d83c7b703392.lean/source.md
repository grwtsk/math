# Complete source: GRWTSK.Analysis.ComplexAnalysis.BorelCaratheodory.Variantc57ed56f14b62892eef79e71457afb35d9b2b35d33f4e061dd99d83c7b703392

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73d7c61e9cbc27304b23a5eb010c03e2d3e2517b` · SHA-256 `9cd2140693f0bf9f6136908e73401e0f6f9bfed34a30cbb4bf21a41befa9de83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.BorelCaratheodoryZeroClosedBall.Variant8ca28eb4cd6a605fa043345bb84dc8d1051c1e6fb5e83155373521f744fd05bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ca28eb4cd6a605fa043345bb84dc8d1051c1e6fb5e83155373521f744fd05bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.BorelCaratheodoryZeroClosedBall.Variant8ca28eb4cd6a605fa043345bb84dc8d1051c1e6fb5e83155373521f744fd05bb","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"8ca28eb4cd6a605fa043345bb84dc8d1051c1e6fb5e83155373521f744fd05bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Mathlib/Analysis/Complex/BorelCaratheodory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Mathlib.Analysis.Complex.BorelCaratheodory

/-!
# Borel-Carathéodory estimates on closed balls

This file gives a closed-ball variant of Borel-Carathéodory for functions normalized at the
origin.  The form is convenient for growth estimates in finite-order complex analysis.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.BorelCaratheodoryZeroClosedBall.Variant8ca28eb4cd6a605fa043345bb84dc8d1051c1e6fb5e83155373521f744fd05bb

@[expose] public section

open Metric

namespace Complex

/-- Variant of `borelCaratheodory_zero` for a uniform bound on a closed ball and `‖z‖ ≤ r`. -/
public theorem borelCaratheodory_zero_closedBall {f : ℂ → ℂ} {M r R : ℝ}
    (hf : AnalyticOnNhd ℂ f (Metric.closedBall (0 : ℂ) R))
    (hr : 0 < r) (hlt : r < R) (hM : 0 < M) (hf0 : f 0 = 0)
    (hf_re : ∀ w, ‖w‖ ≤ R → (f w).re ≤ M) {z : ℂ} (hz : ‖z‖ ≤ r) :
    ‖f z‖ ≤ 2 * M * r / (R - r) := by
  have hR : 0 < R := lt_trans hr hlt
  have hz_ball : z ∈ Metric.ball (0 : ℂ) R := by
    rw [Metric.mem_ball, dist_zero_right]
    exact hz.trans_lt hlt
  have hf_diff : DifferentiableOn ℂ f (Metric.ball (0 : ℂ) R) := by
    intro w hw
    have hw' : w ∈ Metric.closedBall (0 : ℂ) R := ball_subset_closedBall hw
    exact (hf w hw').differentiableAt.differentiableWithinAt
  have hf_map : Set.MapsTo f (Metric.ball (0 : ℂ) R) {w | w.re ≤ M} := by
    intro w hw
    simp only [Set.mem_setOf_eq]
    have hw' : ‖w‖ < R := by simpa [Metric.mem_ball, dist_zero_right] using hw
    exact hf_re w hw'.le
  have hbc :=
    borelCaratheodory_zero hM hf_diff hf_map hR hz_ball hf0
  have hzR : ‖z‖ < R := by
    rw [Metric.mem_ball, dist_zero_right] at hz_ball
    exact hz_ball
  have hmono : ‖z‖ / (R - ‖z‖) ≤ r / (R - r) := by
    have hrden : 0 < R - r := sub_pos.mpr hlt
    have hden : 0 < R - ‖z‖ := sub_pos.mpr hzR
    rw [div_le_div_iff₀ hden hrden]
    nlinarith [hz, norm_nonneg z]
  have hM' : 0 ≤ 2 * M := mul_nonneg (by norm_num) (le_of_lt hM)
  calc ‖f z‖
      ≤ 2 * M * ‖z‖ / (R - ‖z‖) := hbc
    _ ≤ 2 * M * (r / (R - r)) := by
        simpa [mul_div_assoc] using mul_le_mul_of_nonneg_left hmono hM'
    _ = 2 * M * r / (R - r) := by ring

end Complex
```
