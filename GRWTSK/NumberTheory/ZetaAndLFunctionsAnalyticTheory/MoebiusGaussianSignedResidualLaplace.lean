/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHeatNoncontraction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DirichletLaplaceIdentity
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.PSeries

/-!
# The original causal Gaussian residual and its Laplace transform

The current-time and final-horizon inventories give the same signed waveform
at every recorded time. The heated waveform settles to its exact signed
limiting sum with an exponentially decaying error. Consequently its
Laplace transform splits into a constant term divided by the spectral
parameter and a correction regular across the imaginary axis.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators Topology

namespace GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLaplace

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.GaussianHeatNoncontraction

/-- The genuine signed Gaussian coefficient at the original integer. -/
def heatedCoeff (s : ℝ) (n : ℕ) : ℝ :=
  moebiusReal n * Real.exp (-s * Real.log (n : ℝ) ^ 2)

def heatedWave (s u : ℝ) : ℝ :=
  closedSourceWave s u u

def residualWave (s u : ℝ) : ℝ :=
  wholePickup u - heatedWave s u

def residualEnergy (s T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, residualWave s u ^ 2

private theorem absentResponse {n : ℕ} (hn : 1 ≤ n) {u : ℝ}
    (hu : n ∉ Finset.Icc 1 ⌊Real.exp u⌋₊) :
    pickupResponse n u = 0 := by
  have h : ¬ Real.log (n : ℝ) ≤ u := by
    intro h
    exact hu (Finset.mem_Icc.mpr ⟨hn, (pickup_log_le_iff_closed_cutoff hn u).mp h⟩)
  simp [pickupResponse, h]

theorem heatedWave_eq_closedSourceWave (s : ℝ) {u T : ℝ} (huT : u ≤ T) :
    heatedWave s u = closedSourceWave s T u := by
  unfold heatedWave closedSourceWave
  apply Finset.sum_subset
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
      (Finset.mem_Icc.mp hn).2.trans (Nat.floor_mono (Real.exp_le_exp.mpr huT))⟩
  · intro n hn hnu
    rw [absentResponse (Finset.mem_Icc.mp hn).1 hnu, mul_zero]

theorem residualWave_eq_closedSourceWave_sub (s : ℝ) {u T : ℝ} (hu : 0 ≤ u)
    (huT : u ≤ T) :
    residualWave s u = closedSourceWave 0 T u - closedSourceWave s T u := by
  rw [residualWave, closedSourceWave_zero hu huT, heatedWave_eq_closedSourceWave s huT]

/-- The residual retains every signed coefficient on the original closed inventory. -/
theorem residualWave_eq_signed_sum (s : ℝ) {u T : ℝ} (hu : 0 ≤ u) (huT : u ≤ T) :
    residualWave s u = ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      (moebiusReal n * (1 - Real.exp (-s * Real.log (n : ℝ) ^ 2))) * pickupResponse n u := by
  rw [residualWave_eq_closedSourceWave_sub s hu huT]
  unfold closedSourceWave
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _
  simp only [neg_zero, zero_mul, Real.exp_zero, mul_one]
  ring

theorem residualEnergy_eq_closedSource (s T : ℝ) (hT : 0 ≤ T) :
    residualEnergy s T =
      ∫ u in (0 : ℝ)..T, (closedSourceWave 0 T u - closedSourceWave s T u) ^ 2 := by
  unfold residualEnergy
  apply intervalIntegral.integral_congr
  intro u hu
  rw [uIcc_of_le hT] at hu
  exact congrArg (fun x : ℝ => x ^ 2) (residualWave_eq_closedSourceWave_sub s hu.1 hu.2)

theorem heatedWave_continuous (s : ℝ) : Continuous (heatedWave s) := by
  rw [continuous_iff_continuousAt]
  intro u
  have hfixed : Continuous (closedSourceWave s (u + 1)) := by
    unfold closedSourceWave
    exact continuous_finsetSum _ fun n hn =>
      continuous_const.mul (pickupResponse_continuous (Finset.mem_Icc.mp hn).1)
  apply hfixed.continuousAt.congr
  filter_upwards [gt_mem_nhds (show u < u + 1 by linarith)] with v hv
  exact (heatedWave_eq_closedSourceWave s hv.le).symm

theorem residualWave_continuous (s : ℝ) : Continuous (residualWave s) :=
  wholePickup_continuous.sub (heatedWave_continuous s)

theorem residualEnergy_mono (s : ℝ) {S T : ℝ} (hST : S ≤ T) :
    residualEnergy s S ≤ residualEnergy s T := by
  have hc : Continuous (fun u => residualWave s u ^ 2) := (residualWave_continuous s).pow 2
  unfold residualEnergy
  rw [← intervalIntegral.integral_add_adjacent_intervals
    (hc.intervalIntegrable 0 S) (hc.intervalIntegrable S T)]
  exact le_add_of_nonneg_right (intervalIntegral.integral_nonneg hST fun _ _ => sq_nonneg _)

private theorem heatedCoeff_zero (s : ℝ) : heatedCoeff s 0 = 0 := by
  simp [heatedCoeff, moebiusReal]

private theorem abs_heatedCoeff_le {s : ℝ} (hs : 0 < s) (n : ℕ) :
    |heatedCoeff s n| ≤ Real.exp (1 / s) * ((n : ℝ) ^ 2)⁻¹ := by
  by_cases hn : n = 0
  · simp [hn, heatedCoeff_zero]
  have hnpos : (0 : ℝ) < n := by exact_mod_cast Nat.pos_of_ne_zero hn
  have hsquare : 2 * Real.log (n : ℝ) - s * Real.log (n : ℝ) ^ 2 ≤ 1 / s :=
    (le_div_iff₀ hs).mpr (by nlinarith [sq_nonneg (s * Real.log (n : ℝ) - 1)])
  have hexp :
      Real.exp (-s * Real.log (n : ℝ) ^ 2) ≤ Real.exp (1 / s - 2 * Real.log (n : ℝ)) :=
    Real.exp_le_exp.mpr (by linarith)
  have hpow : Real.exp (2 * Real.log (n : ℝ)) = (n : ℝ) ^ 2 := by
    simpa only [Nat.cast_ofNat, Real.exp_log hnpos] using
      Real.exp_nat_mul (Real.log (n : ℝ)) 2
  rw [Real.exp_sub, hpow, div_eq_mul_inv] at hexp
  rw [heatedCoeff, abs_mul, abs_of_pos (Real.exp_pos _)]
  exact ((mul_le_mul_of_nonneg_right (moebiusReal_abs_le_one n) (Real.exp_pos _).le).trans
    (one_mul _).le).trans hexp

theorem heatedCoeff_abs_summable {s : ℝ} (hs : 0 < s) :
    Summable (fun n : ℕ => |heatedCoeff s n|) :=
  Summable.of_nonneg_of_le (fun _ => abs_nonneg _) (abs_heatedCoeff_le hs)
    ((Real.summable_nat_pow_inv.mpr (by decide : 1 < (2 : ℕ))).mul_left (Real.exp (1 / s)))

/-- The saturated value of the literal causal response at its original index. -/
private def settledResponse (n : ℕ) : ℝ := 2 * (Real.sqrt n)⁻¹

/-- The signed sum to which the heated waveform converges. -/
def heatedLimit (s : ℝ) : ℝ := ∑' n : ℕ, heatedCoeff s n * settledResponse n

def heatedAbsMass (s : ℝ) : ℝ := ∑' n : ℕ, |heatedCoeff s n|

private theorem settledResponse_nonneg (n : ℕ) : 0 ≤ settledResponse n := by
  unfold settledResponse
  positivity

private theorem settledResponse_le_two (n : ℕ) : settledResponse n ≤ 2 := by
  by_cases hn : n = 0
  · simp [hn, settledResponse]
  have hn1 : 1 ≤ n := Nat.pos_of_ne_zero hn
  have hlog : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast hn1)
  unfold settledResponse
  rw [← pickup_exp_negative_log_half hn1]
  have h : Real.exp (-Real.log (n : ℝ) / 2) ≤ 1 := by
    rw [← Real.exp_zero]
    exact Real.exp_le_exp.mpr (by linarith)
  linarith

private theorem response_error_le {n : ℕ} (hn : 1 ≤ n) (u : ℝ) :
    |pickupResponse n u - settledResponse n| ≤ 2 * Real.exp (-u / 2) := by
  rw [pickupResponse, settledResponse]
  by_cases hb : Real.log (n : ℝ) ≤ u
  · rw [ite_eq_left hb]
    rw [show 2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2)) -
      2 * (Real.sqrt (n : ℝ))⁻¹ = -(2 * Real.exp (-u / 2)) by ring]
    rw [abs_neg, abs_of_nonneg (by positivity)]
  · rw [ite_eq_right hb, zero_sub, abs_neg, abs_of_nonneg (by positivity),
      ← pickup_exp_negative_log_half hn]
    exact mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr (by linarith [lt_of_not_ge hb]))
      (by norm_num)

private theorem heatedWave_eq_tsum (s u : ℝ) :
    heatedWave s u = ∑' n : ℕ, heatedCoeff s n * pickupResponse n u := by
  unfold heatedWave closedSourceWave
  refine (tsum_eq_sum (s := Finset.Icc 1 ⌊Real.exp u⌋₊) ?_).symm
  intro n hn
  by_cases h0 : n = 0
  · change heatedCoeff s n * pickupResponse n u = 0
    rw [h0, heatedCoeff_zero, zero_mul]
  · rw [absentResponse (Nat.pos_of_ne_zero h0) hn, mul_zero]

theorem heatedAbsMass_nonneg (s : ℝ) : 0 ≤ heatedAbsMass s :=
  tsum_nonneg fun _ => abs_nonneg _

/-- The exact current-time wave settles exponentially for every positive heat time. -/
theorem heatedWave_sub_limit_abs_le {s : ℝ} (hs : 0 < s) (u : ℝ) :
    |heatedWave s u - heatedLimit s| ≤ 2 * heatedAbsMass s * Real.exp (-u / 2) := by
  have ha := heatedCoeff_abs_summable hs
  have hsettled : Summable (fun n : ℕ => heatedCoeff s n * settledResponse n) :=
    (ha.mul_right 2).of_norm_bounded fun n => by
      rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (settledResponse_nonneg n)]
      exact mul_le_mul_of_nonneg_left (settledResponse_le_two n) (abs_nonneg _)
  have hpoint (n : ℕ) :
      ‖heatedCoeff s n * pickupResponse n u - heatedCoeff s n * settledResponse n‖ ≤
        |heatedCoeff s n| * (2 * Real.exp (-u / 2)) := by
    by_cases h0 : n = 0
    · simp [h0, heatedCoeff_zero]
    · rw [← mul_sub, Real.norm_eq_abs, abs_mul]
      exact mul_le_mul_of_nonneg_left (response_error_le (Nat.pos_of_ne_zero h0) u) (abs_nonneg _)
  have hnorm := (ha.mul_right (2 * Real.exp (-u / 2))).of_norm_bounded hpoint
  have hwave : Summable (fun n : ℕ => heatedCoeff s n * pickupResponse n u) := by
    convert hnorm.add hsettled using 1
    ext n
    exact (sub_add_cancel _ _).symm
  rw [heatedWave_eq_tsum, heatedLimit, ← hwave.tsum_sub hsettled, ← Real.norm_eq_abs]
  refine (tsum_of_norm_bounded (ha.mul_right (2 * Real.exp (-u / 2))).hasSum hpoint).trans_eq ?_
  rw [tsum_mul_right, heatedAbsMass]
  ring

/-- The decaying term of the heated transform. -/
def heatedCorrection (s : ℝ) (z : ℂ) : ℂ :=
  ∫ u in Ioi (0 : ℝ), Complex.exp (-z * (u : ℂ)) *
    ((heatedWave s u - heatedLimit s : ℝ) : ℂ)

def residualLaplace (s : ℝ) (z : ℂ) : ℂ :=
  ∫ u in Ioi (0 : ℝ), Complex.exp (-z * (u : ℂ)) * (residualWave s u : ℂ)

private theorem heatedCorrection_integrand_continuous (s : ℝ) (z : ℂ) :
    Continuous (fun u : ℝ => Complex.exp (-z * (u : ℂ)) *
      ((heatedWave s u - heatedLimit s : ℝ) : ℂ)) :=
  (Complex.continuous_exp.comp (continuous_const.mul Complex.continuous_ofReal)).mul
    (Complex.continuous_ofReal.comp ((heatedWave_continuous s).sub continuous_const))

private theorem heatedCorrection_norm_le {s : ℝ} (hs : 0 < s) (z : ℂ) (u : ℝ) :
    ‖Complex.exp (-z * (u : ℂ)) * ((heatedWave s u - heatedLimit s : ℝ) : ℂ)‖ ≤
      2 * heatedAbsMass s * Real.exp (-(z.re + 1 / 2) * u) := by
  rw [norm_mul, Complex.norm_exp, Complex.norm_real, Real.norm_eq_abs,
    Complex.mul_re, Complex.neg_re]
  simp only [Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero, neg_mul]
  calc
    _ ≤ Real.exp (-(z.re * u)) * (2 * heatedAbsMass s * Real.exp (-u / 2)) :=
      mul_le_mul_of_nonneg_left (heatedWave_sub_limit_abs_le hs u) (Real.exp_pos _).le
    _ = _ := by
      rw [show -((z.re + 1 / 2) * u) = -(z.re * u) + (-u / 2) by ring, Real.exp_add]
      ring

theorem heatedCorrection_integrable {s : ℝ} (hs : 0 < s) {z : ℂ}
    (hz : -(1 / 2 : ℝ) < z.re) :
    IntegrableOn (fun u : ℝ => Complex.exp (-z * (u : ℂ)) *
      ((heatedWave s u - heatedLimit s : ℝ) : ℂ)) (Ioi 0) := by
  have h := (integrableOn_exp_mul_Ioi (a := -(z.re + 1 / 2)) (by linarith) 0).const_mul
    (2 * heatedAbsMass s)
  exact h.mono' (heatedCorrection_integrand_continuous s z).aestronglyMeasurable
    (Filter.Eventually.of_forall (heatedCorrection_norm_le hs z))

/-- The correction is holomorphic on a half-plane strictly past the imaginary axis. -/
theorem heatedCorrection_analyticAt {s : ℝ} (hs : 0 < s) {z : ℂ}
    (hz : -(1 / 2 : ℝ) < z.re) : AnalyticAt ℂ (heatedCorrection s) z := by
  have hd (z₀ : ℂ) (hz₀ : -(1 / 2 : ℝ) < z₀.re) : DifferentiableAt ℂ (heatedCorrection s) z₀ := by
    let a : ℝ := (z₀.re + 1 / 2) / 2
    have ha : 0 < a := by dsimp [a]; linarith
    let K : ℝ := 2 * heatedAbsMass s
    have hK : 0 ≤ K := mul_nonneg (by norm_num) (heatedAbsMass_nonneg s)
    let F (w : ℂ) (u : ℝ) := Complex.exp (-w * (u : ℂ)) *
      ((heatedWave s u - heatedLimit s : ℝ) : ℂ)
    let F' (w : ℂ) (u : ℝ) := -(u : ℂ) * F w u
    let U : Set ℂ := {w | a < w.re + 1 / 2}
    have hU : U ∈ 𝓝 z₀ :=
      (isOpen_lt continuous_const (Complex.continuous_re.add continuous_const)).mem_nhds
        (show a < z₀.re + 1 / 2 from by dsimp [a]; linarith)
    have hm (w : ℂ) : Continuous (F w) := heatedCorrection_integrand_continuous s w
    have hbound :
        ∀ᵐ u ∂volume.restrict (Ioi (0 : ℝ)), ∀ w ∈ U,
          ‖F' w u‖ ≤ (2 * K / a) * Real.exp (-(a / 2) * u) := by
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu w hw
      have hu0 : 0 ≤ u := hu.le
      have hexp : Real.exp (-(w.re + 1 / 2) * u) ≤ Real.exp (-a * u) :=
        Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_right (by
          have hw' : a < w.re + 1 / 2 := hw
          linarith) hu0)
      have hu_le : u ≤ 2 * Real.exp (a * u / 2) / a := by
        apply (le_div_iff₀ ha).mpr
        linarith [Real.add_one_le_exp (a * u / 2)]
      have hp : 0 ≤ K * Real.exp (-a * u) := mul_nonneg hK (Real.exp_pos _).le
      rw [show F' w u = -(u : ℂ) * F w u from rfl,
        norm_mul, norm_neg, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hu0]
      calc
        _ ≤ u * (K * Real.exp (-(w.re + 1 / 2) * u)) :=
          mul_le_mul_of_nonneg_left (heatedCorrection_norm_le hs w u) hu0
        _ ≤ u * (K * Real.exp (-a * u)) :=
          mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left hexp hK) hu0
        _ ≤ (2 * Real.exp (a * u / 2) / a) * (K * Real.exp (-a * u)) :=
          mul_le_mul_of_nonneg_right hu_le hp
        _ = _ := by
          rw [show -(a / 2) * u = a * u / 2 + (-a * u) by ring, Real.exp_add]
          ring
    have hi : IntegrableOn (fun u : ℝ => (2 * K / a) * Real.exp (-(a / 2) * u)) (Ioi 0) :=
      (integrableOn_exp_mul_Ioi (a := -(a / 2)) (by linarith) 0).const_mul _
    have hder (u : ℝ) (w : ℂ) : HasDerivAt (F · u) (F' w u) w := by
      have hlin : HasDerivAt (fun x : ℂ => -x * (u : ℂ)) (-(u : ℂ)) w := by
        simpa using (hasDerivAt_id w).neg.mul_const (u : ℂ)
      convert (hlin.cexp.mul_const ((heatedWave s u - heatedLimit s : ℝ) : ℂ)) using 1
      simp only [F, F']
      ring
    exact (hasDerivAt_integral_of_dominated_loc_of_deriv_le hU
      (Filter.Eventually.of_forall fun w => (hm w).aestronglyMeasurable)
      (heatedCorrection_integrable hs hz₀)
      (Complex.continuous_ofReal.neg.mul (hm z₀)).aestronglyMeasurable
      hbound hi (Filter.Eventually.of_forall fun u w _ => hder u w)).2.differentiableAt
  exact (show DifferentiableOn ℂ (heatedCorrection s) {z | -(1 / 2 : ℝ) < z.re} from
    fun z hz => (hd z hz).differentiableWithinAt).analyticAt
      ((isOpen_lt continuous_const Complex.continuous_re).mem_nhds hz)

private theorem heatedConstant_integrable (s : ℝ) {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun u : ℝ => Complex.exp (-z * (u : ℂ)) * (heatedLimit s : ℂ)) (Ioi 0) :=
  (integrableOn_exp_mul_complex_Ioi (a := -z) (by simpa using hz) 0).mul_const _

theorem heatedLaplace_eq {s : ℝ} (hs : 0 < s) {z : ℂ} (hz : 0 < z.re) :
    (∫ u in Ioi (0 : ℝ), Complex.exp (-z * (u : ℂ)) * (heatedWave s u : ℂ)) =
      (heatedLimit s : ℂ) / z + heatedCorrection s z := by
  have hid (u : ℝ) :
      Complex.exp (-z * (u : ℂ)) * (heatedWave s u : ℂ) =
        Complex.exp (-z * (u : ℂ)) * (heatedLimit s : ℂ) +
          Complex.exp (-z * (u : ℂ)) * ((heatedWave s u - heatedLimit s : ℝ) : ℂ) := by
    push_cast
    ring
  simp_rw [hid]
  rw [integral_add (heatedConstant_integrable s hz)
    (heatedCorrection_integrable hs (by linarith)), integral_mul_const,
    integral_exp_mul_complex_Ioi (a := -z) (by simpa using hz)]
  simp [heatedCorrection, div_eq_mul_inv, mul_comm]

theorem heatedLaplace_integrable {s : ℝ} (hs : 0 < s) {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun u : ℝ => Complex.exp (-z * (u : ℂ)) * (heatedWave s u : ℂ)) (Ioi 0) := by
  apply (heatedConstant_integrable s hz |>.add
    (heatedCorrection_integrable hs (z := z) (by linarith))).congr
  apply Filter.Eventually.of_forall
  intro u
  change Complex.exp (-z * (u : ℂ)) * (heatedLimit s : ℂ) +
    Complex.exp (-z * (u : ℂ)) * ((heatedWave s u - heatedLimit s : ℝ) : ℂ) =
      Complex.exp (-z * (u : ℂ)) * (heatedWave s u : ℂ)
  push_cast
  ring

private theorem wholePickup_initial_integrable {z : ℂ} (hz : (1 / 2 : ℝ) < z.re) :
    IntegrableOn (fun u : ℝ => Complex.exp (-z * (u : ℂ)) * (wholePickup u : ℂ)) (Ioi 0) := by
  open GRWTSK.RiemannHypothesis.CCC.PickupInitialTransform in
  exact ((pickupTriangle_integrable hz).integral_prod_left).congr <|
    (ae_restrict_mem measurableSet_Ioi).mono (fun u hu => pickupTriangle_time_integral z u hu)

/-- Initial exact residual transform using the actual reciprocal-zeta pickup. -/
theorem residualLaplace_initial {s : ℝ} (hs : 0 < s) {z : ℂ}
    (hz : (1 / 2 : ℝ) < z.re) :
    residualLaplace s z =
      1 / (z * (z + 1 / 2) * riemannZeta (z + 1 / 2)) -
        ((heatedLimit s : ℂ) / z + heatedCorrection s z) := by
  unfold residualLaplace residualWave
  simp only [Complex.ofReal_sub, mul_sub]
  rw [integral_sub (wholePickup_initial_integrable hz) (heatedLaplace_integrable hs (by linarith)),
    PickupInitialTransform.wholePickup_laplace hz, heatedLaplace_eq hs (by linarith)]

end GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLaplace
