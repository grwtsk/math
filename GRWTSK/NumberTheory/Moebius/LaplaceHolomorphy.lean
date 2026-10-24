/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license.
Source-specific CCC continuation; local conditional candidate, RH remains open. -/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.LaplaceTransform.PolynomialEnergy
import GRWTSK.NumberTheory.Moebius.LaplaceTransform
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.LaplaceTransform.Analytic
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

/-!
# The actual signed pickup Laplace transform under a polynomial energy budget

Human mathematical direction: grwtsk contributors. Implementation: OpenAI Codex.
The positive/negative densities below are an exact integral decomposition. No
arithmetic coefficient, prefix atom, or source Gram component is discarded.
-/

set_option autoImplicit false

noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set Filter ProbabilityTheory
open scoped Topology

/-- Actual pickup specialization; continuity is the separate unconditional source input. -/
theorem pickup_tilt_integrable_of_energy_poly (hW : Continuous wholePickup)
    (hE : PickupEnergyPoly) {σ : ℝ} (hσ : 0 < σ) :
    IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u) (Ioi 0) := by
  rcases hE with ⟨C, q, hC, _, henergy⟩
  exact integrableOn_tilt_of_polynomial_energy hW hC henergy hσ

/-- Positive-part density for one of the two prescribed signs. -/
def pickupPartDensity (ε : ℝ) (u : ℝ) : NNReal := Real.toNNReal (ε * wholePickup u)

def pickupPartMeasure (ε : ℝ) : Measure ℝ :=
  (volume.restrict (Ioi 0)).withDensity (fun u ↦ pickupPartDensity ε u)

theorem pickupPartDensity_continuous (hW : Continuous wholePickup) (ε : ℝ) :
    Continuous (pickupPartDensity ε) :=
  continuous_real_toNNReal.comp (continuous_const.mul hW)

/-- Each prescribed signed part is paid by the absolute integral of the whole pickup. -/
theorem pickup_part_real_integrable (hW : Continuous wholePickup)
    (hconv : ∀ σ : ℝ, 0 < σ →
      IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u) (Ioi 0))
    {ε σ : ℝ} (hε : |ε| ≤ 1) (hσ : 0 < σ) :
    Integrable (fun u ↦ Real.exp (-σ * u)) (pickupPartMeasure ε) := by
  apply (integrable_withDensity_iff_integrable_smul
    (pickupPartDensity_continuous hW ε).measurable).mpr
  apply (hconv σ hσ).norm.mono'
  · exact ((NNReal.continuous_coe.comp (pickupPartDensity_continuous hW ε)).mul
      (Real.continuous_exp.comp (continuous_const.mul continuous_id))).aestronglyMeasurable
  · apply Eventually.of_forall
    intro u
    simp only [NNReal.smul_def, smul_eq_mul, norm_mul, Real.norm_eq_abs,
      abs_of_pos (Real.exp_pos _), abs_of_nonneg (NNReal.coe_nonneg _)]
    have hp : (pickupPartDensity ε u : ℝ) ≤ |wholePickup u| := by
      exact (Real.coe_toNNReal_le _).trans (by
        rw [abs_mul]
        exact mul_le_of_le_one_left (abs_nonneg _) hε)
    nlinarith [Real.exp_pos (-σ * u)]

theorem pickup_part_complex_integrable (hW : Continuous wholePickup)
    (hconv : ∀ σ : ℝ, 0 < σ →
      IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u) (Ioi 0))
    {ε : ℝ} (hε : |ε| ≤ 1) {z : ℂ} (hz : 0 < z.re) :
    Integrable (fun u ↦ (pickupPartDensity ε u : ℝ) • Complex.exp (-z * (u : ℂ)))
      (volume.restrict (Ioi 0)) := by
  have hr := (integrable_withDensity_iff_integrable_smul
    (pickupPartDensity_continuous hW ε).measurable).mp
      (pickup_part_real_integrable hW hconv hε hz)
  apply hr.congr'
  · exact ((NNReal.continuous_coe.comp (pickupPartDensity_continuous hW ε)).smul
      (Complex.continuous_exp.comp
        (continuous_const.mul Complex.continuous_ofReal))).aestronglyMeasurable
  · apply Eventually.of_forall
    intro u
    simp [NNReal.smul_def, Real.norm_eq_abs, abs_of_nonneg (NNReal.coe_nonneg _),
      abs_of_pos (Real.exp_pos _), Complex.norm_exp, Complex.mul_re]

/-- The two positive transforms reconstruct the literal signed pickup integral. -/
theorem signedPickupLaplace_eq_part_difference (hW : Continuous wholePickup)
    (hconv : ∀ σ : ℝ, 0 < σ →
      IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u) (Ioi 0))
    {z : ℂ} (hz : 0 < z.re) :
    GRWTSK.RiemannHypothesis.CCC.Laplace.transform
      id (pickupPartMeasure 1) z -
      GRWTSK.RiemannHypothesis.CCC.Laplace.transform
        id (pickupPartMeasure (-1)) z =
      signedPickupLaplace z := by
  unfold GRWTSK.RiemannHypothesis.CCC.Laplace.transform complexMGF
  simp only [id_eq]
  rw [pickupPartMeasure, pickupPartMeasure,
    integral_withDensity_eq_integral_smul (pickupPartDensity_continuous hW 1).measurable,
    integral_withDensity_eq_integral_smul (pickupPartDensity_continuous hW (-1)).measurable]
  simp only [NNReal.smul_def]
  rw [← integral_sub (pickup_part_complex_integrable hW hconv (by norm_num) hz)
      (pickup_part_complex_integrable hW hconv (by norm_num) hz)]
  apply integral_congr_ae
  apply Eventually.of_forall
  intro u
  have hparts : (pickupPartDensity 1 u : ℝ) - (pickupPartDensity (-1) u : ℝ) = wholePickup u := by
    simp only [pickupPartDensity, Real.coe_toNNReal', one_mul, neg_one_mul]
    by_cases h : 0 ≤ wholePickup u
    · rw [max_eq_left h, max_eq_right (neg_nonpos.mpr h)]
      ring
    · rw [max_eq_right (le_of_not_ge h), max_eq_left (by linarith)]
      ring
  dsimp only
  rw [← sub_smul, hparts]
  simp [Complex.real_smul, mul_comm]

/-- All-positive real tilt integrability pays signed holomorphy without an amplitude return. -/
theorem analyticAt_signedPickupLaplace_of_tilts (hW : Continuous wholePickup)
    (hconv : ∀ σ : ℝ, 0 < σ →
      IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u) (Ioi 0))
    {z : ℂ} (hz : 0 < z.re) : AnalyticAt ℂ signedPickupLaplace z := by
  have hp := GRWTSK.RiemannHypothesis.CCC.Laplace.transform_analytic 0
    (X := id) (μ := pickupPartMeasure 1)
    (fun σ hσ ↦ pickup_part_real_integrable hW hconv (by norm_num) hσ) z hz
  have hn := GRWTSK.RiemannHypothesis.CCC.Laplace.transform_analytic 0
    (X := id) (μ := pickupPartMeasure (-1))
    (fun σ hσ ↦ pickup_part_real_integrable hW hconv (by norm_num) hσ) z hz
  apply (hp.sub hn).congr
  have hopen : IsOpen {w : ℂ | 0 < w.re} := isOpen_lt continuous_const Complex.continuous_re
  filter_upwards [hopen.mem_nhds hz] with w hw
  exact signedPickupLaplace_eq_part_difference hW hconv hw

theorem differentiableOn_signedPickupLaplace_of_energy_poly (hW : Continuous wholePickup)
    (hE : PickupEnergyPoly) : DifferentiableOn ℂ signedPickupLaplace pickupLaplaceDomain := by
  intro z hz
  have h := (analyticAt_signedPickupLaplace_of_tilts hW
    (fun σ hσ ↦ pickup_tilt_integrable_of_energy_poly hW hE hσ) hz).differentiableAt
  exact h.differentiableWithinAt

end GRWTSK.RiemannHypothesis.CCC
