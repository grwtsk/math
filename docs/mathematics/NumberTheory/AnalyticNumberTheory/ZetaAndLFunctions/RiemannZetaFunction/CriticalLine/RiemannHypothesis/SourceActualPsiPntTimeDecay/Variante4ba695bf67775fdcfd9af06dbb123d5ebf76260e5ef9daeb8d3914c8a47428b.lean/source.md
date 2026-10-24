# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPsiPntTimeDecay.Variante4ba695bf67775fdcfd9af06dbb123d5ebf76260e5ef9daeb8d3914c8a47428b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e992b2e67c04281c9ef11e41c719e78f7095c33f` · SHA-256 `e9ce33f572588afca7c1804412526a9d72324c584aa847d08b662787c78ac5d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualRelativePsiTimeError.Variant0ab4c3b544f19317db63241441dec04ea9faf6baffdba97273e912d2263d5998","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ab4c3b544f19317db63241441dec04ea9faf6baffdba97273e912d2263d5998","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualRelativePsiTimeError.Variant0ab4c3b544f19317db63241441dec04ea9faf6baffdba97273e912d2263d5998","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0ab4c3b544f19317db63241441dec04ea9faf6baffdba97273e912d2263d5998","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-external-math-scan/direct-head/inputs/scratch/rh16-continuation-20261006-signed-next/SourceActualPsiPntTimeDecay.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Zeta23.FromPNTPlus.MediumPNT
import SourceActualXiErrorCriticalCovariance
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
import Mathlib.MeasureTheory.Integral.Asymptotics

/-!
The genuine actual prime-number theorem controls the actual relative psi
error on logarithmic time. Closed prime powers remain in psi. This source
proves ordinary decay and genuine positive-time L1, without inferring a
critical exponential rate or a signed covariance bound.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualRelativePsiTimeError.Variant0ab4c3b544f19317db63241441dec04ea9faf6baffdba97273e912d2263d5998

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualPsiPntTimeDecay
open MeasureTheory Set Filter Asymptotics
open scoped Interval Topology
open SourceMangoldtAbel SourceActualXiErrorConvolution SourceActualXiErrorCriticalCovariance
noncomputable section

/-- The literal actual relative Chebyshev discrepancy on logarithmic time. -/
def actualRelativePsiTimeError (t : ℝ) : ℝ :=
  (Chebyshev.psi (Real.exp t) - Real.exp t) * Real.exp (-t)

/-- A closed finite Abel readout retains the actual zero/unit normalization. -/
theorem actualRelativePsiTimeError_eq_one_convolution {t : ℝ} (ht : 0 ≤ t) :
    actualRelativePsiTimeError t = actualCenteredMangoldtLogError t -
      actualMangoldtErrorConvolution 1 t -
        (Real.eulerMascheroniConstant + 1) * Real.exp (-t) := by
  have h := actualNormalizedMangoldtExpReadout_eq_convolution (by norm_num : (1 : ℝ) ≠ 0) ht
  rw [actualNormalizedMangoldtExpReadout_one ht] at h
  have hx : Real.exp t * Real.exp (-t) = 1 := by
    rw [← Real.exp_add, add_neg_cancel, Real.exp_zero]
  simp only [one_div, inv_one, one_mul, neg_mul] at h
  unfold actualRelativePsiTimeError
  calc
    _ = Real.exp (-t) * Chebyshev.psi (Real.exp t) - 1 := by rw [sub_mul, hx]; ring
    _ = _ := by linarith

/-- Actual closed prime jumps cause no loss of local L1 on finite time intervals. -/
theorem actualRelativePsiTimeError_intervalIntegrable {b : ℝ} (hb : 0 ≤ b) :
    IntervalIntegrable actualRelativePsiTimeError volume 0 b := by
  have he : IntervalIntegrable mangoldtLogError volume 0 b := by
    simpa only [deriv_id, mul_one] using
      mangoldtLogError_mul_deriv_intervalIntegrable 0 b hb id (by fun_prop)
  have hf : IntervalIntegrable actualCenteredMangoldtLogError volume 0 b :=
    he.add intervalIntegrable_const
  have hq := actualMangoldtErrorConvolution_absolutelyContinuous 1 hb
  have hiq : IntervalIntegrable (actualMangoldtErrorConvolution 1) volume 0 b :=
    hq.continuousOn.intervalIntegrable
  have hiex : IntervalIntegrable
      (fun t : ℝ => (Real.eulerMascheroniConstant + 1) * Real.exp (-t)) volume 0 b :=
    (by fun_prop : Continuous
      (fun t : ℝ => (Real.eulerMascheroniConstant + 1) * Real.exp (-t))).intervalIntegrable _ _
  apply ((hf.sub hiq).sub hiex).congr
  intro t ht
  have ht0 : 0 ≤ t := (show 0 < t ∧ t ≤ b by
    simpa only [uIoc_of_le hb, mem_Ioc] using ht).1.le
  exact (actualRelativePsiTimeError_eq_one_convolution ht0).symm

/-- The freshly replayed actual PNT supplies a genuine subexponential time majorant. -/
theorem actualRelativePsiTimeError_isBigO :
    ∃ c > 0, actualRelativePsiTimeError =O[atTop]
      fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
  obtain ⟨c, hc, hp⟩ := MediumPNT
  refine ⟨c, hc, ?_⟩
  obtain ⟨C, hC⟩ := isBigO_iff.mp (hp.comp_tendsto Real.tendsto_exp_atTop)
  apply isBigO_iff.mpr
  refine ⟨C, ?_⟩
  filter_upwards [hC] with t ht
  simp only [Function.comp_def, Pi.sub_apply, id_eq, Real.norm_eq_abs, abs_mul,
    Real.abs_exp, Real.log_exp] at ht
  have hx : Real.exp t * Real.exp (-t) = 1 := by
    rw [← Real.exp_add, add_neg_cancel, Real.exp_zero]
  simp only [actualRelativePsiTimeError, Real.norm_eq_abs, abs_mul, Real.abs_exp]
  calc
    _ ≤ (C * (Real.exp t * Real.exp (-c * t ^ ((1 : ℝ) / 10)))) * Real.exp (-t) :=
      mul_le_mul_of_nonneg_right ht (Real.exp_pos _).le
    _ = (C * Real.exp (-c * t ^ ((1 : ℝ) / 10))) *
        (Real.exp t * Real.exp (-t)) := by ring
    _ = C * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by rw [hx, mul_one]

/-- The actual relative psi error tends to zero; this gives no critical half-plane rate. -/
theorem actualRelativePsiTimeError_tendsto_zero :
    Tendsto actualRelativePsiTimeError atTop (𝓝 0) := by
  obtain ⟨c, hc, hp⟩ := actualRelativePsiTimeError_isBigO
  have hpow : Tendsto (fun t : ℝ => t ^ ((1 : ℝ) / 10)) atTop atTop :=
    tendsto_rpow_atTop (by norm_num)
  have hex : Tendsto (fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10))) atTop (𝓝 0) := by
    simpa only [Real.rpow_zero, one_mul, Function.comp_def] using
      (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 0 c hc).comp hpow
  exact hp.trans_tendsto hex

/-- Actual local L1 plus the PNT majorant gives a genuine full positive-time integral. -/
theorem actualRelativePsiTimeError_integrableOn :
    IntegrableOn actualRelativePsiTimeError (Ici 0) := by
  have hloc : LocallyIntegrableOn actualRelativePsiTimeError (Ici 0) := by
    intro x hx
    have hx0 : 0 ≤ x := hx
    refine ⟨Icc 0 (x + 1), ?_, ?_⟩
    · change Ici 0 ∩ Iic (x + 1) ∈ nhdsWithin x (Ici 0)
      exact inter_mem self_mem_nhdsWithin
        (mem_nhdsWithin_of_mem_nhds (Iic_mem_nhds (by linarith)))
    · exact (intervalIntegrable_iff_integrableOn_Icc_of_le (by linarith)).mp
        (actualRelativePsiTimeError_intervalIntegrable (by linarith))
  obtain ⟨c, hc, hp⟩ := actualRelativePsiTimeError_isBigO
  have hex : IntegrableOn (fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10))) (Ioi 0) := by
    simpa only [Real.rpow_zero, one_mul] using
      integrableOn_rpow_mul_exp_neg_mul_rpow (by norm_num : (-1 : ℝ) < 0)
        (by norm_num : (0 : ℝ) < 1 / 10) hc
  have hexTop : IntegrableAtFilter
      (fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10))) atTop volume :=
    ⟨Ioi 0, Ioi_mem_atTop 0, hex⟩
  exact hloc.integrableOn_of_isBigO_atTop hp hexTop

end
end FormalResearch.RiemannHypothesis.SourceActualPsiPntTimeDecay
```
