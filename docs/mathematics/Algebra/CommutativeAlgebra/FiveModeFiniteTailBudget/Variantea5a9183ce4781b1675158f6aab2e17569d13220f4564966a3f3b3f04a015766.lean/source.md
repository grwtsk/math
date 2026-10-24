# Complete source: GRWTSK.Algebra.CommutativeAlgebra.FiveModeFiniteTailBudget.Variantea5a9183ce4781b1675158f6aab2e17569d13220f4564966a3f3b3f04a015766

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a206ee88188149cc2984c331c387de23c1cb5648` · SHA-256 `22176287f561898fa921e74094efc83e89c38358de652c1ead89f04dc36ba3fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.RationalCountCap.Variant8e0847f30e14d8b535b9bb1ec64a6ae1ca6c565fab6a059390b4a38ff53f54e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e0847f30e14d8b535b9bb1ec64a6ae1ca6c565fab6a059390b4a38ff53f54e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.RationalCountCap.Variant8e0847f30e14d8b535b9bb1ec64a6ae1ca6c565fab6a059390b4a38ff53f54e1","mathematical_subject":"Algebra.Polynomials","original_sha256":"8e0847f30e14d8b535b9bb1ec64a6ae1ca6c565fab6a059390b4a38ff53f54e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_20261004/FiveModeFiniteTailBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_20261004.FiveModeZeroTailInputs
import scratch.common_mean_20261004.FiveModeCoshEnvelope
import scratch.common_mean_20261004.FiveModeFiniteActual

/-!
Exact finite rational envelope transport for the actual source. The missing
pointwise source transform bound and actual positive-ordinate sixth-moment
bound remain named hypotheses. Neither is inferred from a finite zero table.
Originating direction: grwtsk contributors. Lean assistance: OpenAI Codex.
-/

namespace GRWTSK.Algebra.CommutativeAlgebra.RationalCountCap.Variant8e0847f30e14d8b535b9bb1ec64a6ae1ca6c565fab6a059390b4a38ff53f54e1

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

def rationalCountCap : ℝ :=
  (146 : ℝ)/(150*(3000000000000 : ℝ)^5) + 17/(3000000000000 : ℝ)^6

def rationalSourceCap : ℝ :=
  max (6 : ℝ) (((2719/1000 : ℝ)^160+3)/160^9) *
    385^2 * (17/16)^2 / (4096/109395)

theorem source_polynomial_budget_le_385 (x : ℝ) (hx : 10000 ≤ x) :
    sourceTransformPolynomialBudget x ≤ 385 := by
  have he : sourceTransformPolynomialBudget x ≤ sourceTransformPolynomialBudget 10000 := by
    unfold sourceTransformPolynomialBudget
    gcongr
  have h : sourceTransformPolynomialBudget (10000 : ℝ) ≤ 385 := by
    norm_num [sourceTransformPolynomialBudget]
  exact he.trans h

theorem original_normalization_ge_limit (A : ℝ) (hA : 1 ≤ A) :
    (4096/109395 : ℝ) ≤ sourceNormalization A := by
  unfold sourceNormalization
  have hp : 0 < A := by linarith
  have h2 : 0 ≤ (131072/45045 : ℝ)/(2*A^2) := by positivity
  have h4 : 0 ≤ (196608/5005 : ℝ)/A^4 := by positivity
  norm_num only at *
  linarith

theorem source_absolute_tail_constant_le_rational_cap
    (A : ℝ) (hA : 1 ≤ A) (hA160 : A ≤ 160) :
    sourceAbsoluteTailConstant A 3000000000000 ≤ rationalSourceCap := by
  have hp : 0 < A := by linarith
  have hx : 10000 ≤ A*(3000000000000 : ℝ) := by nlinarith
  have hc := source_polynomial_budget_le_385 _ hx
  have hcn : 0 ≤ sourceTransformPolynomialBudget (A*3000000000000) := by
    unfold sourceTransformPolynomialBudget
    positivity
  have hn := original_normalization_ge_limit A hA
  have hcosh := actual_cosh_envelope_le_rational_max A hA hA160
  have he : 4*Real.cosh (A/2)^2 = Real.exp A+2+Real.exp (-A) := by
    rw [Real.cosh_eq]
    have hp2 : Real.exp (A/2)^2 = Real.exp A := by
      rw [pow_two, ← Real.exp_add]; congr 1; ring
    have hn2 : Real.exp (-(A/2))^2 = Real.exp (-A) := by
      rw [pow_two, ← Real.exp_add]; congr 1; ring
    have hm : Real.exp (A/2)*Real.exp (-(A/2)) = 1 := by
      rw [← Real.exp_add]; simp
    nlinarith
  rw [he] at hcosh
  have hs : (1+1/(4*(3000000000000 : ℝ)^2))^2 ≤ (17/16 : ℝ)^2 := by norm_num
  unfold sourceAbsoluteTailConstant rationalSourceCap
  calc
    _ = ((Real.exp A+2+Real.exp (-A))/A^9) *
      sourceTransformPolynomialBudget (A*3000000000000)^2 *
      (1+1/(4*(3000000000000 : ℝ)^2))^2 / sourceNormalization A := by ring
    _ ≤ _ := by gcongr

theorem rational_tail_cap_eq :
    2*rationalSourceCap*rationalCountCap = CommonMean20261004.FiniteCertificate.tailBound := by
  unfold rationalSourceCap rationalCountCap CommonMean20261004.FiniteCertificate.tailBound
    CommonMean20261004.FiniteCertificate.rationalTailBound
  push_cast
  norm_num

theorem actual_strict_tail_certificate_of_source_and_count
    (hpoint : ∀ A : ℝ, 1 ≤ A → A ≤ 160 → SourceAbsoluteTailMajorant A 3000000000000)
    (hs : Summable (positiveSixthPowerWeight 3000000000000))
    (hcount : actualPositiveSixthPowerTail 3000000000000 ≤ rationalCountCap) :
    ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      ‖actualZeroStrictTail A 3000000000000‖ ≤ CommonMean20261004.FiniteCertificate.tailBound := by
  intro A hA hA160
  have h := actual_strict_tail_norm_le_of_count_bound A 3000000000000 rationalCountCap
    hA (by norm_num) hs (hpoint A hA hA160) hcount
  apply h.trans
  rw [← rational_tail_cap_eq]
  apply mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_left (source_absolute_tail_constant_le_rational_cap A hA hA160)
      (by norm_num : (0 : ℝ) ≤ 2))
  unfold rationalCountCap
  positivity

end CommonMeanScratch
```
