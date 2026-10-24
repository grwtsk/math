# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualBumpVerticalBudgetNative01.Variant238081fa4c1487a270e9edcc3544e75642e521899719c2e8da2eb01cfa4ab412

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8934631dd6580b65a50493e0effc4c9d2f14842a` · SHA-256 `6fadfd4d3ce63f03ba9309bdbc75a9fbe774904df34657bcac6198897cd88960`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointPrimitive.Variant2e5f0bf78eec514fea6f65ea5ffaadac7ef57dae5fcd2df5d5d72b715d1db32b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e5f0bf78eec514fea6f65ea5ffaadac7ef57dae5fcd2df5d5d72b715d1db32b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EndpointPrimitive.Variant2e5f0bf78eec514fea6f65ea5ffaadac7ef57dae5fcd2df5d5d72b715d1db32b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2e5f0bf78eec514fea6f65ea5ffaadac7ef57dae5fcd2df5d5d72b715d1db32b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-bessel-contour-recovery/SourceActualBumpVerticalBudget-native01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceBumpLaplace
import Mathlib.Tactic

/-!
Actual fixed-source high-frequency endpoint bound for #383.
The interval polynomial and both exponential endpoints are retained.
This supplies the bump bound only, not a Perron/contour/head theorem.
AI attribution: OpenAI Codex. Endpoint FTC proof copied from the frozen
historical SourceLaplaceEndpoint, with its source identified in the receipt.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointPrimitive.Variant2e5f0bf78eec514fea6f65ea5ffaadac7ef57dae5fcd2df5d5d72b715d1db32b

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualBumpVerticalBudget
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceBumpLaplace
noncomputable section

private def endpointPrimitive (z w : ℂ) : ℂ :=
  (w ^ 8 - 4 * w ^ 6 + 6 * w ^ 4 - 4 * w ^ 2 + 1) / z -
    (8 * w ^ 7 - 24 * w ^ 5 + 24 * w ^ 3 - 8 * w) / z ^ 2 +
    (56 * w ^ 6 - 120 * w ^ 4 + 72 * w ^ 2 - 8) / z ^ 3 -
    (336 * w ^ 5 - 480 * w ^ 3 + 144 * w) / z ^ 4 +
    (1680 * w ^ 4 - 1440 * w ^ 2 + 144) / z ^ 5 -
    (6720 * w ^ 3 - 2880 * w) / z ^ 6 +
    (20160 * w ^ 2 - 2880) / z ^ 7 -
    40320 * w / z ^ 8 + 40320 / z ^ 9

set_option maxHeartbeats 800000 in
-- The nine polynomial jets in the exact antiderivative require additional ring normalization.
private theorem endpoint_antiderivative (z : ℂ) (hz : z ≠ 0) (w : ℂ) :
    HasDerivAt (fun w ↦ Complex.exp (z * w) * endpointPrimitive z w)
      ((1 - w ^ 2) ^ 4 * Complex.exp (z * w)) w := by
  have h := hasDerivAt_id w
  have h2 := h.pow 2
  have h3 := h.pow 3
  have h4 := h.pow 4
  have h5 := h.pow 5
  have h6 := h.pow 6
  have h7 := h.pow 7
  have h8 := h.pow 8
  have h0 := (((h8.sub (h6.const_mul 4)).add (h4.const_mul 6)).sub
    (h2.const_mul 4)).add_const 1
  have h1 := (((h7.const_mul 8).sub (h5.const_mul 24)).add
    (h3.const_mul 24)).sub (h.const_mul 8)
  have h2j := (((h6.const_mul 56).sub (h4.const_mul 120)).add
    (h2.const_mul 72)).sub_const 8
  have h3j := ((h5.const_mul 336).sub (h3.const_mul 480)).add (h.const_mul 144)
  have h4j := ((h4.const_mul 1680).sub (h2.const_mul 1440)).add_const 144
  have h5j := (h3.const_mul 6720).sub (h.const_mul 2880)
  have h6j := (h2.const_mul 20160).sub_const 2880
  have hp := ((((((((h0.div_const z).sub (h1.div_const (z ^ 2))).add
    (h2j.div_const (z ^ 3))).sub (h3j.div_const (z ^ 4))).add
    (h4j.div_const (z ^ 5))).sub (h5j.div_const (z ^ 6))).add
    (h6j.div_const (z ^ 7))).sub ((h.const_mul 40320).div_const (z ^ 8))).add_const
    (40320 / z ^ 9)
  have he := (h.const_mul z).cexp
  convert he.mul hp using 1 <;> try rfl
  all_goals
    try funext u
    simp only [id_eq, Pi.pow_apply, Pi.sub_apply, Pi.add_apply]
    norm_num
    field_simp [hz]
    ring


/-- The native bump transform has an exact finite endpoint formula away from zero. -/
theorem bump_laplace_endpoint_formula (z : ℂ) (hz : z ≠ 0) :
    bumpLaplace z =
      384 / z ^ 9 * (Complex.exp z * (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105) -
        Complex.exp (-z) * (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105)) := by
  unfold bumpLaplace
  have hd (x : ℝ) := (endpoint_antiderivative z hz (x : ℂ)).comp_ofReal
  have heq (x : ℝ) : (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) = (1 - (x : ℂ) ^ 2) ^ 4 := by
    norm_cast
  simp_rw [heq]
  have hi : IntervalIntegrable (fun x : ℝ ↦ (1 - (x : ℂ) ^ 2) ^ 4 *
      Complex.exp (z * (x : ℂ))) volume (-1) 1 :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ ↦ hd x) hi]
  norm_num [endpointPrimitive]
  field_simp [hz]
  ring


private theorem endpoint_minus_norm_le (z : ℂ) (hn : 1 ≤ ‖z‖) :
    ‖z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105‖ ≤ 266 * ‖z‖ ^ 4 := by
  have h1 := norm_add_le (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z) (105 : ℂ)
  have h2 := norm_sub_le (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2) (105 * z)
  have h3 := norm_add_le (z ^ 4 - 10 * z ^ 3) (45 * z ^ 2)
  have h4 := norm_sub_le (z ^ 4) (10 * z ^ 3)
  simp only [norm_mul, norm_pow, Complex.norm_natCast] at h1 h2 h3 h4
  have h0 : (1 : ℝ) ≤ ‖z‖ ^ 4 := one_le_pow₀ hn
  have hz1 : ‖z‖ ≤ ‖z‖ ^ 4 := by
    simpa using pow_le_pow_right₀ hn (show (1 : ℕ) ≤ 4 by norm_num)
  have hz2 : ‖z‖ ^ 2 ≤ ‖z‖ ^ 4 := pow_le_pow_right₀ hn (by norm_num)
  have hz3 : ‖z‖ ^ 3 ≤ ‖z‖ ^ 4 := pow_le_pow_right₀ hn (by norm_num)
  nlinarith

private theorem endpoint_plus_norm_le (z : ℂ) (hn : 1 ≤ ‖z‖) :
    ‖z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105‖ ≤ 266 * ‖z‖ ^ 4 := by
  have h := endpoint_minus_norm_le (-z) (by simpa using hn)
  simpa only [neg_pow, pow_succ, pow_zero, neg_mul, mul_neg, sub_neg_eq_add,
    neg_neg, even_two, Even.neg_pow, norm_neg] using h

/-- Both actual bump endpoints give the paper's exact high-frequency constant. -/
theorem actual_bump_vertical_norm_le (z : ℂ) (hre : 0 ≤ z.re) (hn : 1 ≤ ‖z‖) :
    ‖bumpLaplace z‖ ≤ 204288 * Real.exp z.re / ‖z‖ ^ 5 := by
  have hnpos : 0 < ‖z‖ := by linarith
  have hz : z ≠ 0 := norm_pos_iff.mp hnpos
  have he : Real.exp (-z.re) ≤ Real.exp z.re := Real.exp_le_exp.mpr (by linarith)
  have hm := endpoint_minus_norm_le z hn
  have hp := endpoint_plus_norm_le z hn
  rw [bump_laplace_endpoint_formula z hz]
  calc
    ‖384 / z ^ 9 * (Complex.exp z * (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105) -
        Complex.exp (-z) * (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105))‖
      ≤ (384 / ‖z‖ ^ 9) * (Real.exp z.re * (266 * ‖z‖ ^ 4) +
          Real.exp z.re * (266 * ‖z‖ ^ 4)) := by
        rw [norm_mul, norm_div, norm_pow, Complex.norm_natCast]
        gcongr
        calc
          ‖Complex.exp z * (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105) -
              Complex.exp (-z) * (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105)‖
            ≤ ‖Complex.exp z * (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105)‖ +
                ‖Complex.exp (-z) * (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105)‖ :=
              norm_sub_le _ _
          _ ≤ _ := by
            simp only [norm_mul, Complex.norm_exp, Complex.neg_re]
            gcongr
    _ = _ := by field_simp; ring

end
end FormalResearch.RiemannHypothesis.SourceActualBumpVerticalBudget
```
