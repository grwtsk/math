import FormalResearch.RiemannHypothesis.ThetaXiPhiIBP
import Mathlib.Analysis.Complex.Norm

/-!
# Vanishing of the retained theta-xi boundary

The finite theta-Phi identity deliberately retained the upper endpoint

`A'(t) cosh(2ut) - 2u A(t) sinh(2ut)`.

This module proves that boundary tends to zero for every fixed complex
spectral parameter.  The proof stays source-specific: the literal Gaussian
series for `A` and `A'` are split at one half exactly as in the existing
superexponential estimate for `thetaPhi`.

No improper-integral identity, coefficient formula, PF-infinity theorem, or
Riemann-hypothesis conclusion is taken in this file.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open Filter Set
open scoped Topology

noncomputable section

/-- The degree-zero Gaussian constant controlling `A`. -/
def thetaADecayConstant : ℝ :=
  HurwitzKernelBounds.F_nat 0 1 (1 / 2)

/-- The combined degree-zero/degree-two Gaussian constant controlling `A'`. -/
def thetaADerivDecayConstant : ℝ :=
  HurwitzKernelBounds.F_nat 0 1 (1 / 2) +
    4 * Real.pi * HurwitzKernelBounds.F_nat 2 1 (1 / 2)

private theorem hurwitzF_nat_nonnegative (k : ℕ) (x : ℝ) :
    0 ≤ HurwitzKernelBounds.F_nat k 1 x := by
  unfold HurwitzKernelBounds.F_nat
  exact tsum_nonneg fun m => by
    unfold HurwitzKernelBounds.f_nat
    positivity

theorem thetaADecayConstant_nonnegative :
    0 ≤ thetaADecayConstant := by
  exact hurwitzF_nat_nonnegative 0 (1 / 2)

theorem thetaADerivDecayConstant_nonnegative :
    0 ≤ thetaADerivDecayConstant := by
  unfold thetaADerivDecayConstant
  exact add_nonneg (hurwitzF_nat_nonnegative 0 _) (mul_nonneg
    (mul_nonneg (by norm_num) Real.pi_pos.le) (hurwitzF_nat_nonnegative 2 _))

/-- The same Gaussian split used by `thetaPhi_le_superexp`, now isolated for
an arbitrary nonnegative polynomial weight. -/
private theorem f_nat_le_half_split (k m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    HurwitzKernelBounds.f_nat k 1 (Real.exp (4 * t)) m ≤
      Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
        HurwitzKernelBounds.f_nat k 1 (1 / 2) m := by
  have hE : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by positivity)
  have hn : (1 : ℝ) ≤ (m : ℝ) + 1 := by
    have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
    linarith
  have hn2 : 1 ≤ ((m : ℝ) + 1) ^ 2 := one_le_pow₀ hn
  have hsplit :
      Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t)) ≤
        Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
          Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * (1 / 2)) := by
    rw [← Real.exp_add]
    apply Real.exp_le_exp.mpr
    have hprod := mul_nonneg (sub_nonneg.mpr hn2) (sub_nonneg.mpr hE)
    have hmid :
        Real.exp (4 * t) + ((m : ℝ) + 1) ^ 2 ≤
          2 * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t) := by
      nlinarith
    nlinarith [mul_nonneg Real.pi_pos.le (sub_nonneg.mpr hmid)]
  unfold HurwitzKernelBounds.f_nat
  calc
    ((m : ℝ) + 1) ^ k *
        Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t))
      ≤ ((m : ℝ) + 1) ^ k *
          (Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
            Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * (1 / 2))) := by
        gcongr
    _ = Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
        (((m : ℝ) + 1) ^ k *
          Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * (1 / 2))) := by
        ring

private theorem F_nat_le_half_split (k : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    HurwitzKernelBounds.F_nat k 1 (Real.exp (4 * t)) ≤
      Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
        HurwitzKernelBounds.F_nat k 1 (1 / 2) := by
  unfold HurwitzKernelBounds.F_nat
  have hsum :=
    (HurwitzKernelBounds.summable_f_nat k 1 (Real.exp_pos (4 * t))).tsum_le_tsum
      (fun m => f_nat_le_half_split k m ht)
      ((HurwitzKernelBounds.summable_f_nat k 1
        (by norm_num : (0 : ℝ) < 1 / 2)).mul_left
          (Real.exp (-(Real.pi / 2) * Real.exp (4 * t))))
  apply hsum.trans_eq
  rw [tsum_mul_left]

/-- `A` is exactly the degree-zero weighted Gaussian sum. -/
theorem thetaA_eq_F_nat (t : ℝ) :
    thetaA t =
      Real.exp t *
        HurwitzKernelBounds.F_nat 0 1 (Real.exp (4 * t)) := by
  rw [thetaA_eq_tsum_modes]
  simp_rw [thetaAMode_eq_gaussian]
  rw [tsum_mul_left]
  rfl

/-- The explicit first-derivative series is the difference of its degree-zero
and degree-two Gaussian sums. -/
theorem thetaADerivSeries_eq_F_nat (t : ℝ) :
    thetaADerivSeries t =
      Real.exp t *
          HurwitzKernelBounds.F_nat 0 1 (Real.exp (4 * t)) -
        (4 * Real.pi * Real.exp (5 * t)) *
          HurwitzKernelBounds.F_nat 2 1 (Real.exp (4 * t)) := by
  unfold thetaADerivSeries
  have h0 :=
    (HurwitzKernelBounds.summable_f_nat 0 1
      (Real.exp_pos (4 * t))).mul_left (Real.exp t)
  have h2 :=
    (HurwitzKernelBounds.summable_f_nat 2 1
      (Real.exp_pos (4 * t))).mul_left
        (4 * Real.pi * Real.exp (5 * t))
  simp_rw [thetaAModeDeriv_eq_gaussians]
  rw [h0.tsum_sub h2, tsum_mul_left, tsum_mul_left]
  rfl

theorem thetaA_nonnegative {t : ℝ} :
    0 ≤ thetaA t := by
  rw [thetaA_eq_F_nat]
  exact mul_nonneg (Real.exp_pos _).le
    (hurwitzF_nat_nonnegative 0 (Real.exp (4 * t)))

/-- Superexponential bound on the actual source function `A`. -/
theorem thetaA_le_superexp {t : ℝ} (ht : 0 ≤ t) :
    thetaA t ≤
      thetaADecayConstant *
        Real.exp (t - (Real.pi / 2) * Real.exp (4 * t)) := by
  rw [thetaA_eq_F_nat]
  calc
    Real.exp t * HurwitzKernelBounds.F_nat 0 1 (Real.exp (4 * t))
      ≤ Real.exp t *
          (Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
            HurwitzKernelBounds.F_nat 0 1 (1 / 2)) := by
        exact mul_le_mul_of_nonneg_left (F_nat_le_half_split 0 ht)
          (Real.exp_pos _).le
    _ = thetaADecayConstant *
        Real.exp (t - (Real.pi / 2) * Real.exp (4 * t)) := by
      unfold thetaADecayConstant
      rw [sub_eq_add_neg, Real.exp_add]
      ring

/-- Superexponential norm bound on the explicit first derivative of `A`. -/
theorem thetaADerivSeries_norm_le_superexp {t : ℝ} (ht : 0 ≤ t) :
    ‖thetaADerivSeries t‖ ≤
      thetaADerivDecayConstant *
        Real.exp (5 * t - (Real.pi / 2) * Real.exp (4 * t)) := by
  rw [thetaADerivSeries_eq_F_nat]
  refine (norm_sub_le _ _).trans ?_
  have hF0 :
      0 ≤ HurwitzKernelBounds.F_nat 0 1 (Real.exp (4 * t)) :=
    hurwitzF_nat_nonnegative 0 _
  have hF2 :
      0 ≤ HurwitzKernelBounds.F_nat 2 1 (Real.exp (4 * t)) :=
    hurwitzF_nat_nonnegative 2 _
  rw [Real.norm_of_nonneg
      (mul_nonneg (Real.exp_pos _).le hF0),
    Real.norm_of_nonneg
      (mul_nonneg
        (mul_nonneg
          (mul_nonneg (by norm_num) Real.pi_pos.le)
          (Real.exp_pos _).le) hF2)]
  have he15 : Real.exp t ≤ Real.exp (5 * t) := by
    apply Real.exp_le_exp.mpr
    linarith
  have h0 := F_nat_le_half_split 0 ht
  have h2 := F_nat_le_half_split 2 ht
  calc
    Real.exp t * HurwitzKernelBounds.F_nat 0 1 (Real.exp (4 * t)) +
        (4 * Real.pi * Real.exp (5 * t)) *
          HurwitzKernelBounds.F_nat 2 1 (Real.exp (4 * t))
      ≤ Real.exp (5 * t) *
            (Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
              HurwitzKernelBounds.F_nat 0 1 (1 / 2)) +
          (4 * Real.pi * Real.exp (5 * t)) *
            (Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
              HurwitzKernelBounds.F_nat 2 1 (1 / 2)) := by
        apply add_le_add
        · exact mul_le_mul he15 h0 hF0 (Real.exp_pos _).le
        · exact mul_le_mul_of_nonneg_left h2 (by positivity)
    _ = thetaADerivDecayConstant *
        Real.exp (5 * t - (Real.pi / 2) * Real.exp (4 * t)) := by
      unfold thetaADerivDecayConstant
      rw [sub_eq_add_neg, Real.exp_add]
      ring

/-- Every fixed linear exponent is eventually dominated by the
superexponential Gaussian debt. -/
private theorem eventually_linear_le_half_pi_exp (c : ℝ) :
    ∀ᶠ t in atTop,
      c * t ≤ (Real.pi / 2) * Real.exp (4 * t) := by
  filter_upwards [eventually_ge_atTop (max 0 c)] with t ht
  have ht0 : 0 ≤ t := (le_max_left 0 c).trans ht
  have hct : c ≤ t := (le_max_right 0 c).trans ht
  have hmul : c * t ≤ t ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hct) ht0]
  have he := Real.quadratic_le_exp_of_nonneg
    (show 0 ≤ 4 * t by positivity)
  have hsqexp : t ^ 2 ≤ Real.exp (4 * t) := by
    nlinarith [sq_nonneg t]
  have hpi : 1 ≤ Real.pi / 2 := by
    nlinarith [Real.pi_gt_three]
  exact hmul.trans <|
    hsqexp.trans (by
      nlinarith [mul_nonneg (sub_nonneg.mpr hpi) (Real.exp_pos (4 * t)).le])

/-- `A` beats every prescribed exponential rate. -/
theorem thetaA_norm_le_exp_rate_eventually (r : ℝ) :
    ∀ᶠ t in atTop,
      ‖thetaA t‖ ≤ thetaADecayConstant * Real.exp (-r * t) := by
  filter_upwards [eventually_ge_atTop (0 : ℝ),
    eventually_linear_le_half_pi_exp (r + 1)] with t ht hlin
  rw [Real.norm_of_nonneg thetaA_nonnegative]
  refine (thetaA_le_superexp ht).trans ?_
  apply mul_le_mul_of_nonneg_left _ thetaADecayConstant_nonnegative
  apply Real.exp_le_exp.mpr
  linarith

/-- The first derivative of `A` beats every prescribed exponential rate. -/
theorem thetaADerivSeries_norm_le_exp_rate_eventually (r : ℝ) :
    ∀ᶠ t in atTop,
      ‖thetaADerivSeries t‖ ≤
        thetaADerivDecayConstant * Real.exp (-r * t) := by
  filter_upwards [eventually_ge_atTop (0 : ℝ),
    eventually_linear_le_half_pi_exp (r + 5)] with t ht hlin
  refine (thetaADerivSeries_norm_le_superexp ht).trans ?_
  apply mul_le_mul_of_nonneg_left _ thetaADerivDecayConstant_nonnegative
  apply Real.exp_le_exp.mpr
  linarith

/-- The complex exponential kernel grows by at most the exponential of the
spectral norm. -/
theorem thetaExpKernel_norm_le (u : ℂ) {t : ℝ} (ht : 0 ≤ t) :
    ‖thetaExpKernel u t‖ ≤ Real.exp (2 * ‖u‖ * t) := by
  unfold thetaExpKernel
  refine (Complex.norm_exp_le_exp_norm _).trans_eq ?_
  congr 1
  simp [abs_of_nonneg ht, mul_assoc]

/-- A finite nonnegative constant controlling the retained exponential
boundary for the fixed spectral parameter. -/
def thetaBoundaryDecayConstant (u : ℂ) : ℝ :=
  thetaADerivDecayConstant +
    2 * ‖u‖ * thetaADecayConstant

theorem thetaBoundaryDecayConstant_nonnegative (u : ℂ) :
    0 ≤ thetaBoundaryDecayConstant u := by
  unfold thetaBoundaryDecayConstant
  exact add_nonneg thetaADerivDecayConstant_nonnegative
    (mul_nonneg (mul_nonneg (by norm_num) (norm_nonneg u)) thetaADecayConstant_nonnegative)

/-- After paying the possible spectral growth, the retained exponential
boundary still has a uniform `e^{-t}` majorant. -/
theorem thetaExpBoundary_norm_le_eventually (u : ℂ) :
    ∀ᶠ t in atTop,
      ‖thetaExpBoundary u t‖ ≤
        thetaBoundaryDecayConstant u * Real.exp (-t) := by
  let r : ℝ := 2 * ‖u‖ + 1
  filter_upwards [eventually_ge_atTop (0 : ℝ),
    thetaA_norm_le_exp_rate_eventually r,
    thetaADerivSeries_norm_le_exp_rate_eventually r] with t ht hA hD
  have hk := thetaExpKernel_norm_le u ht
  unfold thetaExpBoundary
  rw [norm_mul]
  calc
    ‖(thetaADerivSeries t : ℂ) -
        (2 * u) * (thetaA t : ℂ)‖ *
        ‖thetaExpKernel u t‖
      ≤ (‖thetaADerivSeries t‖ +
          2 * ‖u‖ * ‖thetaA t‖) *
          Real.exp (2 * ‖u‖ * t) := by
        apply mul_le_mul
        · calc
            ‖(thetaADerivSeries t : ℂ) -
                (2 * u) * (thetaA t : ℂ)‖
              ≤ ‖(thetaADerivSeries t : ℂ)‖ +
                  ‖(2 * u) * (thetaA t : ℂ)‖ := norm_sub_le _ _
            _ = ‖thetaADerivSeries t‖ +
                2 * ‖u‖ * ‖thetaA t‖ := by
              simp [mul_assoc]
        · exact hk
        · positivity
        · positivity
    _ ≤ (thetaADerivDecayConstant * Real.exp (-r * t) +
          2 * ‖u‖ *
            (thetaADecayConstant * Real.exp (-r * t))) *
          Real.exp (2 * ‖u‖ * t) := by
        gcongr
    _ = (thetaADerivDecayConstant +
          2 * ‖u‖ * thetaADecayConstant) *
        (Real.exp (-r * t) * Real.exp (2 * ‖u‖ * t)) := by
      ring
    _ = thetaBoundaryDecayConstant u * Real.exp (-t) := by
      have hexp :
          Real.exp (-r * t) * Real.exp (2 * ‖u‖ * t) =
            Real.exp (-t) := by
        rw [← Real.exp_add]
        congr 1
        unfold r
        ring
      rw [hexp]
      rfl

/-- The oriented exponential boundary vanishes at infinity for every fixed
complex spectral parameter. -/
theorem thetaExpBoundary_tendsto_atTop (u : ℂ) :
    Tendsto (thetaExpBoundary u) atTop (𝓝 0) := by
  rw [tendsto_zero_iff_norm_tendsto_zero]
  refine squeeze_zero'
    (g := fun t : ℝ =>
      thetaBoundaryDecayConstant u * Real.exp (-t)) ?_ ?_ ?_
  · exact Eventually.of_forall fun t => norm_nonneg _
  · exact thetaExpBoundary_norm_le_eventually u
  · simpa using
      (Real.tendsto_exp_atBot.comp tendsto_neg_atTop_atBot).const_mul
        (thetaBoundaryDecayConstant u)

/-- The evenized cosh/sinh boundary retained in the finite theta-Phi identity
therefore vanishes at infinity. -/
theorem thetaCoshBoundary_tendsto_atTop (u : ℂ) :
    Tendsto (thetaCoshBoundary u) atTop (𝓝 0) := by
  unfold thetaCoshBoundary
  simpa using
    ((thetaExpBoundary_tendsto_atTop u).add
      (thetaExpBoundary_tendsto_atTop (-u))).div_const 2

/-- Expanded statement matching the endpoint term displayed in the finite
cosh identity. -/
theorem thetaCoshBoundary_explicit_tendsto_atTop (u : ℂ) :
    Tendsto
      (fun t : ℝ =>
        (thetaADerivSeries t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) -
          (2 * u) * (thetaA t : ℂ) * Complex.sinh (2 * u * (t : ℂ)))
      atTop (𝓝 0) := by
  simpa only [← thetaCoshBoundary_eq] using
    thetaCoshBoundary_tendsto_atTop u

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
