# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualLaurentSlopeAttempt04.Variant736eb4a5d830c3e847528c9e120491ec424ed9e1a279d44a66e5b342d2ea664c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ae40aea0b4cc190fd272eb6d4e15aea13c4288a` · SHA-256 `a73b0aefa6adfa4800539ade7df1870728ad24321854dba25abb22e48fb5fa14`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RegularNegativeLogDerivative.Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.RegularNegativeLogDerivative.Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24","mathematical_subject":"Analysis.Calculus","original_sha256":"fe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass20/laurent_coefficient/ActualLaurentSlope-attempt04.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.Harmonic.ZetaAsymp
import Mathlib.Analysis.Calculus.Deriv.Slope


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RegularNegativeLogDerivative.Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24

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
  convert! h using 1 <;> simp <;> ring

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
  simpa using congrArg (fun v : ℂ => (v + (Real.eulerMascheroniConstant : ℂ)) / u) hu

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
    simpa [hzero] using hu
  apply (actual_negative_log_laurent_slope.mono_left (nhdsWithin_mono 0 hsub)).congr'
  filter_upwards [self_mem_nhdsWithin] with u hu
  have hre : 1 < (1 + u).re := by simp only [Complex.add_re, Complex.one_re]; linarith
  rw [ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hre]

end ContinuousResearch.ActualLaurentSlope
```
