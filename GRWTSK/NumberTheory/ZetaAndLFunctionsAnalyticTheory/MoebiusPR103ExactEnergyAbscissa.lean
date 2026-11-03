/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongFixedPowerPR103
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.EnergyAbscissa
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open MeasureTheory Set

/-!
# Exact PR103 boundary for the causal Möbius square-energy abscissa

The preceding fixed-power source chose one rational working exponent strictly
right of the external PR103 zero-free boundary and obtained the clean energy
rate `747/1000`.  This file removes that arbitrary working margin at the level
of the convergence abscissa.

Let `theta₀` be the exact external PR103 boundary.  The causal normalization
maps a Mertens exponent `theta` to the square-energy rate `2*theta-1`.
For every damping `sigma > 2*theta₀-1`, choose

  theta₀ < theta < (sigma+1)/2.

The existing visible zero-free-to-Mertens bridge supplies the actual Mertens
envelope at `theta`, the visible real-calculus gate supplies cumulative energy
rate `2*theta-1 < sigma`, and the already proved exponential-energy lemma gives
integrability at damping `sigma`.

Therefore the actual causal square-energy convergence abscissa is at most
`2*theta₀-1`.  No integrability at the boundary is claimed.  The external
PR103 adapter, the Perron/contour bridge, and the velocity-to-energy calculus
remain explicit inputs; this source adds no axiom and does not prove RH.
-/

namespace GRWTSK.NumberTheory.Moebius.PR103ExactEnergyAbscissa

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvillePR103FixedPower
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103

/-- The exact physical square-energy boundary associated with the exact
external PR103 zero-free abscissa. -/
def exactPR103EnergyBoundary : ℝ :=
  2 * externalPR103Theta - 1

/-- Exact reduced rational form of the causal energy boundary. -/
theorem exactPR103EnergyBoundary_eq_fraction :
    exactPR103EnergyBoundary =
      (2398317958112860881367759135939504592646012008778643808050012887279701462157247876512185047622755134341565776370243062107436411 : ℝ) /
      3211614609922119834694179379888743028634953588197852962423516288191911449231164741438582626063161096341458934143644085157872271 := by
  norm_num [exactPR103EnergyBoundary, externalPR103Theta]

/-- The external boundary is genuinely to the right of one half. -/
theorem half_lt_externalPR103Theta :
    (1 / 2 : ℝ) < externalPR103Theta := by
  norm_num [externalPR103Theta]

/-- Consequently its physical square-energy boundary is positive. -/
theorem exactPR103EnergyBoundary_pos :
    0 < exactPR103EnergyBoundary := by
  unfold exactPR103EnergyBoundary
  linarith [half_lt_externalPR103Theta]

/-- The exact boundary improves the previously chosen rational working rate. -/
theorem exactPR103EnergyBoundary_lt_working :
    exactPR103EnergyBoundary < newWorkingEnergyPower := by
  rw [pr103_working_energy_rate_eq]
  unfold exactPR103EnergyBoundary
  linarith [(exact_pr103_fixed_power_gain).1]

/-- In particular it lies strictly below the clean reported rate. -/
theorem exactPR103EnergyBoundary_lt_clean :
    exactPR103EnergyBoundary < cleanPR103EnergyRate :=
  exact exactPR103EnergyBoundary_lt_working.trans
    pr103_working_rate_lt_clean

/-- The exact external boundary also remains strictly below three quarters. -/
theorem exactPR103EnergyBoundary_lt_three_quarters :
    exactPR103EnergyBoundary < (3 / 4 : ℝ) :=
  exact exactPR103EnergyBoundary_lt_clean.trans
    cleanPR103EnergyRate_lt_three_quarters

/-- Every damping strictly above the exact PR103 energy boundary is paid.
The branch `1 < sigma` uses the repository's unconditional initial domain;
otherwise a strict intermediate Mertens exponent is chosen.  No boundary
integrability is asserted. -/
theorem pr103_weighted_energy_integrable_above_exact
    (hcalc : PickupVelocityPowerEnergyTransfer)
    (hzeta : ExternalPR103ZetaNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge)
    {σ : ℝ} (hσ : exactPR103EnergyBoundary < σ) :
    IntegrableOn
      (fun u => Real.exp (-σ * u) * wholePickup u ^ 2)
      (Ici 0) := by
  by_cases hσone : 1 < σ
  · exact pickup_weighted_energy_integrable_initial hσone
  · have hσle : σ ≤ 1 := le_of_not_gt hσone
    let upper : ℝ := (σ + 1) / 2
    let theta : ℝ := (externalPR103Theta + upper) / 2
    have htheta0_upper : externalPR103Theta < upper := by
      dsimp [upper, exactPR103EnergyBoundary] at hσ ⊢
      linarith
    have htheta0 : externalPR103Theta < theta := by
      dsimp [theta]
      linarith
    have htheta_upper : theta < upper := by
      dsimp [theta]
      linarith
    have htheta_half : (1 / 2 : ℝ) < theta :=
      half_lt_externalPR103Theta.trans htheta0
    have hupper_le_one : upper ≤ 1 := by
      dsimp [upper]
      linarith
    have htheta_one : theta < 1 :=
      htheta_upper.trans_le hupper_le_one
    obtain ⟨C, hM⟩ := hbridge externalPR103Theta theta
      htheta0 htheta_half htheta_one hzeta
    let rho : ℝ := theta - 1 / 2
    have hrho : 0 < rho := by
      dsimp [rho]
      linarith
    have hC : 0 ≤ C := hM.1
    have hv : ∀ u : ℝ, 0 ≤ u →
        |pickupVelocity u| ≤ C * Real.exp (rho * u) := by
      intro u hu
      simpa only [rho] using
        pickupVelocity_abs_le_of_mertens_envelope hM hu
    have hrate : 2 * rho < σ := by
      dsimp [rho]
      dsimp [upper] at htheta_upper
      linarith
    have hσpos : 0 < σ :=
      exactPR103EnergyBoundary_pos.trans hσ
    have henergy : ∀ T : ℝ, 0 ≤ T →
        (∫ u in (0 : ℝ)..T, wholePickup u ^ 2) ≤
          (C ^ 2 / (2 * rho ^ 3)) *
            Real.exp ((2 * rho) * T) := by
      intro T hT
      simpa only [pickupEnergy] using
        hcalc rho C hrho hC hv T hT
    exact integrableOn_sq_tilt_of_energy_exponential
      wholePickup_continuous hσpos hrate henergy

/-- The entire open half-line above the exact PR103 boundary is contained in
the actual square-energy convergence set. -/
theorem pr103_exact_Ioi_subset_pickupEnergyConvergenceSet
    (hcalc : PickupVelocityPowerEnergyTransfer)
    (hzeta : ExternalPR103ZetaNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    Ioi exactPR103EnergyBoundary ⊆ pickupEnergyConvergenceSet := by
  intro σ hσ
  exact ⟨exactPR103EnergyBoundary_pos.trans hσ,
    pr103_weighted_energy_integrable_above_exact
      hcalc hzeta hbridge hσ⟩

/-- Conditional exact-boundary upper estimate for the actual causal square-
energy convergence abscissa.  This is sharper than merely selecting the clean
working rate `747/1000`, but it is still a fixed positive boundary and is not
an RH conclusion. -/
theorem pickupEnergyAbscissa_le_exactPR103
    (hcalc : PickupVelocityPowerEnergyTransfer)
    (hzeta : ExternalPR103ZetaNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    pickupEnergyAbscissa ≤ exactPR103EnergyBoundary := by
  by_contra hbad
  have hlt : exactPR103EnergyBoundary < pickupEnergyAbscissa :=
    lt_of_not_ge hbad
  let σ : ℝ :=
    (exactPR103EnergyBoundary + pickupEnergyAbscissa) / 2
  have hboundary_sigma : exactPR103EnergyBoundary < σ := by
    dsimp [σ]
    linarith
  have hσ_abscissa : σ < pickupEnergyAbscissa := by
    dsimp [σ]
    linarith
  have hσpos : 0 < σ :=
    exactPR103EnergyBoundary_pos.trans hboundary_sigma
  have hi := pr103_weighted_energy_integrable_above_exact
    hcalc hzeta hbridge hboundary_sigma
  have hle := pickupEnergyAbscissa_le_of_integrable hσpos hi
  exact (not_lt_of_ge hle) hσ_abscissa

/-- Clean corollary in the previously published reporting scale. -/
theorem pickupEnergyAbscissa_lt_cleanPR103
    (hcalc : PickupVelocityPowerEnergyTransfer)
    (hzeta : ExternalPR103ZetaNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    pickupEnergyAbscissa < cleanPR103EnergyRate :=
  (pickupEnergyAbscissa_le_exactPR103 hcalc hzeta hbridge).trans_lt
    exactPR103EnergyBoundary_lt_clean

/-- The exact external source also gives a strict abscissa upper below three
quarters, while remaining far from the zero abscissa equivalent to RH. -/
theorem pickupEnergyAbscissa_lt_three_quarters
    (hcalc : PickupVelocityPowerEnergyTransfer)
    (hzeta : ExternalPR103ZetaNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    pickupEnergyAbscissa < (3 / 4 : ℝ) :=
  (pickupEnergyAbscissa_le_exactPR103 hcalc hzeta hbridge).trans_lt
    exactPR103EnergyBoundary_lt_three_quarters

end GRWTSK.NumberTheory.Moebius.PR103ExactEnergyAbscissa
