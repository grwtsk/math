/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHalfRootMassImprovement
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalSingleRateZeroFreeReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalLaplaceZeroBarrier
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open MeasureTheory Set

/-!
# Faithful stronger Gaussian smoothing: source energy -> zero-free rate

The ORIGINAL real Möbius coefficient, all original n,
actual birth-gated response, closed terminal inventory,
and physical-time square energy remain unchanged.

At each endpoint T>=0 choose a nonzero artificial
Gaussian log-frequency time s(T)=exp(-T/2). This
damps more strongly than the previously published
s_old(T)=exp(-2T), but the complete source-positive
reconstruction radius remains <=16*T^5 (ORDINARY math).
It follows from the TRUE n^(-1/2) weight in the
original response, and from no Mobius cancellation.
The elementary finite inverse-root sum is an explicit
UNPROVED PINNED Lean Prop target, not an axiom.

An independently supplied rate-r upper (r>0) on the
HEATED SIGNED full observed square energy at every true
dyadic T_J gives
  original pickupEnergy(T_J) <=
      (2C + 3840/r^5) exp(r*T_J),
since T_J^5 <=120/r^5 exp(r*T_J).
The source-exact previous original Laplace consumer then
excludes actual zeta zeros on Re(s)>(1+r)/2.
This source proof is conditional on the heated SIGNED
energy rate, which remains RH-strength when all rates
are demanded; smoothing alone does NOT prove it.

Conversely any HYPOTHETICAL true zeta zero
rho with beta=Re rho>1/2 would force arbitrarily
large positive HEATED energy excursions at EVERY
0<r<2beta-1 on the ORIGINAL fixed dyadic grid.
This does NOT assert such a zero exists.

No claim is made that coefficientwise Gaussian damping
reduces signed causal Gram energy: it need not.
The source reconstruction-error polynomial is the only
new unconditional quantitative arithmetic-free payment.
Compilation remains DEFERRED at the user's direction.
-/

namespace GRWTSK.NumberTheory.Moebius.GaussianHalfRootZeroFreeBridge

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.GaussianHeatStabilityReturn
open GRWTSK.NumberTheory.Moebius.GaussianHalfRootMassImprovement
open GRWTSK.NumberTheory.Moebius.OriginalSingleRateZeroFreeReturn
open GRWTSK.NumberTheory.Moebius.OriginalLaplaceZeroBarrier
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103

/-- Full ACTUAL original nonnegative physical energy from
the stronger Gaussian observation and its independently
source-paid positive reconstruction error, at rate r>0.
The observed signed energy is NOT proved small here. -/
theorem halfRoot_heat_single_rate_energy_grid
    (hInventory : OriginalInverseRootInventoryTarget)
    (r : ℝ) (hr : 0 < r)
    (C : ℝ) (hC : 0 ≤ C)
    (hObserved : ∀ J : ℕ, 1 ≤ J →
      sourceHeatEnergy
        (rootRateHeatTime (1/2) (dyadicTime J))
        (dyadicTime J) ≤
          C*Real.exp (r*dyadicTime J)) :
    ∃ D : ℝ, 0 ≤ D ∧
      ∀ J : ℕ, 1 ≤ J →
        pickupEnergy (dyadicTime J) ≤
          D*Real.exp (r*dyadicTime J) := by
  let D : ℝ := 2*C + 3840/r^5
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨D,hD,?_⟩
  intro J hJ
  let T : ℝ := dyadicTime J
  have hT : 0 ≤ T := dyadicTime_nonneg J
  have hHeatPos :
      0 ≤ rootRateHeatTime (1/2) T :=
    rootRateHeatTime_nonneg (1/2) T
  have hSource := pickupEnergy_le_heat_add_radius hHeatPos hT
  have hHeat :
      sourceHeatEnergy (rootRateHeatTime (1/2) T) T ≤
        C*Real.exp (r*T) := hObserved J hJ
  have hRad :
      sourceHeatRadiusEnergy (rootRateHeatTime (1/2) T) T ≤
        16*T^5 := halfRootHeat_radiusEnergy_le_quintic hInventory hT
  have hPoly :
      T^5 ≤ (120/r^5)*Real.exp (r*T) := by
    simpa using (pow_le_factorial_mul_exp hr hT 5)
  have hPaid :
      32*T^5 ≤ (3840/r^5)*Real.exp (r*T) := by
    calc
      32*T^5 ≤ 32*((120/r^5)*Real.exp (r*T)) :=
        mul_le_mul_of_nonneg_left hPoly (by norm_num)
      _ = (3840/r^5)*Real.exp (r*T) := by ring
  change pickupEnergy T ≤ D*Real.exp (r*T)
  dsimp [D]
  linarith [hSource, hHeat, hRad, hPaid]

/-- Exact conditional quantitative critical-strip consequence:
true strongly heated observed energy at a fixed r>0
and the COMPLETE polynomial source error produce a
GENUINE zero-free half-plane Re(s)>(1+r)/2.
All previous original Laplace/energy gates are explicit. -/
theorem halfRoot_heat_single_rate_implies_zeta_zero_free
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (hInventory : OriginalInverseRootInventoryTarget)
    (r : ℝ) (hr : 0 < r)
    (C : ℝ) (hC : 0 ≤ C)
    (hObserved : ∀ J : ℕ, 1 ≤ J →
      sourceHeatEnergy
        (rootRateHeatTime (1/2) (dyadicTime J))
        (dyadicTime J) ≤
          C*Real.exp (r*dyadicTime J)) :
    ZetaZeroFreeRightOf ((1+r)/2) := by
  obtain ⟨D,hD,hGrid⟩ :=
    halfRoot_heat_single_rate_energy_grid hInventory
      r hr C hC hObserved
  exact zero_free_of_original_grid_energy_rate
    hRight hHolo hIdentity hCeiling r hr D hD hGrid

/-- The REVERSE source implication: an ACTUAL hypothetical
offcritical zeta zero would force positive excursions
in the same original integer-labelled strongly heated
observed full nonnegative energy at any subcritical rate.
Neither an offcritical zero nor an all-positive-rate
bound is asserted unconditionally. -/
theorem hypothetical_zero_forces_halfRoot_heat_positive_spikes
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (hInventory : OriginalInverseRootInventoryTarget)
    (rho : ℂ)
    (hhalf : (1/2 : ℝ) < rho.re)
    (hone : rho.re < 1)
    (hzeta : _root_.riemannZeta rho = 0)
    (r : ℝ) (hr : 0 < r)
    (hrho : r < 2*rho.re-1)
    (K : ℝ) :
    ∃ J : ℕ, 1 ≤ J ∧
      K*Real.exp (r*dyadicTime J) <
        sourceHeatEnergy
          (rootRateHeatTime (1/2) (dyadicTime J))
          (dyadicTime J) := by
  by_contra hNo
  have hObserved : ∀ J : ℕ, 1 ≤ J →
      sourceHeatEnergy
        (rootRateHeatTime (1/2) (dyadicTime J))
        (dyadicTime J) ≤
          (max K 0)*Real.exp (r*dyadicTime J) := by
    intro J hJ
    have hUpper : sourceHeatEnergy
        (rootRateHeatTime (1/2) (dyadicTime J))
        (dyadicTime J) ≤ K*Real.exp (r*dyadicTime J) :=
      le_of_not_gt (fun hgt => hNo ⟨J,hJ,hgt⟩)
    exact hUpper.trans
      (mul_le_mul_of_nonneg_right (le_max_left _ _)
        (Real.exp_pos _).le)
  have hZ := halfRoot_heat_single_rate_implies_zeta_zero_free
    hRight hHolo hIdentity hCeiling hInventory
    r hr (max K 0) (le_max_right _ _) hObserved
  have hLocation : (1+r)/2 < rho.re := by linarith
  have hrhoOne : rho ≠ 1 := by
    intro h
    rw [h] at hone
    norm_num at hone
  exact (hZ rho hLocation hrhoOne) hzeta

end GRWTSK.NumberTheory.Moebius.GaussianHalfRootZeroFreeBridge
