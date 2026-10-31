/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleExternalProofExploitation
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.LiouvilleRoughCausalBuchstab
open GRWTSK.NumberTheory.LiouvilleObstructionConnections
open GRWTSK.NumberTheory.LiouvilleExternalProofExploitation

/-!
# Consequences of external proof exploitation for Liouville causal energy

This module closes the algebraic equivalence between paid control of the
negative complete Buchstab covariance and paid control of the rough Liouville
energy, once the terminal source identity and the unit-response estimates are
available.

It then transports both external-proof certificate classes to that equivalent
rough-energy bridge and records the exact obstruction they encounter at the
already eliminated proportional cutoff.

No external theorem is imported as a local dependency.  No new arithmetic
cancellation estimate or Riemann Hypothesis claim is made.
-/

namespace GRWTSK.NumberTheory.LiouvilleExternalProofConsequences

/-- A cutoff family whose paid rough Liouville energy is subexponential at
all positive rates. -/
def PaidRoughEnergyBridge : Prop :=
  ∃ Y : CutoffFamily,
    SubexponentialConditioning Y ∧ PaidRoughEnergyBound Y

/-- The covariance--rough-energy equivalence announced in the predecessor
module.  The forward direction uses
`E_Y ≤ E_1 + 2 max(-C_Y,0)`.  The reverse direction uses
`max(-C_Y,0) ≤ (3 E_Y + E_1) / 2`.

The exact inverse-sieve cost is retained in both directions and there is no
exponent loss. -/
theorem paidCovarianceRoughEnergyEquivalence_proof :
    PaidCovarianceRoughEnergyEquivalence := by
  unfold PaidCovarianceRoughEnergyEquivalence
  intro hTerminal hEnergy hRoughNonneg hUnitNonneg hYoung Y hConditioning
  constructor
  · intro hCovariance
    unfold PaidRoughEnergyBound
    intro ε hε
    obtain ⟨Cunit, hCunit, hUnit⟩ := hConditioning ε hε
    obtain ⟨Ccov, hCcov, hCov⟩ := hCovariance ε hε
    refine ⟨Cunit + 2 * Ccov, by nlinarith, ?_⟩
    intro T hT
    have hSandwich :=
      buchstab_negativePart_sandwich
        hTerminal hEnergy hRoughNonneg hUnitNonneg hYoung (Y T) T hT
    have hEnergyUpper :
        roughEnergyAbove (Y T) T ≤
          unitResponseEnergy T +
            2 * max (-buchstabCovariance (Y T) T) 0 := by
      linarith [hSandwich.1]
    have hCostNonneg :=
      inverseSieveCost_nonneg (initialPrimeBand (Y T))
    calc
      inverseSieveCost (initialPrimeBand (Y T)) *
            roughEnergyAbove (Y T) T ≤
          inverseSieveCost (initialPrimeBand (Y T)) *
            (unitResponseEnergy T +
              2 * max (-buchstabCovariance (Y T) T) 0) :=
        mul_le_mul_of_nonneg_left hEnergyUpper hCostNonneg
      _ =
          inverseSieveCost (initialPrimeBand (Y T)) *
              unitResponseEnergy T +
            2 * (inverseSieveCost (initialPrimeBand (Y T)) *
              max (-buchstabCovariance (Y T) T) 0) := by
            ring
      _ ≤ Cunit * Real.exp (ε * T) +
            2 * (Ccov * Real.exp (ε * T)) := by
          exact add_le_add
            (hUnit T hT)
            (mul_le_mul_of_nonneg_left (hCov T hT) (by norm_num))
      _ = (Cunit + 2 * Ccov) * Real.exp (ε * T) := by
            ring
  · intro hRough
    unfold CompleteBuchstabNegativePartBound
    intro ε hε
    obtain ⟨Cunit, hCunit, hUnit⟩ := hConditioning ε hε
    obtain ⟨Crough, hCrough, hRough⟩ := hRough ε hε
    refine ⟨(3 * Crough + Cunit) / 2, by nlinarith, ?_⟩
    intro T hT
    have hSandwich :=
      buchstab_negativePart_sandwich
        hTerminal hEnergy hRoughNonneg hUnitNonneg hYoung (Y T) T hT
    have hCostNonneg :=
      inverseSieveCost_nonneg (initialPrimeBand (Y T))
    have hRoughT := hRough T hT
    have hUnitT := hUnit T hT
    calc
      inverseSieveCost (initialPrimeBand (Y T)) *
            max (-buchstabCovariance (Y T) T) 0 ≤
          inverseSieveCost (initialPrimeBand (Y T)) *
            ((3 * roughEnergyAbove (Y T) T +
              unitResponseEnergy T) / 2) :=
        mul_le_mul_of_nonneg_left hSandwich.2 hCostNonneg
      _ =
          (3 * (inverseSieveCost (initialPrimeBand (Y T)) *
              roughEnergyAbove (Y T) T) +
            inverseSieveCost (initialPrimeBand (Y T)) *
              unitResponseEnergy T) / 2 := by
            ring
      _ ≤
          (3 * (Crough * Real.exp (ε * T)) +
            Cunit * Real.exp (ε * T)) / 2 := by
            nlinarith
      _ = ((3 * Crough + Cunit) / 2) * Real.exp (ε * T) := by
            ring

/-- Under the exact terminal identity and integral Gram bounds, the Type-II
Buchstab bridge is equivalent to a paid rough-energy bridge. -/
theorem typeIIBuchstabBridge_iff_paidRoughEnergyBridge
    (hTerminal : TerminalCausalBuchstabIdentity)
    (hEnergy : CausalBuchstabEnergyIdentity)
    (hRoughNonneg : RoughEnergyNonnegative)
    (hUnitNonneg : UnitResponseEnergyNonnegative)
    (hYoung : BuchstabUnitYoungBound) :
    TypeIIBuchstabBridge ↔ PaidRoughEnergyBridge := by
  constructor
  · rintro ⟨Y, hConditioning, hCovariance⟩
    refine ⟨Y, hConditioning, ?_⟩
    have hEquivalence :
        CompleteBuchstabNegativePartBound Y ↔
          PaidRoughEnergyBound Y :=
      paidCovarianceRoughEnergyEquivalence_proof
        hTerminal hEnergy hRoughNonneg hUnitNonneg hYoung Y hConditioning
    exact hEquivalence.mp hCovariance
  · rintro ⟨Y, hConditioning, hRough⟩
    refine ⟨Y, hConditioning, ?_⟩
    have hEquivalence :
        CompleteBuchstabNegativePartBound Y ↔
          PaidRoughEnergyBound Y :=
      paidCovarianceRoughEnergyEquivalence_proof
        hTerminal hEnergy hRoughNonneg hUnitNonneg hYoung Y hConditioning
    exact hEquivalence.mpr hRough

/-- A growing-correlation envelope can be viewed equivalently as a paid
rough-energy route once the source identities and integral Gram bounds hold. -/
theorem GrowingCorrelationEnvelopeCertificate.toPaidRoughEnergyBridge
    (C : GrowingCorrelationEnvelopeCertificate)
    (hTerminal : TerminalCausalBuchstabIdentity)
    (hEnergy : CausalBuchstabEnergyIdentity)
    (hRoughNonneg : RoughEnergyNonnegative)
    (hUnitNonneg : UnitResponseEnergyNonnegative)
    (hYoung : BuchstabUnitYoungBound) :
    PaidRoughEnergyBridge := by
  exact
    (typeIIBuchstabBridge_iff_paidRoughEnergyBridge
      hTerminal hEnergy hRoughNonneg hUnitNonneg hYoung).mp
      C.toTypeIIBuchstabBridge

/-- A PFR-style global potential can be viewed equivalently as a paid
rough-energy route once the source identities and integral Gram bounds hold. -/
theorem BuchstabGlobalPotentialCertificate.toPaidRoughEnergyBridge
    (C : BuchstabGlobalPotentialCertificate)
    (hTerminal : TerminalCausalBuchstabIdentity)
    (hEnergy : CausalBuchstabEnergyIdentity)
    (hRoughNonneg : RoughEnergyNonnegative)
    (hUnitNonneg : UnitResponseEnergyNonnegative)
    (hYoung : BuchstabUnitYoungBound) :
    PaidRoughEnergyBridge := by
  exact
    (typeIIBuchstabBridge_iff_paidRoughEnergyBridge
      hTerminal hEnergy hRoughNonneg hUnitNonneg hYoung).mp
      C.toTypeIIBuchstabBridge

/-- Every realized external-proof portfolio branch supplies paid rough-energy
control under the exact source and Gram premises. -/
theorem externalProofPortfolio_to_paidRoughEnergyBridge
    (hTerminal : TerminalCausalBuchstabIdentity)
    (hEnergy : CausalBuchstabEnergyIdentity)
    (hRoughNonneg : RoughEnergyNonnegative)
    (hUnitNonneg : UnitResponseEnergyNonnegative)
    (hYoung : BuchstabUnitYoungBound) :
    ExternalProofPortfolio → PaidRoughEnergyBridge := by
  rintro (⟨C⟩ | ⟨C⟩)
  · exact C.toPaidRoughEnergyBridge
      hTerminal hEnergy hRoughNonneg hUnitNonneg hYoung
  · exact C.toPaidRoughEnergyBridge
      hTerminal hEnergy hRoughNonneg hUnitNonneg hYoung

/-- Composition through the already named paid-Buchstab return.  The return is
kept as an explicit premise because its inherited source chain is not yet
qualified in this increment. -/
theorem externalProofPortfolio_to_uniformEnergy_of_paidReturn
    (hReturn : PaidBuchstabSupplierImpliesUniformEnergy)
    (hRoughEqualsSieve : RoughWaveformEqualsInitialSieve)
    (hSieveNorm : FinitePrimeSieveNormComparison)
    (hCovarianceTransfer : BuchstabNegativeCovarianceTransfer) :
    ExternalProofPortfolio → UniformEnergySupplier := by
  intro hPortfolio
  exact hReturn hRoughEqualsSieve hSieveNorm hCovarianceTransfer
    (externalProofPortfolio_to_paidSupplier hPortfolio)

/-- A cutoff family agrees pointwise with the already obstructed proportional
cutoff. -/
def UsesProportionalCutoff (Y : CutoffFamily) : Prop :=
  ∀ T : ℝ, Y T = proportionalCutoff T

/-- Elementary inverse-cost fact needed to turn a covariance lower bound into
a lower bound for a paid global potential.  Its proof from the product formula
remains separate so that the required positivity API is visible. -/
def InitialInverseSieveCostAtLeastOne : Prop :=
  ∀ Y : ℕ, 1 ≤ inverseSieveCost (initialPrimeBand Y)

/-- At the proportional cutoff, every growing-correlation majorant is at least
as large as the already established exponential negative covariance. -/
theorem GrowingCorrelationEnvelopeCertificate.proportional_majorant_lower
    (hNegative : ProportionalBuchstabNegativePartLowerBound)
    (C : GrowingCorrelationEnvelopeCertificate)
    (hCutoff : UsesProportionalCutoff C.cutoff) :
    ∃ c T₀ : ℝ, 0 < c ∧ 0 ≤ T₀ ∧
      ∀ T : ℝ, T₀ ≤ T →
        c * Real.exp T ≤ T ^ 2 * C.majorant T := by
  obtain ⟨c, T₀, hc, hT₀, hLower⟩ := hNegative
  refine ⟨c, T₀, hc, hT₀, ?_⟩
  intro T hT
  have hTnonneg : 0 ≤ T := hT₀.trans hT
  have hMaxAbs :
      max (-buchstabCovariance (proportionalCutoff T) T) 0 ≤
        |buchstabCovariance (proportionalCutoff T) T| := by
    exact max_le (neg_le_abs _) (abs_nonneg _)
  have hAbsMajor :
      |buchstabCovariance (proportionalCutoff T) T| ≤ C.majorant T := by
    simpa [hCutoff T] using C.covariance_abs_le T hTnonneg
  have hMaxMajor :
      max (-buchstabCovariance (proportionalCutoff T) T) 0 ≤
        C.majorant T :=
    hMaxAbs.trans hAbsMajor
  have hT_sq : 0 ≤ T ^ 2 := sq_nonneg T
  exact (hLower T hT).trans
    (mul_le_mul_of_nonneg_left hMaxMajor hT_sq)

/-- At the proportional cutoff, every PFR-style global potential is at least
as large as the exponential negative covariance, once the elementary
inverse-cost lower bound is supplied. -/
theorem BuchstabGlobalPotentialCertificate.proportional_potential_lower
    (hNegative : ProportionalBuchstabNegativePartLowerBound)
    (hCost : InitialInverseSieveCostAtLeastOne)
    (C : BuchstabGlobalPotentialCertificate)
    (hCutoff : UsesProportionalCutoff C.cutoff) :
    ∃ c T₀ : ℝ, 0 < c ∧ 0 ≤ T₀ ∧
      ∀ T : ℝ, T₀ ≤ T →
        c * Real.exp T ≤ T ^ 2 * C.potential T := by
  obtain ⟨c, T₀, hc, hT₀, hLower⟩ := hNegative
  refine ⟨c, T₀, hc, hT₀, ?_⟩
  intro T hT
  have hTnonneg : 0 ≤ T := hT₀.trans hT
  have hMaxNonneg :
      0 ≤ max (-buchstabCovariance (proportionalCutoff T) T) 0 :=
    le_max_right _ _
  have hCostT :
      1 ≤ inverseSieveCost (initialPrimeBand (proportionalCutoff T)) :=
    hCost (proportionalCutoff T)
  have hMaxPaid :
      max (-buchstabCovariance (proportionalCutoff T) T) 0 ≤
        inverseSieveCost (initialPrimeBand (proportionalCutoff T)) *
          max (-buchstabCovariance (proportionalCutoff T) T) 0 := by
    calc
      max (-buchstabCovariance (proportionalCutoff T) T) 0 =
          1 * max (-buchstabCovariance (proportionalCutoff T) T) 0 := by
            ring
      _ ≤ inverseSieveCost (initialPrimeBand (proportionalCutoff T)) *
          max (-buchstabCovariance (proportionalCutoff T) T) 0 :=
        mul_le_mul_of_nonneg_right hCostT hMaxNonneg
  have hPaidPotential :
      inverseSieveCost (initialPrimeBand (proportionalCutoff T)) *
          max (-buchstabCovariance (proportionalCutoff T) T) 0 ≤
        C.potential T := by
    simpa [hCutoff T] using C.dominates T hTnonneg
  have hMaxPotential :
      max (-buchstabCovariance (proportionalCutoff T) T) 0 ≤ C.potential T :=
    hMaxPaid.trans hPaidPotential
  have hT_sq : 0 ≤ T ^ 2 := sq_nonneg T
  exact (hLower T hT).trans
    (mul_le_mul_of_nonneg_left hMaxPotential hT_sq)

/-- Analytical no-go statement: no growing-correlation certificate using the
proportional cutoff can satisfy its all-positive-rate paid majorant after the
exponential lower bound is combined with exponential dominance over
polynomials.

This remains a named proposition pending the explicit asymptotic Lean bridge. -/
def NoProportionalGrowingCorrelationEnvelope : Prop :=
  ProportionalBuchstabNegativePartLowerBound →
    InitialInverseSieveCostAtLeastOne →
      ¬ ∃ C : GrowingCorrelationEnvelopeCertificate,
        UsesProportionalCutoff C.cutoff

/-- Analytical no-go statement for a PFR-style potential at the proportional
cutoff.  The elementary inverse-cost lower bound and exponential-dominance
bridge remain explicit premises. -/
def NoProportionalGlobalPotential : Prop :=
  ProportionalBuchstabNegativePartLowerBound →
    InitialInverseSieveCostAtLeastOne →
      ¬ ∃ C : BuchstabGlobalPotentialCertificate,
        UsesProportionalCutoff C.cutoff

end GRWTSK.NumberTheory.LiouvilleExternalProofConsequences
