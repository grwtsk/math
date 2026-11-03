/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleOddPrimeWeightedPrefixAbscissa
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleWeightedPrefixOddCoreChannels
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointSparseGapAllRate
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib

/-!
# Quantitative zero-free transfer for the weighted Liouville-prefix energy

This source records the exact consumer-facing consequences of a zero-free
half-plane.  The external quasi-RH theorem `Re s > 7/8` is deliberately an
explicit premise: no theorem from another repository is imported as an axiom.

The companion review proves analytically, using the classical Liouville
power-abscissa theorem and the exact zero-abscissa identity, that the stated
`7/8` zero-free half-plane yields a weighted-prefix upper exponent
`3/4 + epsilon`.  The source below proves the constant/rate transfers from a
weighted-prefix estimate to the unchanged causal energy and the exact odd
filter.

A fixed `3/4 + epsilon` family is not the all-positive-rate supplier.  The
latter remains equivalent to RH through the exact growth-abscissa theorem.
No `WeightedPrefixSquareAllRate`, `UniformEnergySupplier`, endpoint estimate,
or RH conclusion is asserted.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory

namespace GRWTSK.NumberTheory.LiouvilleWeightedPrefixQuasiRHTransfer

open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixSquareCriterion
open GRWTSK.NumberTheory.LiouvilleOddPrimeWeightedPrefixAbscissa
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixOddCoreChannels
open GRWTSK.NumberTheory.MoebiusEndpointSparseGapAllRate

/-- A fixed exponential-rate upper bound for the exact weighted-prefix moment. -/
def WeightedPrefixUpperAt (δ : ℝ) : Prop :=
  ∃ A : ℝ, 0 ≤ A ∧ ∀ T : ℝ, 0 ≤ T →
    weightedPrefixSquareMoment T ≤ A * Real.exp (δ * T)

/-- A fixed exponential-rate upper bound for the unchanged causal energy. -/
def CausalEnergyUpperAt (δ : ℝ) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∀ T : ℝ, 0 ≤ T →
    energy T ≤ C * Real.exp (δ * T)

/-- The literal odd-prefix weighted moment used in the predecessor comparison. -/
def oddWeightedPrefixSquareMoment (T : ℝ) : ℝ :=
  ∫ x in (1 : ℝ)..Real.exp T,
    (∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
      if n % 2 = 1 then coefficient n else 0) ^ 2 / x ^ 2

/-- Fixed-rate upper bound for the source-identical odd-index filter. -/
def OddWeightedPrefixUpperAt (δ : ℝ) : Prop :=
  ∃ A : ℝ, 0 ≤ A ∧ ∀ T : ℝ, 0 ≤ T →
    oddWeightedPrefixSquareMoment T ≤ A * Real.exp (δ * T)

/-- A direct zero-free-half-plane predicate for the pinned Mathlib zeta. -/
def ZetaZeroFreeRightOf (σ : ℝ) : Prop :=
  ∀ s : ℂ, σ < s.re → riemannZeta s ≠ 0

/-- The externally stated quasi-RH theorem.  It is a premise, not an axiom. -/
def QuasiRHSevenEighths : Prop :=
  ZetaZeroFreeRightOf (7 / 8 : ℝ)

/-- Classical analytic transfer from a zero-free half-plane to the weighted
Liouville-prefix moment.  The complete proof and its literature boundary are
in the companion review; this remains a named analytic interface in Lean. -/
def ZeroFreeToWeightedPrefixRate : Prop :=
  ∀ θ : ℝ, (1 / 2 : ℝ) ≤ θ → ZetaZeroFreeRightOf θ →
    ∀ ε : ℝ, 0 < ε → WeightedPrefixUpperAt (2 * θ - 1 + ε)

/-- Reverse quantitative transfer: a rate `δ` excludes all zeros to the right
of `(1+δ)/2`.  This is the pole obstruction in the causal Mellin transform. -/
def WeightedPrefixRateToZeroFree : Prop :=
  ∀ δ : ℝ, 0 ≤ δ → WeightedPrefixUpperAt δ →
    ZetaZeroFreeRightOf ((1 + δ) / 2)

/-- The strongest fixed exponent supplied by a `7/8` zero-free half-plane. -/
def WeightedPrefixThreeQuarterPlus : Prop :=
  ∀ ε : ℝ, 0 < ε → WeightedPrefixUpperAt (3 / 4 + ε)

/-- Same fixed-exponent family for the unchanged causal energy. -/
def CausalEnergyThreeQuarterPlus : Prop :=
  ∀ ε : ℝ, 0 < ε → CausalEnergyUpperAt (3 / 4 + ε)

/-- Same fixed-exponent family for the exact odd-integer filter. -/
def OddWeightedPrefixThreeQuarterPlus : Prop :=
  ∀ ε : ℝ, 0 < ε → OddWeightedPrefixUpperAt (3 / 4 + ε)

/-- Pure rate algebra: the external `7/8` theorem and the classical
zero-free-to-prefix transfer give the `3/4+epsilon` weighted estimate. -/
theorem quasiRHSevenEighths_to_weightedThreeQuarter
    (htransfer : ZeroFreeToWeightedPrefixRate)
    (hqh : QuasiRHSevenEighths) :
    WeightedPrefixThreeQuarterPlus := by
  intro ε hε
  have hθ : (1 / 2 : ℝ) ≤ 7 / 8 := by norm_num
  have h := htransfer (7 / 8 : ℝ) hθ hqh ε hε
  norm_num at h ⊢
  exact h

/-- Polynomial absorption transports a fixed weighted-prefix rate to the
unchanged causal energy with an arbitrarily small additional exponent. -/
theorem weightedPrefixUpperAt_to_causal
    (hnonneg : WeightedPrefixSquareMomentNonnegative)
    (hhardy : LiouvilleAbelHardyTransfer)
    (hpoly : QuadraticExponentialAbsorption)
    {δ τ : ℝ} (hτ : 0 < τ)
    (hJ : WeightedPrefixUpperAt δ) :
    CausalEnergyUpperAt (δ + τ) := by
  obtain ⟨A, hA, hA_bound⟩ := hJ
  have h2τ : 0 < 2 * τ := by linarith
  obtain ⟨K, hK, hK_bound⟩ := hpoly (2 * τ) h2τ
  refine ⟨A * K / 2, by positivity, ?_⟩
  intro T hT
  have hH := hhardy T hT
  have hJ0 := hnonneg T hT
  have hJT := hA_bound T hT
  have hT2 := hK_bound T hT
  have hmul :
      T ^ 2 * weightedPrefixSquareMoment T ≤
        (K * Real.exp (τ * T)) * (A * Real.exp (δ * T)) := by
    have hKexp : 0 ≤ K * Real.exp (τ * T) := by positivity
    exact mul_le_mul hT2 hJT hJ0 hKexp
  calc
    energy T ≤ T ^ 2 / 2 * weightedPrefixSquareMoment T := hH
    _ ≤ A * K / 2 * Real.exp ((δ + τ) * T) := by
      rw [add_mul, Real.exp_add]
      nlinarith

/-- The fixed `3/4+epsilon` weighted family gives the same limiting fixed
exponent for causal energy after splitting the requested margin in half. -/
theorem weightedThreeQuarter_to_causalThreeQuarter
    (hnonneg : WeightedPrefixSquareMomentNonnegative)
    (hhardy : LiouvilleAbelHardyTransfer)
    (hpoly : QuadraticExponentialAbsorption)
    (hJ : WeightedPrefixThreeQuarterPlus) :
    CausalEnergyThreeQuarterPlus := by
  intro ε hε
  have hhalf : 0 < ε / 2 := by linarith
  have hbase := hJ (ε / 2) hhalf
  have h := weightedPrefixUpperAt_to_causal
    hnonneg hhardy hpoly hhalf hbase
  convert h using 1 <;> ring

/-- The exact odd-filter comparison preserves every fixed exponential rate. -/
theorem weightedPrefixUpperAt_to_odd
    (hcompare : OddWeightedEnergyComparison)
    {δ : ℝ} (hJ : WeightedPrefixUpperAt δ) :
    OddWeightedPrefixUpperAt δ := by
  obtain ⟨A, hA, hA_bound⟩ := hJ
  let c : ℝ := (1 + (Real.sqrt 2)⁻¹) ^ 2
  refine ⟨c * A, mul_nonneg (sq_nonneg _) hA, ?_⟩
  intro T hT
  have hc := (hcompare T hT).2
  have hJT := hA_bound T hT
  dsimp [oddWeightedPrefixSquareMoment]
  calc
    _ ≤ c * weightedPrefixSquareMoment T := hc
    _ ≤ c * (A * Real.exp (δ * T)) :=
      mul_le_mul_of_nonneg_left hJT (sq_nonneg _)
    _ = (c * A) * Real.exp (δ * T) := by ring

/-- The odd-index filter inherits the external `3/4+epsilon` family. -/
theorem weightedThreeQuarter_to_oddThreeQuarter
    (hcompare : OddWeightedEnergyComparison)
    (hJ : WeightedPrefixThreeQuarterPlus) :
    OddWeightedPrefixThreeQuarterPlus := by
  intro ε hε
  exact weightedPrefixUpperAt_to_odd hcompare (hJ ε hε)

/-- Exact research boundary.  The zero-abscissa identity makes the all-rate
supplier equivalent to the critical-line assertion; a `7/8` theorem supplies
only the fixed exponent `3/4+epsilon`. -/
def QuasiRHTransferDisposition : Prop :=
  ZeroFreeToWeightedPrefixRate ∧
    WeightedPrefixRateToZeroFree ∧
      (QuasiRHSevenEighths → WeightedPrefixThreeQuarterPlus) ∧
        (WeightedPrefixSquareAllRate ↔ _root_.RiemannHypothesis)

end GRWTSK.NumberTheory.LiouvilleWeightedPrefixQuasiRHTransfer
