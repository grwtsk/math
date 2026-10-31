/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MeasureAndIntegration.PickupCellQuadratic
import GRWTSK.MeasureAndIntegration.FiniteResponseSum
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupEndpointQuadrature
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupCellQuadratic
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-!
# Endpoint birth increments and the Hardy-prefix energy frontier

The literal Möbius pickup source is retained.  The exact five-moment
birth-cell polynomial has a rank-one increment when one new coefficient is
inserted.  Abel reversal at the birth points exposes the source sequence

  x_n = M_n * (n^(-1/2) - (n+1)^(-1/2)),
  Q_n = sum_{k<n} x_k.

The companion review proves, with all birth cells and endpoint conventions
retained, a two-sided finite-horizon comparison between the actual pickup
energy and a positive weighted Hardy-prefix energy formed from Q_n.

This source does NOT prove that Hardy-prefix energy is subexponential.  It
also records the precise finite-section obstruction: square-mass control of
the increments alone cannot control their Hardy-prefix energy.
-/

namespace GRWTSK.NumberTheory.Moebius.EndpointHardyEnergy

classical

/-- Adjacent inverse-square-root Stieltjes increment. -/
def stieltjesGap (n : ℕ) : ℝ :=
  (Real.sqrt (n : ℝ))⁻¹ - (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹

/-- Actual Mertens-prefix increment in the endpoint Stieltjes coordinate. -/
def stieltjesIncrement (n : ℕ) : ℝ :=
  signedMass n * stieltjesGap n

/-- Prefix immediately before the birth indexed by `n`. -/
def stieltjesPrefix (n : ℕ) : ℝ :=
  ∑ k ∈ Finset.Ico 1 n, stieltjesIncrement k

/-- Physical width of the birth cell `[log n, log (n+1)]`. -/
def birthCellWidth (n : ℕ) : ℝ :=
  Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)

/-- Positive endpoint Hardy energy through the integer horizon `K`. -/
def endpointHardyEnergy (K : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico 1 K,
    birthCellWidth n *
      (stieltjesPrefix n ^ 2 + stieltjesPrefix (n + 1) ^ 2)

/-- Weighted square variation of the same actual increments. -/
def endpointWeightedVariation (K : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico 1 K,
    birthCellWidth n * stieltjesIncrement n ^ 2

/-- Exact rank-one update of the five-moment cross polynomial when the
`N+1` source coefficient is born.  Its self-square cancels against the
diagonal subtraction before this identity is formed. -/
theorem polynomial_step (N : ℕ) (x : ℝ) :
    polynomial (N + 1) x - polynomial N x =
      8 * moebiusReal (N + 1) *
        ((Real.sqrt ((N + 1 : ℕ) : ℝ))⁻¹ - x) *
          (weightedMass N - signedMass N * x) := by
  unfold polynomial coefficient0 coefficient1 coefficient2
  rw [weightedMass_step, signedMass_step,
    squareMoment_step N 2, squareMoment_step N 1,
    squareMoment_step N 0]
  simp only [pow_zero, pow_one]
  ring

/-- Elementary scalar identity behind every prefix-square update. -/
theorem prefix_square_step (q x : ℝ) :
    (q + x) ^ 2 - q ^ 2 = 2 * q * x + x ^ 2 := by
  ring

/-- The exact finite Abel identity
`Q_(N+1) = A_N - M_N / sqrt(N+1)`.
It remains a named source qualification target until the finite `Ico`
summation and all casts are replayed. -/
def EndpointStieltjesPrefixIdentity : Prop :=
  ∀ N : ℕ,
    stieltjesPrefix (N + 1) =
      weightedMass N -
        signedMass N * (Real.sqrt ((N + 1 : ℕ) : ℝ))⁻¹

/-- The actual pickup value at an integer birth is twice the Stieltjes
prefix.  Equality at birth, the closed cutoff and the `n=1` zero are retained. -/
def EndpointBirthSampleIdentity : Prop :=
  ∀ n : ℕ, 1 ≤ n →
    wholePickup (Real.log (n : ℝ)) = 2 * stieltjesPrefix n

/-- Cellwise affine interpolation gives the exact finite-horizon comparison

`P_K - 4 V_K <= pickupEnergy(log K) <= 4 P_K`.

No arithmetic cancellation is used in this comparison. -/
def EndpointHardyEnergyComparison : Prop :=
  EndpointStieltjesPrefixIdentity →
  EndpointBirthSampleIdentity →
  ∀ K : ℕ, 1 ≤ K →
    endpointHardyEnergy K - 4 * endpointWeightedVariation K ≤
        pickupEnergy (Real.log (K : ℝ)) ∧
      pickupEnergy (Real.log (K : ℝ)) ≤
        4 * endpointHardyEnergy K

/-- Unconditional source-magnitude estimate proved in the review:

`endpointWeightedVariation K <= 1/2`.

It uses `|M_n| <= n`, the exact inverse-square-root gap, `log(1+1/n)<=1/n`
and a finite telescoping reciprocal-square bound. -/
def EndpointWeightedVariationHalfBound : Prop :=
  ∀ K : ℕ, endpointWeightedVariation K ≤ (1 / 2 : ℝ)

/-- Dyadic all-positive-rate upper bound for the positive Hardy energy. -/
def DyadicEndpointHardySupplier : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ j : ℕ,
        endpointHardyEnergy (2 ^ j) ≤
          C * Real.exp (ε * (j : ℝ) * Real.log 2)

/-- Eventual all-positive-rate control of the exact endpoint consumer. -/
def CompleteEndpointEstimate : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, R ≤ T →
        endpointSum T ≤ C * Real.exp (ε * T)

/-- Exact completion equivalence at the current source boundary.  The forward
direction uses the comparison above and dyadic coverage.  The reverse direction
uses the endpoint quadrature error, the polynomial diagonal allowance and the
same comparison. -/
def DyadicEndpointHardyIffCompleteEndpoint : Prop :=
  EndpointHardyEnergyComparison →
  EndpointWeightedVariationHalfBound →
    (DyadicEndpointHardySupplier ↔ CompleteEndpointEstimate)

/-- Finite increment square mass. -/
def finiteIncrementSquareMass (t : ℕ → ℝ) (L : ℕ) : ℝ :=
  ∑ k ∈ Finset.range L, t k ^ 2

/-- Finite weighted Hardy-prefix mass. -/
def finiteHardyPrefixMass (t : ℕ → ℝ) (L : ℕ) : ℝ :=
  ∑ n ∈ Finset.range L,
    (∑ k ∈ Finset.range (n + 1), t k) ^ 2 / ((n + 1 : ℕ) : ℝ)

/-- A hypothetical uniform finite-section Hardy bound from square mass alone. -/
def UniformFiniteHardyFromSquare : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ (t : ℕ → ℝ) (L : ℕ),
      finiteHardyPrefixMass t L ≤
        C * finiteIncrementSquareMass t L

/-- The normalized flat packet has square mass one and Hardy mass `(L+1)/2`.
This remains a named finite-sum qualification target. -/
def FlatHardyFixture : Prop :=
  ∀ L : ℕ, 1 ≤ L →
    ∃ t : ℕ → ℝ,
      finiteIncrementSquareMass t L = 1 ∧
      finiteHardyPrefixMass t L = ((L : ℝ) + 1) / 2

/-- Finite Hardy obstruction.  Square-mass control of the increments alone
cannot control their weighted prefix-square mass. -/
def SquareVariationAloneDoesNotControlHardy : Prop :=
  FlatHardyFixture ∧ ¬ UniformFiniteHardyFromSquare

/-- Research disposition.  The exact reduction is completed, while the
source-specific dyadic Hardy bound remains the missing arithmetic witness. -/
def EndpointHardyEnergyDisposition : Prop :=
  EndpointStieltjesPrefixIdentity ∧
    EndpointBirthSampleIdentity ∧
      EndpointHardyEnergyComparison ∧
        EndpointWeightedVariationHalfBound ∧
          DyadicEndpointHardySupplier ∧
            SquareVariationAloneDoesNotControlHardy

end GRWTSK.NumberTheory.Moebius.EndpointHardyEnergy
