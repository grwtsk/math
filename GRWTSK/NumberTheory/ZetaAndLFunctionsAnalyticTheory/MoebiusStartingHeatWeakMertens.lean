/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualMixedAbel
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPickupVelocityLaplaceBound

/-!
# A conditional starting-heat bound for the exact signed Möbius residual
-/

noncomputable section
set_option autoImplicit false

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLaplace
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualMixedAbel

namespace GRWTSK.NumberTheory.Moebius

/-- Global weak Mertens and midpoint nonvanishing give a linear energy
envelope for the genuine signed residual at any fixed positive heat. -/
theorem residualEnergy_linearEnvelope_of_weakMertens {B s : ℝ} (hB : 0 ≤ B) (hs : 0 < s)
    (hM : ∀ X ≥ 1, (∫ x in (1 : ℝ)..X, mertensPrefix x ^ 2 / x ^ 2) ≤ B * Real.log X)
    (hmid : riemannZeta (1 / 2 : ℂ) ≠ 0) :
    ∃ A D : ℝ, 0 ≤ A ∧ 0 ≤ D ∧ ∀ T ≥ 0, residualEnergy s T ≤ A * T + D := by
  obtain ⟨A, D, hA, hD, hP⟩ := centeredWholePickupSquare_linearEnvelope_of_weakMertens hB hM hmid
  obtain ⟨C, hC, hcompare⟩ := exists_residualEnergy_sub_centeredPickup_abs_le hs
  let c := (2 / riemannZeta (1 / 2 : ℂ)).re
  let d := c - heatedLimit s
  refine ⟨2 * A + 2 * d ^ 2, 2 * D + C, by positivity, by positivity, fun T hT => ?_⟩
  have hmidI : IntervalIntegrable (fun u => (wholePickup u - c) ^ 2) volume 0 T :=
    ((wholePickup_continuous.sub continuous_const).pow 2).intervalIntegrable 0 T
  have hhI : IntervalIntegrable (fun u => (wholePickup u - heatedLimit s) ^ 2) volume 0 T :=
    ((wholePickup_continuous.sub continuous_const).pow 2).intervalIntegrable 0 T
  have hdI : IntervalIntegrable (fun _ : ℝ => 2 * d ^ 2) volume 0 T := intervalIntegrable_const
  have hpoint (u : ℝ) : (wholePickup u - heatedLimit s) ^ 2 ≤
      2 * (wholePickup u - c) ^ 2 + 2 * d ^ 2 := by
    dsimp [d]
    nlinarith [sq_nonneg (wholePickup u - c - (c - heatedLimit s))]
  have hintegral : (∫ u in (0 : ℝ)..T, (wholePickup u - heatedLimit s) ^ 2) ≤
      2 * (∫ u in (0 : ℝ)..T, (wholePickup u - c) ^ 2) + 2 * d ^ 2 * T := by
    calc
      _ ≤ ∫ u in (0 : ℝ)..T, 2 * (wholePickup u - c) ^ 2 + 2 * d ^ 2 :=
        intervalIntegral.integral_mono_on hT hhI ((hmidI.const_mul 2).add hdI) (fun u _ => hpoint u)
      _ = _ := by
        rw [intervalIntegral.integral_add (hmidI.const_mul 2) hdI,
          intervalIntegral.integral_const_mul, intervalIntegral.integral_const]
        simp [smul_eq_mul, mul_comm]
  have hc := (le_abs_self _).trans (hcompare T hT)
  have hp := hP T hT
  change (∫ u in (0 : ℝ)..T, (wholePickup u - c) ^ 2) ≤ A * T + D at hp
  linarith

end GRWTSK.NumberTheory.Moebius
