/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Source proof assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / ELABORATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianRelativePolarityPNT
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalSingleRateZeroFreeReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHalfRootZeroFreeBridge
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open MeasureTheory Set

/-!
# Exponential relative Gaussian polarity precision is the exact RH-facing
# signed cancellation problem, NOT a new proof of it

At the original J log2 grid, the true signed physical energy
H(T)=sourceHeatEnergy(exp(-T/2),T), unsigned positive energy U(T)
and genuine positive/negative physical overlap O(T) obey U-4O=H.

The separate squarefree witness proves U>=exp(T)/65536 for J>=9,
T>=32. The source's direct unsigned sum gives U<=16T exp(T).
Hence the following are EXACTLY EQUIVALENT on that fixed large-scale
grid, without an assumed RH theorem:
 (i) for ALL r>0, H<=C_r exp(rT);
 (ii) for ALL r>0, H<=D_r exp(-(1-r)T)*U,
i.e. the true cancellation 4O/U reaches ONE to relative
exponential accuracy exp(-(1-r)T).
This equivalence makes the missing signed correlation *precise*.

The old source physical heat stability with the independent polynomial
radius<=16T^5 transfers (i) to all-positive-rate ORIGINAL
pickupEnergy on the SAME large-scale grid. Bounded finite initial
dyadic scales can be paid separately by purely elementary finite
arithmetic; that step is an EXPLICIT unported Lean Prop rather than
an implicit RH premise. The original Laplace identity then excludes
ζ zeros on Re(s)>1/2. This is a CONDITIONAL RH-SUFFICIENT
statement whose arithmetic input (ii) has NOT been proved.

The new source proof bodies are not compiled and remain candidates.
-/

namespace GRWTSK.NumberTheory.Moebius.GaussianRelativeRHReturn

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.GaussianRelativePolarityPNT
open GRWTSK.NumberTheory.Moebius.GaussianUnsignedDualEnvelope
open GRWTSK.NumberTheory.Moebius.GaussianSignedPolarityDebt
open GRWTSK.NumberTheory.Moebius.GaussianSquarefreeRadiusSharpness
open GRWTSK.NumberTheory.Moebius.GaussianHalfRootMassImprovement
open GRWTSK.NumberTheory.Moebius.GaussianSaturatedRadiusUpper
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.OriginalSingleRateZeroFreeReturn
open GRWTSK.NumberTheory.Moebius.OriginalLaplaceZeroBarrier
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103

/-- Original fixed large-scale grid, no new cutoff/measurement. -/
def HalfRootOriginalLargeScale (J : ℕ) : Prop :=
  9 ≤ J ∧ 32 ≤ dyadicTime J

/-- ORIGINAL true signed HEATED physical-square all-rate upper.
This is RH-strength and remains UNPROVED. -/
def HalfRootSignedHeatAllPositiveRates : Prop :=
  ∀ r : ℝ, 0 < r →
    ∃ C : ℝ, 0 ≤ C ∧ ∀ J : ℕ,
      HalfRootOriginalLargeScale J →
        halfRootSignedEnergy (dyadicTime J) ≤
          C*Real.exp (r*dyadicTime J)

/-- The exact RH-facing relative compensation precision:
the signed deficit U-4O=H must be exponentially smaller
than the FULL nonnegative original heated absolute energy U.
The coefficient 1-r is NOT a new physical time or energy scale. -/
def HalfRootRelativePolarityAllPositiveRates : Prop :=
  ∀ r : ℝ, 0 < r →
    ∃ C : ℝ, 0 ≤ C ∧ ∀ J : ℕ,
      HalfRootOriginalLargeScale J →
        halfRootSignedEnergy (dyadicTime J) ≤
          C*Real.exp (-(1-r)*dyadicTime J)*
            halfRootUnsignedEnergy (dyadicTime J)

/-- From source HEATED SIGNED all rates to exponentially
accurate relative TRUE positive-negative interference,
using the independently PNT-free actual squarefree U lower. -/
theorem relative_precision_of_signed_heat_all_rates
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget)
    (hSigned : HalfRootSignedHeatAllPositiveRates) :
    HalfRootRelativePolarityAllPositiveRates := by
  intro r hr
  obtain ⟨C,hC,hB⟩ := hSigned r hr
  refine ⟨65536*C, by positivity, ?_⟩
  intro J ⟨hJ,hT32⟩
  let T : ℝ := dyadicTime J
  have hU := halfRoot_schedule_unsigned_heat_exponential_lower
    hPop hResponse hIntegral J hJ hT32
  have hPos : 0 ≤ Real.exp (-(1-r)*T) := (Real.exp_pos _).le
  have hexp :
      Real.exp (-(1-r)*T)*Real.exp T = Real.exp (r*T) := by
    rw [←Real.exp_add]
    congr 1
    ring
  have hBase := hB J ⟨hJ,hT32⟩
  have hCharge :
      C*Real.exp (r*T) ≤
        65536*C*Real.exp (-(1-r)*T)*
          halfRootUnsignedEnergy T := by
    have hu : Real.exp T ≤
        65536*halfRootUnsignedEnergy T := by
      dsimp [halfRootUnsignedEnergy,halfRootHeatTime] at hU
      linarith
    have hp : 0 ≤ C*Real.exp (-(1-r)*T) := by positivity
    have hMul := mul_le_mul_of_nonneg_left hu hp
    nlinarith [hMul,hexp]
  exact (by simpa only [T] using hBase).trans hCharge

/-- Conversely source-relative precision at EVERY positive
rate yields signed heat at EVERY positive rate.
Choose relative rate r/2, use the genuine absolute upper
U<=16T exp T and T<=2/r exp((r/2)T).
A single fixed relative r would NOT be enough for RH. -/
theorem signed_heat_all_rates_of_relative_precision
    (hRelative : HalfRootRelativePolarityAllPositiveRates) :
    HalfRootSignedHeatAllPositiveRates := by
  intro r hr
  let q : ℝ := r/2
  have hq : 0 < q := by dsimp [q]; linarith
  obtain ⟨C,hC,hRel⟩ := hRelative q hq
  let D : ℝ := 32*C/r
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨D,hD,?_⟩
  intro J ⟨hJ,hT32⟩
  let T : ℝ := dyadicTime J
  have hT : 0 ≤ T := by dsimp [T]; linarith
  have hRelJ := hRel J ⟨hJ,hT32⟩
  have hU := unsignedHeatEnergy_le_sixteen_time_exp
    (halfRootHeatTime T) T (rootRateHeatTime_nonneg _ _) hT
  have hScalar : q*T ≤ Real.exp (q*T) := by
    have h := Real.add_one_le_exp (q*T)
    linarith
  have hTbound : T ≤ Real.exp (q*T)/q := by
    apply (le_div_iff₀ hq).mpr
    linarith
  have hE1 :
      Real.exp (-(1-q)*T)*Real.exp T = Real.exp (q*T) := by
    rw [←Real.exp_add]
    congr 1
    ring
  have hE2 :
      Real.exp (q*T)*Real.exp (q*T) = Real.exp (r*T) := by
    rw [←Real.exp_add]
    dsimp [q]
    congr 1
    ring
  have hFactor : 0 ≤ C*Real.exp (-(1-q)*T) := by positivity
  have hCharge :
      halfRootSignedEnergy T ≤
        16*C*T*Real.exp (q*T) := by
    have hb := mul_le_mul_of_nonneg_left hU hFactor
    dsimp [q] at hRelJ hb ⊢
    nlinarith [hb,hRelJ,hE1]
  have hFinal :
      16*C*T*Real.exp (q*T) ≤
        D*Real.exp (r*T) := by
    have he := mul_le_mul_of_nonneg_left hTbound
      (by positivity : 0 ≤ 16*C*Real.exp (q*T))
    dsimp [D,q] at he ⊢
    nlinarith [he,hE2]
  exact hCharge.trans hFinal

/-- PNT-free exact equivalence of the NEW relative
exponential sign-cancellation criterion and the PREVIOUS
open signed heated-energy all-rate problem.
Neither direction supplies arithmetic cancellation itself. -/
theorem relative_polarity_all_rates_iff_signed_heat_all_rates
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget) :
    HalfRootRelativePolarityAllPositiveRates ↔
      HalfRootSignedHeatAllPositiveRates := by
  constructor
  · exact signed_heat_all_rates_of_relative_precision
  · exact relative_precision_of_signed_heat_all_rates
      hPop hResponse hIntegral

/-- The original TRUE cumulative nonnegative pickupEnergy
at every positive rate on the SAME large-scale grid.
Small finite J are deliberately NOT silently discarded. -/
def OriginalPickupEnergyEveryRateLargeScale : Prop :=
  ∀ r : ℝ, 0 < r →
    ∃ C : ℝ, 0 ≤ C ∧ ∀ J : ℕ,
      HalfRootOriginalLargeScale J →
        pickupEnergy (dyadicTime J) ≤
          C*Real.exp (r*dyadicTime J)

/-- The independently paid original near-identity positive
radius <=16T^5 (and its reverse comparison) gives equivalence
of ALL-RATE true physical energy and ALL-RATE true signed heat
energy on the fixed large-scale grid. A source EXACT return. -/
theorem halfRoot_signed_heat_all_rates_iff_original_energy_large
    :
    HalfRootSignedHeatAllPositiveRates ↔
      OriginalPickupEnergyEveryRateLargeScale := by
  constructor
  · intro hSigned r hr
    obtain ⟨C,hC,hB⟩ := hSigned r hr
    let D : ℝ := 2*C+3840/r^5
    have hD : 0 ≤ D := by dsimp [D]; positivity
    refine ⟨D,hD,?_⟩
    intro J ⟨hJ,hT32⟩
    let T : ℝ := dyadicTime J
    have hT : 0 ≤ T := by dsimp [T]; linarith
    have hHeat := hB J ⟨hJ,hT32⟩
    have hRad := halfRootHeat_radiusEnergy_le_quintic
      originalInverseRootInventory_closed_from_existing_source hT
    have hSource := pickupEnergy_le_heat_add_radius
      (rootRateHeatTime_nonneg (1/2) T) hT
    have hPower : T^5 ≤ (120/r^5)*Real.exp (r*T) := by
      simpa using (pow_le_factorial_mul_exp hr hT 5)
    dsimp [D] at *
    linarith [hHeat,hRad,hSource,hPower]
  · intro hEnergy r hr
    obtain ⟨C,hC,hB⟩ := hEnergy r hr
    let D : ℝ := 2*C+3840/r^5
    have hD : 0 ≤ D := by dsimp [D]; positivity
    refine ⟨D,hD,?_⟩
    intro J ⟨hJ,hT32⟩
    let T : ℝ := dyadicTime J
    have hT : 0 ≤ T := by dsimp [T]; linarith
    have hE := hB J ⟨hJ,hT32⟩
    have hRad := halfRootHeat_radiusEnergy_le_quintic
      originalInverseRootInventory_closed_from_existing_source hT
    have hSource := heatEnergy_le_pickup_add_radius
      (rootRateHeatTime_nonneg (1/2) T) hT
    have hPower : T^5 ≤ (120/r^5)*Real.exp (r*T) := by
      simpa using (pow_le_factorial_mul_exp hr hT 5)
    dsimp [D] at *
    linarith [hE,hRad,hSource,hPower]

/-- Purely finite-PREFIX REAL algebra to extend a uniform
large-scale original dyadic energy rate to all J>=1.
Only finitely many indices satisfy T_J<32; enlarge the
constant to pay their actual finite, nonnegative E(T_J).
This is an UNPORTED pinned-Lean elementary proposition,
not a hidden all-rate arithmetic premise. -/
def FiniteDyadicOriginalEnergyPrefixAbsorptionTarget : Prop :=
  ∀ r : ℝ, 0 < r →
    ∀ C : ℝ, 0 ≤ C →
      (∀ J : ℕ, HalfRootOriginalLargeScale J →
        pickupEnergy (dyadicTime J) ≤ C*Real.exp (r*dyadicTime J)) →
      ∃ D : ℝ, 0 ≤ D ∧ ∀ J : ℕ, 1 ≤ J →
        pickupEnergy (dyadicTime J) ≤ D*Real.exp (r*dyadicTime J)

/-- A conditional RH-SUFFICIENT original arithmetic criterion:
all-positive-rate RELATIVE signed polarity cancellation at
the true critical Gaussian heat implies ζ zero-free for
Re(s)>1/2, after the explicitly unported standard original
Laplace and finite-grid calculus suppliers. No RH assumption
is imported; the strong relative arithmetic hypothesis
remains OPEN. -/
theorem relative_polarity_all_rates_implies_zeta_zero_free
    (hPop : ElementarySquarefreeBandPopulationTarget)
    (hResponse : ElementarySquarefreeTerminalResponseTarget)
    (hIntegral : ElementaryTerminalRadiusIntegralTarget)
    (hFinite : FiniteDyadicOriginalEnergyPrefixAbsorptionTarget)
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (hRelative : HalfRootRelativePolarityAllPositiveRates) :
    ZetaZeroFreeRightOf (1/2 : ℝ) := by
  have hSigned :=
    (relative_polarity_all_rates_iff_signed_heat_all_rates
      hPop hResponse hIntegral).mp hRelative
  have hPhysical :=
    (halfRoot_signed_heat_all_rates_iff_original_energy_large).mp hSigned
  intro s hs hsOne
  let r : ℝ := s.re-1/2
  have hr : 0 < r := by dsimp [r]; linarith
  obtain ⟨C,hC,hLarge⟩ := hPhysical r hr
  obtain ⟨D,hD,hGrid⟩ := hFinite r hr C hC hLarge
  have hz := zero_free_of_original_grid_energy_rate
    hRight hHolo hIdentity hCeiling r hr D hD hGrid
  have hPoint : (1+r)/2 < s.re := by dsimp [r]; linarith
  exact hz s hPoint hsOne

end GRWTSK.NumberTheory.Moebius.GaussianRelativeRHReturn
