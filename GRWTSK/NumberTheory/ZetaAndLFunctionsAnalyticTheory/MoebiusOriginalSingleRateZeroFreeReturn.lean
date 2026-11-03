/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathematical formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalFarZeroForcedSpikes
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalLaplaceReciprocalControl
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFixedCoreFarCommonEnergy
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Single-rate original Möbius arithmetic -> quantitative zero-free region

This is a common CONDITIONAL analytic consumer for the genuinely
different original signed source representations:
  pickupCross(T_J), farReducedOrLongCross(B_J,empty,J),
  fixedCompensatedCore(T_J), and any validated source portfolio
  upper that controls the original pickupCross.
The source is the true Möbius coefficient and ORIGINAL physical
pickupEnergy. No index, sign, diagonal, mask, or rate is changed.

A single one-sided, whole signed original source upper at rate
r>0 on the FIXED dyadic grid yields a positive cumulative energy
bound at rate r, after paying only ORIGINAL and independently
estimated source bills. The bounded dyadic gap upgrades this
to a global cumulative energy bound.

For EVERY sigma>r, standard weighted interval-energy calculus
makes the ACTUAL original weighted square energy integrable.
The independently identified original Laplace product and
complex identity theorem then exclude genuine zeta zeros in
  Re(s)>(1+r)/2.
For a fixed sigma>r the same source yields a polynomial
reciprocal estimate involving the ACTUAL weighted square W_sigma.

These theorems use NO RH or all-positive-rate premise. To
recover the entire half-plane Re(s)>1/2 would require such
bounds for EVERY arbitrarily small r>0, which remains OPEN.
No new zero-free assertion is declared as an axiom or
smuggled into source facts. The inherited elementary source
and analytic Lean Props remain visible and UNPROVED.
Compilation is DEFERRED by the user's instruction.
-/

namespace GRWTSK.NumberTheory.Moebius.OriginalSingleRateZeroFreeReturn

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.OriginalFarZeroForcedSpikes
open GRWTSK.NumberTheory.Moebius.OriginalLaplaceZeroBarrier
open GRWTSK.NumberTheory.Moebius.OriginalLaplaceReciprocalControl
open GRWTSK.NumberTheory.Moebius.FixedCoreFarCommonEnergy
open GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.FarCompleteUpperTransfer
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103

/-- Any genuine original DYADIC positive energy certificate
at ONE rate r supplies the actual original tilted L2 energy
for every strictly larger sigma. The only extra input is the
PREEXISTING elementary monotone-energy dyadic-ceiling Prop. -/
theorem weighted_original_energy_of_grid_upper
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (r : ℝ) (hr : 0 < r)
    (C : ℝ) (hC : 0 ≤ C)
    (hGrid : ∀ J : ℕ, 1 ≤ J →
      pickupEnergy (dyadicTime J) ≤
        C * Real.exp (r * dyadicTime J))
    (sigma : ℝ) (hrs : r < sigma) :
    IntegrableOn
      (fun T : ℝ => Real.exp (-sigma*T)*wholePickup T^2)
      (Ici 0) := by
  have hglobal := hCeiling r hr C hC hGrid
  exact integrableOn_sq_tilt_of_energy_exponential
    wholePickup_continuous (lt_trans hr hrs) hrs hglobal

/-- Same ORIGINAL grid energy certificate -> a true ZETA
zero-free open half-plane. A SINGLE r gives exactly
Re(s)>(1+r)/2, NEVER an all-positive-rate assertion.
Both complex analytic inputs are unchanged separate Props. -/
theorem zero_free_of_original_grid_energy_rate
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (r : ℝ) (hr : 0 < r)
    (C : ℝ) (hC : 0 ≤ C)
    (hGrid : ∀ J : ℕ, 1 ≤ J →
      pickupEnergy (dyadicTime J) ≤
        C * Real.exp (r * dyadicTime J)) :
    ZetaZeroFreeRightOf ((1+r)/2) := by
  intro s hs hsOne
  let sigma : ℝ := (r + (2*s.re-1))/2
  have hrs : r < sigma := by
    dsimp [sigma]
    linarith
  have hmargin : (1+sigma)/2 < s.re := by
    dsimp [sigma]
    linarith
  have henergy := weighted_original_energy_of_grid_upper
    hCeiling r hr C hC hGrid sigma hrs
  exact weighted_original_energy_excludes_zeta_zero
    hRight hHolo hIdentity sigma (lt_trans hr hrs)
    henergy s hmargin hsOne

/-- Genuine regularized reciprocal bound from ONE original
dyadic energy certificate. It is POLYNOMIAL in |Im(s)|,
not the unproved all-small-power Perron segment supplier.
The exact finite original weighted W_sigma is retained. -/
theorem reciprocal_norm_of_original_grid_energy_rate
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCauchy : WeightedOriginalLaplaceCauchyTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (r : ℝ) (hr : 0 < r)
    (C : ℝ) (hC : 0 ≤ C)
    (hGrid : ∀ J : ℕ, 1 ≤ J →
      pickupEnergy (dyadicTime J) ≤
        C * Real.exp (r * dyadicTime J))
    (sigma : ℝ) (hrs : r < sigma)
    (s : ℂ) (hs : (1+sigma)/2 < s.re) :
    ‖regularizedReciprocalZeta s‖ ≤
      ‖s-(1/2 : ℂ)‖*‖s‖*
        (Real.sqrt (actualWeightedPickupSquare sigma)/
         Real.sqrt (2*s.re-1-sigma)) := by
  have henergy := weighted_original_energy_of_grid_upper
    hCeiling r hr C hC hGrid sigma hrs
  exact weighted_original_energy_reciprocal_norm
    hRight hHolo hIdentity hCauchy sigma
    (lt_trans hr hrs) henergy s hs


/-- Standard RH-INDEPENDENT exact cumulative-energy integration
by parts, preserving the original P(T)^2 integrand:
if E(T)=int_0^T P(t)^2dt<=A*exp(r*T), then for sigma>r
  W_sigma=int_0^infinity exp(-sigma*T)*P(T)^2dT
       <=(sigma/(sigma-r))*A.
The earlier qualitative integrableOn lemma is not a
quantitative numerical estimate. This elementary real
interval integral API remains UNPORTED in pinned Lean. -/
def QuantitativeWeightedEnergyFromCumulativeTarget : Prop :=
  ∀ (r sigma A : ℝ), 0 ≤ r → r < sigma → 0 ≤ A →
    (∀ T : ℝ, 0 ≤ T →
      pickupEnergy T ≤ A * Real.exp (r*T)) →
    actualWeightedPickupSquare sigma ≤
      (sigma/(sigma-r))*A

/-- A completely explicit conditional reciprocal majorant
after a true numerical dyadic energy certificate.
No zero-free premise is hidden. The square-energy norm
is replaced by its genuine quantitative integral upper.
The three original Laplace analytic supplier Props and this
one REAL integration-by-parts Prop remain unproved in Lean. -/
theorem explicit_reciprocal_norm_of_original_grid_certificate
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCauchy : WeightedOriginalLaplaceCauchyTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (hTilt : QuantitativeWeightedEnergyFromCumulativeTarget)
    (r : ℝ) (hr : 0 < r)
    (C : ℝ) (hC : 0 ≤ C)
    (hGrid : ∀ J : ℕ, 1 ≤ J →
      pickupEnergy (dyadicTime J) ≤
        C * Real.exp (r*dyadicTime J))
    (sigma : ℝ) (hrs : r < sigma)
    (s : ℂ) (hs : (1+sigma)/2 < s.re) :
    ‖regularizedReciprocalZeta s‖ ≤
      ‖s-(1/2 : ℂ)‖*‖s‖*
      (Real.sqrt
        ((sigma/(sigma-r))*
          (Real.exp (r*Real.log 2)*C))/
        Real.sqrt (2*s.re-1-sigma)) := by
  have hglobal := hCeiling r hr C hC hGrid
  have hnonneg :
      0 ≤ Real.exp (r*Real.log 2)*C :=
    mul_nonneg (Real.exp_pos _).le hC
  have hW := hTilt r sigma
    (Real.exp (r*Real.log 2)*C)
    hr.le hrs hnonneg hglobal
  have hNorm := reciprocal_norm_of_original_grid_energy_rate
    hRight hHolo hIdentity hCauchy hCeiling
      r hr C hC hGrid sigma hrs s hs
  have hWsqrt := Real.sqrt_le_sqrt hW
  have hden : 0 ≤ Real.sqrt (2*s.re-1-sigma) :=
    Real.sqrt_nonneg _
  have hdiv :
      Real.sqrt (actualWeightedPickupSquare sigma)/
        Real.sqrt (2*s.re-1-sigma) ≤
      Real.sqrt ((sigma/(sigma-r))*
        (Real.exp (r*Real.log 2)*C))/
        Real.sqrt (2*s.re-1-sigma) :=
    div_le_div_of_nonneg_right hWsqrt hden
  calc
    ‖regularizedReciprocalZeta s‖ ≤
      ‖s-(1/2 : ℂ)‖*‖s‖*
        (Real.sqrt (actualWeightedPickupSquare sigma)/
         Real.sqrt (2*s.re-1-sigma)) := hNorm
    _ ≤ _ := mul_le_mul_of_nonneg_left hdiv (by positivity)

/-- ONE FULL ORIGINAL FAR packet upper at rate r>0 gives
a real energy certificate at that SAME r, using precisely
the three independent original proper packet magnitude
suppliers. Its analytic return excludes zeros only above
(1+r)/2, never asserts the terminal RH. -/
theorem far_single_rate_implies_zeta_zero_free
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (hIncident : UniformCollarAllRateTarget)
    (hShort : ShortRatioUniformAllRateTarget)
    (hClose : ReducedCloseUniformAllRateTarget)
    (B : ℕ → PrimeBand) (hBank : AdmissibleBankFamily B)
    (r : ℝ) (hr : 0 < r)
    (C : ℝ) (hC : 0 ≤ C)
    (hFar : ∀ J : ℕ, 1 ≤ J →
      farReducedOrLongCross (B J) ∅ J ≤
        C * Real.exp (r * dyadicTime J)) :
    ZetaZeroFreeRightOf ((1+r)/2) := by
  obtain ⟨D,hD,hGrid⟩ :=
    original_energy_grid_upper_of_far_rate
      hIncident hShort hClose r hr B hBank C hC hFar
  exact zero_free_of_original_grid_energy_rate
    hRight hHolo hIdentity hCeiling r hr D hD hGrid

/-- TRUE original fixed compensated core -> same energy
rate r: pay the complete mixed signed fixedCrossDefect
and the original diagonal once. No FAR mask is substituted
for the different fixed-gap/gcd masks. -/
theorem fixed_core_single_rate_energy_grid
    (hFixed : FixedCoreSignedDefectAllRateTarget)
    (r : ℝ) (hr : 0 < r)
    (C : ℝ) (hC : 0 ≤ C)
    (hCore : ∀ J : ℕ, 1 ≤ J →
      fixedCompensatedCore (dyadicTime J) ≤
        C * Real.exp (r*dyadicTime J)) :
    ∃ D : ℝ, 0 ≤ D ∧
      ∀ J : ℕ, 1 ≤ J →
        pickupEnergy (dyadicTime J) ≤
          D * Real.exp (r * dyadicTime J) := by
  obtain ⟨A,hA,hDefect⟩ := hFixed r hr
  let D : ℝ := C + A + 4/r^2
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨D,hD,?_⟩
  intro J hJ
  let T : ℝ := dyadicTime J
  have hT : 0 ≤ T := dyadicTime_nonneg J
  have hc : fixedCompensatedCore T ≤ C*Real.exp (r*T) := hCore J hJ
  have he : |fixedCoreCrossDefect J| ≤ A*Real.exp (r*T) := hDefect J hJ
  have hx := originalCross_eq_fixed_core_add_defect J
  have hEnergy := pickupEnergy_eq_diagonal_add_cross hT
  have hDiag : pickupDiagonal T ≤ (4/r^2)*Real.exp (r*T) := by
    have hd := (pickupDiagonal_quadratic_bound hT).2
    have hpow : T^2 ≤ (2/r^2)*Real.exp (r*T) := by
      simpa using (pow_le_factorial_mul_exp hr hT 2)
    calc
      pickupDiagonal T ≤ 2*T^2 := hd
      _ ≤ 2*((2/r^2)*Real.exp (r*T)) :=
        mul_le_mul_of_nonneg_left hpow (by norm_num)
      _ = (4/r^2)*Real.exp (r*T) := by ring
  change pickupEnergy T ≤ D*Real.exp (r*T)
  rw [hEnergy,hx]
  dsimp [D]
  linarith [hc,(abs_le.mp he).2,hDiag]

/-- Single-rate ORIGINAL fixed compensated core certificate
also excludes genuine zeta zeros on Re(s)>(1+r)/2.
It consumes the old fixed signed-defect all-rate ELEMENTARY
supplier, but NO FAR all-positive-rate assumption. -/
theorem fixed_core_single_rate_implies_zeta_zero_free
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (hFixed : FixedCoreSignedDefectAllRateTarget)
    (r : ℝ) (hr : 0 < r)
    (C : ℝ) (hC : 0 ≤ C)
    (hCore : ∀ J : ℕ, 1 ≤ J →
      fixedCompensatedCore (dyadicTime J) ≤
        C * Real.exp (r*dyadicTime J)) :
    ZetaZeroFreeRightOf ((1+r)/2) := by
  obtain ⟨D,hD,hGrid⟩ :=
    fixed_core_single_rate_energy_grid hFixed r hr C hC hCore
  exact zero_free_of_original_grid_energy_rate
    hRight hHolo hIdentity hCeiling r hr D hD hGrid

/-- The shared generic SOURCE certificate: any direct upper
for the original pickupCross (including a certified source
portfolio, signed observer or finite decoder) pays only
the TRUE diagonal, with NO further artificial source loss.
An unvalidated model alone does NOT yield this input. -/
theorem original_signed_cross_single_rate_implies_zero_free
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (r : ℝ) (hr : 0 < r)
    (C : ℝ) (hC : 0 ≤ C)
    (hCross : ∀ J : ℕ, 1 ≤ J →
      pickupCross (dyadicTime J) ≤
        C * Real.exp (r*dyadicTime J)) :
    ZetaZeroFreeRightOf ((1+r)/2) := by
  let D : ℝ := C + 4/r^2
  have hD : 0 ≤ D := by dsimp [D]; positivity
  have hGrid : ∀ J : ℕ, 1 ≤ J →
      pickupEnergy (dyadicTime J) ≤
        D * Real.exp (r*dyadicTime J) := by
    intro J hJ
    let T : ℝ := dyadicTime J
    have hT : 0 ≤ T := dyadicTime_nonneg J
    have hc := hCross J hJ
    have hd := (pickupDiagonal_quadratic_bound hT).2
    have hpow : T^2 ≤ (2/r^2)*Real.exp (r*T) := by
      simpa using (pow_le_factorial_mul_exp hr hT 2)
    have he := pickupEnergy_eq_diagonal_add_cross hT
    change pickupEnergy T ≤ D*Real.exp (r*T)
    rw [he]
    dsimp [D]
    linarith
  exact zero_free_of_original_grid_energy_rate
    hRight hHolo hIdentity hCeiling r hr D hD hGrid


/-- The complete TRUE signed FAR at a single fixed rate gives
an explicit polynomial reciprocal bound on every strictly
smaller energy domain Re(s)>(1+sigma)/2, sigma>r.
Every original collar, short ratio and reduced-close signed
packet is retained and independently paid. No RH supplier. -/
theorem far_single_rate_implies_explicit_reciprocal
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCauchy : WeightedOriginalLaplaceCauchyTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (hTilt : QuantitativeWeightedEnergyFromCumulativeTarget)
    (hIncident : UniformCollarAllRateTarget)
    (hShort : ShortRatioUniformAllRateTarget)
    (hClose : ReducedCloseUniformAllRateTarget)
    (B : ℕ → PrimeBand) (hBank : AdmissibleBankFamily B)
    (r : ℝ) (hr : 0 < r)
    (C : ℝ) (hC : 0 ≤ C)
    (hFar : ∀ J : ℕ, 1 ≤ J →
      farReducedOrLongCross (B J) ∅ J ≤
        C * Real.exp (r*dyadicTime J))
    (sigma : ℝ) (hrs : r < sigma)
    (s : ℂ) (hs : (1+sigma)/2 < s.re) :
    ∃ D : ℝ, 0 ≤ D ∧
      ‖regularizedReciprocalZeta s‖ ≤
      ‖s-(1/2 : ℂ)‖*‖s‖*
        (Real.sqrt
          ((sigma/(sigma-r))*
            (Real.exp (r*Real.log 2)*D))/
         Real.sqrt (2*s.re-1-sigma)) := by
  obtain ⟨D,hD,hGrid⟩ :=
    original_energy_grid_upper_of_far_rate
      hIncident hShort hClose r hr B hBank C hC hFar
  refine ⟨D,hD,?_⟩
  exact explicit_reciprocal_norm_of_original_grid_certificate
    hRight hHolo hIdentity hCauchy hCeiling hTilt
      r hr D hD hGrid sigma hrs s hs

/-- The SAME explicit physical reciprocal return from ONE
fixed compensated original source, with only its genuine
fixed-core mixed signed defect and diagonal paid ONCE.
The FAR mask need not be identified with the fixed masks. -/
theorem fixed_core_single_rate_implies_explicit_reciprocal
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCauchy : WeightedOriginalLaplaceCauchyTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (hTilt : QuantitativeWeightedEnergyFromCumulativeTarget)
    (hFixed : FixedCoreSignedDefectAllRateTarget)
    (r : ℝ) (hr : 0 < r)
    (C : ℝ) (hC : 0 ≤ C)
    (hCore : ∀ J : ℕ, 1 ≤ J →
      fixedCompensatedCore (dyadicTime J) ≤
        C * Real.exp (r*dyadicTime J))
    (sigma : ℝ) (hrs : r < sigma)
    (s : ℂ) (hs : (1+sigma)/2 < s.re) :
    ∃ D : ℝ, 0 ≤ D ∧
      ‖regularizedReciprocalZeta s‖ ≤
      ‖s-(1/2 : ℂ)‖*‖s‖*
        (Real.sqrt
          ((sigma/(sigma-r))*
            (Real.exp (r*Real.log 2)*D))/
         Real.sqrt (2*s.re-1-sigma)) := by
  obtain ⟨D,hD,hGrid⟩ :=
    fixed_core_single_rate_energy_grid hFixed r hr C hC hCore
  refine ⟨D,hD,?_⟩
  exact explicit_reciprocal_norm_of_original_grid_certificate
    hRight hHolo hIdentity hCauchy hCeiling hTilt
      r hr D hD hGrid sigma hrs s hs


end GRWTSK.NumberTheory.Moebius.OriginalSingleRateZeroFreeReturn
