/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CanonicalZeroDivisor
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.LaplaceCriterion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualLaplace
import GRWTSK.MeasureAndIntegration.LaplaceCumulativeSquareBound
import GRWTSK.MeasureAndIntegration.LaplaceFixedRotation
import GRWTSK.SequencesSeriesSummability.ConvergenceAndDivergenceOfInfiniteLimitingProcesses.GoodScaleSubexponential
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Tactic

/-!
# Critical-line poles of the original signed Möbius residual

Formalization of the written proof in commit
`184e3d469d56e5883443ebd849aff82b6eb5f0b3`. A polynomial envelope on the
exact cumulative residual gives a factorial bound for its weighted square.
Continuing the pole-cleared pickup identity gives the Laurent coefficient at
each specified nonreal critical-line zero. Applying real Cauchy–Schwarz with a
fixed complex rotation gives the factor of two in the lower bound.

The conclusions use the exact causal signed sum, first globally and then on
fixed affine-frequent sets. The final corollary takes Hardy's zero-existence
assertion as an explicit input.
-/

set_option autoImplicit false

noncomputable section

open Filter MeasureTheory Set
open scoped Topology

namespace GRWTSK.NumberTheory.Moebius.GaussianSignedResidualPole

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLaplace
open GRWTSK.MeasureAndIntegration.LaplaceCumulativeSquareBound
open GRWTSK.MeasureAndIntegration.LaplaceFixedRotation
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

private theorem differentiableOn_laplace_of_integrable {f : ℝ → ℝ} (hf : Continuous f)
    (hconv : ∀ z : ℂ, 0 < z.re →
      IntegrableOn (fun u : ℝ => Complex.exp (-z * (u : ℂ)) * (f u : ℂ)) (Ioi 0)) :
    DifferentiableOn ℂ
      (fun z : ℂ => ∫ u in Ioi (0 : ℝ), Complex.exp (-z * (u : ℂ)) * (f u : ℂ))
      pickupLaplaceDomain := by
  intro z hz
  change 0 < z.re at hz
  let δ := z.re / 4
  have hδ : 0 < δ := by dsimp [δ]; linarith
  let kernel (w : ℂ) (u : ℝ) := Complex.exp (-w * (u : ℂ)) * (f u : ℂ)
  let derivative (w : ℂ) (u : ℝ) := -(u : ℂ) * kernel w u
  have hkernel (w : ℂ) : Continuous (kernel w) := by
    unfold kernel
    exact (Complex.continuous_exp.comp
      (continuous_const.mul Complex.continuous_ofReal)).mul
      (Complex.continuous_ofReal.comp hf)
  have hnorm (w : ℂ) (u : ℝ) :
      ‖kernel w u‖ = Real.exp (-w.re * u) * |f u| := by
    simp [kernel, Complex.norm_exp, Complex.mul_re, Real.norm_eq_abs]
  have hderiv (w : ℂ) (u : ℝ) :
      HasDerivAt (fun v : ℂ => kernel v u) (derivative w u) w := by
    have hlin : HasDerivAt (fun x : ℂ => -x * (u : ℂ)) (-(u : ℂ)) w := by
      simpa using (hasDerivAt_id w).neg.mul_const (u : ℂ)
    convert hlin.cexp.mul_const (f u : ℂ) using 1
    change -(u : ℂ) * (Complex.exp (-w * (u : ℂ)) * (f u : ℂ)) = _
    ring
  let U : Set ℂ := {w | 2 * δ < w.re}
  have hU : U ∈ 𝓝 z :=
    (isOpen_lt continuous_const Complex.continuous_re).mem_nhds (by dsimp [δ]; linarith)
  have hmajor :
      IntegrableOn (fun u : ℝ => δ⁻¹ * ‖kernel (δ : ℂ) u‖) (Ioi 0) :=
    (hconv (δ : ℂ) (by simpa only [Complex.ofReal_re] using hδ)).norm.const_mul _
  have hbound : ∀ᵐ u : ℝ ∂volume.restrict (Ioi 0), ∀ w ∈ U,
      ‖derivative w u‖ ≤ δ⁻¹ * ‖kernel (δ : ℂ) u‖ := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    intro w hw
    change 0 < u at hu
    change 2 * δ < w.re at hw
    have hdecay : Real.exp (-w.re * u) ≤ Real.exp (-(2 * δ) * u) :=
      Real.exp_le_exp.mpr (by nlinarith)
    have hweight : u * Real.exp (-δ * u) ≤ δ⁻¹ := by
      have h := Real.add_one_le_exp (δ * u)
      have hh : δ * u * Real.exp (-δ * u) ≤ 1 := by
        calc
          _ ≤ Real.exp (δ * u) * Real.exp (-δ * u) :=
            mul_le_mul_of_nonneg_right (by linarith) (Real.exp_pos _).le
          _ = 1 := by rw [← Real.exp_add, show δ * u + -δ * u = 0 by ring, Real.exp_zero]
      apply le_of_mul_le_mul_left _ hδ
      rw [mul_inv_cancel₀ hδ.ne']
      simpa only [mul_assoc] using hh
    rw [show derivative w u = -(u : ℂ) * kernel w u from rfl,
      norm_mul, norm_neg, Complex.norm_real, Real.norm_eq_abs,
      abs_of_pos hu, hnorm, hnorm, Complex.ofReal_re]
    calc
      _ ≤ u * (Real.exp (-(2 * δ) * u) * |f u|) := by gcongr
      _ = (u * Real.exp (-δ * u)) * (Real.exp (-δ * u) * |f u|) := by
        rw [show -(2 * δ) * u = -δ * u + -δ * u by ring, Real.exp_add]
        ring
      _ ≤ _ := mul_le_mul_of_nonneg_right hweight (by positivity)
  have hdcont : Continuous (derivative z) :=
    Complex.continuous_ofReal.neg.mul (hkernel z)
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le hU
    (Filter.Eventually.of_forall fun w => (hkernel w).aestronglyMeasurable)
    (hconv z hz) hdcont.aestronglyMeasurable hbound hmajor
    (Filter.Eventually.of_forall fun u w _ => hderiv w u)
  exact h.2.differentiableAt.differentiableWithinAt

/-- Approach the shifted zero horizontally from the open right half-plane. -/
def rightApproach (ρ : ℂ) (σ : ℝ) : ℂ :=
  ρ - 1 / 2 + (σ : ℂ)

/-- The Laurent coefficient in the pickup Laplace transform. For the local factor
`ζ(w) = (w - ρ)^m g(w)`, the value `g ρ` is `ζ⁽ᵐ⁾(ρ) / m!`. -/
def poleCoefficient (ρ : ℂ) (g : ℂ → ℂ) : ℂ :=
  ((ρ - 1 / 2) * ρ * g ρ)⁻¹

private theorem rightApproach_re {ρ : ℂ} (hline : ρ.re = 1 / 2) (σ : ℝ) :
    (rightApproach ρ σ).re = σ := by
  simp [rightApproach, hline]

private theorem rightApproach_im (ρ : ℂ) (σ : ℝ) :
    (rightApproach ρ σ).im = ρ.im := by
  simp [rightApproach]

private theorem sub_half_ne_zero {ρ : ℂ} (hγ : ρ.im ≠ 0) :
    ρ - 1 / 2 ≠ 0 := by
  intro h
  apply hγ
  simpa using congrArg Complex.im h

theorem poleCoefficient_ne_zero {ρ : ℂ} {g : ℂ → ℂ}
    (hline : ρ.re = 1 / 2) (hγ : ρ.im ≠ 0) (hg : g ρ ≠ 0) :
    poleCoefficient ρ g ≠ 0 := by
  have hρ : ρ ≠ 0 := Complex.ne_zero_of_re_pos (by rw [hline]; norm_num)
  exact inv_ne_zero (mul_ne_zero (mul_ne_zero (sub_half_ne_zero hγ) hρ) hg)

/-- Continue the pole-cleared initial pickup identity and take the boundary limit.
The subtracted transform is continuous at the shifted zero. -/
theorem tendsto_scaled_of_pickup_pole (ρ : ZeroPoint)
    (hline : (ρ : ℂ).re = 1 / 2) (hγ : (ρ : ℂ).im ≠ 0)
    {g L H : ℂ → ℂ} (hg : AnalyticAt ℂ g ρ.val) (hgn : g ρ.val ≠ 0)
    (hfactor : ∀ᶠ w in 𝓝 ρ.val,
      riemannZeta w = (w - ρ.val) ^ multiplicity ρ * g w)
    (hhol : DifferentiableOn ℂ (fun z => L z + H z) pickupLaplaceDomain)
    (hinit : ∀ z : ℂ, 1 / 2 < z.re →
      L z + H z = 1 / (z * (z + 1 / 2) * riemannZeta (z + 1 / 2)))
    (hH : ContinuousAt H (ρ.val - 1 / 2)) :
    Tendsto (fun σ : ℝ => (σ : ℂ) ^ multiplicity ρ * L (rightApproach ρ.val σ))
      (𝓝[>] 0) (𝓝 (poleCoefficient ρ.val g)) := by
  let F : Filter ℝ := 𝓝[>] (0 : ℝ)
  let z : ℝ → ℂ := rightApproach ρ.val
  have hpos : ∀ᶠ σ : ℝ in F, 0 < σ := eventually_mem_nhdsWithin
  have hbase : Tendsto (fun σ : ℝ => σ) F (𝓝 0) := nhdsWithin_le_nhds
  have hcast : Tendsto (fun σ : ℝ => (σ : ℂ)) F (𝓝 0) := by
    simpa only [Function.comp_def, Complex.ofReal_zero] using
      Complex.continuous_ofReal.continuousAt.tendsto.comp hbase
  have hz : Tendsto z F (𝓝 (ρ.val - 1 / 2)) := by
    unfold z rightApproach
    simpa only [add_zero] using hcast.const_add (ρ.val - 1 / 2)
  have hzw : Tendsto (fun σ : ℝ => z σ + 1 / 2) F (𝓝 ρ.val) := by
    simpa only [sub_add_cancel] using hz.add_const (1 / 2 : ℂ)
  have hg' : Tendsto (fun σ : ℝ => g (z σ + 1 / 2)) F (𝓝 (g ρ.val)) :=
    hg.continuousAt.tendsto.comp hzw
  have hg_ne : ∀ᶠ σ : ℝ in F, g (z σ + 1 / 2) ≠ 0 :=
    hg'.eventually_ne hgn
  have hlocal := hzw.eventually hfactor
  have hreg := regularized_laplace_identity (fun w => L w + H w) hhol
    (regularized_initial_identity_of_inverse _ hinit)
  have heq : ∀ᶠ σ : ℝ in F,
      (σ : ℂ) ^ multiplicity ρ * (L (z σ) + H (z σ)) =
        (z σ * (z σ + 1 / 2) * g (z σ + 1 / 2))⁻¹ := by
    filter_upwards [hpos, hlocal, hg_ne] with σ hσ hloc hgne
    have hzpos : 0 < (z σ).re := by simpa only [z, rightApproach_re hline] using hσ
    have hzp : 0 < (z σ + 1 / 2).re := by
      simp only [Complex.add_re]
      norm_num
      linarith
    have hz0 : z σ ≠ 0 := Complex.ne_zero_of_re_pos hzpos
    have hw0 : z σ + 1 / 2 ≠ 0 := Complex.ne_zero_of_re_pos hzp
    have hw1 : z σ + 1 / 2 ≠ 1 := by
      intro hw
      apply hγ
      simpa [z, rightApproach_im] using congrArg Complex.im hw
    have hshift : z σ + 1 / 2 - ρ.val = (σ : ℂ) := by
      unfold z rightApproach
      ring
    have hshift_ne : z σ - 1 / 2 ≠ 0 := by
      intro hw
      apply hw1
      linear_combination hw
    have hregσ := hreg (z σ) hzpos
    rw [regularizedZeta_eq hw0 hw1, hloc, hshift] at hregσ
    have hcleared :
        (z σ - 1 / 2) *
            ((z σ * (z σ + 1 / 2) * g (z σ + 1 / 2)) *
              ((σ : ℂ) ^ multiplicity ρ * (L (z σ) + H (z σ)))) =
          (z σ - 1 / 2) * 1 := by
      calc
        _ = z σ * ((z σ + 1 / 2) * (z σ + 1 / 2 - 1) *
              ((σ : ℂ) ^ multiplicity ρ * g (z σ + 1 / 2))) *
              (L (z σ) + H (z σ)) := by ring
        _ = _ := by simpa using hregσ
    have hden := mul_ne_zero (mul_ne_zero hz0 hw0) hgne
    apply (mul_eq_one_iff_eq_inv₀ hden).1
    rw [mul_comm]
    exact mul_left_cancel₀ hshift_ne hcleared
  have hρ0 : ρ.val ≠ 0 := Complex.ne_zero_of_re_pos (by rw [hline]; norm_num)
  have hrhs : Tendsto
      (fun σ : ℝ => (z σ * (z σ + 1 / 2) * g (z σ + 1 / 2))⁻¹) F
      (𝓝 (poleCoefficient ρ.val g)) :=
    ((hz.mul hzw).mul hg').inv₀ (mul_ne_zero (mul_ne_zero (sub_half_ne_zero hγ) hρ0) hgn)
  have htotal := hrhs.congr' (heq.mono fun _ h => h.symm)
  have hpow : Tendsto (fun σ : ℝ => (σ : ℂ) ^ multiplicity ρ) F (𝓝 0) := by
    simpa only [Complex.ofReal_zero, zero_pow (Nat.ne_of_gt (multiplicity_pos ρ))] using
      hcast.pow (multiplicity ρ)
  have hheat := hpow.mul (hH.tendsto.comp hz)
  have hdiff := htotal.sub hheat
  simp only [zero_mul, sub_zero] at hdiff
  apply hdiff.congr'
  exact Filter.Eventually.of_forall fun σ => by
    change (σ : ℂ) ^ multiplicity ρ * (L (z σ) + H (z σ)) -
      (σ : ℂ) ^ multiplicity ρ * H (z σ) = (σ : ℂ) ^ multiplicity ρ * L (z σ)
    ring

private theorem coefficient_bound_of_rotated_estimates {ρ c : ℂ}
    {L : ℂ → ℂ} {m : ℕ} (hm : 0 < m) (hc : c ≠ 0) (hγ : ρ.im ≠ 0)
    (A C : ℝ)
    (hL : Tendsto (fun σ : ℝ => (σ : ℂ) ^ m * L (rightApproach ρ σ))
      (𝓝[>] 0) (𝓝 c))
    (hpoint : ∀ σ : ℝ, 0 < σ →
      (σ ^ m * ((starRingEnd ℂ) c * L (rightApproach ρ σ)).re) ^ 2 ≤
        (A * ((2 * m - 1).factorial : ℝ) + C * σ ^ (2 * m - 1)) *
          (σ * weightedSquare (rotationWave ((starRingEnd ℂ) c) ρ.im) σ)) :
    2 * ‖c‖ ^ 2 ≤ A * ((2 * m - 1).factorial : ℝ) := by
  let F : Filter ℝ := 𝓝[>] (0 : ℝ)
  have hp : 2 * m - 1 ≠ 0 := by omega
  have hbase : Tendsto (fun σ : ℝ => σ) F (𝓝 0) := nhdsWithin_le_nhds
  have hleft :
      Tendsto (fun σ : ℝ => (σ ^ m * ((starRingEnd ℂ) c * L (rightApproach ρ σ)).re) ^ 2) F
        (𝓝 ((‖c‖ ^ 2) ^ 2)) := by
    have hr := Complex.continuous_re.continuousAt.tendsto.comp
      (hL.const_mul ((starRingEnd ℂ) c))
    rw [show (starRingEnd ℂ) c * c = (‖c‖ ^ 2 : ℝ) by
      simpa only [Complex.ofReal_pow] using Complex.conj_mul' c] at hr
    simp only [Function.comp_def, Complex.ofReal_re] at hr
    apply (hr.pow 2).congr'
    exact Filter.Eventually.of_forall fun σ => by
      dsimp only
      rw [mul_left_comm ((starRingEnd ℂ) c), ← Complex.ofReal_pow, Complex.re_ofReal_mul]
  have hfirst :
      Tendsto (fun σ : ℝ => A * ((2 * m - 1).factorial : ℝ) + C * σ ^ (2 * m - 1))
        F (𝓝 (A * ((2 * m - 1).factorial : ℝ))) := by
    simpa only [zero_pow hp, mul_zero, add_zero] using
      ((hbase.pow (2 * m - 1)).const_mul C).const_add (A * ((2 * m - 1).factorial : ℝ))
  have hright := hfirst.mul (tendsto_mul_integral_damped_rotation_sq ((starRingEnd ℂ) c) hγ)
  have hlim : (‖c‖ ^ 2) ^ 2 ≤ A * ((2 * m - 1).factorial : ℝ) * (‖c‖ ^ 2 / 2) := by
    apply le_of_tendsto_of_tendsto hleft
      (by simpa only [Complex.norm_conj] using hright)
    filter_upwards [eventually_mem_nhdsWithin (s := Ioi (0 : ℝ))] with σ hσ
    exact hpoint σ hσ
  have hnorm : 0 < ‖c‖ ^ 2 := pow_pos (norm_pos_iff.mpr hc) _
  have hcancel : ‖c‖ ^ 2 * (2 * ‖c‖ ^ 2) ≤
      ‖c‖ ^ 2 * (A * ((2 * m - 1).factorial : ℝ)) := by linarith
  exact le_of_mul_le_mul_left hcancel hnorm

/-- The weighted square integral of the exact signed residual pays the
factorial moment of a cumulative polynomial energy envelope. -/
theorem residual_weightedSquare_le_factorial (s : ℝ) {p : ℕ} {σ A C : ℝ}
    (hσ : 0 < σ)
    (hE : ∀ T : ℝ, 0 ≤ T → residualEnergy s T ≤ A * T ^ p + C) :
    weightedSquare (residualWave s) σ ≤ A * (p.factorial : ℝ) / σ ^ p + C :=
  weightedSquare_le_factorial (residualWave_continuous s) hσ hE

/-- If a polynomial envelope bounds the exact residual energy, a nonreal
critical-line pole forces its leading envelope coefficient to be large. -/
theorem poleCoefficient_sq_bound_of_residual_envelope {s : ℝ} (hs : 0 < s)
    (ρ : ZeroPoint) (hline : ρ.val.re = 1 / 2) (hγ : ρ.val.im ≠ 0)
    {g : ℂ → ℂ} (hg : AnalyticAt ℂ g ρ.val) (hgn : g ρ.val ≠ 0)
    (hfactor : ∀ᶠ w in 𝓝 ρ.val, riemannZeta w = (w - ρ.val) ^ multiplicity ρ * g w)
    {A C : ℝ}
    (hE : ∀ T : ℝ, 0 ≤ T → residualEnergy s T ≤ A * T ^ (2 * multiplicity ρ - 1) + C) :
    2 * ‖poleCoefficient ρ.val g‖ ^ 2 ≤ A * (((2 * multiplicity ρ - 1).factorial : ℝ)) := by
  let H (z : ℂ) := (heatedLimit s : ℂ) / z + heatedCorrection s z
  let c := poleCoefficient ρ.val g
  let d := (starRingEnd ℂ) c
  let m := multiplicity ρ
  let p := 2 * m - 1
  have hm : 0 < m := multiplicity_pos ρ
  have hf := residualWave_continuous s
  have hi {z : ℂ} (hz : 0 < z.re) :=
    signedLaplace_integrable hf hz (weightedSquare_integrable hf hz hE)
  have hL : DifferentiableOn ℂ (residualLaplace s) pickupLaplaceDomain :=
    differentiableOn_laplace_of_integrable hf (fun _ hz => by simpa only [neg_mul] using hi hz)
  have hH {z : ℂ} (hz : -(1 / 2 : ℝ) < z.re) (hz₀ : z ≠ 0) :
      AnalyticAt ℂ H z :=
    (analyticAt_const.div analyticAt_id hz₀).add (heatedCorrection_analyticAt hs hz)
  have hHd : DifferentiableOn ℂ H pickupLaplaceDomain := by
    intro z hz
    change 0 < z.re at hz
    exact (hH (by linarith) (Complex.ne_zero_of_re_pos hz)).differentiableAt.differentiableWithinAt
  have hHc : ContinuousAt H (ρ.val - 1 / 2) := by
    apply (hH ?_ (sub_half_ne_zero hγ)).continuousAt
    simp [hline]
  have hinit (z : ℂ) (hz : 1 / 2 < z.re) :
      residualLaplace s z + H z =
        1 / (z * (z + 1 / 2) * riemannZeta (z + 1 / 2)) := by
    rw [residualLaplace_initial hs hz]
    exact sub_add_cancel _ _
  have hlim := tendsto_scaled_of_pickup_pole ρ hline hγ hg hgn hfactor
    (hL.add hHd) hinit hHc
  change 2 * ‖c‖ ^ 2 ≤ A * (p.factorial : ℝ)
  apply coefficient_bound_of_rotated_estimates hm (poleCoefficient_ne_zero hline hγ hgn)
    hγ A C hlim
  intro σ hσ
  let z := rightApproach ρ.val σ
  have hz : z.re = σ := rightApproach_re hline σ
  have hzi : z.im = ρ.val.im := rightApproach_im ρ.val σ
  have hzform : z = (σ : ℂ) + (ρ.val.im : ℂ) * Complex.I := by
    apply Complex.ext <;> simp [hz, hzi]
  have hzpos : 0 < z.re := hz.symm ▸ hσ
  have hrotation : Continuous (rotationWave d ρ.val.im) := by unfold rotationWave; fun_prop
  have hrotInt := integrableOn_damped_rotation_sq d hσ ρ.val.im
  have hbound := integral_weighted_mul_sq_le hf hrotation
    (weightedSquare_integrable hf hσ hE) hrotInt
  have hreal :
      (d * residualLaplace s z).re =
        ∫ t in Ioi (0 : ℝ), Real.exp (-σ * t) * residualWave s t *
          rotationWave d ρ.val.im t := by
    have h := hi hzpos
    rw [hzform] at h
    rw [residualLaplace, hzform]
    exact re_mul_integral_eq_rotation d σ ρ.val.im (by simpa only [neg_mul] using h)
  rw [← hreal] at hbound
  have hrotNonneg : 0 ≤ weightedSquare (rotationWave d ρ.val.im) σ :=
    setIntegral_nonneg measurableSet_Ioi fun _ _ => by positivity
  have hEσ : weightedSquare (residualWave s) σ ≤ A * (p.factorial : ℝ) / σ ^ p + C :=
    residual_weightedSquare_le_factorial s hσ hE
  have hscaled := mul_le_mul_of_nonneg_left
    (hbound.trans (mul_le_mul_of_nonneg_right hEσ hrotNonneg))
    (pow_nonneg hσ.le (2 * m))
  have hp : p + 1 = 2 * m := by dsimp [p]; omega
  let K := weightedSquare (rotationWave d ρ.val.im) σ
  have hscale_eq : σ ^ (2 * m) * ((A * (p.factorial : ℝ) / σ ^ p + C) * K) =
      (A * (p.factorial : ℝ) + C * σ ^ p) * (σ * K) := by
    rw [← hp, pow_succ]
    field_simp [hσ.ne']
  change (σ ^ m * (d * residualLaplace s z).re) ^ 2 ≤
    (A * (p.factorial : ℝ) + C * σ ^ p) * (σ * K)
  rw [mul_pow, ← pow_mul, mul_comm m 2, ← hscale_eq]
  exact hscaled

/-! The limsup statements are expressed by arbitrarily large strict lower
witnesses, which also cover an infinite limsup. -/

/-- Global form of the critical-line pole bound, including an infinite limsup. -/
theorem arbitrarilyLarge_residualEnergy_of_criticalZero {s : ℝ} (hs : 0 < s)
    (ρ : ZeroPoint) (hline : ρ.val.re = 1 / 2) (hγ : ρ.val.im ≠ 0)
    {g : ℂ → ℂ} (hg : AnalyticAt ℂ g ρ.val) (hgn : g ρ.val ≠ 0)
    (hfactor : ∀ᶠ w in 𝓝 ρ.val, riemannZeta w = (w - ρ.val) ^ multiplicity ρ * g w)
    {A : ℝ} (hA : 0 ≤ A)
    (hsmall : A * ((2 * multiplicity ρ - 1).factorial : ℝ) <
      2 * ‖poleCoefficient ρ.val g‖ ^ 2) :
    ∀ T₀ : ℝ, ∃ T : ℝ, T₀ ≤ T ∧ A * T ^ (2 * multiplicity ρ - 1) < residualEnergy s T := by
  intro T₀
  by_contra! hn
  let C := max 0 (residualEnergy s T₀)
  have hE (T : ℝ) (hT : 0 ≤ T) :
      residualEnergy s T ≤ A * T ^ (2 * multiplicity ρ - 1) + C := by
    by_cases hlarge : T₀ ≤ T
    · exact (hn T hlarge).trans (le_add_of_nonneg_right (le_max_left _ _))
    · have h := (residualEnergy_mono s (le_of_not_ge hlarge)).trans (le_max_right 0 _)
      exact h.trans (le_add_of_nonneg_left (mul_nonneg hA (pow_nonneg hT _)))
  exact hsmall.not_ge (poleCoefficient_sq_bound_of_residual_envelope hs ρ hline hγ hg hgn hfactor hE)

/-- Limsup on a fixed affine-frequent set, using the same $a^p$ loss as the
source note. The witnesses can be found above any prescribed horizon. -/
theorem arbitrarilyLarge_residualEnergy_on_affineScales {s : ℝ} (hs : 0 < s)
    (ρ : ZeroPoint) (hline : ρ.val.re = 1 / 2) (hγ : ρ.val.im ≠ 0)
    {g : ℂ → ℂ} (hg : AnalyticAt ℂ g ρ.val) (hgn : g ρ.val ≠ 0)
    (hfactor : ∀ᶠ w in 𝓝 ρ.val, riemannZeta w = (w - ρ.val) ^ multiplicity ρ * g w)
    {G : Set ℝ} {a b T₀ A : ℝ} (ha : 1 ≤ a) (hA : 0 ≤ A)
    (hcover : ∀ T : ℝ, T₀ ≤ T → ∃ S ∈ G, T ≤ S ∧ S ≤ a * T + b)
    (hsmall : A * a ^ (2 * multiplicity ρ - 1) * ((2 * multiplicity ρ - 1).factorial : ℝ) <
      2 * ‖poleCoefficient ρ.val g‖ ^ 2) :
    ∀ R : ℝ, ∃ S ∈ G, R ≤ S ∧ A * S ^ (2 * multiplicity ρ - 1) < residualEnergy s S := by
  let p := 2 * multiplicity ρ - 1
  let K := 2 * ‖poleCoefficient ρ.val g‖ ^ 2
  have hfact : 0 < (p.factorial : ℝ) := by exact_mod_cast Nat.factorial_pos p
  let B := (A * a ^ p + K / (p.factorial : ℝ)) / 2
  have hsmall' : A * a ^ p < K / (p.factorial : ℝ) := (lt_div_iff₀ hfact).2 hsmall
  have hBA : A * a ^ p < B := by dsimp [B]; linarith
  have hB : 0 ≤ B := (mul_nonneg hA (pow_nonneg (by linarith) _)).trans hBA.le
  have hBK : B * (p.factorial : ℝ) < K := by
    apply (lt_div_iff₀ hfact).1
    dsimp [B]
    linarith
  have hdiv : Tendsto (fun T : ℝ => b / T) atTop (𝓝 0) := by
    simpa only [div_eq_mul_inv, mul_zero] using
      (tendsto_inv_atTop_zero : Tendsto (fun T : ℝ => T⁻¹) atTop (𝓝 0)).const_mul b
  have happ : Tendsto (fun T : ℝ => A * (a + b / T) ^ p) atTop (𝓝 (A * a ^ p)) := by
    simpa only [add_zero] using ((hdiv.const_add a).pow p).const_mul A
  obtain ⟨Q, hQ⟩ := eventually_atTop.1 (happ.eventually_lt_const hBA)
  intro R
  obtain ⟨T, hT, henergy⟩ := arbitrarilyLarge_residualEnergy_of_criticalZero hs ρ hline hγ
    hg hgn hfactor hB hBK (max 1 (max T₀ (max Q R)))
  have hT₁ : 1 ≤ T := (le_max_left _ _).trans hT
  have hTpos : 0 < T := by linarith
  have hT₀ : T₀ ≤ T := (le_max_left _ _).trans ((le_max_right _ _).trans hT)
  have hQT : Q ≤ T := (le_max_left _ _).trans ((le_max_right _ _).trans ((le_max_right _ _).trans hT))
  have hRT : R ≤ T := (le_max_right _ _).trans ((le_max_right _ _).trans ((le_max_right _ _).trans hT))
  obtain ⟨S, hSG, hTS, hS⟩ := hcover T hT₀
  refine ⟨S, hSG, hRT.trans hTS, ?_⟩
  have hscale : (a + b / T) * T = a * T + b := by
    field_simp [hTpos.ne']
  have hSp : 0 ≤ S := hTpos.le.trans hTS
  have hS' : S ≤ (a + b / T) * T := hscale ▸ hS
  calc
    A * S ^ p ≤ A * ((a + b / T) * T) ^ p :=
      mul_le_mul_of_nonneg_left (pow_le_pow_left₀ hSp hS' _) hA
    _ = (A * (a + b / T) ^ p) * T ^ p := by rw [mul_pow, mul_assoc]
    _ < B * T ^ p := mul_lt_mul_of_pos_right (hQ T hQT) (pow_pos hTpos _)
    _ < residualEnergy s T := henergy
    _ ≤ residualEnergy s S := residualEnergy_mono s hTS

/-- The Laurent coefficient written in terms of the actual derivative of zeta. -/
def zetaPoleCoefficient (ρ : ZeroPoint) : ℂ :=
  ((multiplicity ρ).factorial : ℂ) /
    ((ρ.val - 1 / 2) * ρ.val * iteratedDeriv (multiplicity ρ) riemannZeta ρ.val)

private theorem iteratedDeriv_eq_factorial_mul_leading
    {f g : ℂ → ℂ} {ρ : ℂ} {m : ℕ} (hg : AnalyticAt ℂ g ρ)
    (hfactor : ∀ᶠ w in 𝓝 ρ, f w = (w - ρ) ^ m * g w) :
    iteratedDeriv m f ρ = (m.factorial : ℂ) * g ρ := by
  have hshift (i : ℕ) :
      iteratedDeriv i (fun w : ℂ => (w - ρ) ^ m) ρ =
        if i = m then (m.factorial : ℂ) else 0 := by
    have heq := congrFun (iteratedDeriv_comp_sub_const i (fun w : ℂ => w ^ m) ρ) ρ
    simpa only [sub_self, iteratedDeriv_fun_pow_zero, Nat.cast_ite, Nat.cast_zero] using heq
  have hpoly : ContDiffAt ℂ m (fun w : ℂ => (w - ρ) ^ m) ρ := by fun_prop
  have hfactor' : f =ᶠ[𝓝 ρ] (fun w : ℂ => (w - ρ) ^ m * g w) := hfactor
  rw [hfactor'.iteratedDeriv_eq m, iteratedDeriv_fun_mul hpoly hg.contDiffAt]
  simp_rw [hshift]
  rw [Finset.sum_eq_single_of_mem m (Finset.mem_range.mpr (Nat.lt_succ_self m))]
  · simp
  · intro i _ him
    simp [him]

theorem poleCoefficient_eq_zetaPoleCoefficient (ρ : ZeroPoint)
    {g : ℂ → ℂ} (hg : AnalyticAt ℂ g ρ.val)
    (hfactor : ∀ᶠ w in 𝓝 ρ.val, riemannZeta w = (w - ρ.val) ^ multiplicity ρ * g w) :
    poleCoefficient ρ.val g = zetaPoleCoefficient ρ := by
  let F : ℂ := (multiplicity ρ).factorial
  have hfac : F ≠ 0 :=
    Nat.cast_ne_zero.2 (Nat.factorial_ne_zero _)
  rw [zetaPoleCoefficient, iteratedDeriv_eq_factorial_mul_leading hg hfactor, poleCoefficient]
  let D := (ρ.val - 1 / 2) * ρ.val * g ρ.val
  change D⁻¹ = F / ((ρ.val - 1 / 2) * ρ.val * (F * g ρ.val))
  have hD : (ρ.val - 1 / 2) * ρ.val * (F * g ρ.val) = F * D := by
    unfold D
    ring
  rw [hD, div_eq_mul_inv F (F * D), mul_inv_rev F D,
    mul_left_comm F, mul_inv_cancel₀ hfac, mul_one]

/-- The bound on fixed good scales, with the original derivative
normalization and the actual multiplicity of the given zero. -/
theorem arbitrarilyLarge_residualEnergy_on_affineScales_of_criticalZero
    {s : ℝ} (hs : 0 < s) (ρ : ZeroPoint) (hline : ρ.val.re = 1 / 2) (hγ : ρ.val.im ≠ 0)
    {G : Set ℝ} {a b T₀ A : ℝ} (ha : 1 ≤ a) (hA : 0 ≤ A)
    (hcover : ∀ T : ℝ, T₀ ≤ T → ∃ S ∈ G, T ≤ S ∧ S ≤ a * T + b)
    (hsmall : A * a ^ (2 * multiplicity ρ - 1) * ((2 * multiplicity ρ - 1).factorial : ℝ) <
      2 * ‖zetaPoleCoefficient ρ‖ ^ 2) :
    ∀ R : ℝ, ∃ S ∈ G, R ≤ S ∧ A * S ^ (2 * multiplicity ρ - 1) < residualEnergy s S := by
  obtain ⟨g, hg, hgn, hf⟩ := multiplicity_factorization ρ
  have hfactor : ∀ᶠ w in 𝓝 ρ.val, riemannZeta w = (w - ρ.val) ^ multiplicity ρ * g w :=
    hf.mono fun _ h => by simpa only [smul_eq_mul] using h
  rw [← poleCoefficient_eq_zetaPoleCoefficient ρ hg hfactor] at hsmall
  exact arbitrarilyLarge_residualEnergy_on_affineScales hs ρ hline hγ hg hgn
    hfactor ha hA hcover hsmall

/-- Explicit use of Hardy's nonreal critical-line zero existence assertion.
Every fixed affine-frequent scale set has arbitrarily large linear
lower witnesses for the original residual energy. -/
theorem residualEnergy_not_littleO_on_affineScales {s : ℝ} (hs : 0 < s)
    (hardy : ∃ ρ : ZeroPoint, ρ.val.re = 1 / 2 ∧ ρ.val.im ≠ 0)
    {G : Set ℝ} (hG : AffineFrequent G) :
    ¬ Asymptotics.IsLittleO (atTop ⊓ 𝓟 G) (residualEnergy s) (fun T : ℝ => T) := by
  obtain ⟨ρ, hline, hγ⟩ := hardy
  obtain ⟨g, hg, hgn, hfactor'⟩ := multiplicity_factorization ρ
  have hfactor : ∀ᶠ w in 𝓝 ρ.val, riemannZeta w = (w - ρ.val) ^ multiplicity ρ * g w :=
    hfactor'.mono fun _ h => by simpa only [smul_eq_mul] using h
  obtain ⟨a, b, T₀, ha, _, _, hcover⟩ := hG
  let p := 2 * multiplicity ρ - 1
  have hp : 1 ≤ p := by dsimp [p]; have := multiplicity_pos ρ; omega
  let K := ‖poleCoefficient ρ.val g‖ ^ 2
  have hK : 0 < K := pow_pos (norm_pos_iff.mpr (poleCoefficient_ne_zero hline hγ hgn)) _
  let D : ℝ := a ^ p * (p.factorial : ℝ)
  have hD : 0 < D := mul_pos (pow_pos (by linarith) _) (by exact_mod_cast Nat.factorial_pos p)
  let A := K / D
  have hA : 0 < A := div_pos hK hD
  have hsmall : A * a ^ p * (p.factorial : ℝ) < 2 * K := by
    have heq : A * a ^ p * (p.factorial : ℝ) = K := by
      rw [mul_assoc]
      exact div_mul_cancel₀ K hD.ne'
    linarith
  intro ho
  have he := Asymptotics.isLittleO_iff.1 ho (half_pos hA)
  obtain ⟨Q, hQ⟩ := eventually_atTop.1 (mem_inf_principal.1 he)
  obtain ⟨S, hSG, hS, hbound⟩ := arbitrarilyLarge_residualEnergy_on_affineScales hs ρ
    hline hγ hg hgn hfactor ha hA.le hcover hsmall (max 1 Q)
  have hS₁ : 1 ≤ S := (le_max_left _ _).trans hS
  have hS₀ : 0 < S := by linarith
  have hSpow : S ≤ S ^ p := by
    simpa only [pow_one] using pow_le_pow_right₀ hS₁ hp
  have hnonneg : 0 ≤ residualEnergy s S := intervalIntegral.integral_nonneg hS₀.le (fun _ _ => sq_nonneg _)
  have hupper : ‖residualEnergy s S‖ ≤ A / 2 * ‖S‖ :=
    hQ S ((le_max_right _ _).trans hS) hSG
  rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_of_nonneg hnonneg, abs_of_pos hS₀] at hupper
  have hle : A / 2 * S ≤ A * S ^ p := by
    calc
      _ ≤ A * S := mul_le_mul_of_nonneg_right (by linarith) hS₀.le
      _ ≤ _ := mul_le_mul_of_nonneg_left hSpow hA.le
  exact (hbound.not_ge (hupper.trans hle))

end GRWTSK.NumberTheory.Moebius.GaussianSignedResidualPole
