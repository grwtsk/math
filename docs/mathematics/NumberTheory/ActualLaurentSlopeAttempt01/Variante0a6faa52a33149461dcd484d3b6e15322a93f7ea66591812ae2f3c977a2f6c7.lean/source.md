# Complete source: GRWTSK.NumberTheory.ActualLaurentSlopeAttempt01.Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `617dfbf6230e7462428409bd6d55b37b83a3ce7a` · SHA-256 `0367f302505926720f21ee75bbcff5f0a31c8511953681b002420bc346d85e5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.RegularNegativeLogDerivative.Variantb2c20447e95ab2c8ea0fff67937323499fcde403d5220e1aa16b5940599882e8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2c20447e95ab2c8ea0fff67937323499fcde403d5220e1aa16b5940599882e8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.RegularNegativeLogDerivative.Variantb2c20447e95ab2c8ea0fff67937323499fcde403d5220e1aa16b5940599882e8","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"b2c20447e95ab2c8ea0fff67937323499fcde403d5220e1aa16b5940599882e8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass20/congruence_guard/peer-laurent-replay/ActualLaurentSlope-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.Harmonic.ZetaAsymp
import Mathlib.Analysis.Calculus.Deriv.Slope


namespace GRWTSK.NumberTheory.RegularNegativeLogDerivative.Variantb2c20447e95ab2c8ea0fff67937323499fcde403d5220e1aa16b5940599882e8

open Filter Topology

noncomputable section

namespace ContinuousResearch.ActualLaurentSlope

/-- Actual regular negative logarithmic derivative; no supplied coefficient. -/
def regularNegativeLogDerivative (z : ℂ) : ℂ :=
  - deriv riemannZeta₁ z / riemannZeta₁ z

theorem actual_regular_zeta_derivative (z : ℂ) :
    deriv riemannZeta₁ z = riemannZeta₀ z + (z - 1) * deriv riemannZeta₀ z := by
  unfold riemannZeta₁
  rw [deriv_const_add, deriv_fun_mul (by fun_prop) (by fun_prop)]
  simp

theorem actual_regular_zeta_second_derivative_at_one :
    HasDerivAt (deriv riemannZeta₁) (2 * deriv riemannZeta₀ 1) 1 := by
  have hr := (differentiable_riemannZeta₀ 1).hasDerivAt
  have hrr := (differentiable_riemannZeta₀.deriv 1).hasDerivAt
  have hid := (hasDerivAt_id (1 : ℂ)).sub_const 1
  have h := hr.add (hid.mul hrr)
  have hfun : deriv riemannZeta₁ =
      fun z => riemannZeta₀ z + (z - 1) * deriv riemannZeta₀ z := by
    funext z
    exact actual_regular_zeta_derivative z
  rw [hfun]
  convert! h using 1
  simp [two_mul]

theorem actual_regular_negative_value :
    regularNegativeLogDerivative 1 = -(Real.eulerMascheroniConstant : ℂ) := by
  simp [regularNegativeLogDerivative]

theorem actual_regular_negative_derivative :
    HasDerivAt regularNegativeLogDerivative
      ((Real.eulerMascheroniConstant : ℂ)^2 - 2 * deriv riemannZeta₀ 1) 1 := by
  have h1 := (differentiable_riemannZeta₁ 1).hasDerivAt
  have h := actual_regular_zeta_second_derivative_at_one.neg.div h1 (by simp)
  convert! h using 1
  simp
  ring

theorem actual_regular_negative_slope :
    Tendsto (fun u : ℂ =>
      (regularNegativeLogDerivative (1 + u) + (Real.eulerMascheroniConstant : ℂ)) / u)
      (𝓝[≠] 0)
      (𝓝 ((Real.eulerMascheroniConstant : ℂ)^2 - 2 * deriv riemannZeta₀ 1)) := by
  simpa [actual_regular_negative_value, add_comm, div_eq_mul_inv, mul_comm] using
    actual_regular_negative_derivative.tendsto_slope_zero

theorem actual_negative_log_regularization :
    ∀ᶠ z : ℂ in 𝓝[≠] 1,
      - deriv riemannZeta z / riemannZeta z - (z - 1)⁻¹ =
        regularNegativeLogDerivative z := by
  filter_upwards [log_deriv_riemannZeta_eq_neg_inv_sub_add] with z hz
  unfold regularNegativeLogDerivative
  rw [neg_div, hz]
  ring

theorem actual_negative_log_laurent_slope :
    Tendsto (fun u : ℂ =>
      (- deriv riemannZeta (1 + u) / riemannZeta (1 + u) - u⁻¹ +
        (Real.eulerMascheroniConstant : ℂ)) / u)
      (𝓝[≠] 0)
      (𝓝 ((Real.eulerMascheroniConstant : ℂ)^2 - 2 * deriv riemannZeta₀ 1)) := by
  have hshift : Tendsto (fun u : ℂ => 1 + u) (𝓝[≠] 0) (𝓝[≠] 1) := by
    change Filter.map (fun u : ℂ => 1 + u) (𝓝[≠] 0) ≤ 𝓝[≠] 1
    simp
  apply actual_regular_negative_slope.congr'
  filter_upwards [hshift.eventually actual_negative_log_regularization] with u hu
  simpa using congrArg (fun v : ℂ => (v + (Real.eulerMascheroniConstant : ℂ)) / u) hu.symm

theorem actual_vonMangoldt_series_laurent_slope :
    Tendsto (fun u : ℂ =>
      (LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) (1 + u) - u⁻¹ +
        (Real.eulerMascheroniConstant : ℂ)) / u)
      (𝓝[{u : ℂ | 0 < u.re}] 0)
      (𝓝 ((Real.eulerMascheroniConstant : ℂ)^2 - 2 * deriv riemannZeta₀ 1)) := by
  have hsub : {u : ℂ | 0 < u.re} ⊆ {0}ᶜ := by
    intro u hu
    simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
    intro hzero
    simp [hzero] at hu
  apply (actual_negative_log_laurent_slope.mono_left (nhdsWithin_mono 0 hsub)).congr'
  filter_upwards [self_mem_nhdsWithin] with u hu
  have hre : 1 < (1 + u).re := by simp only [Complex.add_re, Complex.one_re]; linarith
  rw [ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hre]

end ContinuousResearch.ActualLaurentSlope

#check ContinuousResearch.ActualLaurentSlope.regularNegativeLogDerivative
#print axioms ContinuousResearch.ActualLaurentSlope.regularNegativeLogDerivative
#print ContinuousResearch.ActualLaurentSlope.regularNegativeLogDerivative

#check ContinuousResearch.ActualLaurentSlope.actual_regular_zeta_derivative
#print axioms ContinuousResearch.ActualLaurentSlope.actual_regular_zeta_derivative
#print ContinuousResearch.ActualLaurentSlope.actual_regular_zeta_derivative

#check ContinuousResearch.ActualLaurentSlope.actual_regular_zeta_second_derivative_at_one
#print axioms ContinuousResearch.ActualLaurentSlope.actual_regular_zeta_second_derivative_at_one
#print ContinuousResearch.ActualLaurentSlope.actual_regular_zeta_second_derivative_at_one

#check ContinuousResearch.ActualLaurentSlope.actual_regular_negative_value
#print axioms ContinuousResearch.ActualLaurentSlope.actual_regular_negative_value
#print ContinuousResearch.ActualLaurentSlope.actual_regular_negative_value

#check ContinuousResearch.ActualLaurentSlope.actual_regular_negative_derivative
#print axioms ContinuousResearch.ActualLaurentSlope.actual_regular_negative_derivative
#print ContinuousResearch.ActualLaurentSlope.actual_regular_negative_derivative

#check ContinuousResearch.ActualLaurentSlope.actual_regular_negative_slope
#print axioms ContinuousResearch.ActualLaurentSlope.actual_regular_negative_slope
#print ContinuousResearch.ActualLaurentSlope.actual_regular_negative_slope

#check ContinuousResearch.ActualLaurentSlope.actual_negative_log_regularization
#print axioms ContinuousResearch.ActualLaurentSlope.actual_negative_log_regularization
#print ContinuousResearch.ActualLaurentSlope.actual_negative_log_regularization

#check ContinuousResearch.ActualLaurentSlope.actual_negative_log_laurent_slope
#print axioms ContinuousResearch.ActualLaurentSlope.actual_negative_log_laurent_slope
#print ContinuousResearch.ActualLaurentSlope.actual_negative_log_laurent_slope

#check ContinuousResearch.ActualLaurentSlope.actual_vonMangoldt_series_laurent_slope
#print axioms ContinuousResearch.ActualLaurentSlope.actual_vonMangoldt_series_laurent_slope
#print ContinuousResearch.ActualLaurentSlope.actual_vonMangoldt_series_laurent_slope
```
