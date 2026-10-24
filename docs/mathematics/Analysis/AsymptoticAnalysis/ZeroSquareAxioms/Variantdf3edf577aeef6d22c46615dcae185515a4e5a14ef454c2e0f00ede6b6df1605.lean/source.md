# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ZeroSquareAxioms.Variantdf3edf577aeef6d22c46615dcae185515a4e5a14ef454c2e0f00ede6b6df1605

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5511708fcb50bbde02f87d6b6463f17872ab7323` · SHA-256 `564a8dff254513ee1d7c2f07a1b67518b516d1d7f9485b79d458dee95d532ba9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.PolynomialNormLe.Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.PolynomialNormLe.Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"a5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/zero-square-axioms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount
import Mathlib.Analysis.Normed.Group.InfiniteSum

/-!
# Summability of the actual source transform squares

The exact transform and the unconditional multiplicity-aware zero count give
absolute summability of the ordinary complex squares. No explicit formula,
positivity, or Riemann Hypothesis premise is used.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.PolynomialNormLe.Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceZeroSummability

open MeasureTheory Filter Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
open ZeroSideTargets

noncomputable section

/-- A coefficient bound for the actual degree-four transform polynomial. -/
theorem polynomial_norm_le (t : ℂ) (ht : 1 ≤ ‖t‖) :
    ‖transformPolynomial t‖ ≤ 266 * ‖t‖ ^ 4 := by
  have h2 : ‖t‖ ≤ ‖t‖ ^ 2 := by nlinarith [norm_nonneg t]
  have h3 : ‖t‖ ^ 2 ≤ ‖t‖ ^ 3 := by nlinarith [sq_nonneg (‖t‖ - 1)]
  have h4 : ‖t‖ ^ 3 ≤ ‖t‖ ^ 4 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr ht) (pow_nonneg (norm_nonneg t) 3)]
  have hb : ‖transformPolynomial t‖ ≤
      ‖t‖ ^ 4 + 10 * ‖t‖ ^ 3 + 45 * ‖t‖ ^ 2 + 105 * ‖t‖ + 105 := by
    unfold transformPolynomial
    calc
      _ ≤ ‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2 - 105 * t‖ + ‖(105 : ℂ)‖ := norm_add_le _ _
      _ ≤ (‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2‖ + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ ≤ ((‖t ^ 4 - 10 * t ^ 3‖ + ‖45 * t ^ 2‖) + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_add_le _ _
      _ ≤ (((‖t ^ 4‖ + ‖10 * t ^ 3‖) + ‖45 * t ^ 2‖) + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ = _ := by norm_num [norm_mul, norm_pow]
  nlinarith

/-- An explicit constant for source-transform decay at a fixed radius. -/
def decayConstant (A : ℝ) : ℝ := 408576 * A ^ 4 * Real.exp (A / 2)

/-- The source transform has cubic decay on the full zero strip outside the unit ball. -/
theorem transform_norm_le (A : ℝ) (hA : 1 ≤ A) (z : ℂ)
    (hzre : -(1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 / 2) (hz : 1 ≤ ‖z‖) :
    ‖bilateralTransform A z‖ ≤ decayConstant A / ‖z‖ ^ 3 := by
  have hApos : 0 < A := by linarith
  have hrpos : 0 < ‖z‖ := by linarith
  have hz0 : z ≠ 0 := norm_pos_iff.mp hrpos
  have hnormA : ‖(A : ℂ)‖ = A := by simp [abs_of_pos hApos]
  have hAz : 1 ≤ ‖(A : ℂ) * z‖ := by
    rw [norm_mul, hnormA]
    nlinarith
  have hp := polynomial_norm_le ((A : ℂ) * z) hAz
  have hn := polynomial_norm_le (-((A : ℂ) * z)) (by simpa using hAz)
  simp only [norm_neg, norm_mul, hnormA, mul_pow] at hp hn
  have hepos : ‖Complex.exp ((A : ℂ) * z)‖ ≤ Real.exp (A / 2) := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
    nlinarith [hzre.2]
  have heneg : ‖Complex.exp (-(A : ℂ) * z)‖ ≤ Real.exp (A / 2) := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    simp only [Complex.mul_re, Complex.neg_re, Complex.neg_im,
      Complex.ofReal_re, Complex.ofReal_im, neg_zero, zero_mul, sub_zero]
    nlinarith [hzre.1]
  have hfactor : ‖z ^ 2 - 1 / 4‖ ≤ 2 * ‖z‖ ^ 2 := by
    calc
      _ ≤ ‖z ^ 2‖ + ‖(1 / 4 : ℂ)‖ := norm_sub_le _ _
      _ ≤ _ := by norm_num [norm_pow]; nlinarith
  have hscale : 1 ≤ A ^ (17 / 2 : ℝ) := Real.one_le_rpow hA (by norm_num)
  have hscale_norm : ‖((A ^ (17 / 2 : ℝ) : ℝ) : ℂ)‖ = A ^ (17 / 2 : ℝ) := by
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
  rw [ZeroTransform.actual_transform A hApos z hz0]
  unfold dividedTransform
  rw [norm_mul, norm_div, norm_mul, norm_mul, norm_pow, hscale_norm]
  norm_num only [Complex.norm_ofNat]
  calc
    _ ≤ (384 * (2 * ‖z‖ ^ 2) / (1 * ‖z‖ ^ 9)) *
        (Real.exp (A / 2) * (266 * (A ^ 4 * ‖z‖ ^ 4)) +
          Real.exp (A / 2) * (266 * (A ^ 4 * ‖z‖ ^ 4))) := by
      gcongr
      calc
          _ ≤ ‖Complex.exp ((A : ℂ) * z) * transformPolynomial ((A : ℂ) * z)‖ +
              ‖Complex.exp (-(A : ℂ) * z) * transformPolynomial (-(A : ℂ) * z)‖ :=
            norm_sub_le _ _
          _ ≤ _ := by
            simp only [norm_mul]
            gcongr
            simpa only [neg_mul] using hn
    _ = decayConstant A / ‖z‖ ^ 3 := by
      unfold decayConstant
      field_simp
      ring

/-- Cubic transform decay gives the sixth-power majorant used by the actual zero count. -/
theorem transform_square_norm_le (A : ℝ) (hA : 1 ≤ A) (z : ℂ)
    (hzre : -(1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 / 2) (hz : 1 ≤ ‖z‖) :
    ‖bilateralTransform A z ^ 2‖ ≤
      (64 * decayConstant A ^ 2) * (1 + ‖z‖) ^ (-6 : ℝ) := by
  have hr : 0 < ‖z‖ := by linarith
  have hr1 : 0 < 1 + ‖z‖ := by positivity
  have hpow : (1 + ‖z‖) ^ 6 ≤ 64 * ‖z‖ ^ 6 := by
    calc
      _ ≤ (2 * ‖z‖) ^ 6 := by gcongr; linarith
      _ = _ := by ring
  have hinv : 1 / ‖z‖ ^ 6 ≤ 64 / (1 + ‖z‖) ^ 6 := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).2
    simpa only [one_mul] using hpow
  have hs := pow_le_pow_left₀ (norm_nonneg (bilateralTransform A z))
    (transform_norm_le A hA z hzre hz) 2
  calc
    _ ≤ (decayConstant A / ‖z‖ ^ 3) ^ 2 := by simpa only [norm_pow] using hs
    _ = decayConstant A ^ 2 * (1 / ‖z‖ ^ 6) := by ring
    _ ≤ decayConstant A ^ 2 * (64 / (1 + ‖z‖) ^ 6) :=
      mul_le_mul_of_nonneg_left hinv (sq_nonneg _)
    _ = _ := by
      rw [show (-6 : ℝ) = -(6 : ℕ) by norm_num, Real.rpow_neg hr1.le,
        Real.rpow_natCast]
      ring

/-- Only finitely many actual occurrence slots have shifted norm below one. -/
theorem eventually_one_le_shifted_norm :
    ∀ᶠ o : ZeroOccurrence in cofinite, 1 ≤ ‖shiftedValue o‖ := by
  rw [eventually_cofinite]
  have hfinite : Finite (ZeroSummability.ZeroShell 0) := ZeroSummability.zeroShell_finite 0
  have hf : {o : ZeroOccurrence | ZeroSummability.shellIndex o = 0}.Finite :=
    Set.finite_coe_iff.mp hfinite
  simpa only [not_le, ZeroSummability.shellIndex, Nat.floor_eq_zero] using hf

/-- The norms of the actual transform squares form a summable family over all occurrences. -/
theorem source_transform_square_norms_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun o : ZeroOccurrence ↦ ‖bilateralTransform A (shiftedValue o) ^ 2‖) := by
  have hsum : Summable (fun o : ZeroOccurrence ↦
      (64 * decayConstant A ^ 2) * (1 + ‖shiftedValue o‖) ^ (-6 : ℝ)) :=
    ZeroShellCount.zero_summability.mul_left _
  apply hsum.of_norm_bounded_eventually
  filter_upwards [eventually_one_le_shifted_norm] with o ho
  simpa only [norm_norm] using transform_square_norm_le A hA (shiftedValue o)
    ⟨(shiftedValue_strip o).1.le, (shiftedValue_strip o).2.le⟩ ho

/-- Ordinary complex squares of the actual bilateral transforms are summable at every source radius.
This supplies the summability component of `ZeroSideIdentityObligation`, without its open equality. -/
theorem source_transform_squares_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun o : ZeroOccurrence ↦ bilateralTransform A (shiftedValue o) ^ 2) :=
  (source_transform_square_norms_summable A hA).of_norm

end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceZeroSummability

#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceZeroSummability.source_transform_squares_summable

#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceZeroSummability.source_transform_square_norms_summable

#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceZeroSummability.transform_square_norm_le
```
