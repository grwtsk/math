# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualPeriodicHalfExponentialFarAttempt07.Variantc6326ea8e81e1a1f7ce96e391108255a866defb1b25b09aff4939c776f6bc6a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `128debfcec3af5876f36da9c5b4aadf5eee8608a` · SHA-256 `fc78e8fe3eff0e0cd1f17cefbe9ecdf1dee267558112f9adbbb3965f3ae90029`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualHalfExponentialPeriodicCutoff.Variante392262eab60e31dca1da313c4cc6d7e34192d30086be0cbee9d7782a77a049b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e392262eab60e31dca1da313c4cc6d7e34192d30086be0cbee9d7782a77a049b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualHalfExponentialPeriodicCutoff.Variante392262eab60e31dca1da313c4cc6d7e34192d30086be0cbee9d7782a77a049b","mathematical_subject":"Analysis.Integration","original_sha256":"e392262eab60e31dca1da313c4cc6d7e34192d30086be0cbee9d7782a77a049b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualPeriodicHalfExponentialFar.attempt07.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualPeriodicEdgeTimeBudget
import SourceActualFarPeriodicWorkDecay

/-!
True edge gamma moments estimate the literal actual periodic far sector
from exp(A/2), using both finite physical Abel endpoints and the full bulk.
No retained mean, near column, critical half, diagonal or independent main
sector is assigned a bound by this leaf.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualHalfExponentialPeriodicCutoff.Variante392262eab60e31dca1da313c4cc6d7e34192d30086be0cbee9d7782a77a049b

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualPeriodicHalfExponentialFar
open MeasureTheory Set
open ActualPeriodicEdgeTimeBudget SourceActualFarPeriodicWorkDecay SourceActualFarPeriodicBudget
open SourceActualPhysicalPeriodicPrimitive SourceActualPeriodicColumnPrimitive
open SourceActualAdjointAbelPrimitives RootActualDoubleAdjointTransfer
open RootActualPeriodicPhysicalCell RootActualUpperColumnWindow
open RootActualPeriodicTransportKernel
open SourceActualLogColumnTransport SourceLeadingTailBudget SourcePairing
open RH16IndependentChallengeNext
open SourceActualDoubleMixedKernel SourceActualCovariantKernel RootActualCovariantWorkKernel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering
noncomputable section

/-- The smaller actual physical far cutoff used by this support-edge estimate. -/
def actualHalfExponentialPeriodicCutoff (A : ℝ) : ℝ := Real.exp (A / 2)

private theorem actual_orders {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ actualTimeLower A ∧
      actualTimeLower A ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hUN : (vaughanCutoff A : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A hA
  exact ⟨Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA),
    Real.log_le_log hU hUN⟩

private theorem jet_continuous {A : ℝ} (hA : 0 < A) (j : ℕ) (hj : j ≤ 4) :
    Continuous (iteratedDeriv j (sourceCorrelation explicitSecondDerivative A)) :=
  (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv j (by exact_mod_cast hj)

private theorem profile_time_continuous {A : ℝ} (hA : 0 < A) (u : ℝ) :
    Continuous (fun t => actualPeriodicPhysicalCellProfile A t u) := by
  have h1 := jet_continuous hA 1 (by norm_num)
  have h3 := jet_continuous hA 3 (by norm_num)
  unfold actualPeriodicPhysicalCellProfile actualTwistedTimeDensity
  fun_prop

private theorem derivative_box_integrable {A v b l r : ℝ} (hA : 0 < A)
    (hv : 0 < v) (_hvb : v ≤ b) (_hlr : l ≤ r) :
    Integrable (fun p : ℝ × ℝ => |deriv (actualPeriodicPhysicalCellProfile A p.1) p.2|)
      ((volume.restrict (Ioc l r)).prod (volume.restrict (Ioc v b))) := by
  let F : ℝ × ℝ → ℝ := fun p =>
    |Real.exp (p.1 / 2) * Real.exp (-Real.log (max v p.2) / 2) *
      actualPeriodicTransportJet A (p.1 + Real.log (max v p.2)) / (max v p.2) ^ 2|
  have hx (p : ℝ × ℝ) : 0 < max v p.2 := hv.trans_le (le_max_left _ _)
  have hl : Continuous (fun p : ℝ × ℝ => Real.log (max v p.2)) :=
    (continuous_const.max continuous_snd).log (fun p => (hx p).ne')
  have h1 := jet_continuous hA 1 (by norm_num)
  have h2 := jet_continuous hA 2 (by norm_num)
  have h3 := jet_continuous hA 3 (by norm_num)
  have h4 := jet_continuous hA 4 (by norm_num)
  have hF : Continuous F := by
    dsimp only [F]
    have hz := continuous_fst.add hl
    have hJ : Continuous (fun p : ℝ × ℝ =>
        actualPeriodicTransportJet A (p.1 + Real.log (max v p.2))) := by
      unfold actualPeriodicTransportJet
      exact (((h4.comp hz).sub ((h3.comp hz).const_mul (3 / 2 : ℝ))).sub
        ((h2.comp hz).div_const 4)).add ((h1.comp hz).const_mul (3 / 8 : ℝ))
    have hn := ((Real.continuous_exp.comp (continuous_fst.div_const (2 : ℝ))).mul
      (Real.continuous_exp.comp (hl.neg.div_const 2))).mul hJ
    exact (hn.div ((continuous_const.max continuous_snd).pow 2)
      (fun p => (pow_pos (hx p) 2).ne')).abs
  have hi : IntegrableOn F (Icc l r ×ˢ Icc v b) (volume.prod volume) :=
    hF.continuousOn.integrableOn_compact (isCompact_Icc.prod isCompact_Icc)
  rw [Measure.prod_restrict]
  apply (hi.mono_set (fun p hp => ⟨⟨hp.1.1.le, hp.1.2⟩, ⟨hp.2.1.le, hp.2.2⟩⟩)).congr
  filter_upwards [ae_restrict_mem (measurableSet_Ioc.prod measurableSet_Ioc)] with p hp
  dsimp only [F]
  rw [max_eq_right hp.2.1.le,
    actualPeriodicPhysicalCellProfile_deriv hA (hv.trans hp.2.1) p.1,
    actualPeriodicTransportKernel_eq hA p.1 (Real.log p.2)]

private theorem derivative_bulk_swap {A v b l r : ℝ} (hA : 0 < A)
    (hv : 0 < v) (hvb : v ≤ b) (hlr : l ≤ r) :
    (∫ t in l..r, ∫ u in v..b, |deriv (actualPeriodicPhysicalCellProfile A t) u|) =
      ∫ u in v..b, ∫ t in l..r, |deriv (actualPeriodicPhysicalCellProfile A t) u| := by
  have h := integral_integral_swap
    (f := fun t u => |deriv (actualPeriodicPhysicalCellProfile A t) u|)
    (derivative_box_integrable hA hv hvb hlr)
  simpa only [intervalIntegral.integral_of_le hlr,
    intervalIntegral.integral_of_le hvb] using h

private theorem derivative_bulk_intervalIntegrable {A v b l r : ℝ} (hA : 0 < A)
    (hv : 0 < v) (hvb : v ≤ b) (hlr : l ≤ r) :
    IntervalIntegrable
      (fun t => ∫ u in v..b, |deriv (actualPeriodicPhysicalCellProfile A t) u|) volume l r := by
  apply (intervalIntegrable_iff_integrableOn_Ioc_of_le (μ := volume) hlr).2
  have h := (derivative_box_integrable hA hv hvb hlr).integral_prod_left
  simpa only [intervalIntegral.integral_of_le hvb, IntegrableOn] using h

private theorem inverse_cube_integral_le {v b : ℝ} (hv : 0 < v) (hvb : v ≤ b) :
    (∫ u in v..b, 1 / u ^ 3) ≤ 1 / (2 * v ^ 2) := by
  have hp (u : ℝ) (hu : u ∈ uIcc v b) : 0 < u := by
    rw [uIcc_of_le hvb] at hu
    exact hv.trans_le hu.1
  have hd (u : ℝ) (hu : u ∈ uIcc v b) :
      HasDerivAt (fun u : ℝ => -(1 / (2 * u ^ 2))) (1 / u ^ 3) u := by
    have h := ((hasDerivAt_inv (hp u hu).ne').pow 2).const_mul (-1 / 2 : ℝ)
    convert h using 1 <;> try rfl
    · funext x
      simp only [Pi.pow_apply, div_eq_mul_inv, mul_inv_rev, inv_pow]
      ring
    · field_simp [(hp u hu).ne']
      ring

  have hc : ContinuousOn (fun u : ℝ => 1 / u ^ 3) (uIcc v b) :=
    continuousOn_const.div (continuousOn_id.pow 3) (fun u hu => (pow_pos (hp u hu) 3).ne')
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt hd hc.intervalIntegrable
  rw [he]
  have hbp : 0 < b := hv.trans_le hvb
  have hb : 0 ≤ 1 / (2 * b ^ 2) := by positivity
  linarith

private theorem periodic_size_le {A : ℝ} (hA : 1 ≤ A) :
    (vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16 ≤ A ^ 4 / 8 := by
  have hU : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hA2 : 1 ≤ A ^ 2 := by nlinarith
  have hU0 : 0 ≤ (vaughanCutoff A : ℝ) := Nat.cast_nonneg _
  nlinarith

/-- Both physical Abel endpoints and full derivative bulk have a real integrated far budget. -/
theorem actualFarPeriodicWork_edge_abs_le {A v : ℝ} (hA : 91 ≤ A)
    (hv : 2 ≤ v) (hUv : (vaughanCutoff A : ℝ) ≤ v)
    (hvK : v ≤ ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)) :
    |actualFarPeriodicWork A v| ≤
      402 * (Real.log 4 + 4 + Real.log 2) * Real.exp A / v ^ 2 := by
  let l := actualTimeLower A
  let r := Real.log (sourceKernelCutoff A : ℝ)
  let K : ℝ := ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)
  let CP : ℝ := (vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16
  let CE : ℝ := Real.log 4 + 4 + Real.log 2
  have hA1 : 1 ≤ A := by linarith
  have hAp : 0 < A := by linarith
  have hvp : 0 < v := by linarith
  have hKp : 0 < K := hvp.trans_le hvK
  obtain ⟨hl0, hlr⟩ := actual_orders hA1
  have hgK := (profile_time_continuous hAp K).abs.intervalIntegrable (μ := volume) l r
  have hgv := (profile_time_continuous hAp v).abs.intervalIntegrable (μ := volume) l r
  have hiD := derivative_bulk_intervalIntegrable hAp hvp hvK hlr
  have hi := actualFarPeriodicWork_intervalIntegrable hA hUv hvK hlr
  have hM := intervalIntegral.integral_mono_on hlr hi.abs
    ((hgK.add hgv).add hiD |>.const_mul (2 * CE * CP)) (fun t ht => by
      have hP : |actualAdjointTimePrimitive A 0 t| ≤ 2 * CE := by
        simpa only [CE, abs_zero, add_zero] using
          actualAdjointTimePrimitive_abs_le (offset := (0 : ℝ)) hA1 ht.1
      have hF : ContDiffOn ℝ 1 (actualPeriodicPhysicalCellProfile A t) (uIcc v K) := by
        rw [uIcc_of_le hvK]
        exact actualPeriodicPhysicalCellProfile_contDiffOn hAp hvp K t
      have hb := actual_physical_prefix_abel_abs_le (vaughanCutoff A)
        (vaughanCutoff_pos A hA1) hUv hvK (actualPeriodicPhysicalCellProfile A t) hF
      change |actualPhysicalPeriodicPrefixRow A t v K| ≤ CP * _ at hb
      rw [abs_mul]
      calc
        _ ≤ (2 * CE) * (CP *
            (|actualPeriodicPhysicalCellProfile A t K| +
              |actualPeriodicPhysicalCellProfile A t v| +
                ∫ u in v..K, |deriv (actualPeriodicPhysicalCellProfile A t) u|)) :=
          mul_le_mul hP hb (abs_nonneg _) (by dsimp [CE]; positivity)
        _ = _ := by ring)
  have heq : (∫ t in l..r, 2 * CE * CP *
      (|actualPeriodicPhysicalCellProfile A t K| + |actualPeriodicPhysicalCellProfile A t v| +
        ∫ u in v..K, |deriv (actualPeriodicPhysicalCellProfile A t) u|)) =
      2 * CE * CP * ((∫ t in l..r, |actualPeriodicPhysicalCellProfile A t K|) +
        (∫ t in l..r, |actualPeriodicPhysicalCellProfile A t v|) +
          (∫ t in l..r, ∫ u in v..K, |deriv (actualPeriodicPhysicalCellProfile A t) u|)) := by
    rw [intervalIntegral.integral_const_mul,
      intervalIntegral.integral_add (hgK.add hgv) hiD,
      intervalIntegral.integral_add hgK hgv]
  rw [heq] at hM
  have hD : (∫ t in l..r, ∫ u in v..K,
      |deriv (actualPeriodicPhysicalCellProfile A t) u|) ≤
        536 * Real.exp A / (A ^ 4 * v ^ 2) := by
    rw [derivative_bulk_swap hAp hvp hvK hlr]
    have hswap := (derivative_box_integrable hAp hvp hvK hlr).integral_prod_right
    have htI : IntervalIntegrable (fun u => ∫ t in l..r,
        |deriv (actualPeriodicPhysicalCellProfile A t) u|) volume v K := by
      apply (intervalIntegrable_iff_integrableOn_Ioc_of_le hvK).2
      simpa only [l, r, intervalIntegral.integral_of_le hlr, IntegrableOn] using hswap
    have hc : ContinuousOn (fun u : ℝ => (1072 * Real.exp A / A ^ 4) * (1 / u ^ 3))
        (uIcc v K) := by
      apply ContinuousOn.const_mul
      exact continuousOn_const.div (continuousOn_id.pow 3) (fun u hu => by
        rw [uIcc_of_le hvK] at hu
        exact (pow_pos (hvp.trans_le hu.1) 3).ne')
    calc
      _ ≤ ∫ u in v..K, (1072 * Real.exp A / A ^ 4) * (1 / u ^ 3) := by
        apply intervalIntegral.integral_mono_on hvK htI hc.intervalIntegrable
        intro u hu
        have h := actualPeriodicProfile_deriv_time_norm_le hA (hv.trans hu.1)
        change _ ≤ _ at h
        apply h.trans_eq
        ring
      _ = (1072 * Real.exp A / A ^ 4) * ∫ u in v..K, 1 / u ^ 3 :=
        intervalIntegral.integral_const_mul _ _
      _ ≤ (1072 * Real.exp A / A ^ 4) * (1 / (2 * v ^ 2)) :=
        mul_le_mul_of_nonneg_left (inverse_cube_integral_le hvp hvK) (by positivity)
      _ = _ := by ring
  have hK : (∫ t in l..r, |actualPeriodicPhysicalCellProfile A t K|) ≤
      536 * Real.exp A / (A ^ 4 * v ^ 2) := by
    apply (actualPeriodicProfile_time_norm_le hA (hv.trans hvK)).trans
    exact div_le_div_of_nonneg_left (by positivity) (by positivity)
      (mul_le_mul_of_nonneg_left (sq_le_sq₀ hvp.le hKp.le |>.2 hvK) (by positivity))
  have hV : (∫ t in l..r, |actualPeriodicPhysicalCellProfile A t v|) ≤
      536 * Real.exp A / (A ^ 4 * v ^ 2) := actualPeriodicProfile_time_norm_le hA hv
  have hsum : (∫ t in l..r, |actualPeriodicPhysicalCellProfile A t K|) +
      (∫ t in l..r, |actualPeriodicPhysicalCellProfile A t v|) +
        (∫ t in l..r, ∫ u in v..K, |deriv (actualPeriodicPhysicalCellProfile A t) u|) ≤
      1608 * Real.exp A / (A ^ 4 * v ^ 2) := by
    calc
      _ ≤ 536 * Real.exp A / (A ^ 4 * v ^ 2) +
          536 * Real.exp A / (A ^ 4 * v ^ 2) +
          536 * Real.exp A / (A ^ 4 * v ^ 2) := add_le_add (add_le_add hK hV) hD
      _ = _ := by ring
  have hwork : |actualFarPeriodicWork A v| ≤
      2 * CE * CP * (1608 * Real.exp A / (A ^ 4 * v ^ 2)) := by
    apply (intervalIntegral.abs_integral_le_integral_abs hlr).trans
      (hM.trans (mul_le_mul_of_nonneg_left hsum (by dsimp [CE, CP]; positivity)))
  apply hwork.trans
  calc
    _ ≤ 2 * CE * (A ^ 4 / 8) * (1608 * Real.exp A / (A ^ 4 * v ^ 2)) := by
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left (periodic_size_le hA1) (by dsimp [CE]; positivity))
        (by positivity)
    _ = _ := by dsimp [CE]; field_simp; ring

/-- The smaller far cutoff lies inside the literal actual natural quotient window. -/
theorem actualHalfExponentialPeriodicCutoff_orders {A : ℝ} (hA : 25600 ≤ A) :
    2 ≤ actualHalfExponentialPeriodicCutoff A ∧
      (vaughanCutoff A : ℝ) ≤ actualHalfExponentialPeriodicCutoff A ∧
        actualHalfExponentialPeriodicCutoff A ≤
          ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
  have hA1 : 1 ≤ A := by linarith
  have hU1 : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A hA1
  have hUp : 0 < (vaughanCutoff A : ℝ) := by linarith
  have hL := (actual_cutoff_logs_le_scale hA).1
  have hLs : Real.log (vaughanCutoff A : ℝ) ≤ Real.sqrt A :=
    Real.le_sqrt_of_sq_le hL
  have hs : Real.sqrt A ≤ A / 2 := by
    apply (Real.sqrt_le_iff).2
    constructor
    · linarith
    · nlinarith
  have hLh := hLs.trans hs
  have hcut2 : 2 ≤ Real.exp (A / 2) := by
    have h := Real.add_one_le_exp (A / 2)
    linarith
  have hUcut : (vaughanCutoff A : ℝ) ≤ Real.exp (A / 2) :=
    (Real.log_le_iff_le_exp hUp).1 hLh
  let K : ℝ := ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)
  have hKp : 0 < K := by
    have hK := actual_column_window_nonempty hA1
    have hh : 0 < sourceKernelCutoff A / (vaughanCutoff A + 1) := by omega
    dsimp only [K]
    exact_mod_cast hh
  have hw := actualUpperColumn_time_width_le hA1
  change 2 * A - Real.log K - Real.log (vaughanCutoff A : ℝ) ≤
    3 / (vaughanCutoff A : ℝ) at hw
  have hf : 3 / (vaughanCutoff A : ℝ) ≤ 3 := by
    apply (div_le_iff₀ hUp).2
    nlinarith
  have hKh : A / 2 ≤ Real.log K := by linarith
  exact ⟨hcut2, hUcut, (Real.le_log_iff_exp_le hKp).1 hKh⟩

/-- Genuine edge integration gives a uniform actual far-periodic budget from exp(A/2). -/
theorem actualHalfExponentialFarPeriodicWork_abs_le {A : ℝ} (hA : 25600 ≤ A) :
    |actualFarPeriodicWork A (actualHalfExponentialPeriodicCutoff A)| ≤
      402 * (Real.log 4 + 4 + Real.log 2) := by
  obtain ⟨h2, hU, hK⟩ := actualHalfExponentialPeriodicCutoff_orders hA
  have h := actualFarPeriodicWork_edge_abs_le (by linarith : 91 ≤ A) h2 hU hK
  apply h.trans_eq
  unfold actualHalfExponentialPeriodicCutoff
  have he : Real.exp (A / 2) ^ 2 = Real.exp A := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [he]
  field_simp

end
end FormalResearch.RiemannHypothesis.ActualPeriodicHalfExponentialFar
```
