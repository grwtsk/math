# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EnergyAbscissa.Variant9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a107f60cf1a498be022f6547623f15b01e840c82` · SHA-256 `9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.AsymptoticAnalysis.PolynomialSubexponential
import GRWTSK.Analysis.LaplaceTransform.ExponentialEnergy
import GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound

/-!
# Actual energy convergence, subexponential budgets and the conditional RH return

The infimum is formed from actual square-integrability of the signed pickup.
Integrability above the infimum does not supply its value. All strictly positive
rates remain quantified; no estimate at damping zero is asserted.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set Filter
open scoped Topology

def PickupEnergySubexp : Prop := SubexponentialUpper pickupEnergy

def PickupCrossSubexp : Prop := SubexponentialUpper pickupCross

def PickupWeightedEnergyAll : Prop :=
  ∀ σ : ℝ, 0 < σ →
    IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u ^ 2) (Ici 0)

theorem pickupEnergyPoly_subexp (hE : PickupEnergyPoly) : PickupEnergySubexp := by
  obtain ⟨C, q, hC, _, hb⟩ := hE
  exact subexponentialUpper_of_polynomial hC hb

theorem pickupCrossPoly_subexp (hX : PickupCrossPoly) : PickupCrossSubexp := by
  obtain ⟨C, q, hC, _, hb⟩ := hX
  exact subexponentialUpper_of_polynomial hC hb

/-- The complete signed cross sum and energy have the same subexponential class. -/
theorem pickupCrossSubexp_iff_pickupEnergySubexp :
    PickupCrossSubexp ↔ PickupEnergySubexp := by
  have hd : SubexponentialUpper pickupDiagonal :=
    (subexponentialUpper_of_polynomial (by norm_num : (0 : ℝ) ≤ 2)
      (fun T hT ↦ show 2 * T ^ 2 ≤ 2 * (1 + T) ^ (2 : ℝ) by
        rw [Real.rpow_two]; nlinarith)).mono
      (fun T hT ↦ (pickupDiagonal_quadratic_bound hT).2)
  constructor
  · intro hX
    exact (hd.add hX).mono (fun T hT ↦ (pickupEnergy_eq_diagonal_add_cross hT).le)
  · intro hE
    exact hE.mono (fun T hT ↦ by
      have hi := pickupEnergy_eq_diagonal_add_cross hT
      have hn := pickupDiagonal_nonneg hT
      linarith)


theorem pickupWeightedEnergyAll_of_subexp (hE : PickupEnergySubexp) :
    PickupWeightedEnergyAll := by
  intro σ hσ
  obtain ⟨C, _, hb⟩ := hE (σ / 2) (by linarith)
  exact integrableOn_sq_tilt_of_energy_exponential wholePickup_continuous hσ (by linarith) hb

/-- A paid actual tilted integral gives a uniform cumulative bound, with its full constant. -/
theorem pickupEnergy_le_weighted_integral {σ T : ℝ} (hσ : 0 < σ) (hT : 0 ≤ T)
    (hi : IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u ^ 2) (Ici 0)) :
    pickupEnergy T ≤
      (∫ u in Ici (0 : ℝ), Real.exp (-σ * u) * wholePickup u ^ 2) * Real.exp (σ * T) := by
  have hc : Continuous (fun u ↦ Real.exp (σ * T) *
      (Real.exp (-σ * u) * wholePickup u ^ 2)) :=
    continuous_const.mul
      ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
        (wholePickup_continuous.pow 2))
  have hp : (∫ u in Icc (0 : ℝ) T, wholePickup u ^ 2) ≤
      ∫ u in Icc (0 : ℝ) T,
        Real.exp (σ * T) * (Real.exp (-σ * u) * wholePickup u ^ 2) := by
    apply setIntegral_mono_on (wholePickup_continuous.pow 2).integrableOn_Icc
      hc.integrableOn_Icc measurableSet_Icc
    intro u hu
    change wholePickup u ^ 2 ≤
      Real.exp (σ * T) * (Real.exp (-σ * u) * wholePickup u ^ 2)
    have he : 1 ≤ Real.exp (σ * T) * Real.exp (-σ * u) := by
      rw [← Real.exp_add, ← Real.exp_zero]
      exact Real.exp_le_exp.mpr (by nlinarith [hu.2])
    simpa only [one_mul, mul_assoc] using
      mul_le_mul_of_nonneg_right he (sq_nonneg (wholePickup u))
  have hs : (∫ u in Icc (0 : ℝ) T, Real.exp (-σ * u) * wholePickup u ^ 2) ≤
      ∫ u in Ici (0 : ℝ), Real.exp (-σ * u) * wholePickup u ^ 2 := by
    apply setIntegral_mono_set hi
      (ae_of_all _ (fun u ↦ mul_nonneg (Real.exp_pos _).le (sq_nonneg _)))
    exact ae_of_all _ (fun u hu ↦ hu.1)
  rw [integral_const_mul] at hp
  rw [pickupEnergy, intervalIntegral.integral_of_le hT, ← integral_Icc_eq_integral_Ioc]
  exact hp.trans (by
    simpa only [mul_comm] using mul_le_mul_of_nonneg_left hs (Real.exp_pos _).le)

theorem pickupEnergySubexp_iff_weightedEnergyAll :
    PickupEnergySubexp ↔ PickupWeightedEnergyAll := by
  refine ⟨pickupWeightedEnergyAll_of_subexp, ?_⟩
  intro hw σ hσ
  refine ⟨∫ u in Ici (0 : ℝ), Real.exp (-σ * u) * wholePickup u ^ 2,
    integral_nonneg (fun _ ↦ mul_nonneg (Real.exp_pos _).le (sq_nonneg _)), ?_⟩
  exact fun T hT ↦ pickupEnergy_le_weighted_integral hσ hT (hw σ hσ)

/-- Square-energy integrability pays each signed absolute tilt without a pointwise return. -/
theorem pickup_tilt_integrable_of_weightedEnergyAll (hw : PickupWeightedEnergyAll)
    {σ : ℝ} (hσ : 0 < σ) :
    IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u) (Ioi 0) := by
  have hsq := (hw σ hσ).mono_set Ioi_subset_Ici_self
  have he := integrableOn_exp_mul_Ioi (by linarith : -σ < 0) 0
  apply (he.add hsq).mono'
    (((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      wholePickup_continuous).aestronglyMeasurable)
  exact ae_of_all _ (fun u ↦ by
    change ‖Real.exp (-σ * u) * wholePickup u‖ ≤
      Real.exp (-σ * u) + Real.exp (-σ * u) * wholePickup u ^ 2
    rw [norm_mul, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _), Real.norm_eq_abs]
    have ha : |wholePickup u| ≤ 1 + wholePickup u ^ 2 := by
      nlinarith [sq_nonneg (|wholePickup u| - 1), sq_abs (wholePickup u)]
    simpa only [mul_add, mul_one] using
      mul_le_mul_of_nonneg_left ha (Real.exp_pos _).le)

theorem riemannHypothesis_of_pickupWeightedEnergyAll (hw : PickupWeightedEnergyAll) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_holomorphic_signedPickupLaplace _ pickup_initial_transform_identity
  intro z hz
  exact (analyticAt_signedPickupLaplace_of_tilts wholePickup_continuous
    (fun _ hσ ↦ pickup_tilt_integrable_of_weightedEnergyAll hw hσ) hz).differentiableAt.differentiableWithinAt

theorem riemannHypothesis_of_pickupEnergySubexp (hE : PickupEnergySubexp) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupWeightedEnergyAll (pickupWeightedEnergyAll_of_subexp hE)

/-- A sufficient arithmetic premise weaker than the polynomial budget; still unproved. -/
theorem riemannHypothesis_of_pickupCrossSubexp (hX : PickupCrossSubexp) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupEnergySubexp (pickupCrossSubexp_iff_pickupEnergySubexp.mp hX)

/-- The actual unconditionally paid initial square-energy domain remains above one. -/
theorem pickup_weighted_energy_integrable_initial {σ : ℝ} (hσ : 1 < σ) :
    IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u ^ 2) (Ici 0) := by
  let ε : ℝ := (σ - 1) / 2
  have hε : 0 < ε := by dsimp [ε]; linarith
  let C : ℝ := 2 * (((2 : ℕ).factorial : ℝ) / ε ^ 2)
  have hb (T : ℝ) (hT : 0 ≤ T) : pickupEnergy T ≤ C * Real.exp ((1 + ε) * T) := by
    calc
      _ ≤ 2 * Real.exp T * T ^ 2 := pickupEnergy_exponential_allowance hT
      _ ≤ 2 * Real.exp T * ((((2 : ℕ).factorial : ℝ) / ε ^ 2) * Real.exp (ε * T)) :=
        mul_le_mul_of_nonneg_left (pow_le_factorial_mul_exp hε hT 2) (by positivity)
      _ = _ := by
        dsimp [C]
        rw [add_mul, one_mul, Real.exp_add]
        ring
  exact integrableOn_sq_tilt_of_energy_exponential wholePickup_continuous
    (by linarith) (by dsimp [ε]; linarith) hb

theorem pickup_weighted_energy_integrable_mono {σ τ : ℝ} (hst : σ ≤ τ)
    (hi : IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u ^ 2) (Ici 0)) :
    IntegrableOn (fun u ↦ Real.exp (-τ * u) * wholePickup u ^ 2) (Ici 0) := by
  apply hi.mono'
    (((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (wholePickup_continuous.pow 2)).aestronglyMeasurable)
  filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
  change ‖Real.exp (-τ * u) * wholePickup u ^ 2‖ ≤ Real.exp (-σ * u) * wholePickup u ^ 2
  rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (Real.exp_pos _).le (sq_nonneg _))]
  apply mul_le_mul_of_nonneg_right _ (sq_nonneg _)
  exact Real.exp_le_exp.mpr (by nlinarith [show 0 ≤ u from hu])

/-- A paid damping floor bounds the actual integral uniformly at every larger damping. -/
theorem pickup_weighted_energy_integral_antitone {σ τ : ℝ} (hst : σ ≤ τ)
    (hi : IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u ^ 2) (Ici 0)) :
    (∫ u in Ici (0 : ℝ), Real.exp (-τ * u) * wholePickup u ^ 2) ≤
      ∫ u in Ici (0 : ℝ), Real.exp (-σ * u) * wholePickup u ^ 2 := by
  apply integral_mono_ae (pickup_weighted_energy_integrable_mono hst hi) hi
  filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
  apply mul_le_mul_of_nonneg_right _ (sq_nonneg _)
  exact Real.exp_le_exp.mpr (by nlinarith [show 0 ≤ u from hu])

def pickupEnergyConvergenceSet : Set ℝ :=
  {σ | 0 < σ ∧ IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u ^ 2) (Ici 0)}

def pickupEnergyAbscissa : ℝ := sInf pickupEnergyConvergenceSet

theorem pickupEnergyConvergenceSet_nonempty : pickupEnergyConvergenceSet.Nonempty :=
  ⟨2, by norm_num, pickup_weighted_energy_integrable_initial (by norm_num)⟩

theorem pickupEnergyConvergenceSet_bddBelow : BddBelow pickupEnergyConvergenceSet :=
  ⟨0, fun _ hσ ↦ hσ.1.le⟩

theorem pickupEnergyAbscissa_nonneg : 0 ≤ pickupEnergyAbscissa :=
  le_csInf pickupEnergyConvergenceSet_nonempty (fun _ hσ ↦ hσ.1.le)

theorem pickupEnergyAbscissa_le_of_integrable {σ : ℝ} (hσ : 0 < σ)
    (hi : IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u ^ 2) (Ici 0)) :
    pickupEnergyAbscissa ≤ σ :=
  csInf_le pickupEnergyConvergenceSet_bddBelow ⟨hσ, hi⟩

theorem pickupEnergyAbscissa_le_one : pickupEnergyAbscissa ≤ 1 := by
  by_contra! hbad
  have hs : 1 < (pickupEnergyAbscissa + 1) / 2 := by linarith
  have hle := pickupEnergyAbscissa_le_of_integrable (by linarith : 0 < (pickupEnergyAbscissa + 1) / 2)
    (pickup_weighted_energy_integrable_initial hs)
  linarith

/-- Strictly above the actual infimum only; no boundary value is silently included. -/
theorem pickup_weighted_energy_integrable_above_abscissa {σ : ℝ}
    (hσ : pickupEnergyAbscissa < σ) :
    IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u ^ 2) (Ici 0) := by
  obtain ⟨τ, hτ, hτσ⟩ := exists_lt_of_csInf_lt pickupEnergyConvergenceSet_nonempty hσ
  exact pickup_weighted_energy_integrable_mono hτσ.le hτ.2

theorem pickupEnergyAbscissa_zero_iff_weightedEnergyAll :
    pickupEnergyAbscissa = 0 ↔ PickupWeightedEnergyAll := by
  constructor
  · intro hzero σ hσ
    exact pickup_weighted_energy_integrable_above_abscissa (by simpa only [hzero] using hσ)
  · intro hw
    apply le_antisymm _ pickupEnergyAbscissa_nonneg
    by_contra! hpos
    have hle := pickupEnergyAbscissa_le_of_integrable
      (by linarith : 0 < pickupEnergyAbscissa / 2)
      (hw _ (by linarith))
    linarith

theorem pickupEnergyAbscissa_zero_iff_crossSubexp :
    pickupEnergyAbscissa = 0 ↔ PickupCrossSubexp :=
  pickupEnergyAbscissa_zero_iff_weightedEnergyAll.trans
    (pickupEnergySubexp_iff_weightedEnergyAll.symm.trans pickupCrossSubexp_iff_pickupEnergySubexp.symm)

theorem riemannHypothesis_of_pickupEnergyAbscissa_zero (hzero : pickupEnergyAbscissa = 0) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupWeightedEnergyAll (pickupEnergyAbscissa_zero_iff_weightedEnergyAll.mp hzero)

end GRWTSK.RiemannHypothesis.CCC
```
