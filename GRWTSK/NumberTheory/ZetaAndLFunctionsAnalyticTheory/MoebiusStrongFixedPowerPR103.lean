/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvillePR103FixedPower
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongPacketEnergyReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalMertensSpike
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupEndpointQuadrature
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Fixed-power Mertens transfer to the original causal Möbius energy

The external PR103 Dirichlet-L theorem has an exact zero-free boundary below
`newWorkingTheta`.  A standard zero-free-to-Mertens contour theorem would then
supply the ACTUAL bound `M(exp u) = O(exp(newWorkingTheta*u))` after enlarging
the constant on the finite initial interval.

This source keeps both imported analytic steps visible:

* `ExternalPR103ZetaNonvanishing` is the mod-one/zeta consequence of the
  external Dirichlet-L theorem;
* `ZeroFreeToMertensPowerBridge` is the classical Perron/contour transfer.

Neither is inserted as an assumed theorem or silently claimed kernel-verified here.

The local source-specific calculation is exact.  If

  |M(exp u)| <= C exp(theta*u), theta>1/2,

then the unchanged pickup velocity is bounded by

  C exp((theta-1/2)*u).

The named real-calculus gate `PickupVelocityPowerEnergyTransfer` records the
ordinary integration consequence

  H(T) <= C^2/(2*rho^3) * exp(2*rho*T), rho=theta-1/2.

Thus the physical energy exponent is exactly `2*theta-1`.  At the PR103
working exponent this is `newWorkingEnergyPower`, strictly below the clean
rational rate `747/1000` and below `3/4`.

The final section records a rigorous no-bootstrap obstruction.  Combining the
existing fifth-power reverse map `rho |-> (4+rho)/5` with the forward map
`theta |-> 2*theta-1` sends an endpoint rate `rho<1` to `(3+2*rho)/5`, which
is strictly larger than `rho`.  Iterating those two valid transfers therefore
moves rates toward one, not toward zero; it cannot prove RH.
-/

namespace GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvillePR103FixedPower
open GRWTSK.NumberTheory.Moebius.StrongPacketEnergyReturn
open GRWTSK.NumberTheory.Moebius.CausalMertensSpike
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-- Fixed exponential upper class on the unchanged nonnegative physical-time
half-line.  The constant may depend on the displayed rate. -/
def FixedRateUpper (f : ℝ → ℝ) (rate : ℝ) : Prop :=
  ∃ A : ℝ, 0 ≤ A ∧
    ∀ T : ℝ, 0 ≤ T → f T ≤ A * Real.exp (rate * T)

/-- Increasing the rate preserves a fixed-rate upper bound. -/
theorem FixedRateUpper.mono_rate
    {f : ℝ → ℝ} {r s : ℝ}
    (hf : FixedRateUpper f r) (hrs : r ≤ s) :
    FixedRateUpper f s := by
  obtain ⟨A, hA, hbound⟩ := hf
  refine ⟨A, hA, ?_⟩
  intro T hT
  have hexp : Real.exp (r * T) ≤ Real.exp (s * T) :=
    Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_right hrs hT)
  exact (hbound T hT).trans
    (mul_le_mul_of_nonneg_left hexp hA)

/-- An authentic global physical-time Mertens power envelope.  The finite
initial interval has already been absorbed into `C`; no exceptional times or
changed integer cutoff occur. -/
def MertensExponentialEnvelopeAt (theta C : ℝ) : Prop :=
  0 ≤ C ∧
    ∀ u : ℝ, 0 ≤ u →
      |mertensPrefix (Real.exp u)| ≤ C * Real.exp (theta * u)

/-- The ACTUAL pickup velocity receives the exact half-power normalization
loss and no other arithmetic loss. -/
theorem pickupVelocity_abs_le_of_mertens_envelope
    {theta C u : ℝ}
    (hM : MertensExponentialEnvelopeAt theta C)
    (hu : 0 ≤ u) :
    |pickupVelocity u| ≤
      C * Real.exp ((theta - 1 / 2) * u) := by
  obtain ⟨hC, hbound⟩ := hM
  have hm := hbound u hu
  unfold pickupVelocity
  rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    Real.exp (-u / 2) * |mertensPrefix (Real.exp u)| ≤
        Real.exp (-u / 2) * (C * Real.exp (theta * u)) :=
      mul_le_mul_of_nonneg_left hm (Real.exp_pos _).le
    _ = C * (Real.exp (-u / 2) * Real.exp (theta * u)) := by ring
    _ = C * Real.exp ((theta - 1 / 2) * u) := by
      rw [← Real.exp_add]
      congr 2
      ring

/-- Visible real-analysis gate.  Its ordinary proof integrates the preceding
velocity bound twice:

`|wholePickup t| <= (C/rho) * exp(rho*t)` and
`pickupEnergy T <= C^2/(2*rho^3) * exp(2*rho*T)`.

The gate is source-specific but arithmetic-free; it remains a named proposition
until interval-integrability and exact primitive normalization are replayed in
pinned Lean. -/
def PickupVelocityPowerEnergyTransfer : Prop :=
  ∀ (rho C : ℝ), 0 < rho → 0 ≤ C →
    (∀ u : ℝ, 0 ≤ u →
      |pickupVelocity u| ≤ C * Real.exp (rho * u)) →
    ∀ T : ℝ, 0 ≤ T →
      pickupEnergy T ≤
        (C ^ 2 / (2 * rho ^ 3)) * Real.exp ((2 * rho) * T)

/-- Once the explicit real-calculus gate is supplied, a genuine Mertens power
`theta>1/2` gives the exact causal-energy rate `2*theta-1`. -/
theorem pickupEnergy_fixedRate_of_mertens_envelope
    (hcalc : PickupVelocityPowerEnergyTransfer)
    {theta C : ℝ}
    (htheta : (1 / 2 : ℝ) < theta)
    (hM : MertensExponentialEnvelopeAt theta C) :
    FixedRateUpper pickupEnergy (2 * theta - 1) := by
  let rho : ℝ := theta - 1 / 2
  have hrho : 0 < rho := by dsimp [rho]; linarith
  have hC : 0 ≤ C := hM.1
  refine ⟨C ^ 2 / (2 * rho ^ 3), by positivity, ?_⟩
  intro T hT
  have hv : ∀ u : ℝ, 0 ≤ u →
      |pickupVelocity u| ≤ C * Real.exp (rho * u) := by
    intro u hu
    simpa only [rho] using
      pickupVelocity_abs_le_of_mertens_envelope hM hu
  have h := hcalc rho C hrho hC hv T hT
  have hrate : 2 * rho = 2 * theta - 1 := by
    dsimp [rho]
    ring
  simpa only [hrate] using h

/-- The exact endpoint quadrature is at most the original positive energy plus
its already-paid quarter-unit curvature allowance. -/
theorem endpointSum_le_pickupEnergy_add_quarter
    {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤ pickupEnergy T + 1 / 4 := by
  have herr := (abs_le.mp (endpointSum_error hT)).2
  have hcross : pickupCross T ≤ pickupEnergy T := by
    have hid := pickupEnergy_eq_diagonal_add_cross hT
    have hdiag := pickupDiagonal_nonneg hT
    linarith
  linarith

/-- A nonnegative fixed energy rate passes to the literal endpoint sum with
only the quarter-unit increase of the constant. -/
theorem endpointSum_fixedRate_of_pickupEnergy
    {rate : ℝ} (hrate : 0 ≤ rate)
    (hE : FixedRateUpper pickupEnergy rate) :
    FixedRateUpper endpointSum rate := by
  obtain ⟨A, hA, hbound⟩ := hE
  refine ⟨A + 1 / 4, by positivity, ?_⟩
  intro T hT
  have hsource := endpointSum_le_pickupEnergy_add_quarter hT
  have henergy := hbound T hT
  have hone : (1 : ℝ) ≤ Real.exp (rate * T) :=
    Real.one_le_exp_iff.mpr (mul_nonneg hrate hT)
  calc
    endpointSum T ≤ pickupEnergy T + 1 / 4 := hsource
    _ ≤ A * Real.exp (rate * T) + (1 / 4) * Real.exp (rate * T) := by
      exact add_le_add henergy
        (mul_le_mul_of_nonneg_left hone (by norm_num))
    _ = (A + 1 / 4) * Real.exp (rate * T) := by ring

/-- Zero-free half-plane interface for the actual Riemann zeta function.  The
pole is excluded explicitly. -/
def ZetaZeroFreeRightOf (theta : ℝ) : Prop :=
  ∀ s : ℂ, theta < s.re → s ≠ 1 → _root_.riemannZeta s ≠ 0

/-- The mod-one consequence of the external merged PR103 theorem.  It is a
visible external source obligation, not a local theorem or trusted declaration. -/
def ExternalPR103ZetaNonvanishing : Prop :=
  ZetaZeroFreeRightOf externalPR103Theta

/-- Standard Perron/contour bridge: strict zero-free margin yields an actual
Mertens power envelope.  The exact analytic provider remains visible until it
is adapted and replayed under the pinned toolchain. -/
def ZeroFreeToMertensPowerBridge : Prop :=
  ∀ theta0 theta : ℝ,
    theta0 < theta → (1 / 2 : ℝ) < theta → theta < 1 →
    ZetaZeroFreeRightOf theta0 →
      ∃ C : ℝ, MertensExponentialEnvelopeAt theta C

/-- Exact PR103 working Mertens supplier after the external zeta adapter and
standard contour bridge are provided. -/
def PR103MertensPowerSupplier : Prop :=
  ∃ C : ℝ, MertensExponentialEnvelopeAt newWorkingTheta C

/-- The two external analytic interfaces produce the exact working supplier;
all rational margins are kernel-level finite arithmetic. -/
theorem pr103MertensPowerSupplier_of_external
    (hzeta : ExternalPR103ZetaNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    PR103MertensPowerSupplier := by
  have hgain := exact_pr103_fixed_power_gain
  exact hbridge externalPR103Theta newWorkingTheta
    hgain.1
    (by norm_num [newWorkingTheta])
    (by norm_num [newWorkingTheta])
    hzeta

/-- Existing exact rational identity for the physical energy exponent. -/
theorem pr103_working_energy_rate_eq :
    newWorkingEnergyPower = 2 * newWorkingTheta - 1 :=
  exact (exact_pr103_fixed_power_gain).2.2.1

/-- Clean reporting rate, slightly above the exact PR103 working energy rate. -/
def cleanPR103EnergyRate : ℝ := 747 / 1000

theorem pr103_working_rate_lt_clean :
    newWorkingEnergyPower < cleanPR103EnergyRate := by
  norm_num [newWorkingEnergyPower, cleanPR103EnergyRate]

theorem cleanPR103EnergyRate_pos : 0 < cleanPR103EnergyRate := by
  norm_num [cleanPR103EnergyRate]

theorem cleanPR103EnergyRate_lt_three_quarters :
    cleanPR103EnergyRate < (3 / 4 : ℝ) := by
  norm_num [cleanPR103EnergyRate]

theorem cleanPR103EnergyRate_lt_one :
    cleanPR103EnergyRate < 1 := by
  norm_num [cleanPR103EnergyRate]

/-- Conditional exact-rate energy consequence of the external PR103 proof
chain and the one visible source-calculus gate. -/
theorem pr103_pickupEnergy_working_rate
    (hcalc : PickupVelocityPowerEnergyTransfer)
    (hzeta : ExternalPR103ZetaNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    FixedRateUpper pickupEnergy newWorkingEnergyPower := by
  obtain ⟨C, hM⟩ :=
    pr103MertensPowerSupplier_of_external hzeta hbridge
  rw [pr103_working_energy_rate_eq]
  exact pickupEnergy_fixedRate_of_mertens_envelope hcalc
    (by norm_num [newWorkingTheta]) hM

/-- The exact PR103 source chain gives a clean strict fixed energy rate below
`3/4` and below one. -/
theorem pr103_pickupEnergy_clean_rate
    (hcalc : PickupVelocityPowerEnergyTransfer)
    (hzeta : ExternalPR103ZetaNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    FixedRateUpper pickupEnergy cleanPR103EnergyRate :=
  (pr103_pickupEnergy_working_rate hcalc hzeta hbridge).mono_rate
    pr103_working_rate_lt_clean.le

/-- The same strict rate controls the exact endpoint quadrature, not a
replacement observable. -/
theorem pr103_endpointSum_clean_rate
    (hcalc : PickupVelocityPowerEnergyTransfer)
    (hzeta : ExternalPR103ZetaNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    FixedRateUpper endpointSum cleanPR103EnergyRate :=
  endpointSum_fixedRate_of_pickupEnergy
    cleanPR103EnergyRate_pos.le
    (pr103_pickupEnergy_clean_rate hcalc hzeta hbridge)

/-- Visible scalar return from the original energy to the COMPLETE signed
strong packet at the same positive rate.  It packages only the already-written
diagonal, Putnam-gap and weak-overlap absorptions. -/
def StrongPacketFixedRateReturn : Prop :=
  ∀ rate : ℝ, 0 < rate →
    FixedRateUpper pickupEnergy rate →
      FixedRateUpper
        (fun T =>
          |originalEnergyStrongCross (rateGapHeight rate T) T|)
        rate

/-- Conditional PR103 strict-rate theorem for the complete original signed
strong packet.  The strong-return gate contains no arithmetic supplier. -/
theorem pr103_strongPacket_clean_rate
    (hcalc : PickupVelocityPowerEnergyTransfer)
    (hstrong : StrongPacketFixedRateReturn)
    (hzeta : ExternalPR103ZetaNonvanishing)
    (hbridge : ZeroFreeToMertensPowerBridge) :
    FixedRateUpper
      (fun T =>
        |originalEnergyStrongCross
          (rateGapHeight cleanPR103EnergyRate T) T|)
      cleanPR103EnergyRate :=
  hstrong cleanPR103EnergyRate cleanPR103EnergyRate_pos
    (pr103_pickupEnergy_clean_rate hcalc hzeta hbridge)

/-! ## Exact obstruction to a fixed-rate bootstrap -/

/-- The written fifth-power reverse bridge maps an endpoint energy rate to a
Mertens exponent. -/
def endpointRateToMertensExponent (rho : ℝ) : ℝ :=
  (4 + rho) / 5

/-- The forward causal transfer maps a Mertens exponent to energy rate. -/
def mertensExponentToEnergyRate (theta : ℝ) : ℝ :=
  2 * theta - 1

/-- One complete reverse/forward round trip on endpoint rates. -/
def fixedRateRoundTrip (rho : ℝ) : ℝ :=
  mertensExponentToEnergyRate (endpointRateToMertensExponent rho)

theorem fixedRateRoundTrip_eq (rho : ℝ) :
    fixedRateRoundTrip rho = (3 + 2 * rho) / 5 := by
  unfold fixedRateRoundTrip endpointRateToMertensExponent
    mertensExponentToEnergyRate
  ring

/-- Every strict rate below one is made strictly WORSE by the round trip. -/
theorem fixedRateRoundTrip_gt
    {rho : ℝ} (hrho : rho < 1) :
    rho < fixedRateRoundTrip rho := by
  rw [fixedRateRoundTrip_eq]
  linarith

theorem fixedRateRoundTrip_lt_one
    {rho : ℝ} (hrho : rho < 1) :
    fixedRateRoundTrip rho < 1 := by
  rw [fixedRateRoundTrip_eq]
  linarith

/-- At the clean PR103 rate the round trip jumps to `2247/2500=0.8988`. -/
theorem cleanPR103_roundTrip_exact :
    fixedRateRoundTrip cleanPR103EnergyRate = 2247 / 2500 := by
  norm_num [fixedRateRoundTrip_eq, cleanPR103EnergyRate]

/-- Stable method obstruction: the two valid fixed-rate bridges cannot be
iterated to improve an exponent toward zero. -/
theorem no_improvement_from_fixed_rate_roundTrip
    {rho : ℝ} (hrho : rho < 1) :
    ¬ fixedRateRoundTrip rho ≤ rho := by
  exact not_le.mpr (fixedRateRoundTrip_gt hrho)

end GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103
