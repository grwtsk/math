/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSevenEighthsEndpointReturn
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# The complete original endpoint at EVERY fixed rate strictly above 3/4

The separately published actual OpenAI/OAI theorem (2026) gives
Riemann zeta nonvanishing in Re s>7/8. This source does NOT import
or claim to replay that external Lean library, but keeps the exact
premise PublishedOAISevenEighths visibly named.

The separate *classical* zero-free-to-Mertens Perron/contour
transfer, and elementary original causal physical-time integral,
remain visible as unproved-in-this-local-Lean-closure
ZeroFreeToMertensPowerBridge and PickupVelocityPowerEnergyTransfer.

For EVERY fixed r>3/4, choose theta=(1+r)/2>7/8 if r<1.
The original causal energy exponent is 2*theta-1=r.
For r>=1, enlarge the original already-written rate 4/5.

The resulting original complete endpoint source bound
  exists C_r>=0, forall T>=0, endpointSum T<=C_r*exp(r*T)
is valid at EACH r>3/4, including arbitrarily near 3/4,
with C_r potentially depending on r but not T, the
dyadic index j, the finite source cutoff, or the number
of dyadic blocks. The SAME fixed G={j*log 2} works for all r.

This is a conditional local Lean theorem from explicit
independent external and classical inputs; the ordinary
mathematical consequence of the published theorem is
unconditional relative to accepted 2026 mathematics.

NO estimate at r=3/4, below it, or at EVERY positive
rate is obtained. No canonical RH proof is asserted.
-/

namespace GRWTSK.NumberTheory.Moebius.SevenEighthsSupercriticalRates

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103
open GRWTSK.NumberTheory.Moebius.SevenEighthsEndpointReturn
open GRWTSK.NumberTheory.Moebius.DyadicFreshBirthStrip
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-- Exact original physical endpoint at every fixed positive
rate r > 3/4. External zeta and classical contour/calculus
premises remain visible, NOT inserted as an axiom. -/
theorem endpoint_all_rates_gt_three_quarters
    (hOAI : PublishedOAISevenEighths)
    (hcontour : ZeroFreeToMertensPowerBridge)
    (hcalc : PickupVelocityPowerEnergyTransfer)
    {r : ℝ} (hr : (3 / 4 : ℝ) < r) :
    FixedRateUpper endpointSum r := by
  by_cases hlt : r < 1
  · let theta : ℝ := (1 + r) / 2
    have hzero : (7 / 8 : ℝ) < theta := by
      dsimp [theta]
      linarith
    have hhalf : (1 / 2 : ℝ) < theta := by
      dsimp [theta]
      linarith
    have hone : theta < 1 := by
      dsimp [theta]
      linarith
    obtain ⟨C, hM⟩ :=
      hcontour (7 / 8) theta hzero hhalf hone
        (published_zeta_to_original_type hOAI)
    have henergy :
        FixedRateUpper pickupEnergy (2 * theta - 1) :=
      pickupEnergy_fixedRate_of_mertens_envelope hcalc hhalf hM
    have heq : 2 * theta - 1 = r := by
      dsimp [theta]
      ring
    rw [heq] at henergy
    exact endpointSum_fixedRate_of_pickupEnergy (by linarith) henergy
  · have hrge : (4 / 5 : ℝ) ≤ r := by linarith
    exact (endpoint_four_fifths_of_published_zeta
      hOAI hcontour hcalc).mono_rate hrge

/-- ONE fixed dyadic grid and a source constant per requested
rate; no choice of new good scales after r is given.
This is still not the full all-positive-rate requirement. -/
theorem endpoint_fixed_grid_all_rates_gt_three_quarters
    (hOAI : PublishedOAISevenEighths)
    (hcontour : ZeroFreeToMertensPowerBridge)
    (hcalc : PickupVelocityPowerEnergyTransfer)
    (r : ℝ) (hr : (3 / 4 : ℝ) < r) :
    ∃ A : ℝ, 0 ≤ A ∧
      ∀ j : ℕ,
        endpointSum (dyadicTime j) ≤
          A * Real.exp (r * dyadicTime j) := by
  obtain ⟨A, hA, hbound⟩ :=
    endpoint_all_rates_gt_three_quarters hOAI hcontour hcalc hr
  refine ⟨A, hA, ?_⟩
  intro j
  have hlog : (0 : ℝ) ≤ Real.log 2 :=
    Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 2)
  have hj : 0 ≤ dyadicTime j := by
    unfold dyadicTime
    exact mul_nonneg (Nat.cast_nonneg j) hlog
  exact hbound (dyadicTime j) hj

/-- The all-positive-rate target still requires EVERY delta>0,
including all delta<=3/4, without changing the scale set. -/
def RemainingAllPositiveRateOriginalEndpointTarget : Prop :=
  EveryRateOnFixedDyadicGrid
    (fun j => endpointSum (dyadicTime j))

end GRWTSK.NumberTheory.Moebius.SevenEighthsSupercriticalRates
