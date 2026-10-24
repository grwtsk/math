# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualBumpHorizontalStripBudget.Variantb6ed600d43ccfda689e39fc74a0a050755322b53d215a959ff0190bd30559b5d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9c7e3bd423790071711103410da22b6d861fcd7` · SHA-256 `823a79d67ea8857995996315ab4bf77b122b6d8220177f09c615cc23fb1b69d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualBumpNormLeAbsRe.Variantbaee2cc9d47dee4aaf1d10e740709097cedc18ae700aa3b2702fd2b1dacb01cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"baee2cc9d47dee4aaf1d10e740709097cedc18ae700aa3b2702fd2b1dacb01cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualBumpNormLeAbsRe.Variantbaee2cc9d47dee4aaf1d10e740709097cedc18ae700aa3b2702fd2b1dacb01cc","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"baee2cc9d47dee4aaf1d10e740709097cedc18ae700aa3b2702fd2b1dacb01cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-refocus-20261006/dependencies/owner-source-captures/ActualBumpHorizontalStripBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualBumpTransform
import SourceActualBumpMellinLineBudget

/-!
An A-explicit norm budget for the literal actual bump/correlation on the entire
horizontal strip. Negative real parts use the source bump's genuine evenness.
Both pole factors and both bump endpoints remain present. This does not estimate
any signed prime head or crossed-zero sum.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualBumpNormLeAbsRe.Variantbaee2cc9d47dee4aaf1d10e740709097cedc18ae700aa3b2702fd2b1dacb01cc

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualBumpHorizontalStripBudget
open SourcePairing SourceBumpLaplace SourceActualBumpVerticalBudget
open SourceActualBumpMellinLineBudget SourceActualBumpTransform
open ActualCorrelationOppositeHalf
noncomputable section

/-- The actual endpoint norm bound holds with either sign of the real part. -/
theorem actual_bump_norm_le_abs_re (z : ℂ) (hn : 1 ≤ ‖z‖) :
    ‖bumpLaplace z‖ ≤ 204288 * Real.exp |z.re| / ‖z‖ ^ 5 := by
  by_cases h : 0 ≤ z.re
  · simpa only [abs_of_nonneg h] using actual_bump_vertical_norm_le z h hn
  · have hh := actual_bump_vertical_norm_le (-z) (by simp; linarith)
      (by simpa using hn)
    simpa only [bump_laplace_even, norm_neg, Complex.neg_re,
      abs_of_neg (lt_of_not_ge h)] using hh

private theorem strip_pole_norm_le (c x y : ℝ) (hc : 1 < c)
    (hl : 1 - c ≤ x) (hr : x ≤ c) (hy : 1 ≤ |y|) :
    ‖(x : ℂ)+(y : ℂ)*Complex.I‖^2 *
      ‖(x : ℂ)+(y : ℂ)*Complex.I-1‖^2 ≤ (1+c^2)^2 * |y|^4 := by
  have h1 : ‖(x : ℂ)+(y : ℂ)*Complex.I‖^2 = x^2+y^2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply]
    simp
    ring
  have h2 : ‖(x : ℂ)+(y : ℂ)*Complex.I-1‖^2 = (x-1)^2+y^2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply]
    simp
    ring
  have hx : x^2 ≤ c^2 := by nlinarith
  have hxm : (x-1)^2 ≤ c^2 := by nlinarith
  have hy2 : 1 ≤ y^2 := by nlinarith [sq_abs y]
  have ha : x^2+y^2 ≤ (1+c^2)*y^2 := by nlinarith [sq_nonneg c]
  have hb : (x-1)^2+y^2 ≤ (1+c^2)*y^2 := by nlinarith [sq_nonneg c]
  rw [h1,h2]
  calc
    _ ≤ ((1+c^2)*y^2)*((1+c^2)*y^2) :=
      mul_le_mul ha hb (by positivity) (by positivity)
    _ = _ := by
      have ha : |y|^4 = y^4 := by
        calc
          |y|^4 = (|y|^2)^2 := by ring
          _ = (y^2)^2 := by rw [sq_abs]
          _ = y^4 := by ring
      rw [ha]
      ring

/-- Both endpoints of the actual bump are controlled uniformly across the strip. -/
theorem actual_bump_on_strip_norm_le (A c x y : ℝ) (hA : 1 ≤ A) (_hc : 1 < c)
    (hl : 1 - c ≤ x) (hr : x ≤ c) (hy : 1 ≤ |y|) :
    ‖bumpLaplace ((A : ℂ)*((x : ℂ)+(y : ℂ)*Complex.I-1/2))‖ ≤
      204288 * Real.exp (A*(c-1/2)) / (A^5*|y|^5) := by
  let z : ℂ := (A : ℂ)*((x : ℂ)+(y : ℂ)*Complex.I-1/2)
  have hzre : z.re = A*(x-1/2) := by simp [z,Complex.mul_re]
  have hzim : z.im = A*y := by simp [z,Complex.mul_im]
  have hlower : A*|y| ≤ ‖z‖ := by
    simpa only [hzim,abs_mul,abs_of_nonneg (show 0 ≤ A by linarith)] using
      Complex.abs_im_le_norm z
  have hn : 1 ≤ ‖z‖ := by nlinarith
  have hre : |z.re| ≤ A*(c-1/2) := by
    rw [hzre,abs_mul,abs_of_nonneg (show 0 ≤ A by linarith)]
    exact mul_le_mul_of_nonneg_left (abs_le.mpr ⟨by linarith,by linarith⟩)
      (by linarith)
  have hp : A^5*|y|^5 ≤ ‖z‖^5 := by
    simpa only [mul_pow] using pow_le_pow_left₀ (by positivity) hlower 5
  calc
    _ ≤ 204288*Real.exp |z.re|/‖z‖^5 := actual_bump_norm_le_abs_re z hn
    _ ≤ 204288*Real.exp (A*(c-1/2))/‖z‖^5 := by gcongr
    _ ≤ _ := div_le_div_of_nonneg_left (by positivity) (by positivity) hp

/-- The full literal ordinary-square weight has an A⁻⁹ horizontal budget. -/
theorem actual_bumpMellinWeight_on_strip_norm_le (A c x y : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hl : 1 - c ≤ x) (hr : x ≤ c) (hy : 1 ≤ |y|) :
    ‖bumpMellinWeight A ((x : ℂ)+(y : ℂ)*Complex.I)‖ ≤
      (204288 : ℝ)^2/sourceNormalization A*(1+c^2)^2*
        Real.exp ((2*c-1)*A)/(A^9*|y|^6) := by
  have hZ := source_normalization_pos A hA
  have hb := actual_bump_on_strip_norm_le A c x y hA hc hl hr hy
  have hp := strip_pole_norm_le c x y hc hl hr hy
  have he : Real.exp (A*(c-1/2))^2 = Real.exp ((2*c-1)*A) := by
    rw [← Real.exp_nat_mul]
    congr 1
    norm_num
    ring
  have hn : ‖bumpMellinWeight A ((x : ℂ)+(y : ℂ)*Complex.I)‖ =
      (A/sourceNormalization A)*
        (‖(x : ℂ)+(y : ℂ)*Complex.I‖^2 * ‖(x : ℂ)+(y : ℂ)*Complex.I-1‖^2)*
        ‖bumpLaplace ((A : ℂ)*((x : ℂ)+(y : ℂ)*Complex.I-1/2))‖^2 := by
    unfold bumpMellinWeight
    simp only [norm_mul,norm_pow,Complex.norm_real,Real.norm_eq_abs]
    rw [abs_of_nonneg (by positivity : 0 ≤ A/sourceNormalization A)]
    ring
  rw [hn]
  calc
    _ ≤ (A/sourceNormalization A)*((1+c^2)^2*|y|^4)*
        (204288*Real.exp (A*(c-1/2))/(A^5*|y|^5))^2 := by gcongr
    _ = _ := by
      rw [div_pow,mul_pow,he]
      have hA0 : A ≠ 0 := by linarith
      have hy0 : |y| ≠ 0 := by linarith
      field_simp

/-- The strip budget applies to the actual bilateral source correlation itself. -/
theorem actual_bilateral_on_strip_norm_le (A c x y : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hl : 1 - c ≤ x) (hr : x ≤ c) (hy : 1 ≤ |y|) :
    ‖actualBilateralCorrelationTransform A ((x : ℂ)+(y : ℂ)*Complex.I-1/2)‖ ≤
      (204288 : ℝ)^2/sourceNormalization A*(1+c^2)^2*
        Real.exp ((2*c-1)*A)/(A^9*|y|^6) := by
  rw [actualBilateralCorrelationTransform_eq_bump hA]
  exact actual_bumpMellinWeight_on_strip_norm_le A c x y hA hc hl hr hy

end
end FormalResearch.RiemannHypothesis.ActualBumpHorizontalStripBudget
```
