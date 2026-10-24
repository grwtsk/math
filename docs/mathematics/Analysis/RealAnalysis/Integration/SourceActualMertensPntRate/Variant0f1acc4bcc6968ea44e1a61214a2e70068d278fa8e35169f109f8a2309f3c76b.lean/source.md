# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualMertensPntRate.Variant0f1acc4bcc6968ea44e1a61214a2e70068d278fa8e35169f109f8a2309f3c76b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9580b6bf2c0233862571810fad613bd4a8f9dacc` · SHA-256 `a908ae13b2102a63e472e805fbe3dee685903117a0e6f93768a8371c7a286912`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualRelativePsiTimeErrorTailIntegrable.Variantcea7b45e0982fb8769285fa3fb7b08d41f0302f3a5b6e6150feeab52b5aa20c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cea7b45e0982fb8769285fa3fb7b08d41f0302f3a5b6e6150feeab52b5aa20c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualRelativePsiTimeErrorTailIntegrable.Variantcea7b45e0982fb8769285fa3fb7b08d41f0302f3a5b6e6150feeab52b5aa20c8","mathematical_subject":"Analysis.Integration","original_sha256":"cea7b45e0982fb8769285fa3fb7b08d41f0302f3a5b6e6150feeab52b5aa20c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-critical-complement/actual-mertens-pnt-rate/native01/SourceActualMertensPntRate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualMertensGammaCalibration

/-!
The actual classical PNT bounds the tail of the genuine relative psi error.
The plus-one unit trace and authentic gamma calibration give an exact tail
formula for the actual centered Mangoldt error and a stretched-exponential
ordinary rate. This supplies no critical signed covariance or RH estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualRelativePsiTimeErrorTailIntegrable.Variantcea7b45e0982fb8769285fa3fb7b08d41f0302f3a5b6e6150feeab52b5aa20c8

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualMertensPntRate

open MeasureTheory Set Filter Asymptotics
open scoped Interval Topology
open SourceActualPsiPntTimeDecay SourceActualMertensOrdinaryLimit
open SourceActualMertensGammaCalibration SourceActualXiErrorConvolution

noncomputable section

/-- The true positive-time relative discrepancy has a genuine integrable tail. -/
theorem actualRelativePsiTimeError_tail_integrable {t : ℝ} (ht : 0 ≤ t) :
    IntegrableOn actualRelativePsiTimeError (Ioi t) := by
  exact actualRelativePsiTimeError_integrableOn.mono_set (by grind)

/-- Actual zero/unit normalization and gamma retain the complete signed tail. -/
theorem actualCenteredMangoldtLogError_eq_delta_sub_tail {t : ℝ} (ht : 0 ≤ t) :
    actualCenteredMangoldtLogError t = actualRelativePsiTimeError t -
      ∫ r in Ioi t, actualRelativePsiTimeError r := by
  have hs := intervalIntegral.integral_Ioi_sub_Ioi
    (actualRelativePsiTimeError_integrableOn.mono_set Ioi_subset_Ici_self) ht
  have hc := actualPntMertensLimit_eq_neg_gamma
  have hn := mangoldtLogError_eq_pnt_relative_primitive ht
  unfold actualCenteredMangoldtLogError
  unfold actualPntMertensLimit at hc
  linarith

/-- Factoring the genuine PNT exponential leaves an integrable half-rate majorant. -/
theorem actualPntHalfRate_integrable {c : ℝ} (hc : 0 < c) :
    IntegrableOn (fun r : ℝ => Real.exp (-(c / 2) * r ^ ((1 : ℝ) / 10))) (Ioi 0) := by
  simpa only [Real.rpow_zero, one_mul] using
    integrableOn_rpow_mul_exp_neg_mul_rpow (by norm_num : (-1 : ℝ) < 0)
      (by norm_num : (0 : ℝ) < 1 / 10) (half_pos hc)

/-- The actual signed tail obeys a quantitative half-rate bound beyond its PNT radius. -/
theorem actualRelativePsiTimeError_tail_abs_le {c C t : ℝ}
    (hc : 0 < c) (hC : 0 ≤ C) (ht : 0 ≤ t)
    (hdelta : ∀ r ≥ t, |actualRelativePsiTimeError r| ≤
      C * Real.exp (-c * r ^ ((1 : ℝ) / 10))) :
    |∫ r in Ioi t, actualRelativePsiTimeError r| ≤
      C * Real.exp (-(c / 2) * t ^ ((1 : ℝ) / 10)) *
        ∫ r in Ioi 0, Real.exp (-(c / 2) * r ^ ((1 : ℝ) / 10)) := by
  let g : ℝ → ℝ := fun r => Real.exp (-(c / 2) * r ^ ((1 : ℝ) / 10))
  have hg : IntegrableOn g (Ioi 0) := actualPntHalfRate_integrable hc
  have hgt : IntegrableOn g (Ioi t) := hg.mono_set (Ioi_subset_Ioi ht)
  have hdf := actualRelativePsiTimeError_tail_integrable ht
  have hfac : ∀ r ∈ Ioi t, |actualRelativePsiTimeError r| ≤
      (C * g t) * g r := by
    intro r hr
    have hpow : t ^ ((1 : ℝ) / 10) ≤ r ^ ((1 : ℝ) / 10) :=
      Real.rpow_le_rpow ht hr.le (by norm_num)
    have hex : Real.exp (-(c / 2) * r ^ ((1 : ℝ) / 10)) ≤ g t := by
      apply Real.exp_le_exp.mpr
      dsimp [g]
      nlinarith
    calc
      _ ≤ C * Real.exp (-c * r ^ ((1 : ℝ) / 10)) := hdelta r hr.le
      _ = C * (g r * g r) := by dsimp [g]; rw [← Real.exp_add]; congr 2; ring
      _ ≤ C * (g t * g r) :=
        mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right hex (Real.exp_pos _).le) hC
      _ = (C * g t) * g r := by ring
  have hmono : (∫ r in Ioi t, |actualRelativePsiTimeError r|) ≤
      (C * g t) * ∫ r in Ioi t, g r := by
    simpa only [integral_const_mul] using
      setIntegral_mono_on hdf.abs (hgt.const_mul (C * g t)) measurableSet_Ioi hfac
  have htail : (∫ r in Ioi t, g r) ≤ ∫ r in Ioi 0, g r :=
    setIntegral_mono_set hg (ae_of_all _ (fun r => (Real.exp_pos _).le))
      (Eventually.of_forall (fun r hr => lt_of_le_of_lt ht hr))
  calc
    _ ≤ ∫ r in Ioi t, |actualRelativePsiTimeError r| := by
      simpa only [Real.norm_eq_abs] using norm_integral_le_integral_norm
        (f := actualRelativePsiTimeError) (μ := volume.restrict (Ioi t))
    _ ≤ (C * g t) * ∫ r in Ioi t, g r := hmono
    _ ≤ (C * g t) * ∫ r in Ioi 0, g r :=
      mul_le_mul_of_nonneg_left htail (mul_nonneg hC (Real.exp_pos _).le)
    _ = _ := rfl

/-- A genuine PNT majorant supplies a stretched-exponential actual centered rate. -/
theorem actualCenteredMangoldtLogError_isBigO :
    ∃ c > 0, actualCenteredMangoldtLogError =O[atTop]
      fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
  obtain ⟨c, hc, hp⟩ := actualRelativePsiTimeError_isBigO
  obtain ⟨C, hC, hbound⟩ := hp.exists_pos
  obtain ⟨T, hT⟩ := eventually_atTop.1 hbound.bound
  let B : ℝ := ∫ r in Ioi 0, Real.exp (-(c / 2) * r ^ ((1 : ℝ) / 10))
  refine ⟨c / 2, half_pos hc, isBigO_iff.mpr ⟨C * (1 + B), ?_⟩⟩
  filter_upwards [eventually_ge_atTop (max 0 T)] with t ht
  have ht0 : 0 ≤ t := (le_max_left 0 T).trans ht
  have hdt : ∀ r ≥ t, |actualRelativePsiTimeError r| ≤
      C * Real.exp (-c * r ^ ((1 : ℝ) / 10)) := by
    intro r hr
    simpa only [Real.norm_eq_abs, Real.abs_exp] using
      hT r ((le_max_right 0 T).trans (ht.trans hr))
  have htail := actualRelativePsiTimeError_tail_abs_le hc hC.le ht0 hdt
  have hex : Real.exp (-c * t ^ ((1 : ℝ) / 10)) ≤
      Real.exp (-(c / 2) * t ^ ((1 : ℝ) / 10)) := by
    apply Real.exp_le_exp.mpr
    have hz := Real.rpow_nonneg ht0 ((1 : ℝ) / 10)
    nlinarith
  rw [Real.norm_eq_abs, Real.norm_eq_abs, Real.abs_exp,
    actualCenteredMangoldtLogError_eq_delta_sub_tail ht0]
  calc
    _ ≤ |actualRelativePsiTimeError t| +
        |∫ r in Ioi t, actualRelativePsiTimeError r| := abs_sub _ _
    _ ≤ C * Real.exp (-c * t ^ ((1 : ℝ) / 10)) +
        C * Real.exp (-(c / 2) * t ^ ((1 : ℝ) / 10)) * B :=
      add_le_add (hdt t le_rfl) htail
    _ ≤ C * Real.exp (-(c / 2) * t ^ ((1 : ℝ) / 10)) +
        C * Real.exp (-(c / 2) * t ^ ((1 : ℝ) / 10)) * B :=
      add_le_add_right (mul_le_mul_of_nonneg_left hex hC.le) _
    _ = _ := by ring

end
end FormalResearch.RiemannHypothesis.SourceActualMertensPntRate
```
