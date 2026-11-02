/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPR103ExactEnergyAbscissa
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open MeasureTheory Set Filter

/-!
# Close the arithmetic-free fixed-power calculus and strong-packet gates

The preceding PR103 sources expose two non-arithmetic propositions:

* `PickupVelocityPowerEnergyTransfer`, the two integrations taking
  `|pickupVelocity u| <= C exp(rho u)` to the exact cumulative-energy rate
  `C^2/(2 rho^3) exp(2 rho T)`;
* `StrongPacketFixedRateReturn`, the scalar absorption of the already-proved
  diagonal, Putnam gap and weak-overlap payments into the same positive rate.

This module supplies source proof candidates for both propositions.  It uses
only the unchanged original causal definitions and already-published source
inequalities.  The external PR103 adapter and zero-free-to-Mertens contour
bridge remain the only analytic inputs to the conditional PR103 consequences.
-/

namespace GRWTSK.NumberTheory.Moebius.StrongFixedPowerCalculusClosure

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual
open GRWTSK.NumberTheory.Moebius.StrongPacketEnergyReturn
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103
open GRWTSK.NumberTheory.Moebius.PR103ExactEnergyAbscissa

/-- Exact finite-interval integral of a positive-rate real exponential. -/
private theorem integral_exp_mul_pos
    (rho t : ℝ) (hrho : 0 < rho) :
    (∫ u in (0 : ℝ)..t, Real.exp (rho * u)) =
      (Real.exp (rho * t) - 1) / rho := by
  have hscale0 :=
    intervalIntegral.mul_integral_comp_mul_left
      (f := Real.exp) (a := (0 : ℝ)) (b := t) rho
  rw [intervalIntegral.integral_exp] at hscale0
  have hscale :
      rho * (∫ u in (0 : ℝ)..t, Real.exp (rho * u)) =
        Real.exp (rho * t) - 1 := by
    simpa using hscale0
  apply (eq_div_iff (ne_of_gt hrho)).2
  simpa [mul_comm] using hscale

/-- One integration of an exponential velocity envelope.  No regularity of
`pickupVelocity` is assumed: the interval integral is controlled directly by
an interval-integrable continuous majorant. -/
theorem wholePickup_abs_le_of_velocity_exp
    {rho C t : ℝ} (hrho : 0 < rho) (hC : 0 ≤ C)
    (hv : ∀ u : ℝ, 0 ≤ u →
      |pickupVelocity u| ≤ C * Real.exp (rho * u))
    (ht : 0 ≤ t) :
    |wholePickup t| ≤
      (C / rho) * Real.exp (rho * t) := by
  have hmajorCont :
      Continuous (fun u : ℝ => C * Real.exp (rho * u)) := by
    fun_prop
  have hmajor :
      IntervalIntegrable (fun u : ℝ => C * Real.exp (rho * u))
        volume 0 t :=
    hmajorCont.intervalIntegrable 0 t
  have hpoint :
      ∀ᵐ u ∂volume, u ∈ Ioc (0 : ℝ) t →
        ‖pickupVelocity u‖ ≤ C * Real.exp (rho * u) := by
    refine Eventually.of_forall ?_
    intro u hu
    simpa only [Real.norm_eq_abs] using hv u hu.1.le
  have hnorm :
      ‖∫ u in (0 : ℝ)..t, pickupVelocity u‖ ≤
        ∫ u in (0 : ℝ)..t, C * Real.exp (rho * u) :=
    intervalIntegral.norm_integral_le_of_norm_le ht hpoint hmajor
  have hint :
      (∫ u in (0 : ℝ)..t, C * Real.exp (rho * u)) =
        C * ((Real.exp (rho * t) - 1) / rho) := by
    rw [intervalIntegral.integral_const_mul,
      integral_exp_mul_pos rho t hrho]
  have hdiv :
      (Real.exp (rho * t) - 1) / rho ≤
        Real.exp (rho * t) / rho := by
    rw [div_eq_mul_inv, div_eq_mul_inv]
    exact mul_le_mul_of_nonneg_right
      (sub_le_self _ (by norm_num)) (inv_nonneg.mpr hrho.le)
  calc
    |wholePickup t| = ‖∫ u in (0 : ℝ)..t, pickupVelocity u‖ := by
      simp only [wholePickup, Real.norm_eq_abs]
    _ ≤ ∫ u in (0 : ℝ)..t, C * Real.exp (rho * u) := hnorm
    _ = C * ((Real.exp (rho * t) - 1) / rho) := hint
    _ ≤ C * (Real.exp (rho * t) / rho) :=
      mul_le_mul_of_nonneg_left hdiv hC
    _ = (C / rho) * Real.exp (rho * t) := by ring

/-- The exact arithmetic-free double integration supplying the previously
visible `PickupVelocityPowerEnergyTransfer` proposition. -/
theorem pickupVelocityPowerEnergyTransfer_proved :
    PickupVelocityPowerEnergyTransfer := by
  intro rho C hrho hC hv T hT
  have hwholeSq : ∀ t : ℝ, 0 ≤ t →
      wholePickup t ^ 2 ≤
        (C ^ 2 / rho ^ 2) * Real.exp ((2 * rho) * t) := by
    intro t ht
    have hwhole :=
      wholePickup_abs_le_of_velocity_exp hrho hC hv ht
    have hright :
        0 ≤ (C / rho) * Real.exp (rho * t) := by positivity
    have hsquare :
        |wholePickup t| ^ 2 ≤
          ((C / rho) * Real.exp (rho * t)) ^ 2 :=
      (sq_le_sq₀ (abs_nonneg _) hright).2 hwhole
    have hexp :
        Real.exp (rho * t) ^ 2 =
          Real.exp ((2 * rho) * t) := by
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring
    rw [sq_abs] at hsquare
    calc
      wholePickup t ^ 2 ≤
          ((C / rho) * Real.exp (rho * t)) ^ 2 := hsquare
      _ = (C ^ 2 / rho ^ 2) *
          Real.exp ((2 * rho) * t) := by
        rw [mul_pow, div_pow, hexp]
  have hmajorCont :
      Continuous (fun t : ℝ =>
        (C ^ 2 / rho ^ 2) * Real.exp ((2 * rho) * t)) := by
    fun_prop
  have hmajor :
      IntervalIntegrable
        (fun t : ℝ =>
          (C ^ 2 / rho ^ 2) * Real.exp ((2 * rho) * t))
        volume 0 T :=
    hmajorCont.intervalIntegrable 0 T
  have hpoint :
      ∀ᵐ t ∂volume, t ∈ Ioc (0 : ℝ) T →
        ‖wholePickup t ^ 2‖ ≤
          (C ^ 2 / rho ^ 2) * Real.exp ((2 * rho) * t) := by
    refine Eventually.of_forall ?_
    intro t ht
    rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
    exact hwholeSq t ht.1.le
  have hnorm :
      ‖∫ t in (0 : ℝ)..T, wholePickup t ^ 2‖ ≤
        ∫ t in (0 : ℝ)..T,
          (C ^ 2 / rho ^ 2) * Real.exp ((2 * rho) * t) :=
    intervalIntegral.norm_integral_le_of_norm_le hT hpoint hmajor
  have henergy0 :
      0 ≤ ∫ t in (0 : ℝ)..T, wholePickup t ^ 2 :=
    intervalIntegral.integral_nonneg hT
      (fun t _ => sq_nonneg (wholePickup t))
  have henergy :
      pickupEnergy T ≤
        ∫ t in (0 : ℝ)..T,
          (C ^ 2 / rho ^ 2) * Real.exp ((2 * rho) * t) := by
    have hnorm' :
        |∫ t in (0 : ℝ)..T, wholePickup t ^ 2| ≤
          ∫ t in (0 : ℝ)..T,
            (C ^ 2 / rho ^ 2) * Real.exp ((2 * rho) * t) := by
      simpa only [Real.norm_eq_abs] using hnorm
    simpa only [pickupEnergy, abs_of_nonneg henergy0] using hnorm'
  have htwo : 0 < 2 * rho := by positivity
  have hint :
      (∫ t in (0 : ℝ)..T,
        (C ^ 2 / rho ^ 2) * Real.exp ((2 * rho) * t)) =
        (C ^ 2 / rho ^ 2) *
          ((Real.exp ((2 * rho) * T) - 1) / (2 * rho)) := by
    rw [intervalIntegral.integral_const_mul,
      integral_exp_mul_pos (2 * rho) T htwo]
  have hdiv :
      (Real.exp ((2 * rho) * T) - 1) / (2 * rho) ≤
        Real.exp ((2 * rho) * T) / (2 * rho) := by
    rw [div_eq_mul_inv, div_eq_mul_inv]
    exact mul_le_mul_of_nonneg_right
      (sub_le_self _ (by norm_num)) (inv_nonneg.mpr htwo.le)
  calc
    pickupEnergy T ≤
        ∫ t in (0 : ℝ)..T,
          (C ^ 2 / rho ^ 2) * Real.exp ((2 * rho) * t) := henergy
    _ = (C ^ 2 / rho ^ 2) *
          ((Real.exp ((2 * rho) * T) - 1) / (2 * rho)) := hint
    _ ≤ (C ^ 2 / rho ^ 2) *
          (Real.exp ((2 * rho) * T) / (2 * rho)) := by
      exact mul_le_mul_of_nonneg_left hdiv (by positivity)
    _ = (C ^ 2 / (2 * rho ^ 3)) *
          Real.exp ((2 * rho) * T) := by
      field_simp [ne_of_gt hrho]
      ring

/-- The cardinality/threshold factor in the existing weak-overlap estimate is
bounded by twice physical time.  This is independent of every Möbius sign. -/
theorem energyWeakScalar_le_two_mul_time
    {T : ℝ} (hT : 0 ≤ T) :
    (((endpointIndex T).card : ℝ) ^ 2) *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) ≤
      2 * T := by
  let N : ℝ := (⌊Real.exp T⌋₊ : ℝ) + 1
  have hN : 1 ≤ N := by
    dsimp [N]
    positivity
  have hsubset :
      endpointIndex T ⊆ Finset.range (⌊Real.exp T⌋₊ + 1) := by
    intro n hn
    have hnle : n ≤ ⌊Real.exp T⌋₊ :=
      (Finset.mem_Icc.mp hn).2
    exact Finset.mem_range.mpr (Nat.lt_succ_of_le hnle)
  have hcardNat :
      (endpointIndex T).card ≤ ⌊Real.exp T⌋₊ + 1 :=
    Finset.card_le_card hsubset
  have hcard : ((endpointIndex T).card : ℝ) ≤ N := by
    dsimp [N]
    exact_mod_cast hcardNat
  have hcard4 :
      ((endpointIndex T).card : ℝ) ^ 4 ≤ N ^ 4 := by
    gcongr
  have hN2 : (1 : ℝ) ≤ N ^ 2 := by
    nlinarith [sq_nonneg (N - 1)]
  have hN46 : N ^ 4 ≤ N ^ 6 := by
    calc
      N ^ 4 = N ^ 4 * 1 := by ring
      _ ≤ N ^ 4 * N ^ 2 :=
        mul_le_mul_of_nonneg_left hN2 (by positivity)
      _ = N ^ 6 := by ring
  have hnum :
      ((endpointIndex T).card : ℝ) ^ 4 ≤ N ^ 6 :=
    hcard4.trans hN46
  have hNpos : 0 < N := zero_lt_one.trans_le hN
  have hthreshold : weakEnergyThreshold T = 1 / N ^ 6 := by
    rfl
  have hfactor :
      ((endpointIndex T).card : ℝ) ^ 4 *
          weakEnergyThreshold T ≤ 1 := by
    rw [hthreshold]
    calc
      ((endpointIndex T).card : ℝ) ^ 4 * (1 / N ^ 6) ≤
          N ^ 6 * (1 / N ^ 6) :=
        mul_le_mul_of_nonneg_right hnum (by positivity)
      _ = 1 := by
        field_simp [ne_of_gt hNpos]
  have hD0 : 0 ≤ pickupDiagonal T :=
    (pickupDiagonal_quadratic_bound hT).1
  have hD2 : pickupDiagonal T ≤ 2 * T ^ 2 :=
    (pickupDiagonal_quadratic_bound hT).2
  have hthreshold0 : 0 ≤ weakEnergyThreshold T :=
    (weakEnergyThreshold_pos T).le
  have hproduct0 :
      0 ≤ weakEnergyThreshold T * pickupDiagonal T :=
    mul_nonneg hthreshold0 hD0
  have hleft0 :
      0 ≤ (((endpointIndex T).card : ℝ) ^ 2) *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) := by
    positivity
  have hleftSq :
      ((((endpointIndex T).card : ℝ) ^ 2) *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T)) ^ 2 =
      ((endpointIndex T).card : ℝ) ^ 4 *
        weakEnergyThreshold T * pickupDiagonal T := by
    rw [mul_pow, Real.sq_sqrt hproduct0]
    ring
  have hsq :
      ((((endpointIndex T).card : ℝ) ^ 2) *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T)) ^ 2 ≤
      (Real.sqrt (pickupDiagonal T)) ^ 2 := by
    rw [hleftSq, Real.sq_sqrt hD0]
    calc
      ((endpointIndex T).card : ℝ) ^ 4 *
          weakEnergyThreshold T * pickupDiagonal T ≤
        1 * pickupDiagonal T :=
          mul_le_mul_of_nonneg_right hfactor hD0
      _ = pickupDiagonal T := by ring
  have hleft :
      (((endpointIndex T).card : ℝ) ^ 2) *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) ≤
      Real.sqrt (pickupDiagonal T) :=
    (sq_le_sq₀ hleft0 (Real.sqrt_nonneg _)).1 hsq
  have hD4 : pickupDiagonal T ≤ (2 * T) ^ 2 := by
    calc
      pickupDiagonal T ≤ 2 * T ^ 2 := hD2
      _ ≤ (2 * T) ^ 2 := by nlinarith [sq_nonneg T]
  have hsqrt : Real.sqrt (pickupDiagonal T) ≤ 2 * T := by
    apply (sq_le_sq₀ (Real.sqrt_nonneg _)
      (mul_nonneg (by norm_num) hT)).1
    rw [Real.sq_sqrt hD0]
    exact hD4
  exact hleft.trans hsqrt

/-- The already-published diagonal, Putnam-gap and weak-overlap payments really
are absorbed at the same positive rate. -/
theorem strongPacketFixedRateReturn_proved :
    StrongPacketFixedRateReturn := by
  intro rate hrate henergy
  obtain ⟨A, hA, hbound⟩ := henergy
  refine ⟨A + 36 / rate ^ 2 + 2 / rate, by positivity, ?_⟩
  intro T hT
  have hstrong :=
    originalEnergyStrongCross_abs_le_energy_rate hrate hT
  have henergyT := hbound T hT
  have hT2 :
      T ^ 2 ≤ (2 / rate ^ 2) * Real.exp (rate * T) := by
    have h := pow_le_factorial_mul_exp hrate hT 2
    norm_num at h
    exact h
  have hdiag :
      2 * T ^ 2 ≤ (4 / rate ^ 2) * Real.exp (rate * T) := by
    calc
      2 * T ^ 2 ≤
          2 * ((2 / rate ^ 2) * Real.exp (rate * T)) :=
        mul_le_mul_of_nonneg_left hT2 (by norm_num)
      _ = (4 / rate ^ 2) * Real.exp (rate * T) := by ring
  have hT1 :
      T ≤ (1 / rate) * Real.exp (rate * T) := by
    have h := pow_le_factorial_mul_exp hrate hT 1
    norm_num at h
    exact h
  have hweak0 := energyWeakScalar_le_two_mul_time hT
  have hweak :
      (((endpointIndex T).card : ℝ) ^ 2) *
          Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) ≤
        (2 / rate) * Real.exp (rate * T) := by
    calc
      (((endpointIndex T).card : ℝ) ^ 2) *
          Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) ≤
        2 * T := hweak0
      _ ≤ 2 * ((1 / rate) * Real.exp (rate * T)) :=
        mul_le_mul_of_nonneg_left hT1 (by norm_num)
      _ = (2 / rate) * Real.exp (rate * T) := by ring
  calc
    |originalEnergyStrongCross (rateGapHeight rate T) T| ≤
        pickupEnergy T + 2 * T ^ 2 +
          (32 / rate ^ 2) * Real.exp (rate * T) +
        (((endpointIndex T).card : ℝ) ^ 2) *
          Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) := hstrong
    _ ≤ A * Real.exp (rate * T) +
          (4 / rate ^ 2) * Real.exp (rate * T) +
          (32 / rate ^ 2) * Real.exp (rate * T) +
          (2 / rate) * Real.exp (rate * T) :=
      add_le_add
        (add_le_add
          (add_le_add henergyT hdiag)
          (le_refl ((32 / rate ^ 2) * Real.exp (rate * T))))
        hweak
    _ = (A + 36 / rate ^ 2 + 2 / rate) *
          Real.exp (rate * T) := by ring

/-- Conditional clean PR103 energy rate with the arithmetic-free calculus gate
now supplied locally. -/
theorem pr103_pickupEnergy_clean_rate_of_external
    (hzeta : ExternalPR103ZetaNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    FixedRateUpper pickupEnergy cleanPR103EnergyRate :=
  pr103_pickupEnergy_clean_rate
    pickupVelocityPowerEnergyTransfer_proved hzeta hbridge

/-- Conditional clean PR103 endpoint rate with no remaining local calculus
premise. -/
theorem pr103_endpointSum_clean_rate_of_external
    (hzeta : ExternalPR103ZetaNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    FixedRateUpper endpointSum cleanPR103EnergyRate :=
  pr103_endpointSum_clean_rate
    pickupVelocityPowerEnergyTransfer_proved hzeta hbridge

/-- Conditional clean PR103 complete strong-packet rate after closing both
arithmetic-free gates. -/
theorem pr103_strongPacket_clean_rate_of_external
    (hzeta : ExternalPR103ZetaNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    FixedRateUpper
      (fun T =>
        |originalEnergyStrongCross
          (rateGapHeight cleanPR103EnergyRate T) T|)
      cleanPR103EnergyRate :=
  pr103_strongPacket_clean_rate
    pickupVelocityPowerEnergyTransfer_proved
    strongPacketFixedRateReturn_proved hzeta hbridge

/-- Conditional exact PR103 causal-energy abscissa upper after closing the
local real-calculus gate. -/
theorem pickupEnergyAbscissa_le_exactPR103_of_external
    (hzeta : ExternalPR103ZetaNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    pickupEnergyAbscissa ≤ exactPR103EnergyBoundary :=
  pickupEnergyAbscissa_le_exactPR103
    pickupVelocityPowerEnergyTransfer_proved hzeta hbridge

end GRWTSK.NumberTheory.Moebius.StrongFixedPowerCalculusClosure
