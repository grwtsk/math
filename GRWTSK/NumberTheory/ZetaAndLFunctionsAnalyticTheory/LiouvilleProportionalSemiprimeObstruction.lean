/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleExternalProofConsequences
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.LiouvilleRoughCausalBuchstab
open GRWTSK.NumberTheory.LiouvilleExternalProofExploitation
open GRWTSK.NumberTheory.LiouvilleExternalProofConsequences

/-!
# Proportional semiprime-cutoff obstruction for Liouville causal energy

This module records the source interfaces for a uniform extension of the
previous cutoff `floor (exp (2 T / 5))` obstruction.

For every fixed exponent `θ` with `1 / 3 < θ < 1 / 2`, the cutoff
`floor (exp (θ T))` has a terminal range on which every surviving rough integer
has at most two prime factors.  The actual Liouville prefix is therefore the
unit minus the rough-prime count plus the rough-semiprime count.  Uniform prime
number theorem partial summation gives a strictly negative main coefficient.
The original causal Abel transform then yields rough energy
`≫_θ exp T / T^2`.

The analytical prime-number-theorem step remains a named proposition.  The
source proves the parameter geometry and the exact implication from such a
rough-energy lower bound to a complete negative Buchstab-covariance lower
bound, retaining the unit response and every inherited source premise.

No upper cancellation estimate and no Riemann Hypothesis claim is asserted.
-/

namespace GRWTSK.NumberTheory.LiouvilleProportionalSemiprimeObstruction

/-- Exponents for which the terminal rough support contains only the unit,
primes and semiprimes, while the semiprime interval remains nonempty. -/
def SemiprimeProportionalExponent (θ : ℝ) : Prop :=
  (1 / 3 : ℝ) < θ ∧ θ < 1 / 2

/-- A floor-stable lower relative exponent, strictly between `1/3` and `θ`. -/
def relativeExponentFloor (θ : ℝ) : ℝ :=
  (θ + 1 / 3) / 2

/-- Beginning of the terminal `x`-range.  It satisfies `2 θ < γ < 1`. -/
def terminalStartExponent (θ : ℝ) : ℝ :=
  θ + 1 / 2

/-- The signed prime--semiprime main-term gap used in the review. -/
def semiprimeSignedGap (θ : ℝ) : ℝ :=
  1 - Real.log ((1 - relativeExponentFloor θ) / relativeExponentFloor θ)

/-- Horizon-dependent initial-prime cutoff at exponent `θ`. -/
def proportionalCutoffAt (θ T : ℝ) : ℕ :=
  ⌊Real.exp (θ * T)⌋₊

/-- Exact initial-prime band associated with `proportionalCutoffAt`. -/
def proportionalBandAt (θ T : ℝ) : PrimeBand :=
  initialPrimeBand (proportionalCutoffAt θ T)

/-- Actual rough Liouville energy at the same horizon selecting the cutoff. -/
def proportionalRoughEnergyAt (θ T : ℝ) : ℝ :=
  siftedEnergy (proportionalBandAt θ T) T

/-- Negative part of the complete signed Buchstab covariance at the
horizon-selected cutoff. -/
def proportionalNegativeCovarianceAt (θ T : ℝ) : ℝ :=
  max (-buchstabCovariance (proportionalCutoffAt θ T) T) 0

theorem relativeExponentFloor_gt_third
    {θ : ℝ} (hθ : SemiprimeProportionalExponent θ) :
    (1 / 3 : ℝ) < relativeExponentFloor θ := by
  unfold SemiprimeProportionalExponent relativeExponentFloor at hθ ⊢
  linarith

theorem relativeExponentFloor_lt_theta
    {θ : ℝ} (hθ : SemiprimeProportionalExponent θ) :
    relativeExponentFloor θ < θ := by
  unfold SemiprimeProportionalExponent relativeExponentFloor at hθ ⊢
  linarith

theorem terminalStartExponent_gt_twice_theta
    {θ : ℝ} (hθ : SemiprimeProportionalExponent θ) :
    2 * θ < terminalStartExponent θ := by
  unfold SemiprimeProportionalExponent terminalStartExponent at hθ ⊢
  linarith

theorem terminalStartExponent_lt_one
    {θ : ℝ} (hθ : SemiprimeProportionalExponent θ) :
    terminalStartExponent θ < 1 := by
  unfold SemiprimeProportionalExponent terminalStartExponent at hθ ⊢
  linarith

theorem theta_div_terminalStartExponent_lt_half
    {θ : ℝ} (hθ : SemiprimeProportionalExponent θ) :
    θ / terminalStartExponent θ < 1 / 2 := by
  have hden : 0 < terminalStartExponent θ := by
    unfold SemiprimeProportionalExponent terminalStartExponent at hθ ⊢
    linarith
  rw [div_lt_iff₀ hden]
  unfold SemiprimeProportionalExponent terminalStartExponent at hθ ⊢
  linarith

/-- Positivity of the explicit signed prime--semiprime gap.  The paper proof
uses `relativeExponentFloor θ > 1/3`, hence
`(1-β)/β < 2`, and `log 2 < 1`.

This remains a named proposition pending the exact logarithm API proof. -/
def SemiprimeSignedGapPositive : Prop :=
  ∀ θ : ℝ, SemiprimeProportionalExponent θ →
    0 < semiprimeSignedGap θ

/-- Uniform terminal prefix estimate obtained from the exact unit/prime/
semiprime decomposition and prime-number-theorem partial summation.

For `γ = θ + 1/2` and all sufficiently large `T`, this controls every
`x ∈ [exp (γ T), exp T]`. -/
def ProportionalSemiprimePrefixMainTerm : Prop :=
  ∀ θ : ℝ, SemiprimeProportionalExponent θ →
    ∃ c T₀ : ℝ, 0 < c ∧ 0 ≤ T₀ ∧
      ∀ T : ℝ, T₀ ≤ T →
        ∀ x : ℝ,
          Real.exp (terminalStartExponent θ * T) ≤ x →
          x ≤ Real.exp T →
          roughPrefixAbove (proportionalCutoffAt θ T) ⌊x⌋₊ ≤
            -(c * x / Real.log x)

/-- Programme-specific unconditional consequence of the prefix main term:
every proportional semiprime cutoff has positive exponential rough causal
energy, up to the polynomial factor `T^2`.

The companion review proves this analytically from
`ProportionalSemiprimePrefixMainTerm` and the original causal Abel identity. -/
def ProportionalSemiprimeRoughEnergyLowerBound : Prop :=
  ∀ θ : ℝ, SemiprimeProportionalExponent θ →
    ∃ c T₀ : ℝ, 0 < c ∧ 0 ≤ T₀ ∧
      ∀ T : ℝ, T₀ ≤ T →
        c * Real.exp T ≤ T ^ 2 * proportionalRoughEnergyAt θ T

/-- Corresponding lower bound for the negative part of the complete signed
Buchstab covariance. -/
def ProportionalSemiprimeNegativeCovarianceLowerBound : Prop :=
  ∀ θ : ℝ, SemiprimeProportionalExponent θ →
    ∃ c T₀ : ℝ, 0 < c ∧ 0 ≤ T₀ ∧
      ∀ T : ℝ, T₀ ≤ T →
        c * Real.exp T ≤
          T ^ 2 * proportionalNegativeCovarianceAt θ T

/-- Exact elementary upper bound on the unit-response energy used by the
covariance sandwich. -/
def UnitResponseLinearBound : Prop :=
  ∀ T : ℝ, 0 ≤ T → unitResponseEnergy T ≤ 4 * T

/-- Standard exponential-over-polynomial input needed only to show that the
unit response is eventually negligible compared with an
`exp T / T^2` rough-energy lower bound. -/
def ExponentialDominatesCubic : Prop :=
  ∀ c : ℝ, 0 < c →
    ∃ T₀ : ℝ, 1 ≤ T₀ ∧
      ∀ T : ℝ, T₀ ≤ T →
        8 * T ^ 3 ≤ c * Real.exp T

/-- Eventual comparison needed by the signed covariance sandwich. -/
def UnitEventuallyHalfRoughAt (θ : ℝ) : Prop :=
  ∃ T₀ : ℝ, 0 ≤ T₀ ∧
    ∀ T : ℝ, T₀ ≤ T →
      unitResponseEnergy T ≤ proportionalRoughEnergyAt θ T / 2

/-- An `exp T / T^2` rough-energy lower bound forces the polynomial unit
response to be eventually at most half the rough energy. -/
theorem semiprimeEnergyLower_implies_unitEventuallyHalf
    (hLower : ProportionalSemiprimeRoughEnergyLowerBound)
    (hUnit : UnitResponseLinearBound)
    (hExp : ExponentialDominatesCubic)
    (θ : ℝ) (hθ : SemiprimeProportionalExponent θ) :
    UnitEventuallyHalfRoughAt θ := by
  obtain ⟨c, T₀, hc, hT₀, hEnergy⟩ := hLower θ hθ
  obtain ⟨T₁, hT₁, hCubic⟩ := hExp c hc
  refine ⟨max T₀ T₁, by positivity, ?_⟩
  intro T hT
  have hT0 : T₀ ≤ T := le_trans (le_max_left _ _) hT
  have hT1 : T₁ ≤ T := le_trans (le_max_right _ _) hT
  have hTone : 1 ≤ T := hT₁.trans hT1
  have hTpos : 0 < T := lt_of_lt_of_le zero_lt_one hTone
  have hTnonneg : 0 ≤ T := hTpos.le
  have hEnergyT := hEnergy T hT0
  have hCubicT := hCubic T hT1
  have hChain :
      8 * T ^ 3 ≤ T ^ 2 * proportionalRoughEnergyAt θ T :=
    hCubicT.trans hEnergyT
  have hT2pos : 0 < T ^ 2 := sq_pos_of_pos hTpos
  have hFactor :
      T ^ 2 * (8 * T) ≤
        T ^ 2 * proportionalRoughEnergyAt θ T := by
    nlinarith [hChain]
  have hEight :
      8 * T ≤ proportionalRoughEnergyAt θ T :=
    (mul_le_mul_left hT2pos).mp hFactor
  have hFour :
      4 * T ≤ proportionalRoughEnergyAt θ T / 2 := by
    linarith
  exact (hUnit T hTnonneg).trans hFour

/-- The signed Gram sandwich turns the uniform rough-energy obstruction into a
uniform complete negative-covariance obstruction, with exactly a factor-four
loss in the lower-bound constant. -/
theorem semiprimeEnergyLower_implies_negativeCovarianceLower
    (hTerminal : TerminalCausalBuchstabIdentity)
    (hEnergyIdentity : CausalBuchstabEnergyIdentity)
    (hRoughNonneg : RoughEnergyNonnegative)
    (hUnitNonneg : UnitResponseEnergyNonnegative)
    (hYoung : BuchstabUnitYoungBound)
    (hLower : ProportionalSemiprimeRoughEnergyLowerBound)
    (hUnit : UnitResponseLinearBound)
    (hExp : ExponentialDominatesCubic) :
    ProportionalSemiprimeNegativeCovarianceLowerBound := by
  intro θ hθ
  obtain ⟨c, T₀, hc, hT₀, hEnergy⟩ := hLower θ hθ
  obtain ⟨T₁, hT₁, hHalf⟩ :=
    semiprimeEnergyLower_implies_unitEventuallyHalf
      hLower hUnit hExp θ hθ
  refine ⟨c / 4, max T₀ T₁, by positivity, by positivity, ?_⟩
  intro T hT
  have hT0 : T₀ ≤ T := le_trans (le_max_left _ _) hT
  have hT1 : T₁ ≤ T := le_trans (le_max_right _ _) hT
  have hTnonneg : 0 ≤ T := hT₀.trans hT0
  have hSandwich :=
    buchstab_negativePart_sandwich
      hTerminal hEnergyIdentity hRoughNonneg hUnitNonneg hYoung
      (proportionalCutoffAt θ T) T hTnonneg
  have hHalfT := hHalf T hT1
  have hQuarter :
      proportionalRoughEnergyAt θ T / 4 ≤
        proportionalNegativeCovarianceAt θ T := by
    unfold proportionalRoughEnergyAt proportionalBandAt
      proportionalNegativeCovarianceAt
    linarith [hSandwich.1]
  have hScaled :=
    mul_le_mul_of_nonneg_left hQuarter (sq_nonneg T)
  have hEnergyT := hEnergy T hT0
  nlinarith

/-- A cutoff family agrees pointwise with one fixed proportional exponent. -/
def UsesProportionalExponent (Y : CutoffFamily) (θ : ℝ) : Prop :=
  ∀ T : ℝ, Y T = proportionalCutoffAt θ T

/-- Research routing statement: every external correlation envelope at an
admissible proportional semiprime exponent inherits the exponential covariance
lower bound.  Closing the contradiction with an all-positive-rate upper bound
requires the standard exponential-dominance and inverse-cost lower-bound APIs. -/
def NoSemiprimeProportionalCorrelationEnvelope : Prop :=
  ProportionalSemiprimeNegativeCovarianceLowerBound →
    InitialInverseSieveCostAtLeastOne →
      ¬ ∃ (θ : ℝ) (C : GrowingCorrelationEnvelopeCertificate),
        SemiprimeProportionalExponent θ ∧
          UsesProportionalExponent C.cutoff θ

/-- Corresponding no-go statement for a PFR-style global potential. -/
def NoSemiprimeProportionalGlobalPotential : Prop :=
  ProportionalSemiprimeNegativeCovarianceLowerBound →
    InitialInverseSieveCostAtLeastOne →
      ¬ ∃ (θ : ℝ) (C : BuchstabGlobalPotentialCertificate),
        SemiprimeProportionalExponent θ ∧
          UsesProportionalExponent C.cutoff θ

end GRWTSK.NumberTheory.LiouvilleProportionalSemiprimeObstruction
