# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Ab7842ccd58622dc71d4UpperSampling.Variantab47bf7613e03c67869fdcc91b897a21ccbdbf50f084ddd5b2fff85f84814d00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `634371ee418e986144cfc80562fc7032ebd7247c` · SHA-256 `5a7420a19f5361ea4e2d9e77183f08415979513c106a94387e65700de3bd381f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.UpperWeight.Variantab7842ccd58622dc71d46cb8c0905588befdb8d5d92b17724ef5757035ac63e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab7842ccd58622dc71d46cb8c0905588befdb8d5d92b17724ef5757035ac63e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.UpperWeight.Variantab7842ccd58622dc71d46cb8c0905588befdb8d5d92b17724ef5757035ac63e5","mathematical_subject":"Analysis.Integration","original_sha256":"ab7842ccd58622dc71d46cb8c0905588befdb8d5d92b17724ef5757035ac63e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/ab7842ccd58622dc71d4-UpperSampling.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceSamplingRemainder
import FormalResearch.RiemannHypothesis.SourceSamplingCoefficients

/-!
Localized positive-logarithm sampling error for the unchanged actual source.
The upper domain is (1,infinity); the unit endpoint has Lebesgue measure zero.
No signed arithmetic witness or lower-half identity is assumed.
Research direction: grwtsk contributors. Scratch proof: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.UpperWeight.Variantab7842ccd58622dc71d46cb8c0905588befdb8d5d92b17724ef5757035ac63e5

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.UpperSampling
open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourceSamplingRemainder SourceSamplingCoefficients SourcePositiveSampling

/-- Unweighted actual positive-log moment; fractional part is bounded by one only on this half. -/
def upperWeight (j : ℕ) (u : ℝ) : ℝ := u ^ (-(3 : ℝ) / 2) * (Real.log u)^j

theorem upperWeight_exp (j : ℕ) (t : ℝ) :
    Real.exp t * upperWeight j (Real.exp t) = t^j * Real.exp (-t/2) := by
  unfold upperWeight
  rw [Real.log_exp, Real.rpow_def_of_pos (Real.exp_pos t), Real.log_exp]
  rw [← mul_assoc, ← Real.exp_add]
  have he : t + t * (-(3 : ℝ)/2) = -t/2 := by ring
  rw [he]
  ring

theorem upperWeight_integrable (j : ℕ) : IntegrableOn (upperWeight j) (Ioi 1) := by
  have h := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (s := Ioi (0 : ℝ)) (f := Real.exp) (f' := Real.exp) measurableSet_Ioi
    (fun t _ => (Real.hasDerivAt_exp t).hasDerivWithinAt)
    Real.exp_injective.injOn (upperWeight j)
  rw [Real.image_exp_Ioi, Real.exp_zero] at h
  apply h.mpr
  simpa only [abs_of_pos (Real.exp_pos _), smul_eq_mul, upperWeight_exp] using
    exponential_half_integrable j

theorem upperWeight_integral (j : ℕ) :
    (∫ u in Ioi (1 : ℝ), upperWeight j u) = 2^(j+1)*(j.factorial : ℝ) := by
  have h := integral_image_eq_integral_abs_deriv_smul
    (s := Ioi (0 : ℝ)) (f := Real.exp) (f' := Real.exp) measurableSet_Ioi
    (fun t _ => (Real.hasDerivAt_exp t).hasDerivWithinAt)
    Real.exp_injective.injOn (upperWeight j)
  rw [Real.image_exp_Ioi, Real.exp_zero] at h
  simp only [abs_of_pos (Real.exp_pos _), smul_eq_mul, upperWeight_exp] at h
  exact h.trans (exponential_half_integral j)

theorem upper_log_moments :
    (∫ u in Ioi (1 : ℝ), upperWeight 1 u) = 4 ∧
      (∫ u in Ioi (1 : ℝ), upperWeight 2 u) = 16 := by
  constructor <;> norm_num [upperWeight_integral]

/-- Literal maintained derivative error at the unit arithmetic source. -/
def actualRemainder (A u : ℝ) : ℝ :=
  Int.fract u * (deriv (plainProfile A 1) u - plainModelDerivative A 1 u)

theorem actualRemainder_measurable {A : ℝ} (hA : 1 ≤ A) :
    Measurable (actualRemainder A) := by
  unfold actualRemainder plainModelDerivative
  have hd := (plainProfile_contDiff (by linarith : 0 < A) 1).continuous_deriv (by norm_num)
  exact measurable_fract.mul (hd.measurable.sub (by fun_prop))

theorem upper_remainder_pointwise {A u : ℝ} (hA : 1 ≤ A) (hu : 1 < u) :
    |actualRemainder A u| ≤
      ((162826/7623 : ℝ)/A^2) * (upperWeight 1 u + upperWeight 2 u/4) := by
  have hu0 : 0 < u := (by norm_num : (0 : ℝ) < 1).trans hu
  have hl : 0 ≤ Real.log u := Real.log_nonneg hu.le
  unfold actualRemainder
  rw [abs_mul, abs_of_nonneg (Int.fract_nonneg u)]
  have h := plain_derivative_difference_abs_le hA (by norm_num : (0 : ℝ) < 1) hu0
  simp only [Real.sqrt_one, mul_one, abs_of_nonneg hl] at h
  calc
    Int.fract u * |deriv (plainProfile A 1) u - plainModelDerivative A 1 u|
        ≤ Int.fract u * (((162826/7623 : ℝ)/A^2) * u^(-3/2 : ℝ) *
          (Real.log u + (Real.log u)^2/4)) :=
      mul_le_mul_of_nonneg_left h (Int.fract_nonneg u)
    _ ≤ ((162826/7623 : ℝ)/A^2) * u^(-3/2 : ℝ) *
          (Real.log u + (Real.log u)^2/4) := by
      apply mul_le_of_le_one_left (by positivity) (Int.fract_lt_one u).le
    _ = _ := by unfold upperWeight; simp only [pow_one]; ring

theorem upper_remainder_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (actualRemainder A) (Ioi 1) := by
  have hi := ((upperWeight_integrable 1).add ((upperWeight_integrable 2).div_const 4)).const_mul
    ((162826/7623 : ℝ)/A^2)
  apply hi.mono' (actualRemainder_measurable hA).aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
  exact (by simpa only [Real.norm_eq_abs, Pi.add_apply] using upper_remainder_pointwise hA hu)

theorem upper_remainder_bound {A : ℝ} (hA : 1 ≤ A) :
    |∫ u in Ioi (1 : ℝ), actualRemainder A u| ≤ 8*(162826/7623 : ℝ)/A^2 := by
  have hi := ((upperWeight_integrable 1).add ((upperWeight_integrable 2).div_const 4)).const_mul
    ((162826/7623 : ℝ)/A^2)
  have hb := norm_integral_le_of_norm_le (f := actualRemainder A) hi (by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    exact (by simpa only [Real.norm_eq_abs, Pi.add_apply] using upper_remainder_pointwise hA hu))
  simp only [Pi.add_apply] at hb
  rw [Real.norm_eq_abs] at hb
  rw [integral_const_mul, integral_add (upperWeight_integrable 1)
    ((upperWeight_integrable 2).div_const 4), integral_div, upperWeight_integral,
    upperWeight_integral] at hb
  norm_num at hb
  exact hb.trans_eq (by ring)

#print axioms upperWeight
#print axioms upperWeight_exp
#print axioms upperWeight_integrable
#print axioms upperWeight_integral
#print axioms upper_log_moments
#print axioms actualRemainder
#print axioms actualRemainder_measurable
#print axioms upper_remainder_pointwise
#print axioms upper_remainder_integrable
#print axioms upper_remainder_bound
end ContinuousResearch.UpperSampling
```
