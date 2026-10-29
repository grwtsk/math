import ActualPeriodicEdgeTimeBudget
import SourceActualFarPeriodicWorkDecay

/-!
True edge gamma moments estimate the literal actual periodic far sector
from exp(A/2), using both finite physical Abel endpoints and the full bulk.
No retained mean, near column, critical half, diagonal or independent main
sector is assigned a bound by this leaf.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

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
    convert h using 1
    · funext x
      simp only [div_eq_mul_inv, mul_inv_rev, inv_pow]
      ring
    · simp only [id_eq]
      field_simp [(hp u hu).ne']
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
      1608 * Real.exp A / (A ^ 4 * v ^ 2) := by linarith
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

end
end FormalResearch.RiemannHypothesis.ActualPeriodicHalfExponentialFar
