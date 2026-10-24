# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.PrimeHarmonicRemainderStatements.Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37b57d66ada629b0053b1c084a9d9966d9b0b6cc` · SHA-256 `c233b032bdf531388d17fbc2447202c2a80882dc0a135450f9f1bb4add1f0dd2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ThetaConstant.Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ThetaConstant.Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a","mathematical_subject":"Analysis.Integration","original_sha256":"dcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/prime-square/PrimeHarmonicRemainderStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments
import Mathlib.MeasureTheory.Integral.Prod
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Genuine prime-harmonic remainder and its weighted absolute moment

The actual logarithmic theta error supplies all arithmetic input. The tail
integral and centering retain the lower endpoint. A positive triangular kernel
is proved integrable before its two integrations are interchanged; its reverse
fiber is exactly one half of the second theta-error moment.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ThetaConstant.Variantdcf4e17ab66bf7447a45091e302f9774d012b9e29b5ca7ed8c99648ac4a4778a

namespace PrimeHarmonicRemainderScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments
noncomputable section

def thetaConstant : ℝ := 1 + ∫ v in Ioi 0, thetaLogError v

def thetaTail (u : ℝ) : ℝ := ∫ v in Ioi u, thetaLogError v

def thetaRemainder (u : ℝ) : ℝ := thetaLogError u - thetaTail u

theorem thetaLogError_signed_integrable : IntegrableOn thetaLogError (Ioi 0) := by
  apply (integrable_norm_iff thetaLogError_measurable.aestronglyMeasurable).mp
  simpa only [Real.norm_eq_abs, IntegrableOn] using thetaLogError_integrable

theorem thetaTail_integrable (u : ℝ) (hu : 0 ≤ u) :
    IntegrableOn thetaLogError (Ioi u) :=
  thetaLogError_signed_integrable.mono_set (Ioi_subset_Ioi hu)

theorem prefix_add_tail (u : ℝ) (hu : 0 ≤ u) :
    (∫ v in 0..u, thetaLogError v) + thetaTail u = ∫ v in Ioi 0, thetaLogError v :=
  intervalIntegral.integral_interval_add_Ioi thetaLogError_signed_integrable
    (thetaTail_integrable u hu)

theorem centered_prefix_eq (u : ℝ) (hu : 0 ≤ u) :
    u + 1 + thetaLogError u + (∫ v in 0..u, thetaLogError v) =
      u + thetaConstant + thetaRemainder u := by
  have h := prefix_add_tail u hu
  unfold thetaConstant thetaRemainder
  linarith

theorem thetaTail_measurable : Measurable thetaTail := by
  have hm : Measurable (fun p : ℝ × ℝ => if p.1 < p.2 then thetaLogError p.2 else 0) :=
    Measurable.ite (measurableSet_lt measurable_fst measurable_snd)
      (thetaLogError_measurable.comp measurable_snd) measurable_const
  have hi := hm.stronglyMeasurable.integral_prod_right' (ν := (volume : Measure ℝ))
  have he (u : ℝ) : (∫ v : ℝ, if u < v then thetaLogError v else 0) = thetaTail u := by
    change (∫ v : ℝ, (Ioi u).indicator thetaLogError v) = _
    exact integral_indicator measurableSet_Ioi
  convert hi.measurable using 1
  funext u
  exact (he u).symm

theorem thetaRemainder_measurable : Measurable thetaRemainder :=
  thetaLogError_measurable.sub thetaTail_measurable

private def tailKernel (p : ℝ × ℝ) : ℝ :=
  if p.1 < p.2 then p.1 * |thetaLogError p.2| else 0

private theorem tailKernel_measurable : Measurable tailKernel :=
  Measurable.ite (measurableSet_lt measurable_fst measurable_snd)
    (measurable_fst.mul (thetaLogError_measurable.comp measurable_snd).abs) measurable_const

private theorem tailKernel_fiber_integrable (v : ℝ) :
    Integrable (fun u => tailKernel (u, v)) (volume.restrict (Ioi 0)) := by
  change Integrable ((Iio v).indicator (fun u => u * |thetaLogError v|))
    (volume.restrict (Ioi 0))
  rw [integrable_indicator_iff measurableSet_Iio]
  unfold IntegrableOn
  rw [Measure.restrict_restrict measurableSet_Iio, Iio_inter_Ioi]
  exact ((continuous_id.mul continuous_const).integrableOn_Icc).mono_set Ioo_subset_Icc_self

private theorem tailKernel_fiber_integral (v : ℝ) (hv : 0 ≤ v) :
    (∫ u in Ioi 0, tailKernel (u, v)) = (1 / 2 : ℝ) * (v ^ 2 * |thetaLogError v|) := by
  change (∫ u in Ioi 0, (Iio v).indicator (fun u => u * |thetaLogError v|) u) = _
  rw [integral_indicator measurableSet_Iio, Measure.restrict_restrict measurableSet_Iio,
    Iio_inter_Ioi, ← integral_Ioc_eq_integral_Ioo,
    ← intervalIntegral.integral_of_le hv, intervalIntegral.integral_mul_const,
    integral_id]
  ring

private theorem tailKernel_fiber_norm (v : ℝ) :
    (∫ u in Ioi 0, ‖tailKernel (u, v)‖) = ∫ u in Ioi 0, tailKernel (u, v) := by
  apply integral_congr_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
  rw [Real.norm_eq_abs, abs_of_nonneg]
  unfold tailKernel
  split_ifs
  · exact mul_nonneg hu.le (abs_nonneg _)
  · exact le_rfl

private theorem tailKernel_integrable :
    Integrable tailKernel ((volume.restrict (Ioi 0)).prod (volume.restrict (Ioi 0))) := by
  apply (integrable_prod_iff' tailKernel_measurable.aestronglyMeasurable).mpr
  constructor
  · exact Filter.Eventually.of_forall tailKernel_fiber_integrable
  · apply (thetaLogError_second_moment_integrable.const_mul (1 / 2 : ℝ)).congr
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with v hv
    rw [tailKernel_fiber_norm, tailKernel_fiber_integral v hv.le]

private theorem tailKernel_outer (u : ℝ) (hu : 0 ≤ u) :
    (∫ v in Ioi 0, tailKernel (u, v)) = u * ∫ v in Ioi u, |thetaLogError v| := by
  change (∫ v in Ioi 0, (Ioi u).indicator (fun v => u * |thetaLogError v|) v) = _
  rw [integral_indicator measurableSet_Ioi, Measure.restrict_restrict measurableSet_Ioi,
    inter_eq_left.mpr (Ioi_subset_Ioi hu), integral_const_mul]

theorem absolute_tail_first_moment_integrable :
    IntegrableOn (fun u => u * ∫ v in Ioi u, |thetaLogError v|) (Ioi 0) := by
  apply tailKernel_integrable.integral_prod_left.congr
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
  exact tailKernel_outer u hu.le

theorem absolute_tail_first_moment :
    (∫ u in Ioi 0, u * ∫ v in Ioi u, |thetaLogError v|) =
      (1 / 2 : ℝ) * ∫ v in Ioi 0, v ^ 2 * |thetaLogError v| := by
  calc
    _ = ∫ u in Ioi 0, ∫ v in Ioi 0, tailKernel (u, v) := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
      exact (tailKernel_outer u hu.le).symm
    _ = ∫ v in Ioi 0, ∫ u in Ioi 0, tailKernel (u, v) :=
      integral_integral_swap tailKernel_integrable
    _ = ∫ v in Ioi 0, (1 / 2 : ℝ) * (v ^ 2 * |thetaLogError v|) := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with v hv
      exact tailKernel_fiber_integral v hv.le
    _ = _ := integral_const_mul _ _

theorem thetaRemainder_abs_le (u : ℝ) :
    |thetaRemainder u| ≤ |thetaLogError u| + ∫ v in Ioi u, |thetaLogError v| := by
  apply (abs_sub _ _).trans
  apply add_le_add le_rfl
  simpa only [thetaTail, Real.norm_eq_abs] using
    (norm_integral_le_integral_norm (f := thetaLogError) (μ := volume.restrict (Ioi u)))

theorem thetaRemainder_first_moment_integrable :
    IntegrableOn (fun u => u * |thetaRemainder u|) (Ioi 0) := by
  have hm : AEStronglyMeasurable (fun u => u * |thetaRemainder u|)
      (volume.restrict (Ioi 0)) :=
    (measurable_id.mul thetaRemainder_measurable.abs).aestronglyMeasurable
  apply (thetaLogError_first_moment_integrable.add
    absolute_tail_first_moment_integrable).mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
  rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg hu.le (abs_nonneg _))]
  calc
    _ ≤ u * (|thetaLogError u| + ∫ v in Ioi u, |thetaLogError v|) :=
      mul_le_mul_of_nonneg_left (thetaRemainder_abs_le u) hu.le
    _ = _ := mul_add _ _ _

theorem thetaRemainder_first_moment_bound :
    (∫ u in Ioi 0, u * |thetaRemainder u|) ≤
      (∫ u in Ioi 0, u * |thetaLogError u|) +
        (1 / 2 : ℝ) * ∫ u in Ioi 0, u ^ 2 * |thetaLogError u| := by
  rw [← absolute_tail_first_moment, ← integral_add
    thetaLogError_first_moment_integrable absolute_tail_first_moment_integrable]
  apply integral_mono_ae thetaRemainder_first_moment_integrable
    (thetaLogError_first_moment_integrable.add absolute_tail_first_moment_integrable)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
  calc
    _ ≤ u * (|thetaLogError u| + ∫ v in Ioi u, |thetaLogError v|) :=
      mul_le_mul_of_nonneg_left (thetaRemainder_abs_le u) hu.le
    _ = _ := mul_add _ _ _

end
end PrimeHarmonicRemainderScratch

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments
open PrimeHarmonicRemainderScratch

example : thetaConstant = 1 + ∫ v in Ioi 0, thetaLogError v := rfl

example (u : ℝ) : thetaTail u = ∫ v in Ioi u, thetaLogError v := rfl

example (u : ℝ) : thetaRemainder u = thetaLogError u - thetaTail u := rfl

example : IntegrableOn thetaLogError (Ioi 0) :=
  PrimeHarmonicRemainderScratch.thetaLogError_signed_integrable

example (u : ℝ) (hu : 0 ≤ u) :
    IntegrableOn thetaLogError (Ioi u) :=
  PrimeHarmonicRemainderScratch.thetaTail_integrable u hu

example (u : ℝ) (hu : 0 ≤ u) :
    (∫ v in 0..u, thetaLogError v) + thetaTail u = ∫ v in Ioi 0, thetaLogError v :=
  PrimeHarmonicRemainderScratch.prefix_add_tail u hu

example (u : ℝ) (hu : 0 ≤ u) :
    u + 1 + thetaLogError u + (∫ v in 0..u, thetaLogError v) =
      u + thetaConstant + thetaRemainder u :=
  PrimeHarmonicRemainderScratch.centered_prefix_eq u hu

example : Measurable thetaTail :=
  PrimeHarmonicRemainderScratch.thetaTail_measurable

example : Measurable thetaRemainder :=
  PrimeHarmonicRemainderScratch.thetaRemainder_measurable

example :
    IntegrableOn (fun u => u * ∫ v in Ioi u, |thetaLogError v|) (Ioi 0) :=
  PrimeHarmonicRemainderScratch.absolute_tail_first_moment_integrable

example :
    (∫ u in Ioi 0, u * ∫ v in Ioi u, |thetaLogError v|) =
      (1 / 2 : ℝ) * ∫ v in Ioi 0, v ^ 2 * |thetaLogError v| :=
  PrimeHarmonicRemainderScratch.absolute_tail_first_moment

example (u : ℝ) :
    |thetaRemainder u| ≤ |thetaLogError u| + ∫ v in Ioi u, |thetaLogError v| :=
  PrimeHarmonicRemainderScratch.thetaRemainder_abs_le u

example :
    IntegrableOn (fun u => u * |thetaRemainder u|) (Ioi 0) :=
  PrimeHarmonicRemainderScratch.thetaRemainder_first_moment_integrable

example :
    (∫ u in Ioi 0, u * |thetaRemainder u|) ≤
      (∫ u in Ioi 0, u * |thetaLogError u|) +
        (1 / 2 : ℝ) * ∫ u in Ioi 0, u ^ 2 * |thetaLogError u| :=
  PrimeHarmonicRemainderScratch.thetaRemainder_first_moment_bound

```
