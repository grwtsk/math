/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleCausalEnergyTarget
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointSparseGapAllRate
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.MoebiusEndpointSparseGapAllRate

/-!
# Weighted Liouville prefix-square criterion for uniform causal energy

The unchanged Liouville coefficient and causal energy are reused.  The new
arithmetic quantity is the logarithmically natural weighted square mean

`J(T) = integral_1^(exp T) L(x)^2 / x^2 dx`,

where `L(x)` is the actual Liouville prefix through `floor x`.

The companion review proves the exact Abel/Hardy estimate

`energy T <= (T^2 / 2) * J(T)`

and the finite identities expressing `J(log (N+1))` as both a weighted prefix
square and a complete signed all-shift correlation.  Those analytical and
finite-reindexing statements remain explicit source qualification targets.

The theorem below proves the exact all-positive-rate constant assembly once
those source identities and the already isolated elementary quadratic
absorption interface are supplied.  No prefix-square estimate, uniform energy
theorem, or Riemann Hypothesis claim is assumed or proved here.
-/

namespace GRWTSK.NumberTheory.LiouvilleWeightedPrefixSquareCriterion

classical

/-- Actual positive-index Liouville prefix at a real cutoff. -/
def liouvillePrefix (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, coefficient n

/-- Actual positive-index Liouville prefix at an integer cutoff. -/
def liouvillePrefixNat (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, coefficient n

/-- Weighted prefix-square mean in the physical logarithmic coordinate. -/
def weightedPrefixSquareMoment (T : ℝ) : ℝ :=
  ∫ x in (1 : ℝ)..Real.exp T, liouvillePrefix x ^ 2 / x ^ 2

/-- The elementary nonnegativity gate for the oriented interval integral. -/
def WeightedPrefixSquareMomentNonnegative : Prop :=
  ∀ T : ℝ, 0 ≤ T → 0 ≤ weightedPrefixSquareMoment T

/-- Exact Abel plus finite-horizon Hardy transfer for the unchanged source. -/
def LiouvilleAbelHardyTransfer : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    energy T ≤ T ^ 2 / 2 * weightedPrefixSquareMoment T

/-- Averaged arithmetic supplier: one constant for every positive rate. -/
def WeightedPrefixSquareAllRate : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ A : ℝ, 0 ≤ A ∧
      ∀ T : ℝ, 0 ≤ T →
        weightedPrefixSquareMoment T ≤ A * Real.exp (η * T)

/-- Exact constant assembly.  The arithmetic input is the averaged prefix
square, not a pointwise Liouville-prefix estimate. -/
theorem weightedPrefixSquareAllRate_to_uniformEnergy
    (hnonneg : WeightedPrefixSquareMomentNonnegative)
    (hhardy : LiouvilleAbelHardyTransfer)
    (hpoly : QuadraticExponentialAbsorption)
    (hmoment : WeightedPrefixSquareAllRate) :
    UniformEnergySupplier := by
  intro ε hε
  have hhalf : 0 < ε / 2 := by linarith
  obtain ⟨A, hA, hA_bound⟩ := hmoment (ε / 2) hhalf
  obtain ⟨K, hK, hK_bound⟩ := hpoly ε hε
  refine ⟨A * K / 2, by positivity, ?_⟩
  intro T hT
  have hH := hhardy T hT
  have hJ0 := hnonneg T hT
  have hJ := hA_bound T hT
  have hT2 := hK_bound T hT
  have hKexp : 0 ≤ K * Real.exp ((ε / 2) * T) := by positivity
  have hmul :
      T ^ 2 * weightedPrefixSquareMoment T ≤
        (K * Real.exp ((ε / 2) * T)) *
          (A * Real.exp ((ε / 2) * T)) :=
    mul_le_mul hT2 hJ hJ0 hKexp
  have hrate : ε * T = (ε / 2) * T + (ε / 2) * T := by ring
  calc
    energy T ≤ T ^ 2 / 2 * weightedPrefixSquareMoment T := hH
    _ ≤ A * K / 2 * Real.exp (ε * T) := by
      rw [hrate, Real.exp_add]
      nlinarith

/-- Finite weighted square sum.  The companion review identifies it with the
continuous moment at `T = log (N+1)`. -/
def discreteWeightedPrefixSquare (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 N,
    liouvillePrefixNat k ^ 2 / ((k : ℝ) * (k + 1 : ℕ))

/-- Diagonal part of the complete weighted correlation expansion. -/
def weightedPrefixDiagonal (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N,
    (1 / (n : ℝ) - 1 / ((N + 1 : ℕ) : ℝ))

/-- Complete signed off-diagonal all-shift contribution. -/
def completeWeightedShiftAggregate (N : ℕ) : ℝ :=
  2 * ∑ h ∈ Finset.Icc 1 (N - 1),
    ∑ m ∈ Finset.Icc 1 (N - h),
      coefficient m * coefficient (m + h) *
        (1 / ((m + h : ℕ) : ℝ) - 1 / ((N + 1 : ℕ) : ℝ))

/-- Piecewise-constant integral identity, including the terminal `N+1` face. -/
def WeightedPrefixSquareContinuousDiscreteIdentity : Prop :=
  ∀ N : ℕ, 1 ≤ N →
    weightedPrefixSquareMoment (Real.log ((N + 1 : ℕ) : ℝ)) =
      discreteWeightedPrefixSquare N

/-- Complete finite correlation identity.  Every additive shift and endpoint
weight is retained before the outer signed sum is estimated. -/
def WeightedPrefixSquareShiftIdentity : Prop :=
  ∀ N : ℕ,
    discreteWeightedPrefixSquare N =
      weightedPrefixDiagonal N + completeWeightedShiftAggregate N

/-- Dyadic block version of the averaged arithmetic target. -/
def DyadicWeightedPrefixSquareSupplier : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ j : ℕ,
        (∑ k ∈ Finset.Icc (2 ^ j) (2 ^ (j + 1) - 1),
          liouvillePrefixNat k ^ 2 /
            ((k : ℝ) * (k + 1 : ℕ))) ≤
          C * Real.exp (η * (j : ℝ) * Real.log 2)

/-- Formalization frontier: dyadic block control implies the continuous
all-rate supplier after geometric summation and floor coverage. -/
def DyadicWeightedPrefixSquareImpliesAllRate : Prop :=
  WeightedPrefixSquareContinuousDiscreteIdentity →
    DyadicWeightedPrefixSquareSupplier →
      WeightedPrefixSquareAllRate

/-- Research disposition.  The Hardy transfer is a weaker-shaped arithmetic
criterion than pointwise square-root prefix control, but it remains RH-strength
through the unchanged causal return. -/
def WeightedPrefixSquareCriterionDisposition : Prop :=
  WeightedPrefixSquareMomentNonnegative ∧
    LiouvilleAbelHardyTransfer ∧
      WeightedPrefixSquareContinuousDiscreteIdentity ∧
        WeightedPrefixSquareShiftIdentity ∧
          DyadicWeightedPrefixSquareImpliesAllRate

end GRWTSK.NumberTheory.LiouvilleWeightedPrefixSquareCriterion
