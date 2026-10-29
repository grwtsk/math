-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.PolynomialNormLe.Variant9df08460eef073b5b3c17069f3bb95ee4c971ec752e751479f0df5d038946d7c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9df08460eef073b5b3c17069f3bb95ee4c971ec752e751479f0df5d038946d7c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.PolynomialNormLe.Variant9df08460eef073b5b3c17069f3bb95ee4c971ec752e751479f0df5d038946d7c","mathematical_subject":"Algebra.Polynomials","original_sha256":"9df08460eef073b5b3c17069f3bb95ee4c971ec752e751479f0df5d038946d7c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/formalization_audit/ScaleAwareZeroDecay.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent

/-!
Scratch research: preserve the scale denominator in the accepted actual-source
transform formula. This is a quantitative approximation lemma, not a signed
zero-sum lower witness or an RH theorem. grwtsk contributors's source program;
OpenAI Codex independent scale-bound derivation.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.PolynomialNormLe.Variant9df08460eef073b5b3c17069f3bb95ee4c971ec752e751479f0df5d038946d7c

set_option autoImplicit false

namespace ContinuousResearch.ScaleAwareZeroDecay

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroSideTargets

noncomputable section

private theorem polynomial_norm_le (t : ℂ) (ht : 1 ≤ ‖t‖) :
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

/-- The scale-aware constant retains A⁴/A^(17/2) from the exact source formula. -/
def decayConstant (A : ℝ) : ℝ :=
  408576 * (A ^ 4 / A ^ (17 / 2 : ℝ)) * Real.exp (A / 2)

/-- Positive radii make the retained scale ratio exactly A^(-9/2). -/
theorem decayConstant_eq_neg_nine_half {A : ℝ} (hA : 0 < A) :
    decayConstant A = 408576 * A ^ (-(9 / 2 : ℝ)) * Real.exp (A / 2) := by
  have hs : A ^ 4 / A ^ (17 / 2 : ℝ) = A ^ (-(9 / 2 : ℝ)) := by
    rw [← Real.rpow_natCast A 4, ← Real.rpow_sub hA]
    norm_num
  rw [decayConstant, hs]

/-- The actual unnormalized source transform has cubic frequency decay with its
full radius denominator. Every A and z is quantified in the stated domains. -/
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
  have hscale_norm : ‖((A ^ (17 / 2 : ℝ) : ℝ) : ℂ)‖ = A ^ (17 / 2 : ℝ) := by
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
  rw [ZeroTransform.actual_transform A hApos z hz0]
  unfold dividedTransform
  rw [norm_mul, norm_div, norm_mul, norm_mul, norm_pow, hscale_norm]
  norm_num only [Complex.norm_ofNat]
  calc
    _ ≤ (384 * (2 * ‖z‖ ^ 2) / (A ^ (17 / 2 : ℝ) * ‖z‖ ^ 9)) *
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

/-- The radius exponent is explicit; the transform is still unnormalized. -/
theorem transform_norm_le_neg_nine_half (A : ℝ) (hA : 1 ≤ A) (z : ℂ)
    (hzre : -(1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 / 2) (hz : 1 ≤ ‖z‖) :
    ‖bilateralTransform A z‖ ≤
      408576 * A ^ (-(9 / 2 : ℝ)) * Real.exp (A / 2) / ‖z‖ ^ 3 := by
  simpa only [decayConstant_eq_neg_nine_half (show 0 < A by linarith)] using
    transform_norm_le A hA z hzre hz

/-- The norm of an ordinary complex square supplies a tail majorant only. -/
theorem transform_square_norm_le (A : ℝ) (hA : 1 ≤ A) (z : ℂ)
    (hzre : -(1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 / 2) (hz : 1 ≤ ‖z‖) :
    ‖bilateralTransform A z ^ 2‖ ≤ decayConstant A ^ 2 / ‖z‖ ^ 6 := by
  have hs := pow_le_pow_left₀ (norm_nonneg (bilateralTransform A z))
    (transform_norm_le A hA z hzre hz) 2
  simpa only [norm_pow, div_pow, ← pow_mul, Nat.mul_comm 3 2] using hs

#check decayConstant_eq_neg_nine_half
#check transform_norm_le
#check transform_norm_le_neg_nine_half
#check transform_square_norm_le
#print axioms decayConstant_eq_neg_nine_half
#print axioms transform_norm_le
#print axioms transform_norm_le_neg_nine_half
#print axioms transform_square_norm_le

end
end ContinuousResearch.ScaleAwareZeroDecay
