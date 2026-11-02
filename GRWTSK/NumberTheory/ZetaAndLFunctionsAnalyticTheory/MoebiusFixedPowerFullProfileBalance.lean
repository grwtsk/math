/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCompleteSignedProfileClassicalPNT
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSevenEighthsSupercriticalRates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPR103ExactEnergyAbscissa
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Full original R_{7/10} signed core and exact PR103 fixed-grid endpoint frontier

This candidate contains TWO independent, visibly distinguished
external arithmetic tracks, NO new arithmetic axiom:

* Verified-source OAI 2026 zeta Re(s)>7/8:
  theta=22/25 gives true Mertens power -> energy/endpoint 19/25=0.76,
  and the COMPLETE original geometric profileCore(7/10) has an
  ordinary mathematical two-sided bound at exponent 0.76.
* Externally merged GTimG/QuasiRiemannTracker PR103:
  theta0=externalPR103Theta~0.873381966613..., theta=4367/5000
  gives energy/endpoint rate 1867/2500=0.7468, strictly <3/4,
  and a two-sided full profileCore(7/10) estimate at the SAME rate.
  PR103 reports local Lean 237-module compile and standard-axiom
  census; no independently verified official workflow or local
  GRWTSK replay was observed. This second track is CONDITIONAL
  on the exact external theorem and classical contour/calculus gates.

All original mu(m)*mu(n), squareful zeros, closed birth cutoffs,
both ordered pair orientations, diagonal and 1/4 endpoint defect
remain. On ONE fixed dyadic G={j*log2}, each rate has ONE constant
independent of j or block count. No arithmetic power premise is
hidden: both tracks explicitly take their actual external
zero-free theorem and standard classical contour transfer.

A written full-source comparison also gives, with C_OAI or C_PR
the respective true Mertens constant:
  |profileCore(7/10,T)| <=
    (10*C_OAI^2+4000)*exp((19/25)*T),
  |profileCore(7/10,T)| <=
    (10*C_PR^2+6000)*exp((1867/2500)*T).
This uses the PREVIOUSLY WRITTEN source two-sided budget
  |R_rho| <= H+4T^2+16T(1+T)exp(T/2)+(64T+4T^2)exp(rho*T)
and elementary T exp(-aT)<=1/a,
T^2 exp(-aT)<=2/a^2.
The previous budget is an UNPROVED named Lean Prop
FullOriginalProfileTwoSidedBudgetTarget, and the real-exponential
absorption is another explicit Prop TARGET below; neither is
silently a compiled theorem.

The original two sign populations in this COMPLETE R_{7/10}
are both >=c*2^j by the earlier elementary source-squarefree
argument. Therefore their RELATIVE imbalance decays at
2^(-(1-19/25)*j) under OAI or, conditional on PR103,
2^(-(1-1867/2500)*j), not merely inverse log powers.

NO boundary equality r=2*theta0-1, every-positive-rate
conclusion, kernel acceptance of this new module, or RH.
-/

namespace GRWTSK.NumberTheory.Moebius.FixedPowerFullProfileBalance

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvillePR103FixedPower
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103
open GRWTSK.NumberTheory.Moebius.PR103ExactEnergyAbscissa
open GRWTSK.NumberTheory.Moebius.SevenEighthsEndpointReturn
open GRWTSK.NumberTheory.Moebius.SevenEighthsSupercriticalRates
open GRWTSK.NumberTheory.Moebius.CompleteSignedProfilePNT
open GRWTSK.NumberTheory.Moebius.DyadicFreshBirthStrip
open GRWTSK.NumberTheory.Moebius.TwoPrimeRateFrontier

def fullCoreProfile : ℝ := 7 / 10
def verifiedOAITheta : ℝ := 22 / 25
def verifiedOAIPhysicalRate : ℝ := 19 / 25
def candidatePR103Theta : ℝ := 4367 / 5000
def candidatePR103PhysicalRate : ℝ := 1867 / 2500

/-- Strict arithmetic margin from the independently checked external
OAI theorem to an original Mertens exponent. -/
theorem verified_OAI_margin :
    (7 / 8 : ℝ) < verifiedOAITheta ∧
    (1 / 2 : ℝ) < verifiedOAITheta ∧
    verifiedOAITheta < 1 ∧
    2 * verifiedOAITheta - 1 = verifiedOAIPhysicalRate := by
  norm_num [verifiedOAITheta, verifiedOAIPhysicalRate]

/-- Fully rational strict margin above the exact merged PR103
external zero-free boundary; no floating point proof. -/
theorem PR103_candidate_margin :
    externalPR103Theta < candidatePR103Theta ∧
    (1 / 2 : ℝ) < candidatePR103Theta ∧
    candidatePR103Theta < 1 ∧
    2 * candidatePR103Theta - 1 = candidatePR103PhysicalRate := by
  norm_num [externalPR103Theta, candidatePR103Theta,
    candidatePR103PhysicalRate]

/-- The rate 0.7468 strictly improves on the verified-source OAI
0.76 and on the formerly reported clean PR103 0.747, but its
external PR103 theorem has a DIFFERENT acceptance status. -/
theorem PR103_candidate_rate_comparison :
    exactPR103EnergyBoundary < candidatePR103PhysicalRate ∧
    candidatePR103PhysicalRate < cleanPR103EnergyRate ∧
    candidatePR103PhysicalRate < (3 / 4 : ℝ) ∧
    candidatePR103PhysicalRate < verifiedOAIPhysicalRate := by
  norm_num [exactPR103EnergyBoundary, externalPR103Theta,
    candidatePR103PhysicalRate, cleanPR103EnergyRate,
    verifiedOAIPhysicalRate]

/-- The verified-source OAI theorem gives the literal ORIGINAL
complete signed endpoint rate 0.76, with the already visible
classical contour and original causal calculus gates. -/
theorem OAI_complete_endpoint_rate
    (hOAI : PublishedOAISevenEighths)
    (hcontour : ZeroFreeToMertensPowerBridge)
    (hcalc : PickupVelocityPowerEnergyTransfer) :
    FixedRateUpper endpointSum verifiedOAIPhysicalRate := by
  exact endpoint_all_rates_gt_three_quarters
    hOAI hcontour hcalc
    (by norm_num [verifiedOAIPhysicalRate])

/-- The stronger 0.7468 is a source-conditional theorem from
the externally merged PR103 zero-free claim. The external
theorem is NOT an unlabelled axiom and no native PR103 replay
receipt is implied by this Lean source. -/
theorem PR103_complete_endpoint_rate
    (hPR103 : ExternalPR103ZetaNonvanishing)
    (hcontour : ZeroFreeToMertensPowerBridge)
    (hcalc : PickupVelocityPowerEnergyTransfer) :
    FixedRateUpper endpointSum candidatePR103PhysicalRate := by
  obtain ⟨C, hM⟩ :=
    hcontour externalPR103Theta candidatePR103Theta
      PR103_candidate_margin.1
      PR103_candidate_margin.2.1
      PR103_candidate_margin.2.2.1
      hPR103
  have hE : FixedRateUpper pickupEnergy
      (2 * candidatePR103Theta - 1) :=
    pickupEnergy_fixedRate_of_mertens_envelope
      hcalc PR103_candidate_margin.2.1 hM
  rw [PR103_candidate_margin.2.2.2] at hE
  exact endpointSum_fixedRate_of_pickupEnergy
    (by norm_num [candidatePR103PhysicalRate]) hE

/-- All fixed original endpoint rates strictly above the EXACT
PR103 causal-energy threshold. This improves the old single
r=747/1000, without asserting the boundary or RH. -/
theorem PR103_endpoint_all_rates_above_exact
    (hPR103 : ExternalPR103ZetaNonvanishing)
    (hcontour : ZeroFreeToMertensPowerBridge)
    (hcalc : PickupVelocityPowerEnergyTransfer)
    {rate : ℝ} (hrate : exactPR103EnergyBoundary < rate) :
    FixedRateUpper endpointSum rate := by
  by_cases hrone : rate < 1
  · let upper : ℝ := (rate + 1) / 2
    let theta : ℝ := (externalPR103Theta + upper) / 2
    have htheta0 : externalPR103Theta < upper := by
      dsimp [upper, exactPR103EnergyBoundary] at hrate ⊢
      linarith
    have htheta : externalPR103Theta < theta := by
      dsimp [theta]
      linarith
    have hhalf : (1 / 2 : ℝ) < theta :=
      half_lt_externalPR103Theta.trans htheta
    have hone : theta < 1 := by
      dsimp [theta, upper]
      linarith
    obtain ⟨C, hM⟩ :=
      hcontour externalPR103Theta theta
        htheta hhalf hone hPR103
    have henergy : FixedRateUpper pickupEnergy
        (2 * theta - 1) :=
      pickupEnergy_fixedRate_of_mertens_envelope
        hcalc hhalf hM
    have hpositive : 0 ≤ 2 * theta - 1 := by linarith
    have hlt : 2 * theta - 1 ≤ rate := by
      dsimp [theta, upper]
      linarith
    exact
      (endpointSum_fixedRate_of_pickupEnergy
        hpositive henergy).mono_rate hlt
  · have hge : cleanPR103EnergyRate ≤ rate := by
      have hc : cleanPR103EnergyRate < 1 :=
        cleanPR103EnergyRate_lt_one
      linarith
    exact (pr103_endpointSum_clean_rate
      hcalc hPR103 hcontour).mono_rate hge

/-- A single fixed adequately covering dyadic grid for EVERY
requested rate above the exact PR103 boundary. Its j-constant
is not permitted to vary with the dyadic block. -/
theorem PR103_fixed_grid_above_exact
    (hPR103 : ExternalPR103ZetaNonvanishing)
    (hcontour : ZeroFreeToMertensPowerBridge)
    (hcalc : PickupVelocityPowerEnergyTransfer)
    {rate : ℝ} (hrate : exactPR103EnergyBoundary < rate) :
    ∃ A : ℝ, 0 ≤ A ∧
      ∀ j : ℕ, endpointSum (dyadicTime j) ≤
        A * Real.exp (rate * dyadicTime j) := by
  obtain ⟨A, hA, hbound⟩ :=
    PR103_endpoint_all_rates_above_exact
      hPR103 hcontour hcalc hrate
  refine ⟨A, hA, ?_⟩
  intro j
  have hlog : (0 : ℝ) ≤ Real.log 2 :=
    Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 2)
  have hj : 0 ≤ dyadicTime j := by
    unfold dyadicTime
    exact mul_nonneg (Nat.cast_nonneg j) hlog
  exact hbound (dyadicTime j) hj

/-- Exact elementary comparison between the two explicit
full-core payment constants, checked at the rational source
rates. The underlying source/exp integration remains separate. -/
theorem explicit_OAI_payment_checks :
    (4 : ℝ) / verifiedOAIPhysicalRate ^ 3 < 10 ∧
    8 / verifiedOAIPhysicalRate ^ 2 +
      16 / (verifiedOAIPhysicalRate - 1/2) +
      32 / (verifiedOAIPhysicalRate - 1/2) ^ 2 +
      64 / (verifiedOAIPhysicalRate - fullCoreProfile) +
      8 / (verifiedOAIPhysicalRate - fullCoreProfile) ^ 2 < 4000 := by
  norm_num [verifiedOAIPhysicalRate, fullCoreProfile]

theorem explicit_PR103_payment_checks :
    (4 : ℝ) / candidatePR103PhysicalRate ^ 3 < 10 ∧
    8 / candidatePR103PhysicalRate ^ 2 +
      16 / (candidatePR103PhysicalRate - 1/2) +
      32 / (candidatePR103PhysicalRate - 1/2) ^ 2 +
      64 / (candidatePR103PhysicalRate - fullCoreProfile) +
      8 / (candidatePR103PhysicalRate - fullCoreProfile) ^ 2 < 6000 := by
  norm_num [candidatePR103PhysicalRate, fullCoreProfile]

/-- The true source two-sided core comparison is written in the
preceding full-profile proof. This is a named UNPROVED Lean
proposition, not a theorem manufactured from positivity. -/
def CompleteProfileSourceComparison : Prop :=
  FullOriginalProfileTwoSidedBudgetTarget

/-- The elementary real exponential absorption is a separate
visible Lean calculus target, not an analytic Mertens premise.
For a>0, t>=0:
 t*exp(-a*t)<=1/a and t^2*exp(-a*t)<=2/a^2. -/
def PolynomialExponentialAbsorption : Prop :=
  ∀ a t : ℝ, 0 < a → 0 ≤ t →
    t ≤ Real.exp (a*t) / a ∧
    t ^ 2 ≤ 2 * Real.exp (a*t) / a ^ 2

/-- UNPROVED Lean target. Ordinary source mathematics gives
the complete signed R_{7/10} at STRICT rate 0.76 from the
independently checked published OpenAI 7/8 theorem, keeping
both original sign populations and all actual pair masks. -/
def VerifiedOAICompleteCoreStrictSavingTarget : Prop :=
  PublishedOAISevenEighths →
  ZeroFreeToMertensPowerBridge →
  PickupVelocityPowerEnergyTransfer →
  CompleteProfileSourceComparison →
  PolynomialExponentialAbsorption →
  ∃ C : ℝ, MertensExponentialEnvelopeAt verifiedOAITheta C ∧
    ∀ T : ℝ, 0 ≤ T →
      |profileCore fullCoreProfile T| ≤
        (10*C^2 + 4000) *
          Real.exp (verifiedOAIPhysicalRate*T)

/-- UNPROVED Lean target. The SAME complete original core
at rate 0.7468 depends on the separately unaccepted merged
PR103 arithmetic theorem, not on the OAI 7/8 input alone. -/
def PR103CompleteCoreStrictSavingTarget : Prop :=
  ExternalPR103ZetaNonvanishing →
  ZeroFreeToMertensPowerBridge →
  PickupVelocityPowerEnergyTransfer →
  CompleteProfileSourceComparison →
  PolynomialExponentialAbsorption →
  ∃ C : ℝ, MertensExponentialEnvelopeAt candidatePR103Theta C ∧
    ∀ T : ℝ, 0 ≤ T →
      |profileCore fullCoreProfile T| ≤
        (10*C^2 + 6000) *
          Real.exp (candidatePR103PhysicalRate*T)

/-- The full ORIGINAL positive and negative Möbius pair masses
both grow at least linearly on the SAME source dyadic grid.
Combining their earlier source-proved lower and the strict
rate bounds above yields exponentially decaying RELATIVE
imbalance of the complete two-sided signed core. -/
def ExponentialRelativeBalanceTarget (rate : ℝ) : Prop :=
  ∃ A : ℝ, 0 ≤ A ∧
    ∃ j₀ : ℕ, ∀ j : ℕ, j₀ ≤ j →
      |fullPositiveMass fullCoreProfile (dyadicTime j) -
        fullNegativeMass fullCoreProfile (dyadicTime j)| ≤
        A * Real.exp ((rate - 1) * dyadicTime j) *
          (fullPositiveMass fullCoreProfile (dyadicTime j) +
            fullNegativeMass fullCoreProfile (dyadicTime j))

/-- Every-positive-rate original endpoint/RH supplier remains OPEN. -/
def RHStrengthEndpointAllRatesStillOpen : Prop :=
  ∀ delta : ℝ, 0 < delta →
    FixedRateUpper endpointSum delta

end GRWTSK.NumberTheory.Moebius.FixedPowerFullProfileBalance
