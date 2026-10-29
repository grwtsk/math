import SourceActualFixedRieszCriticalPairing
import SourceActualShortMangoldtAsymptotic
import SourceCriticalChebyshevSectorEnvelope

/-!
The complete near relative-Psi pairing keeps both original source jets and
every closed prime-power atom at the genuine real cutoff A squared. Replacing
its kernel by one half costs a vanishing unscaled log-square remainder. The
artificial upper Psi trace is retained; the entire signed tail remains.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualNearCriticalRelative

open MeasureTheory Set Filter ArithmeticFunction
open scoped Interval Topology BigOperators
open SourcePairing SourceActualPsiPntTimeDecay SourceActualXiErrorConvolution
open SourceActualShortMangoldtAsymptotic SourceFiveCancelledFactorialBudget
open SourceCriticalRelativeCompensation SourceCriticalChebyshevSectorEnvelope
open OmegaResearch.CriticalRelativePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- The literal near interval of the original all-prime-power relative pairing. -/
def actualNearCriticalRelativePairing (A : ℝ) : ℝ :=
  ∫ t in 0..2 * Real.log A, criticalKernel A t

/-- The closed half prefix retains the artificial upper Psi trace and the unit baseline. -/
def actualNearCriticalRelativeMain (A : ℝ) : ℝ :=
  actualMangoldtHalfClosedPrefix (2 * Real.log A) - Chebyshev.psi (A ^ 2) / A - A + 1

/-- The whole complementary interval keeps every original signed kernel sector. -/
def actualComplementCriticalRelativePairing (A : ℝ) : ℝ :=
  ∫ t in (2 * Real.log A)..2 * A, criticalKernel A t

private theorem relative_eq_actual (t : ℝ) :
    relativePsiError t = actualRelativePsiTimeError t := by
  unfold relativePsiError actualRelativePsiTimeError
  have hx : Real.exp t * Real.exp (-t) = 1 := by
    rw [← Real.exp_add, add_neg_cancel, Real.exp_zero]
  rw [sub_mul, hx]
  ring

private theorem relative_intervalIntegrable {T : ℝ} (hT : 0 ≤ T) :
    IntervalIntegrable relativePsiError volume 0 T := by
  have he : relativePsiError = actualRelativePsiTimeError := funext relative_eq_actual
  rw [he]
  exact actualRelativePsiTimeError_intervalIntegrable hT

private theorem relative_abs_le (t : ℝ) : |relativePsiError t| ≤ Real.log 4 + 3 := by
  have hb := actualRelativePsiError_elementary_bounds t
  have hl : 0 ≤ Real.log (4 : ℝ) := Real.log_nonneg (by norm_num)
  exact abs_le.mpr ⟨by linarith [hb.1], hb.2⟩

/-- The unchanged first and zeroth jets give a quadratic plus linear kernel error. -/
theorem actualCriticalWeight_sub_half_abs_le {A t : ℝ} (hA : 91 ≤ A) (ht : 0 ≤ t) :
    |criticalWeight A t - 1 / 2| ≤ ((5 / 4 : ℝ) * t ^ 2 + 5 * t) / A ^ 2 := by
  have hc := actualCorrelation_sub_one_abs_le_five hA t
  have hd := actualCorrelation_first_abs_le_five hA t
  rw [abs_of_nonneg ht] at hd
  have he : criticalWeight A t - 1 / 2 =
      (sourceCorrelation explicitSecondDerivative A t - 1) / 2 -
        deriv (sourceCorrelation explicitSecondDerivative A) t := by
    unfold criticalWeight
    ring
  rw [he]
  calc
    _ ≤ |(sourceCorrelation explicitSecondDerivative A t - 1) / 2| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| := abs_sub _ _
    _ ≤ ((5 / 2 : ℝ) / A ^ 2 * t ^ 2) / 2 + 5 / A ^ 2 * t := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact add_le_add (div_le_div_of_nonneg_right hc (by norm_num)) hd
    _ = _ := by ring

private theorem weight_moment (T : ℝ) :
    (∫ t in 0..T, Real.exp (t / 2) * ((5 / 4 : ℝ) * t ^ 2 + 5 * t)) =
      (5 / 2 : ℝ) * Real.exp (T / 2) * T ^ 2 := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ =>
      (5 / 2 : ℝ) * Real.exp (t / 2) * t ^ 2)
      (Real.exp (t / 2) * ((5 / 4 : ℝ) * t ^ 2 + 5 * t)) t := by
    convert (((((hasDerivAt_id t).div_const 2).exp).const_mul (5 / 2 : ℝ)).mul
      ((hasDerivAt_id t).pow 2)) using 1 <;> ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ =>
      Real.exp (t / 2) * ((5 / 4 : ℝ) * t ^ 2 + 5 * t))).intervalIntegrable _ _)]
  simp

private theorem near_replacement {A T : ℝ} (hA : 91 ≤ A) (hT : 0 ≤ T) :
    |(∫ t in 0..T, criticalKernel A t) -
      (1 / 2 : ℝ) * ∫ t in 0..T, Real.exp (t / 2) * relativePsiError t| ≤
      (5 / 2 : ℝ) * (Real.log 4 + 3) * Real.exp (T / 2) * T ^ 2 / A ^ 2 := by
  have hp : 0 < A := by linarith
  have hi := (relative_intervalIntegrable hT).mul_continuousOn
    (by fun_prop : ContinuousOn (fun t : ℝ => Real.exp (t / 2)) (uIcc 0 T))
  have hi' : IntervalIntegrable (fun t => Real.exp (t / 2) * relativePsiError t)
      volume 0 T := by simpa only [mul_comm] using hi
  have hK : IntervalIntegrable (criticalKernel A) volume 0 T := by
    exact hi'.mul_continuousOn
      (criticalWeight_continuous (by linarith : 1 ≤ A)).continuousOn
  have he : (fun t => criticalKernel A t - (1 / 2 : ℝ) *
      (Real.exp (t / 2) * relativePsiError t)) =
      fun t => Real.exp (t / 2) * relativePsiError t * (criticalWeight A t - 1 / 2) := by
    funext t
    unfold criticalKernel
    ring
  rw [← intervalIntegral.integral_const_mul, ← intervalIntegral.integral_sub hK
    (hi'.const_mul (1 / 2 : ℝ)), he]
  have hg : IntervalIntegrable (fun t : ℝ =>
      (Real.log 4 + 3) / A ^ 2 *
        (Real.exp (t / 2) * ((5 / 4 : ℝ) * t ^ 2 + 5 * t))) volume 0 T := by
    apply Continuous.intervalIntegrable
    fun_prop
  have hb := intervalIntegral.norm_integral_le_of_norm_le hT
    (ae_of_all _ (fun t ht => by
    have ht0 : 0 ≤ t := ht.1.le
    rw [Real.norm_eq_abs, abs_mul, abs_mul, Real.abs_exp]
    have hm := mul_le_mul_of_nonneg_left
      (mul_le_mul (relative_abs_le t) (actualCriticalWeight_sub_half_abs_le hA ht0)
        (abs_nonneg _) (by positivity : 0 ≤ Real.log 4 + 3))
      (Real.exp_pos (t / 2)).le
    exact hm.trans_eq (by ring))) hg
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, weight_moment] at hb
  exact hb.trans_eq (by ring)

private theorem invsqrt_deriv {x : ℝ} (hx : 0 < x) :
    HasDerivAt (fun x : ℝ => 1 / Real.sqrt x) (-1 / (2 * x * Real.sqrt x)) x := by
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx).ne'
  simp only [one_div]
  apply ((Real.hasDerivAt_sqrt hx.ne').inv hs).congr_deriv
  have hss := Real.sq_sqrt hx.le
  field_simp
  nlinarith

private theorem physical_relative_half {Y : ℝ} (hY : 1 ≤ Y) :
    (1 / 2 : ℝ) * (∫ x in 1..Y,
      (Chebyshev.psi x - x) / (x * Real.sqrt x)) =
      (∑ n ∈ Finset.Icc 0 (Nat.floor Y), (vonMangoldt n : ℝ) / Real.sqrt n) -
        Chebyshev.psi Y / Real.sqrt Y - Real.sqrt Y + 1 := by
  have hderiv : IntegrableOn (deriv (fun x : ℝ => 1 / Real.sqrt x)) (Icc 1 Y) := by
    have hc : ContinuousOn (fun x : ℝ => -1 / (2 * x * Real.sqrt x)) (Icc 1 Y) := by
      intro x hx
      have hx0 : 0 < x := by linarith [hx.1]
      exact (continuousAt_const.div (by fun_prop)
        (by positivity : 2 * x * Real.sqrt x ≠ 0)).continuousWithinAt
    apply hc.integrableOn_Icc.congr_fun
    · intro x hx
      exact (invsqrt_deriv (by linarith [hx.1])).deriv.symm
    · exact measurableSet_Icc
  have ha := sum_mul_eq_sub_integral_mul₀ (vonMangoldt : ℕ → ℝ)
    (f := fun x => 1 / Real.sqrt x) (by simp) Y
    (fun x hx => (invsqrt_deriv (by linarith [hx.1])).differentiableAt) hderiv
  have hp : IntervalIntegrable (fun x : ℝ => Chebyshev.psi x / (x * Real.sqrt x))
      volume 1 Y := by
    have hc : ContinuousOn (fun x : ℝ => 1 / (x * Real.sqrt x)) (Icc 1 Y) := by
      intro x hx
      have hx0 : 0 < x := by linarith [hx.1]
      exact (continuousAt_const.div (by fun_prop)
        (by positivity : x * Real.sqrt x ≠ 0)).continuousWithinAt
    rw [intervalIntegrable_iff_integrableOn_Icc_of_le hY]
    apply (integrableOn_mul_sum_Icc (vonMangoldt : ℕ → ℝ)
      (m := 0) (by norm_num : (0 : ℝ) ≤ 1) hc.integrableOn_Icc).congr_fun
    · intro x _
      dsimp only
      rw [← Chebyshev.psi_eq_sum_Icc]
      ring
    · exact measurableSet_Icc
  have hi : (∫ x in Ioc (1 : ℝ) Y,
      deriv (fun x : ℝ => 1 / Real.sqrt x) x *
        ∑ n ∈ Finset.Icc 0 (Nat.floor x), (vonMangoldt n : ℝ)) =
      -(1 / 2 : ℝ) * (∫ x in 1..Y, Chebyshev.psi x / (x * Real.sqrt x)) := by
    rw [intervalIntegral.integral_of_le hY, ← integral_const_mul]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    dsimp only
    rw [(invsqrt_deriv (by linarith [hx.1])).deriv, ← Chebyshev.psi_eq_sum_Icc]
    ring
  have hs : (∑ n ∈ Finset.Icc 0 ⌊Y⌋₊,
      (1 / Real.sqrt (n : ℝ)) * (vonMangoldt n : ℝ)) =
      ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊, (vonMangoldt n : ℝ) / Real.sqrt n := by
    apply Finset.sum_congr rfl
    intro n _
    ring
  rw [hi, hs, ← Chebyshev.psi_eq_sum_Icc] at ha
  have hha : (∑ n ∈ Finset.Icc 0 ⌊Y⌋₊, (vonMangoldt n : ℝ) / Real.sqrt n) =
      Chebyshev.psi Y / Real.sqrt Y + (1 / 2 : ℝ) *
        (∫ x in 1..Y, Chebyshev.psi x / (x * Real.sqrt x)) := by
    convert ha using 1 <;> ring
  have hc : IntervalIntegrable (fun x : ℝ => 1 / Real.sqrt x) volume 1 Y := by
    apply ContinuousOn.intervalIntegrable_of_Icc hY
    intro x hx
    exact (continuousAt_const.div Real.continuous_sqrt.continuousAt
      (Real.sqrt_pos.2 (by linarith [hx.1])).ne').continuousWithinAt
  have hm : (∫ x in 1..Y, 1 / Real.sqrt x) = 2 * Real.sqrt Y - 2 := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x hx => by
      have hx0 : 0 < x := by rw [uIcc_of_le hY] at hx; linarith [hx.1]
      convert (Real.hasDerivAt_sqrt hx0.ne').const_mul 2 using 1 <;> try rfl
      ring) hc]
    simp
  have he : (∫ x in 1..Y, (Chebyshev.psi x - x) / (x * Real.sqrt x)) =
      (∫ x in 1..Y, Chebyshev.psi x / (x * Real.sqrt x)) -
        ∫ x in 1..Y, 1 / Real.sqrt x := by
    rw [← intervalIntegral.integral_sub hp hc]
    apply intervalIntegral.integral_congr
    intro x hx
    rw [uIcc_of_le hY] at hx
    have hx0 : x ≠ 0 := by linarith [hx.1]
    field_simp
  rw [he, hm]
  linarith only [hha]

private theorem near_main_eq_integral {A : ℝ} (hA : 1 ≤ A) :
    actualNearCriticalRelativeMain A =
      (1 / 2 : ℝ) * ∫ t in 0..2 * Real.log A,
        Real.exp (t / 2) * relativePsiError t := by
  have hp : 0 < A := by linarith
  have hT : 0 ≤ 2 * Real.log A := by positivity [Real.log_nonneg hA]
  have hY : 1 ≤ A ^ 2 := by nlinarith
  have hex : Real.exp (2 * Real.log A) = A ^ 2 := by
    rw [show 2 * Real.log A = Real.log A + Real.log A by ring,
      Real.exp_add, Real.exp_log hp]
    ring
  have hc : (fun t : ℝ => Real.exp t *
      ((Chebyshev.psi (Real.exp t) - Real.exp t) /
        (Real.exp t * Real.sqrt (Real.exp t)))) =
      fun t => Real.exp (t / 2) * relativePsiError t := by
    funext t
    rw [Real.sqrt_eq_rpow, ← Real.exp_mul, show t * (1 / 2 : ℝ) = t / 2 by ring]
    unfold relativePsiError
    rw [Real.exp_neg]
    have hh : Real.exp (t / 2) ^ 2 = Real.exp t := by
      rw [sq, ← Real.exp_add]
      congr 1
      ring
    have h1 : Real.exp (t / 2) ≠ 0 := (Real.exp_pos _).ne'
    field_simp
    nlinarith
  have hsub : (∫ t in 0..2 * Real.log A,
      Real.exp (t / 2) * relativePsiError t) =
      ∫ x in 1..A ^ 2, (Chebyshev.psi x - x) / (x * Real.sqrt x) := by
    have hd (t : ℝ) (_ht : t ∈ Ioo (min 0 (2 * Real.log A))
        (max 0 (2 * Real.log A))) : HasDerivAt Real.exp (Real.exp t) t :=
      Real.hasDerivAt_exp t
    have hi := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
      Real.continuous_exp.continuousOn hd (fun t _ => (Real.exp_pos t).le)
      (g := fun x : ℝ => (Chebyshev.psi x - x) / (x * Real.sqrt x))
    have hc' : (fun t : ℝ =>
        ((fun x : ℝ => (Chebyshev.psi x - x) / (x * Real.sqrt x)) ∘ Real.exp) t *
          Real.exp t) = fun t => Real.exp (t / 2) * relativePsiError t := by
      simpa only [Function.comp_apply, mul_comm] using hc
    rw [hc', Real.exp_zero, hex] at hi
    exact hi
  rw [hsub, physical_relative_half hY]
  unfold actualNearCriticalRelativeMain actualMangoldtHalfClosedPrefix
  rw [hex, Real.sqrt_sq_eq_abs, abs_of_pos hp]
  have hI : Finset.Icc 0 ⌊A ^ 2⌋₊ = insert 0 (Finset.Ioc 0 ⌊A ^ 2⌋₊) := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_insert, Finset.mem_Ioc]
    omega
  rw [hI, Finset.sum_insert (by simp)]
  simp

/-- A vanishing unscaled remainder pays the whole genuine near relative-Psi sector. -/
theorem actualNearCriticalRelative_sub_main_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualNearCriticalRelativePairing A - actualNearCriticalRelativeMain A| ≤
      10 * (Real.log 4 + 3) * (Real.log A) ^ 2 / A := by
  have hp : 0 < A := by linarith
  rw [near_main_eq_integral (by linarith : 1 ≤ A)]
  have hh := near_replacement hA
    (show 0 ≤ 2 * Real.log A by positivity [Real.log_nonneg (by linarith : 1 ≤ A)])
  unfold actualNearCriticalRelativePairing
  apply hh.trans_eq
  rw [show 2 * Real.log A / 2 = Real.log A by ring, Real.exp_log hp]
  field_simp
  ring

/-- The kernel replacement error tends to zero before any normalization of the signed pairing. -/
theorem actualNearCriticalRelative_sub_main_tendsto_zero :
    Tendsto (fun A : ℝ => actualNearCriticalRelativePairing A -
      actualNearCriticalRelativeMain A) atTop (𝓝 0) := by
  have ht : Tendsto (fun A : ℝ => (Real.log A) ^ 2 / A) atTop (𝓝 0) := by
    simpa using Real.tendsto_pow_log_div_mul_add_atTop 1 0 2 one_ne_zero
  have hh := ht.const_mul (10 * (Real.log 4 + 3))
  simp only [mul_zero] at hh
  apply squeeze_zero_norm' ?_ hh
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  simpa only [Real.norm_eq_abs, mul_div_assoc] using
    actualNearCriticalRelative_sub_main_abs_le hA

/-- The paid near sector is sublinear, while no constant upper bound is inferred. -/
theorem actualNearCriticalRelative_normalized_tendsto_zero :
    Tendsto (fun A : ℝ => actualNearCriticalRelativePairing A / A) atTop (𝓝 0) := by
  have hp := actualHalfMangoldtPrefix_square_normalized_tendsto_two
  have ht : Tendsto (fun A : ℝ => 2 * Real.log A) atTop atTop :=
    Real.tendsto_log_atTop.const_mul_atTop (by norm_num)
  have hpsi := actualRelativePsiTimeError_tendsto_zero.comp ht
  have hpsi' : Tendsto (fun A : ℝ => Chebyshev.psi (A ^ 2) / A ^ 2) atTop (𝓝 1) := by
    have hh := hpsi.add_const 1
    simp only [zero_add] at hh
    apply hh.congr'
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    have ha : 0 < A := by linarith
    have hex : Real.exp (2 * Real.log A) = A ^ 2 := by
      rw [show 2 * Real.log A = Real.log A + Real.log A by ring,
        Real.exp_add, Real.exp_log ha]
      ring
    unfold actualRelativePsiTimeError
    rw [hex, Real.exp_neg, hex]
    field_simp
  have hinv : Tendsto (fun A : ℝ => 1 / A) atTop (𝓝 0) := by
    simpa only [one_div] using (tendsto_inv_atTop_zero :
      Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0))
  have hmain := (((hp.sub hpsi').sub_const 1).add hinv)
  norm_num at hmain
  have hm : Tendsto (fun A : ℝ => actualNearCriticalRelativeMain A / A) atTop (𝓝 0) := by
    apply hmain.congr'
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    unfold actualNearCriticalRelativeMain
    field_simp
    ring
  have he := actualNearCriticalRelative_sub_main_tendsto_zero.mul hinv
  simpa only [mul_zero, zero_add, div_eq_mul_inv, sub_mul, sub_add_cancel] using he.add hm

/-- The entire original tail remains in the exact signed split at the real closed cutoff. -/
theorem actualCriticalRelative_eq_near_add_complement {A : ℝ} (hA : 91 ≤ A) :
    criticalRelativePairing A = actualNearCriticalRelativePairing A +
      actualComplementCriticalRelativePairing A := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hT : 0 ≤ 2 * Real.log A := by positivity [Real.log_nonneg hA1]
  have hT2 : 2 * Real.log A ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos hp]
  have hi := criticalKernel_integrable hA1
  have hfull : criticalRelativePairing A = ∫ t in 0..2 * A, criticalKernel A t := by
    unfold criticalRelativePairing
    rw [intervalIntegral.integral_of_le (by linarith : (0 : ℝ) ≤ 2 * A),
      ← Ioc_union_Ioi_eq_Ioi (by linarith : (0 : ℝ) ≤ 2 * A)]
    apply integral_union_eq_left_of_forall measurableSet_Ioi
    intro t ht
    simp [criticalKernel, criticalWeight_zero_above hA1 ht]
  have h0b : IntervalIntegrable (criticalKernel A) volume 0 (2 * A) := by
    rw [intervalIntegrable_iff_integrableOn_Ioc_of_le (by linarith : (0 : ℝ) ≤ 2 * A)]
    exact hi.mono_set (by intro t ht; exact ht.1)
  rw [hfull]
  unfold actualNearCriticalRelativePairing actualComplementCriticalRelativePairing
  exact (intervalIntegral.integral_add_adjacent_intervals
    (h0b.mono_set (by
      rw [uIcc_of_le hT, uIcc_of_le (by linarith : 0 ≤ 2 * A)]
      exact Icc_subset_Icc le_rfl hT2))
    (h0b.mono_set (by
      rw [uIcc_of_le hT2, uIcc_of_le (by linarith : 0 ≤ 2 * A)]
      exact Icc_subset_Icc hT le_rfl))).symm

end FormalResearch.RiemannHypothesis.SourceActualNearCriticalRelative
