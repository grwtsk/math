/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilTranslationEnergyDomain
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Tactic

/-!
# Quantitative lag cutoffs for the literal gamma source

Use the original `parityKernel 0`, physical L2 translations and
`zeroShiftEnergy`. Beyond twice the support radius the entire quadratic
lag tail is exactly a scalar mass contribution. Near zero the actual
symmetric-difference row has an L2 error bounded by `(a + a^2) * D`
under a whole-line translation-slope bound D. Its quadratic energy is
nonnegative and is at most `(a^2/4 + a^3/3) * D^2`.

The translation-slope hypothesis is explicit. The analytic note derives it
for zero-extended H1_0 trials and for the original finite sine trials; its
Sobolev-to-Lp formalization is not claimed by this module. A derivative
bound on the open interval without endpoint control is NOT enough.

Consumer: EnergySchur.schur_nonneg_of_trial and the existing literal
WeilShiftedSchurReturn.windowLower_of_energyResidual. The full row/form
identity and finite packet construction remain separate suppliers. The concrete
`WeilGammaGeometricQuadrature` consumer adds a whole-row middle-lag estimate.

SOURCE_PROOF_CANDIDATE. Elaboration, exact expected types,
fresh kernel replay, transitive axiom audit, independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Filter

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaCutoffResidual

open OddRootProjection OddWrapEnergy TranslationCutoffs TranslationEnergyDomain
open OddHighComplement OddLiteralWindow OddSineForm FixedWindowSemibounded

/-- Kernel control without an inverse power at the endpoint. -/
theorem kernel_mul_lag_le {r : ℝ} (hr : 0 < r) :
    parityKernel 0 r * r ≤ 1 / 2 + r := by
  have hden : 0 < 1 - Real.exp (-2 * r) := by
    apply sub_pos.mpr
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr (by linarith)
  have hnum : Real.exp (-(1 / 2 : ℝ) * r) ≤ 1 := by
    rw [← Real.exp_zero]
    exact Real.exp_le_exp.mpr (by linarith)
  have he := mul_le_mul_of_nonneg_right (Real.add_one_le_exp (2 * r))
    (Real.exp_pos (-2 * r)).le
  have hp : Real.exp (2 * r) * Real.exp (-2 * r) = 1 := by
    rw [← Real.exp_add]
    norm_num
  rw [hp] at he
  change Real.exp (-(1 / 2 : ℝ) * r) / (1 - Real.exp (-2 * r)) * r ≤ _
  rw [div_mul_eq_mul_div]
  apply (div_le_iff₀ hden).2
  nlinarith [mul_le_mul_of_nonneg_right hnum hr.le]

/-- The same majorant handles either Dirichlet gamma parity. This is
only a kernel bound, not a transfer of the zeta criterion to characters. -/
theorem parityKernel_mul_lag_le (parity : ℕ) {r : ℝ} (hr : 0 < r) :
    parityKernel parity r * r ≤ 1 / 2 + r :=
  (mul_le_mul_of_nonneg_right (parityKernel_le_base parity hr) hr.le).trans
    (kernel_mul_lag_le hr)

private theorem measurable_kernel : Measurable (parityKernel 0) := by
  unfold parityKernel
  fun_prop

/-- A uniform exponential majorant on an entire positive lag tail. -/
theorem kernel_le_tail_majorant {b r : ℝ} (hb : 0 < b) (hbr : b ≤ r) :
    parityKernel 0 r ≤ Real.exp (-(1 / 2 : ℝ) * r) /
      (1 - Real.exp (-2 * b)) := by
  have hbden : 0 < 1 - Real.exp (-2 * b) := by
    apply sub_pos.mpr
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr (by linarith)
  have hden : 1 - Real.exp (-2 * b) ≤ 1 - Real.exp (-2 * r) := by
    have hh := Real.exp_le_exp.mpr (show -2 * r ≤ -2 * b by linarith)
    linarith
  change Real.exp (-(1 / 2 : ℝ) * r) / (1 - Real.exp (-2 * r)) ≤ _
  apply (div_le_div_iff₀ (hbden.trans_le hden) hbden).2
  exact mul_le_mul_of_nonneg_left hden (Real.exp_pos _).le

theorem kernel_integrableOn_tail {b : ℝ} (hb : 0 < b) :
    IntegrableOn (parityKernel 0) (Ioi b) := by
  have hmajor := (integrableOn_exp_mul_Ioi
    (by norm_num : -(1 / 2 : ℝ) < 0) b).div_const (1 - Real.exp (-2 * b))
  apply hmajor.mono' measurable_kernel.aestronglyMeasurable
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
  rw [Real.norm_of_nonneg (GammaLag.kernel_pos (hb.trans hr)).le]
  exact kernel_le_tail_majorant hb hr.le

/-- The exact tail coefficient is an integrable scalar, not a free error. -/
def tailWeight (b : ℝ) : ℝ := ∫ r in Ioi b, parityKernel 0 r

theorem tailWeight_nonneg {b : ℝ} (hb : 0 < b) : 0 ≤ tailWeight b := by
  apply integral_nonneg_of_ae
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
  exact (GammaLag.kernel_pos (hb.trans hr)).le

theorem tailWeight_le {b : ℝ} (hb : 0 < b) :
    tailWeight b ≤ 2 * Real.exp (-(1 / 2 : ℝ) * b) /
      (1 - Real.exp (-2 * b)) := by
  have hmajor := (integrableOn_exp_mul_Ioi
    (by norm_num : -(1 / 2 : ℝ) < 0) b).div_const (1 - Real.exp (-2 * b))
  calc
    tailWeight b ≤ ∫ r in Ioi b,
        Real.exp (-(1 / 2 : ℝ) * r) / (1 - Real.exp (-2 * b)) := by
      apply integral_mono_ae (kernel_integrableOn_tail hb) hmajor
      filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
      exact kernel_le_tail_majorant hb hr.le
    _ = _ := by
      rw [integral_div, integral_exp_mul_Ioi (by norm_num : -(1 / 2 : ℝ) < 0) b]
      ring

/-- Integrability of the ENTIRE separated quadratic tail follows from
source support and L2 membership, not from a totalized integral. -/
theorem tail_energy_integrable {T b : ℝ} (hb : 0 < b) (hTb : 2 * T ≤ b)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi b) := by
  apply ((kernel_integrableOn_tail hb).mul_const
    (2 * ∫ t : ℝ, (f t) ^ 2)).congr
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
  rw [zeroShiftEnergy_eq_two_mass_of_period_le T r (hTb.trans hr.le) hf hs]

/-- Exact return of the far gamma tail to the ORIGINAL physical mass.
No prime contribution or pole moment is dropped by this identity. -/
theorem tail_energy_eq {T b : ℝ} (hb : 0 < b) (hTb : 2 * T ≤ b)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    (∫ r in Ioi b, parityKernel 0 r * zeroShiftEnergy r f) =
      2 * tailWeight b * ∫ t : ℝ, (f t) ^ 2 := by
  have _hfinite := tail_energy_integrable hb hTb hf hs
  calc
    _ = ∫ r in Ioi b, parityKernel 0 r * (2 * ∫ t : ℝ, (f t) ^ 2) := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
      rw [zeroShiftEnergy_eq_two_mass_of_period_le T r (hTb.trans hr.le) hf hs]
    _ = _ := by
      rw [integral_mul_const]
      unfold tailWeight
      ring

/-- Every admissible source input receives the exact positive far-tail mass.
The rest of the gamma integral is retained as a nonnegative contribution. -/
theorem gamma_energy_lower {T b : ℝ} (hb : 0 < b) (hTb : 2 * T ≤ b)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (henergy : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    2 * tailWeight b * (∫ t : ℝ, (f t) ^ 2) ≤ oddArchimedeanEnergy f := by
  have htail := tail_energy_integrable hb hTb hf hs
  have hsplit := intervalIntegral.integral_interval_add_Ioi henergy htail
  have hnear : 0 ≤ ∫ r in (0 : ℝ)..b,
      parityKernel 0 r * zeroShiftEnergy r f := by
    rw [intervalIntegral.integral_of_le hb.le]
    apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioc] with r hr
    exact mul_nonneg (GammaLag.kernel_pos hr.1).le
      (integral_nonneg (fun _ => sq_nonneg _))
  rw [tail_energy_eq hb hTb hf hs] at hsplit
  have hsplit' : (∫ r in (0 : ℝ)..b,
      parityKernel 0 r * zeroShiftEnergy r f) +
      2 * tailWeight b * (∫ t : ℝ, (f t) ^ 2) = oddArchimedeanEnergy f := by
    simpa only [oddArchimedeanEnergy, zeroShiftEnergy, zeroShiftSquare] using hsplit
  linarith

/-- An unconditional improved lower estimate on the SAME full literal source.
The signed gamma constant is kept, all active prime powers are charged, and
the negative odd pole remains. This bound is NOT a vanishing cofinal defect. -/
theorem source_lower_with_exact_tail (T beta : ℝ) (hT : 0 ≤ T)
    {b : ℝ} (hb : 0 < b) (hTb : 2 * T ≤ b)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (henergy : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    (gammaConstant 1 0 - beta + 2 * tailWeight b - primeMass T -
      2 * (Real.sinh T - T)) * (∫ t : ℝ, ‖f t‖ ^ 2) ≤
      shiftedOddWeilEnergy T beta f := by
  have hg : 2 * tailWeight b * (∫ t : ℝ, ‖f t‖ ^ 2) ≤
      oddArchimedeanEnergy f := by
    simpa only [Real.norm_eq_abs, sq_abs] using gamma_energy_lower hb hTb hf hs henergy
  have hp : primeEnergy T f ≤ primeMass T * (∫ t : ℝ, ‖f t‖ ^ 2) := by
    have hh := (le_abs_self (primeEnergy T f)).trans
      (abs_primeEnergy_le T f hf.integrable_sq)
    simpa only [Real.norm_eq_abs, sq_abs] using hh
  have hpol := poleMoment_sq_le T hT hf hs
  unfold shiftedOddWeilEnergy shiftedOddCoreEnergy
  nlinarith

/-- The actual symmetric translation difference in whole-line physical L2. -/
def symmetricDifference (f : Physical) (r : ℝ) : Physical :=
  -(jump f r + jump f (-r))

theorem continuous_symmetricDifference (f : Physical) :
    Continuous (symmetricDifference f) :=
  ((continuous_jump f).add ((continuous_jump f).comp continuous_neg)).neg

/-- This modulus is satisfied by globally H1 functions with D = ||f'||_2.
It is not asserted for an arbitrary L2 vector or an interval derivative. -/
def TranslationSlope (f : Physical) (D : ℝ) : Prop :=
  ∀ r : ℝ, ‖jump f r‖ ≤ |r| * D

theorem symmetricDifference_norm_le {f : Physical} {D r : ℝ}
    (hD : TranslationSlope f D) (hr : 0 < r) :
    ‖symmetricDifference f r‖ ≤ 2 * r * D := by
  unfold symmetricDifference
  rw [norm_neg]
  calc
    ‖jump f r + jump f (-r)‖ ≤ ‖jump f r‖ + ‖jump f (-r)‖ := norm_add_le _ _
    _ ≤ |r| * D + |-r| * D := add_le_add (hD r) (hD (-r))
    _ = _ := by rw [abs_neg, abs_of_pos hr]; ring

theorem weighted_row_norm_le {f : Physical} {D r : ℝ}
    (hD0 : 0 ≤ D) (hD : TranslationSlope f D) (hr : 0 < r) :
    ‖parityKernel 0 r • symmetricDifference f r‖ ≤ (1 + 2 * r) * D := by
  rw [norm_smul, Real.norm_of_nonneg (GammaLag.kernel_pos hr).le]
  calc
    _ ≤ parityKernel 0 r * (2 * r * D) :=
      mul_le_mul_of_nonneg_left (symmetricDifference_norm_le hD hr)
        (GammaLag.kernel_pos hr).le
    _ = (2 * (parityKernel 0 r * r)) * D := by ring
    _ ≤ (1 + 2 * r) * D := by
      nlinarith [mul_le_mul_of_nonneg_right (kernel_mul_lag_le hr) hD0]

/-- The near-zero ROW error, not the quadratic-form energy tail. -/
def nearRow (a : ℝ) (f : Physical) : Physical :=
  ∫ r in Ioc 0 a, parityKernel 0 r • symmetricDifference f r

private theorem integral_linear_majorant {a D : ℝ} (ha : 0 ≤ a) :
    (∫ r in Ioc 0 a, (1 + 2 * r) * D) = (a + a ^ 2) * D := by
  have hc : Continuous (fun r : ℝ => (1 + 2 * r) * D) := by fun_prop
  have hd (r : ℝ) : HasDerivAt (fun x : ℝ => (x + x ^ 2) * D)
      ((1 + 2 * r) * D) r := by
    convert (((hasDerivAt_id r).add ((hasDerivAt_id r).pow 2)).mul_const D) using 1 <;> ring
  rw [← intervalIntegral.integral_of_le ha,
    intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r)
      (hc.intervalIntegrable 0 a)]
  simp

theorem nearRow_integrable {a D : ℝ} {f : Physical}
    (hD0 : 0 ≤ D) (hD : TranslationSlope f D) :
    IntegrableOn (fun r => parityKernel 0 r • symmetricDifference f r) (Ioc 0 a) := by
  have hc : Continuous (fun r : ℝ => (1 + 2 * r) * D) := by fun_prop
  apply (hc.intervalIntegrable 0 a).1.mono'
    (measurable_kernel.aestronglyMeasurable.smul
      (continuous_symmetricDifference f).aestronglyMeasurable)
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioc] with r hr
  exact weighted_row_norm_le hD0 hD hr.1

/-- Whole physical L2 error for a fixed source trial. In particular it
controls the residual against EVERY vector of the high complement. -/
theorem nearRow_norm_le {a D : ℝ} {f : Physical} (ha : 0 ≤ a)
    (hD0 : 0 ≤ D) (hD : TranslationSlope f D) :
    ‖nearRow a f‖ ≤ (a + a ^ 2) * D := by
  have hc : Continuous (fun r : ℝ => (1 + 2 * r) * D) := by fun_prop
  have _hfinite := nearRow_integrable hD0 hD (a := a)
  calc
    ‖nearRow a f‖ ≤ ∫ r in Ioc 0 a, (1 + 2 * r) * D := by
      apply norm_integral_le_of_norm_le (hc.intervalIntegrable 0 a).1
      filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioc] with r hr
      exact weighted_row_norm_le hD0 hD hr.1
    _ = _ := integral_linear_majorant ha

/-- The explicit row error bounds its pairing with EVERY physical test,
not just the finite vectors used to choose the trial. -/
theorem nearRow_pairing_le {a D : ℝ} {f : Physical} (ha : 0 ≤ a)
    (hD0 : 0 ≤ D) (hD : TranslationSlope f D) (w : Physical) :
    |inner ℝ (nearRow a f) w| ≤ (a + a ^ 2) * D * ‖w‖ := by
  calc
    _ ≤ ‖nearRow a f‖ * ‖w‖ := by
      simpa only [Real.norm_eq_abs] using norm_inner_le_norm (nearRow a f) w
    _ ≤ _ := mul_le_mul_of_nonneg_right (nearRow_norm_le ha hD0 hD) (norm_nonneg w)

private theorem zeroShiftEnergy_eq_jump_norm_sq (f : Physical) (r : ℝ) :
    zeroShiftEnergy r f = ‖jump f r‖ ^ 2 := by
  simpa only [zeroShiftEnergy, zeroShiftSquare] using (jump_norm_sq f r).symm

/-- Nonnegative omitted near-lag form: it need NOT be charged as a
negative trial-energy error. Its row residual still has to be paid. -/
def nearEnergy (a : ℝ) (f : Physical) : ℝ :=
  ∫ r in Ioc 0 a, parityKernel 0 r * zeroShiftEnergy r f

theorem nearEnergy_nonneg (a : ℝ) (f : Physical) : 0 ≤ nearEnergy a f := by
  apply integral_nonneg_of_ae
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioc] with r hr
  rw [zeroShiftEnergy_eq_jump_norm_sq]
  exact mul_nonneg (GammaLag.kernel_pos hr.1).le (sq_nonneg _)

theorem weighted_energy_le {f : Physical} {D r : ℝ}
    (hD0 : 0 ≤ D) (hD : TranslationSlope f D) (hr : 0 < r) :
    parityKernel 0 r * zeroShiftEnergy r f ≤ (r / 2 + r ^ 2) * D ^ 2 := by
  have hj : ‖jump f r‖ ≤ r * D := by simpa [abs_of_pos hr] using hD r
  have hsq : ‖jump f r‖ ^ 2 ≤ r ^ 2 * D ^ 2 := by
    nlinarith [norm_nonneg (jump f r), mul_nonneg hr.le hD0]
  rw [zeroShiftEnergy_eq_jump_norm_sq]
  calc
    _ ≤ parityKernel 0 r * (r ^ 2 * D ^ 2) :=
      mul_le_mul_of_nonneg_left hsq (GammaLag.kernel_pos hr).le
    _ = (parityKernel 0 r * r) * (r * D ^ 2) := by ring
    _ ≤ (1 / 2 + r) * (r * D ^ 2) :=
      mul_le_mul_of_nonneg_right (kernel_mul_lag_le hr)
        (mul_nonneg hr.le (sq_nonneg D))
    _ = _ := by ring

private theorem integral_quadratic_majorant {a D : ℝ} (ha : 0 ≤ a) :
    (∫ r in Ioc 0 a, (r / 2 + r ^ 2) * D ^ 2) =
      (a ^ 2 / 4 + a ^ 3 / 3) * D ^ 2 := by
  have hc : Continuous (fun r : ℝ => (r / 2 + r ^ 2) * D ^ 2) := by fun_prop
  have hd (r : ℝ) : HasDerivAt
      (fun x : ℝ => (x ^ 2 / 4 + x ^ 3 / 3) * D ^ 2)
      ((r / 2 + r ^ 2) * D ^ 2) r := by
    convert (((((hasDerivAt_id r).pow 2).div_const 4).add
      (((hasDerivAt_id r).pow 3).div_const 3)).mul_const (D ^ 2)) using 1 <;> ring
  rw [← intervalIntegral.integral_of_le ha,
    intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r)
      (hc.intervalIntegrable 0 a)]
  simp

theorem nearEnergy_integrable {a D : ℝ} {f : Physical}
    (hD0 : 0 ≤ D) (hD : TranslationSlope f D) :
    IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioc 0 a) := by
  have hc : Continuous (fun r : ℝ => (r / 2 + r ^ 2) * D ^ 2) := by fun_prop
  have hm : AEStronglyMeasurable
      (fun r => parityKernel 0 r * zeroShiftEnergy r f) (volume.restrict (Ioc 0 a)) := by
    simp_rw [zeroShiftEnergy_eq_jump_norm_sq]
    exact measurable_kernel.aestronglyMeasurable.mul
      ((continuous_jump f).norm.pow 2).aestronglyMeasurable
  apply (hc.intervalIntegrable 0 a).1.mono' hm
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioc] with r hr
  rw [Real.norm_of_nonneg (mul_nonneg (GammaLag.kernel_pos hr.1).le
    (by rw [zeroShiftEnergy_eq_jump_norm_sq]; positivity))]
  exact weighted_energy_le hD0 hD hr.1

theorem nearEnergy_le {a D : ℝ} {f : Physical} (ha : 0 ≤ a)
    (hD0 : 0 ≤ D) (hD : TranslationSlope f D) :
    nearEnergy a f ≤ (a ^ 2 / 4 + a ^ 3 / 3) * D ^ 2 := by
  have hc : Continuous (fun r : ℝ => (r / 2 + r ^ 2) * D ^ 2) := by fun_prop
  calc
    nearEnergy a f ≤ ∫ r in Ioc 0 a, (r / 2 + r ^ 2) * D ^ 2 := by
      apply integral_mono_ae (nearEnergy_integrable hD0 hD) (hc.intervalIntegrable 0 a).1
      filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioc] with r hr
      exact weighted_energy_le hD0 hD hr.1
    _ = _ := integral_quadratic_majorant ha

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaCutoffResidual
