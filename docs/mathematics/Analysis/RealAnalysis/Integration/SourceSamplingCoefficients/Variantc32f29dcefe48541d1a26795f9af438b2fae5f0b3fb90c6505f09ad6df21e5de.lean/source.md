# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceSamplingCoefficients.Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f8717f97ebc4e425b2439522f89d9b4813585c1` · SHA-256 `e914f02e0f34709d8a3ade960d77121931e2cfea89a439b8cc0b9fdfade65341`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CoefficientWeight.Variantbd29f0bd719547b444121c4e4f0ec51c20bce66058d9f1d4bc6651f71618ae7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd29f0bd719547b444121c4e4f0ec51c20bce66058d9f1d4bc6651f71618ae7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CoefficientWeight.Variantbd29f0bd719547b444121c4e4f0ec51c20bce66058d9f1d4bc6651f71618ae7a","mathematical_subject":"Analysis.Integration","original_sha256":"bd29f0bd719547b444121c4e4f0ec51c20bce66058d9f1d4bc6651f71618ae7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/descendant-incremental-20261006T223836Z/source-references/95cdf6400f59c3fd7d55/SourceSamplingCoefficients.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
import Mathlib.MeasureTheory.Function.Floor

/-!
# Signed universal sampling coefficients

The coefficients are ordinary signed logarithmic moments of fractional part on
all of `(0,∞)`. The absolute majorant retains the below-one contribution.
No sign assumption about a signed moment is used.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.CoefficientWeight.Variantbd29f0bd719547b444121c4e4f0ec51c20bce66058d9f1d4bc6651f71618ae7a

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSamplingCoefficients

open MeasureTheory Set Filter Function

noncomputable section

/-- The signed logarithmic fractional-part integrand. -/
def coefficientWeight (j : ℕ) (u : ℝ) : ℝ :=
  Int.fract u * u ^ (-(3 : ℝ) / 2) * (Real.log u) ^ j

/-- The absolute logarithmic fractional-part integrand on the positive axis. -/
def absoluteCoefficientWeight (j : ℕ) (u : ℝ) : ℝ :=
  Int.fract u * u ^ (-(3 : ℝ) / 2) * |Real.log u| ^ j

/-- The elementary envelope bounds fractional part by `min u 1`. -/
def coefficientEnvelope (j : ℕ) (u : ℝ) : ℝ :=
  min u 1 * u ^ (-(3 : ℝ) / 2) * |Real.log u| ^ j

/-- The logarithmic change of variables turns the envelope into an even exponential. -/
theorem coefficientEnvelope_exp (j : ℕ) (v : ℝ) :
    Real.exp v * coefficientEnvelope j (Real.exp v) =
      Real.exp (-|v| / 2) * |v| ^ j := by
  unfold coefficientEnvelope
  rw [Real.rpow_def_of_pos (Real.exp_pos v), Real.log_exp]
  by_cases hv : 0 ≤ v
  · rw [abs_of_nonneg hv, min_eq_right (Real.one_le_exp_iff.mpr hv)]
    simp only [one_mul]
    rw [← mul_assoc, ← Real.exp_add]
    congr 2
    ring
  · have hv' : v ≤ 0 := le_of_not_ge hv
    rw [abs_of_nonpos hv', min_eq_left (Real.exp_le_one_iff.mpr hv')]
    rw [← mul_assoc, ← mul_assoc, ← Real.exp_add, ← Real.exp_add]
    congr 2
    ring

/-- Each positive half of the exponential majorant has a factorial moment. -/
theorem exponential_half_integral (j : ℕ) :
    (∫ v : ℝ in Ioi 0, v ^ j * Real.exp (-v / 2)) =
      (2 : ℝ) ^ (j + 1) * (j.factorial : ℝ) := by
  have h := Real.integral_rpow_mul_exp_neg_mul_Ioi
    (a := (j : ℝ) + 1) (r := (1 : ℝ) / 2) (by positivity) (by norm_num)
  rw [show (j : ℝ) + 1 = ((j + 1 : ℕ) : ℝ) by simp,
    Real.rpow_natCast, show (1 : ℝ) / (1 / 2) = 2 by norm_num] at h
  rw [show ((j + 1 : ℕ) : ℝ) = (j : ℝ) + 1 by simp,
    Real.Gamma_nat_eq_factorial] at h
  simpa only [add_sub_cancel_right, Real.rpow_natCast,
    show ∀ v : ℝ, -((1 : ℝ) / 2 * v) = -v / 2 by intro v; ring] using h

/-- The positive exponential half is absolutely integrable for every degree. -/
theorem exponential_half_integrable (j : ℕ) :
    IntegrableOn (fun v : ℝ => v ^ j * Real.exp (-v / 2)) (Ioi 0) := by
  have h := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (j : ℝ)) (p := (1 : ℝ)) (b := (1 : ℝ) / 2)
    (by have hj := Nat.cast_nonneg (α := ℝ) j; linarith) (by norm_num) (by norm_num)
  simpa only [Real.rpow_natCast, Real.rpow_one,
    show ∀ v : ℝ, -((1 : ℝ) / 2) * v = -v / 2 by intro v; ring] using h

private theorem even_exponential_eq_indicator (j : ℕ) {v : ℝ} (hv : v ≠ 0) :
    Real.exp (-|v| / 2) * |v| ^ j =
      (Ioi (0 : ℝ)).indicator (fun x : ℝ => x ^ j * Real.exp (-x / 2)) v +
      (Ioi (0 : ℝ)).indicator (fun x : ℝ => x ^ j * Real.exp (-x / 2)) (-v) := by
  rcases lt_or_gt_of_ne hv with hv | hv
  · simp only [Set.indicator_of_notMem (by exact not_lt_of_ge hv.le : v ∉ Ioi (0 : ℝ)),
      Set.indicator_of_mem (by exact neg_pos.mpr hv : -v ∈ Ioi (0 : ℝ)),
      zero_add, abs_of_neg hv]
    ring
  · simp only [Set.indicator_of_mem (by exact hv : v ∈ Ioi (0 : ℝ)),
      Set.indicator_of_notMem (by exact not_lt_of_ge (neg_nonpos.mpr hv.le) :
        -v ∉ Ioi (0 : ℝ)), add_zero, abs_of_pos hv]
    ring

/-- The even exponential majorant is integrable on the whole real line. -/
theorem even_exponential_integrable (j : ℕ) :
    Integrable (fun v : ℝ => Real.exp (-|v| / 2) * |v| ^ j) := by
  have hi := (exponential_half_integrable j).integrable_indicator measurableSet_Ioi
  refine (hi.add hi.comp_neg).congr ?_
  have hn : ∀ᵐ v : ℝ ∂volume, v ≠ 0 := by
    exact volume.ae_ne (0 : ℝ)
  filter_upwards [hn] with v hv
  exact (even_exponential_eq_indicator j hv).symm

/-- The two positive and negative halves give the exact universal factorial budget. -/
theorem even_exponential_integral (j : ℕ) :
    (∫ v : ℝ, Real.exp (-|v| / 2) * |v| ^ j) =
      (2 : ℝ) ^ (j + 2) * (j.factorial : ℝ) := by
  have hi := (exponential_half_integrable j).integrable_indicator measurableSet_Ioi
  have he : (fun v : ℝ => Real.exp (-|v| / 2) * |v| ^ j) =ᵐ[volume]
      fun v : ℝ =>
        (Ioi (0 : ℝ)).indicator (fun x : ℝ => x ^ j * Real.exp (-x / 2)) v +
        (Ioi (0 : ℝ)).indicator (fun x : ℝ => x ^ j * Real.exp (-x / 2)) (-v) := by
    have hn : ∀ᵐ v : ℝ ∂volume, v ≠ 0 := volume.ae_ne (0 : ℝ)
    filter_upwards [hn] with v hv
    exact even_exponential_eq_indicator j hv
  rw [integral_congr_ae he, integral_add hi hi.comp_neg, integral_neg_eq_self,
    integral_indicator measurableSet_Ioi, exponential_half_integral]
  rw [show j + 2 = (j + 1) + 1 by omega, pow_succ]
  ring

/-- The positive-axis envelope is absolutely integrable, including near zero. -/
theorem coefficientEnvelope_integrable (j : ℕ) :
    IntegrableOn (coefficientEnvelope j) (Ioi 0) := by
  have h := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (f := Real.exp) (f' := Real.exp) MeasurableSet.univ
    (fun v _ => (Real.hasDerivAt_exp v).hasDerivWithinAt)
    Real.exp_injective.injOn (coefficientEnvelope j)
  rw [Set.image_univ, Real.range_exp] at h
  apply h.mpr
  simp only [abs_of_pos (Real.exp_pos _), smul_eq_mul]
  simpa only [coefficientEnvelope_exp, integrableOn_univ] using even_exponential_integrable j

/-- The exact positive-axis envelope integral is the factorial budget. -/
theorem coefficientEnvelope_integral (j : ℕ) :
    (∫ u : ℝ in Ioi 0, coefficientEnvelope j u) =
      (2 : ℝ) ^ (j + 2) * (j.factorial : ℝ) := by
  have h := integral_image_eq_integral_abs_deriv_smul
    (f := Real.exp) (f' := Real.exp) MeasurableSet.univ
    (fun v _ => (Real.hasDerivAt_exp v).hasDerivWithinAt)
    Real.exp_injective.injOn (coefficientEnvelope j)
  rw [Set.image_univ, Real.range_exp] at h
  simpa only [abs_of_pos (Real.exp_pos _), smul_eq_mul,
    coefficientEnvelope_exp, setIntegral_univ, even_exponential_integral] using h

/-- Fractional part is bounded by both `u` and `1` for nonnegative `u`. -/
theorem fract_le_min {u : ℝ} (hu : 0 ≤ u) : Int.fract u ≤ min u 1 := by
  apply le_min
  · unfold Int.fract
    have hfloor : (0 : ℝ) ≤ (⌊u⌋ : ℤ) := by
      exact_mod_cast Int.floor_nonneg.mpr hu
    linarith
  · exact (Int.fract_lt_one u).le

/-- The absolute integrand is nonnegative on the positive axis. -/
theorem absoluteCoefficientWeight_nonneg (j : ℕ) {u : ℝ} (hu : 0 < u) :
    0 ≤ absoluteCoefficientWeight j u := by
  unfold absoluteCoefficientWeight
  exact mul_nonneg (mul_nonneg (Int.fract_nonneg u)
    (Real.rpow_pos_of_pos hu _).le) (pow_nonneg (abs_nonneg _) _)

/-- The actual absolute integrand is bounded by the whole-axis envelope. -/
theorem absoluteCoefficientWeight_le_envelope (j : ℕ) {u : ℝ} (hu : 0 < u) :
    absoluteCoefficientWeight j u ≤ coefficientEnvelope j u := by
  unfold absoluteCoefficientWeight coefficientEnvelope
  exact mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_right (fract_le_min hu.le) (Real.rpow_pos_of_pos hu _).le)
    (pow_nonneg (abs_nonneg _) _)

/-- Absolute logarithmic coefficient weights are integrable for all degrees. -/
theorem absoluteCoefficientWeight_integrable (j : ℕ) :
    IntegrableOn (absoluteCoefficientWeight j) (Ioi 0) := by
  apply (coefficientEnvelope_integrable j).mono'
  · exact ((measurable_fract.mul (measurable_id.pow_const (-(3 : ℝ) / 2))).mul
      ((continuous_abs.measurable.comp Real.measurable_log).pow_const j)).aestronglyMeasurable
  · filter_upwards [self_mem_ae_restrict measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs, abs_of_nonneg (absoluteCoefficientWeight_nonneg j hu)]
    exact absoluteCoefficientWeight_le_envelope j hu

/-- The norm of the signed integrand is the corresponding absolute integrand. -/
theorem coefficientWeight_norm (j : ℕ) {u : ℝ} (hu : 0 < u) :
    ‖coefficientWeight j u‖ = absoluteCoefficientWeight j u := by
  unfold coefficientWeight absoluteCoefficientWeight
  rw [Real.norm_eq_abs, abs_mul, abs_mul,
    abs_of_nonneg (Int.fract_nonneg u), abs_of_pos (Real.rpow_pos_of_pos hu _), abs_pow]

/-- Signed logarithmic coefficient weights are absolutely integrable. -/
theorem coefficientWeight_integrable (j : ℕ) :
    IntegrableOn (coefficientWeight j) (Ioi 0) := by
  apply (absoluteCoefficientWeight_integrable j).mono'
  · exact ((measurable_fract.mul (measurable_id.pow_const (-(3 : ℝ) / 2))).mul
      (Real.measurable_log.pow_const j)).aestronglyMeasurable
  · filter_upwards [self_mem_ae_restrict measurableSet_Ioi] with u hu
    exact (coefficientWeight_norm j hu).le

/-- The signed universal moment; odd logarithmic powers retain their signs. -/
def signedCoefficientMoment (j : ℕ) : ℝ :=
  ∫ u : ℝ in Ioi 0, coefficientWeight j u

/-- The absolute moment controls only the sampling remainder. -/
def absoluteCoefficientMoment (j : ℕ) : ℝ :=
  ∫ u : ℝ in Ioi 0, absoluteCoefficientWeight j u

/-- Universal factorial control includes the unit interval below one. -/
theorem absoluteCoefficientMoment_le_factorial (j : ℕ) :
    absoluteCoefficientMoment j ≤ (2 : ℝ) ^ (j + 2) * (j.factorial : ℝ) := by
  unfold absoluteCoefficientMoment
  rw [← coefficientEnvelope_integral]
  apply setIntegral_mono_on (absoluteCoefficientWeight_integrable j)
    (coefficientEnvelope_integrable j) measurableSet_Ioi
  exact fun u hu => absoluteCoefficientWeight_le_envelope j hu

/-- A signed moment is bounded in absolute value by the factorial budget. -/
theorem signedCoefficientMoment_abs_le_factorial (j : ℕ) :
    |signedCoefficientMoment j| ≤ (2 : ℝ) ^ (j + 2) * (j.factorial : ℝ) := by
  have h : |signedCoefficientMoment j| ≤ absoluteCoefficientMoment j := by
    unfold signedCoefficientMoment absoluteCoefficientMoment
    rw [← Real.norm_eq_abs]
    calc
      ‖∫ u : ℝ in Ioi 0, coefficientWeight j u‖ ≤
          ∫ u : ℝ in Ioi 0, ‖coefficientWeight j u‖ := norm_integral_le_integral_norm _
      _ = _ := setIntegral_congr_fun measurableSet_Ioi (fun u hu => coefficientWeight_norm j hu)
  exact h.trans (absoluteCoefficientMoment_le_factorial j)

/-- The zeroth signed derivative coefficient. -/
def samplingAlpha0 : ℝ := -signedCoefficientMoment 0 / 2

/-- The first signed derivative coefficient. -/
def samplingAlpha1 : ℝ := signedCoefficientMoment 0 - signedCoefficientMoment 1 / 2

/-- The second signed derivative coefficient. -/
def samplingAlpha2 : ℝ := 2 * signedCoefficientMoment 1 - signedCoefficientMoment 2 / 2

end
end FormalResearch.RiemannHypothesis.SourceSamplingCoefficients
```
