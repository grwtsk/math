# Complete source: GRWTSK.Topology.GeneralTopology.ActualMellinFilterAttempt06.Variant359488970ea49faf184a230ffb8fd93f8740f400d5570f37caad4f56fb02a18e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53f157e5b2e7cca3f5647d1f2bc313ca8d67e21a` · SHA-256 `7bf41cbf0a55eb868b71616b6c4b2e07f11a8d4af06e6c9376917a208c8c5203`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.QuarticBumpLaplace.Variant4dedabde95f531a90af7683b3474cd25b027f69bc441177d4c5d6400370dbc13","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4dedabde95f531a90af7683b3474cd25b027f69bc441177d4c5d6400370dbc13","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.QuarticBumpLaplace.Variant4dedabde95f531a90af7683b3474cd25b027f69bc441177d4c5d6400370dbc13","mathematical_subject":"Topology.GeneralTopology","original_sha256":"4dedabde95f531a90af7683b3474cd25b027f69bc441177d4c5d6400370dbc13","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass18/mellin_hypotheses/ActualMellinFilter-attempt06.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualGoodKernel
import SourceBoundaryOrder

/-! Literal Mellin pole filter for the fixed actual logarithmic source.
Direction: grwtsk contributors. Focused scratch adapter: OpenAI Codex.
The primitive transform is independently defined as its compact integral.
No Mellin zero-free theorem, Nyman closure or signed arithmetic budget is assumed. -/

namespace GRWTSK.Topology.GeneralTopology.QuarticBumpLaplace.Variant4dedabde95f531a90af7683b3474cd25b027f69bc441177d4c5d6400370dbc13

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMellinFilter
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open ContinuousResearch.LogarithmicSource ContinuousResearch.SourceBoundaryTransform
open ContinuousResearch.SourceBoundaryOrder

/-- Independently defined literal quartic-bump integral, with no special-function assumption. -/
def quarticBumpLaplace (w : ℂ) : ℂ :=
  ∫ v in (-1 : ℝ)..1, (((1-v^2)^4 : ℝ) : ℂ)*Complex.exp (w*(v : ℂ))

theorem quarticBumpLaplace_integrable (w : ℂ) :
    IntervalIntegrable (fun v : ℝ => (((1-v^2)^4 : ℝ) : ℂ)*
      Complex.exp (w*(v : ℂ))) volume (-1) 1 := by
  exact (show Continuous (fun v : ℝ => (((1-v^2)^4 : ℝ) : ℂ)*
    Complex.exp (w*(v : ℂ))) by fun_prop).intervalIntegrable _ _

theorem primitiveTransform_eq_interval {A : ℝ} (hA : 0 < A) (z : ℂ) :
    primitiveTransform A z =
      ∫ x in -A..A, (bumpInterior A x : ℂ)*Complex.exp (z*(x : ℂ)) := by
  have he : (fun x : ℝ => (scaledBump A x : ℂ)*Complex.exp (z*(x : ℂ))) =
      (Icc (-A) A).indicator (fun x : ℝ => (bumpInterior A x : ℂ)*
        Complex.exp (z*(x : ℂ))) := by
    funext x
    rw [scaledBump_eq_indicator A hA]
    by_cases hx : x ∈ Icc (-A) A <;> simp [hx]
  unfold primitiveTransform compactLaplace
  rw [he,integral_indicator measurableSet_Icc,integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (show -A ≤ A by linarith)]

theorem primitiveTransform_eq_quartic {A : ℝ} (hA : 0 < A) (z : ℂ) :
    primitiveTransform A z = (Real.sqrt A : ℂ)*quarticBumpLaplace ((A : ℂ)*z) := by
  rw [primitiveTransform_eq_interval hA]
  have hc := intervalIntegral.smul_integral_comp_mul_left
    (f := fun x : ℝ => (bumpInterior A x : ℂ)*Complex.exp (z*(x : ℂ)))
    (a := -1) (b := 1) A
  simp only [mul_neg_one,mul_one,Complex.real_smul] at hc
  rw [← hc]
  have he (v : ℝ) : (bumpInterior A (A*v) : ℂ)*Complex.exp (z*((A*v : ℝ) : ℂ)) =
      ((((1-v^2)^4 : ℝ) : ℂ)*Complex.exp (((A : ℂ)*z)*(v : ℂ))) /
        (Real.sqrt A : ℂ) := by
    simp only [bumpInterior,mul_div_cancel_left₀ _ hA.ne',Complex.ofReal_div,
      Complex.ofReal_mul]
    rw [show z*((A : ℂ)*(v : ℂ)) = ((A : ℂ)*z)*(v : ℂ) by ring]
    ring
  simp_rw [he]
  rw [intervalIntegral.integral_div]
  change (A : ℂ)*(quarticBumpLaplace ((A : ℂ)*z)/(Real.sqrt A : ℂ)) = _
  have hs : (Real.sqrt A : ℂ)^2 = (A : ℂ) := by exact_mod_cast Real.sq_sqrt hA.le
  have hn : (Real.sqrt A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr hA).ne'
  rw [← hs]
  field_simp


theorem actual_mellin_eq_normalizedTransform (A : ℝ) (s : ℂ) :
    mellin (fun x => (actualLogSource A x : ℂ)) s = normalizedTransform A (s-1/2) := by
  rw [actualLogSource,lift_mellin_eq_bilateral]
  rfl

theorem actual_mellin_pole_filter {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    mellin (fun x => (actualLogSource A x : ℂ)) s =
      s*(s-1)*normalizedPrimitiveTransform A (s-1/2) := by
  rw [actual_mellin_eq_normalizedTransform,actual_complex_pole_filter hA]
  congr 1
  ring

theorem actual_mellin_pole_filter_unnormalized {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    mellin (fun x => (actualLogSource A x : ℂ)) s =
      s*(s-1)*primitiveTransform A (s-1/2)/(Real.sqrt (sourceNormalization A) : ℂ) := by
  rw [actual_mellin_pole_filter hA,primitive_transform_normalization]
  ring

theorem actual_mellin_nonzero_iff_bump {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    mellin (fun x => (actualLogSource A x : ℂ)) s ≠ 0 ↔
      primitiveTransform A (s-1/2) ≠ 0 := by
  have hz := (Real.sqrt_pos.mpr (source_normalization_pos A hA)).ne'
  rw [actual_mellin_pole_filter_unnormalized hA]
  simp only [ne_eq,div_eq_zero_iff,mul_eq_zero,sub_eq_zero]
  have hz' : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hz
  tauto

theorem actual_mellin_halfstrip_nonzero_iff_bump {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) :
    mellin (fun x => (actualLogSource A x : ℂ)) s ≠ 0 ↔
      primitiveTransform A (s-1/2) ≠ 0 := by
  apply actual_mellin_nonzero_iff_bump hA
  · intro he; norm_num [he] at hl
  · intro he; simp [he] at hu

theorem actual_mellin_eq_quartic {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    mellin (fun x => (actualLogSource A x : ℂ)) s =
      s*(s-1)*(Real.sqrt A : ℂ)*quarticBumpLaplace ((A : ℂ)*(s-1/2)) /
        (Real.sqrt (sourceNormalization A) : ℂ) := by
  rw [actual_mellin_pole_filter_unnormalized hA,
    primitiveTransform_eq_quartic (show 0 < A by linarith)]
  ring

theorem actual_mellin_halfstrip_nonzero_iff_quartic {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) :
    mellin (fun x => (actualLogSource A x : ℂ)) s ≠ 0 ↔
      quarticBumpLaplace ((A : ℂ)*(s-1/2)) ≠ 0 := by
  have hp : 0 < A := by linarith
  rw [actual_mellin_halfstrip_nonzero_iff_bump hA hl hu,primitiveTransform_eq_quartic hp]
  have hn : (Real.sqrt A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr hp).ne'
  simp [hn]

theorem actual_halfstrip_quartic_argument_pos {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) : 0 < (((A : ℂ)*(s-1/2)).re) := by
  have hp : 0 < A := by linarith
  have he : (((A : ℂ)*(s-1/2)).re) = A*(s.re-1/2) := by
    simp
  rw [he]
  exact mul_pos hp (sub_pos.mpr hl)


end ContinuousResearch.ActualMellinFilter

#check ContinuousResearch.ActualMellinFilter.quarticBumpLaplace
#print axioms ContinuousResearch.ActualMellinFilter.quarticBumpLaplace
#print ContinuousResearch.ActualMellinFilter.quarticBumpLaplace

#check ContinuousResearch.ActualMellinFilter.quarticBumpLaplace_integrable
#print axioms ContinuousResearch.ActualMellinFilter.quarticBumpLaplace_integrable
#print ContinuousResearch.ActualMellinFilter.quarticBumpLaplace_integrable

#check ContinuousResearch.ActualMellinFilter.primitiveTransform_eq_interval
#print axioms ContinuousResearch.ActualMellinFilter.primitiveTransform_eq_interval
#print ContinuousResearch.ActualMellinFilter.primitiveTransform_eq_interval

#check ContinuousResearch.ActualMellinFilter.primitiveTransform_eq_quartic
#print axioms ContinuousResearch.ActualMellinFilter.primitiveTransform_eq_quartic
#print ContinuousResearch.ActualMellinFilter.primitiveTransform_eq_quartic

#check ContinuousResearch.ActualMellinFilter.actual_mellin_eq_normalizedTransform
#print axioms ContinuousResearch.ActualMellinFilter.actual_mellin_eq_normalizedTransform
#print ContinuousResearch.ActualMellinFilter.actual_mellin_eq_normalizedTransform

#check ContinuousResearch.ActualMellinFilter.actual_mellin_pole_filter
#print axioms ContinuousResearch.ActualMellinFilter.actual_mellin_pole_filter
#print ContinuousResearch.ActualMellinFilter.actual_mellin_pole_filter

#check ContinuousResearch.ActualMellinFilter.actual_mellin_pole_filter_unnormalized
#print axioms ContinuousResearch.ActualMellinFilter.actual_mellin_pole_filter_unnormalized
#print ContinuousResearch.ActualMellinFilter.actual_mellin_pole_filter_unnormalized

#check ContinuousResearch.ActualMellinFilter.actual_mellin_nonzero_iff_bump
#print axioms ContinuousResearch.ActualMellinFilter.actual_mellin_nonzero_iff_bump
#print ContinuousResearch.ActualMellinFilter.actual_mellin_nonzero_iff_bump

#check ContinuousResearch.ActualMellinFilter.actual_mellin_halfstrip_nonzero_iff_bump
#print axioms ContinuousResearch.ActualMellinFilter.actual_mellin_halfstrip_nonzero_iff_bump
#print ContinuousResearch.ActualMellinFilter.actual_mellin_halfstrip_nonzero_iff_bump

#check ContinuousResearch.ActualMellinFilter.actual_mellin_eq_quartic
#print axioms ContinuousResearch.ActualMellinFilter.actual_mellin_eq_quartic
#print ContinuousResearch.ActualMellinFilter.actual_mellin_eq_quartic

#check ContinuousResearch.ActualMellinFilter.actual_mellin_halfstrip_nonzero_iff_quartic
#print axioms ContinuousResearch.ActualMellinFilter.actual_mellin_halfstrip_nonzero_iff_quartic
#print ContinuousResearch.ActualMellinFilter.actual_mellin_halfstrip_nonzero_iff_quartic

#check ContinuousResearch.ActualMellinFilter.actual_halfstrip_quartic_argument_pos
#print axioms ContinuousResearch.ActualMellinFilter.actual_halfstrip_quartic_argument_pos
#print ContinuousResearch.ActualMellinFilter.actual_halfstrip_quartic_argument_pos
```
