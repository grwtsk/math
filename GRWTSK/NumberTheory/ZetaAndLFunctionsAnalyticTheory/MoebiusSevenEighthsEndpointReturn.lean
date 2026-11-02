/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongFixedPowerPR103
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDyadicFreshBirthStrip
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Original complete signed Möbius endpoint: published 7/8 to fixed 4/5

New 2026 mathematical source:
  openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a
  lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean
  Git blob 46c67f4000906b1391a471d6e6396ac0da3c16a5,
  OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re:
    (7/8 : Real) < s.re -> riemannZeta s != 0.

An independently published source-bound verification report by
tomoto0/quasi-riemann-hypothesis-7-8-verification records
a completed Lean build, axiom report [propext, Classical.choice,
Quot.sound], and a successful final-module leanchecker replay at
that exact published OpenAI revision. This local GRWTSK source has
NOT compiled, imported or replayed the external entire closure.

The *standard* zero-free-to-Mertens Perron/contour bridge
  zeta nonzero Re(s)>theta0 and theta0<theta<1
    -> |M(x)|<=C_theta*x^theta
has a SOURCE-EXPLICIT UNPROVED local Lean Prop interface already in
MoebiusStrongFixedPowerPR103.ZeroFreeToMertensPowerBridge.
The elementary real-analysis pickup integration similarly remains
a SOURCE-EXPLICIT UNPROVED local Lean Prop interface
PickupVelocityPowerEnergyTransfer.

Choosing theta=9/10 STRICTLY larger than the published 7/8 and
rho=theta-1/2=2/5 gives an honest fixed rate
  H(T)<=125*C^2/16*exp(4T/5)
  endpointSum(T)<=125*C^2/16*exp(4T/5)+1/4.
At each FIXED dyadic T_j=j*log 2 the rate is exactly 4/5,
with ONE constant independent of all dyadic block indices.

This is an ordinary mathematical consequence of the published
external theorem and established classical analytic contour
transfer. It is not a novel zero-free theorem, a self-contained
GRWTSK kernel proof, or an every-positive-rate RH proof.
The stronger external PR103 0.747 candidate has DIFFERENT, separately
unreplayed external theorem and is not claimed as an accepted
input here. All actual source signs, cutoff, both ordered
orientations, diagonal and birth-time quadrature remain unchanged.
-/

namespace GRWTSK.NumberTheory.Moebius.SevenEighthsEndpointReturn

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.DyadicFreshBirthStrip

/-- Exact external main theorem, at its actual Riemann zeta
type. It is NOT postulated as an axiom or proved in this
uncompiled module; it must be imported with a checked adapter. -/
def PublishedOAISevenEighths : Prop :=
  ∀ s : ℂ, (7 / 8 : ℝ) < s.re → riemannZeta s ≠ 0

/-- Positive margin 9/10>7/8 gives an actual Mertens exponent
without asserting or asking for the RH-strength 1/2 bound. -/
theorem working_theta_margin :
    (7 / 8 : ℝ) < 9 / 10 ∧
      (1 / 2 : ℝ) < 9 / 10 ∧
        (9 / 10 : ℝ) < 1 := by
  norm_num

/-- The original source's previously defined canonical zero-free
type, matched EXACTLY to the external zeta proposition. -/
theorem published_zeta_to_original_type
    (hOAI : PublishedOAISevenEighths) :
    ZetaZeroFreeRightOf (7 / 8 : ℝ) := by
  intro s hs _hpole
  exact hOAI s hs

/-- Real complete original endpoint theorem with all external
dependencies explicit: the OAI published zeta result, standard
zero-free-to-TRUE-Mertens contour transfer, and elementary original
causal integral. NONE is a manufactured research axiom. -/
theorem endpoint_four_fifths_of_published_zeta
    (hOAI : PublishedOAISevenEighths)
    (hcontour : ZeroFreeToMertensPowerBridge)
    (hcalc : PickupVelocityPowerEnergyTransfer) :
    FixedRateUpper endpointSum (4 / 5 : ℝ) := by
  obtain ⟨C, hM⟩ :=
    hcontour (7 / 8) (9 / 10)
      working_theta_margin.1
      working_theta_margin.2.1
      working_theta_margin.2.2
      (published_zeta_to_original_type hOAI)
  have henergy :
      FixedRateUpper pickupEnergy (2 * (9 / 10 : ℝ) - 1) :=
    pickupEnergy_fixedRate_of_mertens_envelope hcalc
      working_theta_margin.2.1 hM
  have hrate : (2 * (9 / 10 : ℝ) - 1) = 4 / 5 := by
    norm_num
  rw [hrate] at henergy
  exact endpointSum_fixedRate_of_pickupEnergy
    (by norm_num : (0 : ℝ) ≤ 4 / 5) henergy

/-- The same exact original endpoint bound for ALL integer indices
on the ONE predetermined additive-covering grid. The constant
does not depend on j or on any chosen family of dyadic blocks. -/
theorem endpoint_dyadic_four_fifths_of_published_zeta
    (hOAI : PublishedOAISevenEighths)
    (hcontour : ZeroFreeToMertensPowerBridge)
    (hcalc : PickupVelocityPowerEnergyTransfer) :
    ∃ A : ℝ, 0 ≤ A ∧
      ∀ j : ℕ,
        endpointSum (dyadicTime j) ≤
          A * Real.exp ((4 / 5 : ℝ) * dyadicTime j) := by
  obtain ⟨A, hA, hbound⟩ :=
    endpoint_four_fifths_of_published_zeta hOAI hcontour hcalc
  refine ⟨A, hA, ?_⟩
  intro j
  have hlog : (0 : ℝ) ≤ Real.log 2 :=
    Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 2)
  have hj : 0 ≤ dyadicTime j := by
    unfold dyadicTime
    exact mul_nonneg (Nat.cast_nonneg j) hlog
  exact hbound (dyadicTime j) hj

/-- Exact numerical energy/endpoint constant C^2 * 125/16 is
the ordinary paper calculation with M(x)<=C*x^(9/10).
The three necessary source-integral/contour inputs stay visible. -/
def OriginalFourFifthsExplicitConstantTarget : Prop :=
  PublishedOAISevenEighths →
  ZeroFreeToMertensPowerBridge →
  PickupVelocityPowerEnergyTransfer →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ T : ℝ, 0 ≤ T →
        endpointSum T ≤
          (125 * C ^ 2 / 16) *
            Real.exp ((4 / 5 : ℝ) * T) + 1 / 4

/-- The near-critical ORIGINAL newborn source strips contribute
at most 1/8 over ALL dyadic time cells for lambda=1/2.
This return must use the exact original full-source dyadic
partition and fresh-tail theorems before kernel acceptance. -/
def OriginalFixedGridResidualFourFifthsTarget : Prop :=
  PublishedOAISevenEighths →
  ZeroFreeToMertensPowerBridge →
  PickupVelocityPowerEnergyTransfer →
  OriginalDyadicCrossPartitionTarget →
  UniformFreshTailTarget →
    ∃ A : ℝ, 0 ≤ A ∧
      ∀ j : ℕ,
        cumulativeResidual (1 / 2) j ≤
          A * Real.exp ((4 / 5 : ℝ) * dyadicTime j)

/-- This is a strict FIXED rate, not the stronger all-positive-rate
condition SubexponentialOn endpointSum fixedDyadicGrid that the
existing canonical RH consumer requires. -/
def EveryPositiveRateStillOpen : Prop :=
  EveryRateOnFixedDyadicGrid
    (fun j => endpointSum (dyadicTime j))

end GRWTSK.NumberTheory.Moebius.SevenEighthsEndpointReturn
