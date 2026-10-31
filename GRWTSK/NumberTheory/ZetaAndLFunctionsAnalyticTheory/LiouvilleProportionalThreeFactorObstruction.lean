/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleProportionalSemiprimeObstruction
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.LiouvilleRoughCausalBuchstab
open GRWTSK.NumberTheory.LiouvilleExternalProofExploitation
open GRWTSK.NumberTheory.LiouvilleExternalProofConsequences
open GRWTSK.NumberTheory.LiouvilleProportionalSemiprimeObstruction

/-!
# Proportional three-factor obstruction for Liouville causal energy

For every fixed exponent `θ` with `1 / 4 < θ < 1 / 3`, the cutoff
`floor (exp (θ T))` has a terminal range on which every surviving rough integer
has at most three prime factors.  The actual Liouville prefix is the alternating
unit/prime/semiprime/triple-prime count.

The companion review derives the signed three-factor profile

`-1 + log ((1-α)/α)
    - ∫ v in α..1/3, log ((1-2v)/v) / (v*(1-v))`

and proves that it is uniformly negative for `1/4 ≤ α ≤ 1/3`.
The proof uses the delay derivative of the profile and the elementary endpoint
bound obtained from `log t ≥ 1 - 1/t`:

`∫_[1/4,1/3] log ((1-2v)/v)/(v*(1-v)) dv ≥ log (9/8)`.

Consequently every proportional cutoff in the complete three-factor regime has
actual rough Liouville energy `≫ exp T / T^2`, and the complete signed Buchstab
covariance has an exponentially large negative part.

The prime-number-theorem and interval-integral statements remain named
propositions pending Lean proof.  The source proves the parameter geometry and
the exact rough-energy-to-covariance transfer.  No upper cancellation estimate
and no Riemann Hypothesis claim is asserted.
-/

namespace GRWTSK.NumberTheory.LiouvilleProportionalThreeFactorObstruction

/-- Exponents for which a terminal range contains exactly the unit, prime,
semiprime and three-prime rough strata. -/
def ThreeFactorProportionalExponent (θ : ℝ) : Prop :=
  (1 / 4 : ℝ) < θ ∧ θ < 1 / 3

/-- A floor-stable lower relative exponent, strictly between `1/4` and `θ`. -/
def threeFactorRelativeExponentFloor (θ : ℝ) : ℝ :=
  (θ + 1 / 4) / 2

/-- Beginning of the terminal range.  It satisfies `3 θ < γ < 1`. -/
def threeFactorTerminalStartExponent (θ : ℝ) : ℝ :=
  θ + 2 / 3

/-- The three-prime coefficient in the finite signed Buchstab profile. -/
def threeFactorProfileIntegral (α : ℝ) : ℝ :=
  ∫ v in α..(1 / 3 : ℝ),
    Real.log ((1 - 2 * v) / v) / (v * (1 - v))

/-- Signed unit/prime/semiprime/triple-prime profile, normalized by
`x / log x`. -/
def threeFactorSignedProfile (α : ℝ) : ℝ :=
  -1 + Real.log ((1 - α) / α) - threeFactorProfileIntegral α

/-- Uniform explicit gap used by the endpoint argument. -/
def threeFactorUniformGap : ℝ :=
  1 - Real.log (8 / 3)

theorem threeFactorRelativeExponentFloor_gt_quarter
    {θ : ℝ} (hθ : ThreeFactorProportionalExponent θ) :
    (1 / 4 : ℝ) < threeFactorRelativeExponentFloor θ := by
  unfold ThreeFactorProportionalExponent threeFactorRelativeExponentFloor at hθ ⊢
  linarith

theorem threeFactorRelativeExponentFloor_lt_theta
    {θ : ℝ} (hθ : ThreeFactorProportionalExponent θ) :
    threeFactorRelativeExponentFloor θ < θ := by
  unfold ThreeFactorProportionalExponent threeFactorRelativeExponentFloor at hθ ⊢
  linarith

theorem threeFactorTerminalStartExponent_gt_three_theta
    {θ : ℝ} (hθ : ThreeFactorProportionalExponent θ) :
    3 * θ < threeFactorTerminalStartExponent θ := by
  unfold ThreeFactorProportionalExponent threeFactorTerminalStartExponent at hθ ⊢
  linarith

theorem threeFactorTerminalStartExponent_lt_one
    {θ : ℝ} (hθ : ThreeFactorProportionalExponent θ) :
    threeFactorTerminalStartExponent θ < 1 := by
  unfold ThreeFactorProportionalExponent threeFactorTerminalStartExponent at hθ ⊢
  linarith

theorem theta_div_threeFactorTerminalStartExponent_lt_third
    {θ : ℝ} (hθ : ThreeFactorProportionalExponent θ) :
    θ / threeFactorTerminalStartExponent θ < 1 / 3 := by
  have hden : 0 < threeFactorTerminalStartExponent θ := by
    unfold ThreeFactorProportionalExponent threeFactorTerminalStartExponent at hθ ⊢
    linarith
  rw [div_lt_iff₀ hden]
  unfold ThreeFactorProportionalExponent threeFactorTerminalStartExponent at hθ ⊢
  linarith

theorem four_mul_threeFactorRelativeExponentFloor_gt_one
    {θ : ℝ} (hθ : ThreeFactorProportionalExponent θ) :
    1 < 4 * threeFactorRelativeExponentFloor θ := by
  unfold ThreeFactorProportionalExponent threeFactorRelativeExponentFloor at hθ ⊢
  linarith

/-- Positivity of `1 - log (8/3)`.  Analytically this follows from
`8/3 < exp 1`. -/
def ThreeFactorUniformGapPositive : Prop :=
  0 < threeFactorUniformGap

/-- The elementary endpoint integral bound
`J₃(1/4) ≥ log (9/8)`.

The review proves this from `log t ≥ 1 - 1/t` on `1 ≤ t ≤ 2`; the resulting
rational integral is exactly `log (9/8)`. -/
def ThreeFactorQuarterIntegralLowerBound : Prop :=
  Real.log (9 / 8) ≤ threeFactorProfileIntegral (1 / 4)

/-- The complete three-factor profile is uniformly negative on its natural
relative-exponent interval. -/
def ThreeFactorSignedProfileUniformNegative : Prop :=
  ∀ α : ℝ, (1 / 4 : ℝ) ≤ α → α ≤ 1 / 3 →
    threeFactorSignedProfile α ≤ -threeFactorUniformGap

/-- Uniform terminal prefix estimate from the exact alternating
unit/prime/semiprime/triple-prime decomposition and PNT partial summation. -/
def ProportionalThreeFactorPrefixMainTerm : Prop :=
  ∀ θ : ℝ, ThreeFactorProportionalExponent θ →
    ∃ c T₀ : ℝ, 0 < c ∧ 0 ≤ T₀ ∧
      ∀ T : ℝ, T₀ ≤ T →
        ∀ x : ℝ,
          Real.exp (threeFactorTerminalStartExponent θ * T) ≤ x →
          x ≤ Real.exp T →
          roughPrefixAbove (proportionalCutoffAt θ T) ⌊x⌋₊ ≤
            -(c * x / Real.log x)

/-- Every proportional three-factor cutoff has positive exponential rough
causal energy, up to the polynomial factor `T²`. -/
def ProportionalThreeFactorRoughEnergyLowerBound : Prop :=
  ∀ θ : ℝ, ThreeFactorProportionalExponent θ →
    ∃ c T₀ : ℝ, 0 < c ∧ 0 ≤ T₀ ∧
      ∀ T : ℝ, T₀ ≤ T →
        c * Real.exp T ≤ T ^ 2 * proportionalRoughEnergyAt θ T

/-- Corresponding lower bound for the negative part of the complete signed
Buchstab covariance. -/
def ProportionalThreeFactorNegativeCovarianceLowerBound : Prop :=
  ∀ θ : ℝ, ThreeFactorProportionalExponent θ →
    ∃ c T₀ : ℝ, 0 < c ∧ 0 ≤ T₀ ∧
      ∀ T : ℝ, T₀ ≤ T →
        c * Real.exp T ≤
          T ^ 2 * proportionalNegativeCovarianceAt θ T

/-- Eventual comparison needed by the signed covariance sandwich. -/
def UnitEventuallyHalfThreeFactorRoughAt (θ : ℝ) : Prop :=
  ∃ T₀ : ℝ, 0 ≤ T₀ ∧
    ∀ T : ℝ, T₀ ≤ T →
      unitResponseEnergy T ≤ proportionalRoughEnergyAt θ T / 2

/-- An `exp T / T²` lower bound makes the polynomial unit response negligible. -/
theorem threeFactorEnergyLower_implies_unitEventuallyHalf
    (hLower : ProportionalThreeFactorRoughEnergyLowerBound)
    (hUnit : UnitResponseLinearBound)
    (hExp : ExponentialDominatesCubic)
    (θ : ℝ) (hθ : ThreeFactorProportionalExponent θ) :
    UnitEventuallyHalfThreeFactorRoughAt θ := by
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

/-- The signed Gram sandwich turns the uniform three-factor rough-energy
obstruction into a complete negative-covariance obstruction, with a factor-four
loss in the lower-bound constant. -/
theorem threeFactorEnergyLower_implies_negativeCovarianceLower
    (hTerminal : TerminalCausalBuchstabIdentity)
    (hEnergyIdentity : CausalBuchstabEnergyIdentity)
    (hRoughNonneg : RoughEnergyNonnegative)
    (hUnitNonneg : UnitResponseEnergyNonnegative)
    (hYoung : BuchstabUnitYoungBound)
    (hLower : ProportionalThreeFactorRoughEnergyLowerBound)
    (hUnit : UnitResponseLinearBound)
    (hExp : ExponentialDominatesCubic) :
    ProportionalThreeFactorNegativeCovarianceLowerBound := by
  intro θ hθ
  obtain ⟨c, T₀, hc, hT₀, hEnergy⟩ := hLower θ hθ
  obtain ⟨T₁, hT₁, hHalf⟩ :=
    threeFactorEnergyLower_implies_unitEventuallyHalf
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

/-- A cutoff family agrees pointwise with one fixed three-factor exponent. -/
def UsesThreeFactorProportionalExponent
    (Y : CutoffFamily) (θ : ℝ) : Prop :=
  ∀ T : ℝ, Y T = proportionalCutoffAt θ T

/-- No growing-correlation envelope at a fixed three-factor proportional
exponent can satisfy its all-positive-rate paid majorant.  The final
exponential-dominance contradiction remains explicit. -/
def NoThreeFactorProportionalCorrelationEnvelope : Prop :=
  ProportionalThreeFactorNegativeCovarianceLowerBound →
    InitialInverseSieveCostAtLeastOne →
      ¬ ∃ (θ : ℝ) (C : GrowingCorrelationEnvelopeCertificate),
        ThreeFactorProportionalExponent θ ∧
          UsesThreeFactorProportionalExponent C.cutoff θ

/-- Corresponding no-go statement for a PFR-style global potential. -/
def NoThreeFactorProportionalGlobalPotential : Prop :=
  ProportionalThreeFactorNegativeCovarianceLowerBound →
    InitialInverseSieveCostAtLeastOne →
      ¬ ∃ (θ : ℝ) (C : BuchstabGlobalPotentialCertificate),
        ThreeFactorProportionalExponent θ ∧
          UsesThreeFactorProportionalExponent C.cutoff θ

end GRWTSK.NumberTheory.LiouvilleProportionalThreeFactorObstruction
