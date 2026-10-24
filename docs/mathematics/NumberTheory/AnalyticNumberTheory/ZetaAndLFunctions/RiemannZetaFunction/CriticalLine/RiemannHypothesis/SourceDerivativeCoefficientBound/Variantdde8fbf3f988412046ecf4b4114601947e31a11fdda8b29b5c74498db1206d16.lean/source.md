# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDerivativeCoefficientBound.Variantdde8fbf3f988412046ecf4b4114601947e31a11fdda8b29b5c74498db1206d16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bc6ff9e5952cc681ddf4a041695d2e5f60acddb` · SHA-256 `ad638bfe2e90634a3fd1eed38427d498d684d824beb0259e9bfceb36e8dd46f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NormPolynomial.Variantd7f39a5025648bb5b86fbb1d59cd78ffc6082987c5bfc7c8871a5fd6651513ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7f39a5025648bb5b86fbb1d59cd78ffc6082987c5bfc7c8871a5fd6651513ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.NormPolynomial.Variantd7f39a5025648bb5b86fbb1d59cd78ffc6082987c5bfc7c8871a5fd6651513ad","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d7f39a5025648bb5b86fbb1d59cd78ffc6082987c5bfc7c8871a5fd6651513ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/FormalResearch/RiemannHypothesis/SourceDerivativeCoefficientBound.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Source derivative coefficient bound

Exact finite algebra for the designated bump's coefficient polynomials. The
analytic derivative-norm/source identification remains a separate proof task.
See docs/research/riemann-hypothesis/collaborative-research/2026-10-02/README.md.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NormPolynomial.Variantd7f39a5025648bb5b86fbb1d59cd78ffc6082987c5bfc7c8871a5fd6651513ad

namespace FormalResearch.RiemannHypothesis.SourceDerivativeCoefficientBound

noncomputable section

/-- Denominator polynomial in the finite source coefficient calculation. -/
def normPolynomial (r : ℝ) : ℝ :=
  (4096 / 109395 : ℝ) + (65536 / 45045 : ℝ) * r +
    (196608 / 5005 : ℝ) * r ^ 2

/-- Numerator polynomial in the finite derivative coefficient calculation. -/
def derivativePolynomial (r : ℝ) : ℝ :=
  (8192 / 45045 : ℝ) + (98304 / 5005 : ℝ) * r +
    (65536 / 77 : ℝ) * r ^ 2

/-- Exact bound for the polynomial ratio on the interval `[0, 1]`. -/
def squaredCoefficient : ℝ := (162826 / 7623 : ℝ)

theorem normPolynomial_pos (r : ℝ) (hr : 0 ≤ r) :
    0 < normPolynomial r := by
  unfold normPolynomial
  positivity

theorem exact_coefficient_gap (r : ℝ) :
    squaredCoefficient * normPolynomial r - derivativePolynomial r =
      (32768 / 343378035 : ℝ) * (1 - r) * (126306 * r + 6475) := by
  unfold squaredCoefficient normPolynomial derivativePolynomial
  ring

theorem derivativePolynomial_le (r : ℝ) (hr0 : 0 ≤ r) (hr1 : r ≤ 1) :
    derivativePolynomial r ≤ squaredCoefficient * normPolynomial r := by
  have hgap :
      0 ≤ (32768 / 343378035 : ℝ) * (1 - r) * (126306 * r + 6475) := by
    apply mul_nonneg
    · exact mul_nonneg (by norm_num) (sub_nonneg.mpr hr1)
    · nlinarith
  rw [← exact_coefficient_gap] at hgap
  linarith

theorem exact_ratio_upper_bound (r : ℝ) (hr0 : 0 ≤ r) (hr1 : r ≤ 1) :
    derivativePolynomial r / normPolynomial r ≤ squaredCoefficient := by
  apply (div_le_iff₀ (normPolynomial_pos r hr0)).2
  simpa only [mul_comm] using derivativePolynomial_le r hr0 hr1

theorem squaredCoefficient_lt_twenty_five : squaredCoefficient < 25 := by
  norm_num [squaredCoefficient]

end
end FormalResearch.RiemannHypothesis.SourceDerivativeCoefficientBound
```
