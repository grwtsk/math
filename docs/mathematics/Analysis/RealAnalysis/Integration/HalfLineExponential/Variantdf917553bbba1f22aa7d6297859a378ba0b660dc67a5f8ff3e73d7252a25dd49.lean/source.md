# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.HalfLineExponential.Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a26adbd2364e70dee2b93bca325ad80c04f1a21` · SHA-256 `068820a6795b764cbfe66fb74796b2035dadddb2566f290e29896712e6686f17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.HalfLineMeasure.Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.HalfLineMeasure.Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d","mathematical_subject":"Analysis.Integration","original_sha256":"a268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-zero-energy/HalfLineExponential.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Tactic


namespace GRWTSK.Analysis.RealAnalysis.Integration.HalfLineMeasure.Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d

set_option autoImplicit false
namespace HalfLineExponentialScratch
open MeasureTheory Set
open scoped ComplexConjugate InnerProductSpace
noncomputable section

/-- The actual positive half-line measure. -/
def halfLineMeasure : Measure ℝ := volume.restrict (Ioi 0)

/-- The complex Hilbert space of square-integrable functions on the positive half-line. -/
abbrev H := Lp ℂ 2 halfLineMeasure

/-- The conjugated parameter is intentional: this is the half-plane evaluation vector. -/
def exponentialFunction (z : ℂ) (t : ℝ) : ℂ := Complex.exp (-conj z * (t : ℂ))

theorem exponentialFunction_continuous (z : ℂ) : Continuous (exponentialFunction z) := by
  unfold exponentialFunction
  fun_prop

theorem exponentialFunction_integrable (z : ℂ) (hz : 0 < z.re) :
    Integrable (exponentialFunction z) halfLineMeasure := by
  exact integrableOn_exp_mul_complex_Ioi (a := -conj z) (by simpa using hz) 0

theorem exponentialFunction_norm_sq (z : ℂ) (t : ℝ) :
    ‖exponentialFunction z t‖ ^ 2 = Real.exp ((-2 * z.re) * t) := by
  simp only [exponentialFunction, Complex.norm_exp, Complex.mul_re, Complex.neg_re,
    Complex.conj_re, Complex.ofReal_re, Complex.neg_im, Complex.conj_im,
    Complex.ofReal_im, mul_zero, sub_zero]
  rw [sq, ← Real.exp_add]
  congr 1
  ring

theorem exponentialFunction_sq_integrable (z : ℂ) (hz : 0 < z.re) :
    Integrable (fun t : ℝ ↦ ‖exponentialFunction z t‖ ^ 2) halfLineMeasure := by
  simp_rw [exponentialFunction_norm_sq]
  exact integrableOn_exp_mul_Ioi (a := -2 * z.re) (by linarith) 0

theorem exponentialFunction_memLp (z : ℂ) (hz : 0 < z.re) :
    MemLp (exponentialFunction z) 2 halfLineMeasure :=
  (memLp_two_iff_integrable_sq_norm
    (exponentialFunction_continuous z).aestronglyMeasurable).mpr
      (exponentialFunction_sq_integrable z hz)

theorem exponentialFunction_sq_integral (z : ℂ) (hz : 0 < z.re) :
    (∫ t : ℝ, ‖exponentialFunction z t‖ ^ 2 ∂halfLineMeasure) = 1 / (2 * z.re) := by
  simp_rw [exponentialFunction_norm_sq]
  rw [halfLineMeasure, integral_exp_mul_Ioi (a := -2 * z.re) (by linarith) 0]
  simp

/-- Admission into H uses the proved MemLp statement, rather than a totalized quotient. -/
def exponentialVector (z : ℂ) (hz : 0 < z.re) : H :=
  (exponentialFunction_memLp z hz).toLp (exponentialFunction z)

theorem exponentialVector_ae (z : ℂ) (hz : 0 < z.re) :
    exponentialVector z hz =ᵐ[halfLineMeasure] exponentialFunction z :=
  (exponentialFunction_memLp z hz).coeFn_toLp

theorem pointwise_inner_exponential (w z : ℂ) (t : ℝ) :
    inner ℂ (exponentialFunction w t) (exponentialFunction z t) =
      Complex.exp (-(w + conj z) * (t : ℂ)) := by
  simp only [RCLike.inner_apply, exponentialFunction]
  rw [← Complex.exp_conj]
  simp only [map_mul, map_neg, Complex.conj_conj, Complex.conj_ofReal]
  rw [← Complex.exp_add]
  congr 1
  ring

theorem inner_exponential_integrable (w z : ℂ) (hw : 0 < w.re) (hz : 0 < z.re) :
    Integrable (fun t : ℝ ↦ inner ℂ (exponentialFunction w t) (exponentialFunction z t))
      halfLineMeasure := by
  simp_rw [pointwise_inner_exponential]
  exact integrableOn_exp_mul_complex_Ioi (a := -(w + conj z)) (by simp; linarith) 0

theorem inner_exponential_integral (w z : ℂ) (hw : 0 < w.re) (hz : 0 < z.re) :
    (∫ t : ℝ, inner ℂ (exponentialFunction w t) (exponentialFunction z t)
      ∂halfLineMeasure) = 1 / (w + conj z) := by
  simp_rw [pointwise_inner_exponential]
  rw [halfLineMeasure, integral_exp_mul_complex_Ioi
    (a := -(w + conj z)) (by simp; linarith) 0]
  simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero, neg_div_neg_eq]

/-- Mathlib is conjugate-linear in the first argument, fixing the displayed conjugation. -/
theorem inner_exponentialVector (w z : ℂ) (hw : 0 < w.re) (hz : 0 < z.re) :
    inner ℂ (exponentialVector w hw) (exponentialVector z hz) = 1 / (w + conj z) := by
  rw [L2.inner_def]
  calc
    _ = ∫ t : ℝ, inner ℂ (exponentialFunction w t) (exponentialFunction z t)
        ∂halfLineMeasure := by
      apply integral_congr_ae
      filter_upwards [exponentialVector_ae w hw, exponentialVector_ae z hz] with t hwt hzt
      rw [hwt, hzt]
    _ = _ := inner_exponential_integral w z hw hz

theorem exponentialVector_norm_sq (z : ℂ) (hz : 0 < z.re) :
    ‖exponentialVector z hz‖ ^ 2 = 1 / (2 * z.re) := by
  rw [@norm_sq_eq_re_inner ℂ, inner_exponentialVector]
  have hs : z + conj z = ((2 * z.re : ℝ) : ℂ) := by
    apply Complex.ext
    · simp
      ring
    · simp
  rw [hs]
  simp

theorem exponentialVector_ne_zero (z : ℂ) (hz : 0 < z.re) :
    exponentialVector z hz ≠ 0 := by
  intro h
  have hnorm := exponentialVector_norm_sq z hz
  rw [h, norm_zero, zero_pow (by norm_num : 2 ≠ 0)] at hnorm
  have : 0 < 1 / (2 * z.re) := by positivity
  linarith

/-- The fixed reference vector is exactly e_1 in the same Hilbert space. -/
def referenceVector : H := exponentialVector 1 (by norm_num)

theorem referenceVector_ae :
    referenceVector =ᵐ[halfLineMeasure] (fun t : ℝ ↦ (Real.exp (-t) : ℂ)) := by
  filter_upwards [exponentialVector_ae 1 (by norm_num)] with t ht
  rw [Complex.ofReal_exp]
  simpa [referenceVector, exponentialFunction] using ht

theorem referenceVector_norm_sq : ‖referenceVector‖ ^ 2 = (1 / 2 : ℝ) := by
  simpa [referenceVector] using exponentialVector_norm_sq 1 (by norm_num)

theorem inner_reference_exponential (z : ℂ) (hz : 0 < z.re) :
    inner ℂ referenceVector (exponentialVector z hz) = 1 / (1 + conj z) :=
  inner_exponentialVector 1 z (by norm_num) hz

theorem inner_exponential_reference (z : ℂ) (hz : 0 < z.re) :
    inner ℂ (exponentialVector z hz) referenceVector = 1 / (z + 1) := by
  simpa [referenceVector] using inner_exponentialVector z 1 hz (by norm_num)

theorem norm_sq_inner_reference_exponential (z : ℂ) (hz : 0 < z.re) :
    ‖inner ℂ referenceVector (exponentialVector z hz)‖ ^ 2 = 1 / ‖1 + z‖ ^ 2 := by
  rw [inner_reference_exponential, norm_div, norm_one, div_pow, one_pow]
  have hn : ‖1 + conj z‖ = ‖1 + z‖ := by
    simpa using Complex.norm_conj (1 + z)
  rw [hn]

/-- The exact coefficient available if a separate operator proof later supplies a kernel vector. -/
theorem reference_projection_coefficient (z : ℂ) (hz : 0 < z.re) :
    ‖inner ℂ referenceVector (exponentialVector z hz)‖ ^ 2 /
      ‖exponentialVector z hz‖ ^ 2 = 2 * z.re / ‖1 + z‖ ^ 2 := by
  rw [norm_sq_inner_reference_exponential, exponentialVector_norm_sq]
  field_simp


theorem one_add_ne_zero (z : ℂ) (hz : 0 < z.re) : 1 + z ≠ 0 := by
  intro h
  have hr := congrArg Complex.re h
  simp only [Complex.add_re, Complex.one_re, Complex.zero_re] at hr
  linarith

theorem reference_projection_coefficient_pos (z : ℂ) (hz : 0 < z.re) :
    0 < ‖inner ℂ referenceVector (exponentialVector z hz)‖ ^ 2 /
      ‖exponentialVector z hz‖ ^ 2 := by
  rw [reference_projection_coefficient]
  have hn : 0 < ‖1 + z‖ := norm_pos_iff.mpr (one_add_ne_zero z hz)
  positivity

end
end HalfLineExponentialScratch
```
