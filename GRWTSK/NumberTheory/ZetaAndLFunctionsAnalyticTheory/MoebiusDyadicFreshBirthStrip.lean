/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupEndpointQuadrature
import Mathlib

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

/-!
# Uniformly summable near-critical original causal birth strips

At the FIXED physical horizons T_j=j*log 2 and N_j=2^j, choose ONCE
0 <= lambda <= 1 and the ACTUAL newborn index interval
  B_j=(N_j-h_j,N_j], h_j=floor(lambda*N_j^(2/3)/(j+1)),
  j>=3.
Each original response born at n in B_j is zero before
T_(j-1) and increases at most (u-log n)/sqrt(n).

The written source-exact mathematical theorem proves:
  |freshSliceCross(lambda,j)| <= 24*h_j^3/N_j^2
                              <= 24*lambda^3/(j+1)^3,
  sum_(j>=3) |freshSliceCross(lambda,j)| <= lambda^3,
  sum_(j>=J) |freshSliceCross(lambda,j)|
       <= 12*lambda^3/(J*(J+1)), J>=3.

The original complete ordered signed cross is the sum of EVERY
time slice, including the original unchanged Möbius signs and both
orientations. Its residual after these newborn packets is EXACT,
and the previously constructed endpoint curvature costs 1/4:
  |endpointSum(T_J)-sum_(j=1..J) residualSliceCross(lambda,j)|
       <= 1/4+lambda^3.

The choice lambda=1/2 gives a 3/8 absolute FULL-DYADIC source
return allowance at ALL J; the grid has fixed affine coverage
alpha=1 and beta=log2, independent of lambda and target rate.

This is a real subexponential ABSOLUTE ALLOWANCE for a proper
source packet, NOT a strict rate<1 bound for the original complete
endpoint or the remaining signed residual. The proof needs no PNT,
Mertens growth hypothesis, RH, or probabilistic independence.
It is valid even for general coefficients |a_n|<=1, so no
Möbius-specific cancellation is claimed here.

Only the finite exact source pair-mask partition is supplied as a
Lean source proof CANDIDATE. The original causal interval estimates,
the total cost and fixed-grid analytic transfer are named UNPROVED
Lean Props. No sorry, new axiom, imported hypothetical RH
arithmetic premise, or root-import promotion.
-/

namespace GRWTSK.NumberTheory.Moebius.DyadicFreshBirthStrip

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

classical

/-- A single fixed dyadic observation scale, never a scale set
reselected after the desired exponential rate is known. -/
def dyadicTime (j : ℕ) : ℝ := (j : ℝ) * Real.log 2

def dyadicUpper (j : ℕ) : ℕ := 2 ^ j

def fixedDyadicGrid : Set ℝ :=
  {T | ∃ j : ℕ, T = dyadicTime j}

/-- The near-critical width shrinks by the SAME logarithmic
factor at every dyadic level. It may be zero at small j. -/
def freshWidth (lambda : ℝ) (j : ℕ) : ℕ :=
  ⌊lambda * (2 : ℝ) ^ ((2 * (j : ℝ)) / 3) / ((j : ℝ) + 1)⌋₊

/-- Literal ORIGINAL terminal-born integers, not fitted samples
or a replacement finite-support coefficient sequence. -/
def freshIndices (lambda : ℝ) (j : ℕ) : Finset ℕ :=
  Finset.Icc (dyadicUpper j - freshWidth lambda j + 1) (dyadicUpper j)

/-- The physical-time integral of exactly ONE ORIGINAL ordered
signed pair over the j-th dyadic time cell. -/
def sourceCellPair (j m n : ℕ) : ℝ :=
  moebiusReal m * moebiusReal n *
    ∫ u in dyadicTime (j - 1)..dyadicTime j,
      pickupResponse m u * pickupResponse n u

/-- The FULL original ordered cross source on one dyadic time
cell. Unborn indices beyond 2^j are identically zero. -/
def sourceCellCross (j : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (dyadicUpper j),
    ∑ n ∈ Finset.Icc 1 (dyadicUpper j),
      if m ≠ n then sourceCellPair j m n else 0

/-- The original source pair is selected if either original index
belongs to this time cell's last-born band, starting only at j=3. -/
def touchesFreshLayer (lambda : ℝ) (j m n : ℕ) : Prop :=
  3 ≤ j ∧ (m ∈ freshIndices lambda j ∨ n ∈ freshIndices lambda j)

/-- BOTH original ordered orientations are included, with the
diagonal still excluded. No coefficient is made nonnegative. -/
def freshSliceCross (lambda : ℝ) (j : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (dyadicUpper j),
    ∑ n ∈ Finset.Icc 1 (dyadicUpper j),
      if m ≠ n ∧ touchesFreshLayer lambda j m n then
        sourceCellPair j m n else 0

/-- The literal full SIGNED complement of the fresh layer
within the original dyadic time cell. It retains all original
low-index, large-gcd, rough/matched and other signed sectors. -/
def residualSliceCross (lambda : ℝ) (j : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (dyadicUpper j),
    ∑ n ∈ Finset.Icc 1 (dyadicUpper j),
      if m ≠ n ∧ ¬touchesFreshLayer lambda j m n then
        sourceCellPair j m n else 0

/-- Pure finite arithmetic identity. It preserves BOTH
orientations of every ordered off-diagonal source pair
and the full signed complementary source. -/
theorem sourceCellCross_eq_fresh_add_residual
    (lambda : ℝ) (j : ℕ) :
    sourceCellCross j =
      freshSliceCross lambda j + residualSliceCross lambda j := by
  unfold sourceCellCross freshSliceCross residualSliceCross
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m = n
  · simp [hmn]
  · by_cases hf : touchesFreshLayer lambda j m n
    · simp [hmn, hf]
    · simp [hmn, hf]

/-- The same exact mask decomposition across ANY finite dyadic
inventory, WITHOUT changing the grid, cutoff or signs. -/
theorem sum_source_cells_eq_fresh_add_residual
    (lambda : ℝ) (J : ℕ) :
    (∑ j ∈ Finset.Icc 1 J, sourceCellCross j) =
      (∑ j ∈ Finset.Icc 1 J, freshSliceCross lambda j) +
        (∑ j ∈ Finset.Icc 1 J, residualSliceCross lambda j) := by
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j hj
  exact sourceCellCross_eq_fresh_add_residual lambda j

/-- The cumulative retained signed source; this is the
actual complete dyadic time decomposition after removing
only the explicitly quantified last-born packet. -/
def cumulativeResidual (lambda : ℝ) (J : ℕ) : ℝ :=
  ∑ j ∈ Finset.Icc 1 J, residualSliceCross lambda j

/-- Paper-proved true original source finite Fubini/causality
transport. No free full-source identity is assumed as an axiom. -/
def OriginalDyadicCrossPartitionTarget : Prop :=
  ∀ J : ℕ,
    pickupCross (dyadicTime J) =
      ∑ j ∈ Finset.Icc 1 J, sourceCellCross j

/-- The intermediate sharp original-source near-birth ramp:
every selected original ordered pair is paid once, with both
orientations and the true nonnegative physical-time kernel. -/
def PerCellFreshPhysicalBoundTarget : Prop :=
  ∀ lambda : ℝ, 0 ≤ lambda → lambda ≤ 1 →
    ∀ j : ℕ, 3 ≤ j →
      |freshSliceCross lambda j| ≤
        24 * (freshWidth lambda j : ℝ) ^ 3 /
          (dyadicUpper j : ℝ) ^ 2

/-- Paper-proved unconditional physical birth-ramp budget.
Original mu coefficients and the true signed kernel remain.
This is NOT a compiled Lean theorem at publication. -/
def PerCellFreshBoundTarget : Prop :=
  ∀ lambda : ℝ, 0 ≤ lambda → lambda ≤ 1 →
    ∀ j : ℕ, 3 ≤ j →
      |freshSliceCross lambda j| ≤
        24 * lambda ^ 3 / ((j : ℝ) + 1) ^ 3

/-- Original newborn packet is absolutely summable with ONE
scale-independent constant and an explicit decaying dyadic tail.
NO arithmetic hypothesis is among the quantifiers. -/
def UniformFreshTailTarget : Prop :=
  ∀ lambda : ℝ, 0 ≤ lambda → lambda ≤ 1 →
    ∀ J K : ℕ, 3 ≤ J → J ≤ K →
      (∑ j ∈ Finset.Icc J K, |freshSliceCross lambda j|) ≤
        12 * lambda ^ 3 / ((J : ℝ) * ((J : ℝ) + 1))

/-- Exact full-endpoint uniform source comparison on the
SAME grid j*log 2 for ALL j; only the pre-existing 1/4
curvature allowance and the paid newborn lambda^3 appear. -/
def UniformEndpointResidualDefectTarget : Prop :=
  ∀ lambda : ℝ, 0 ≤ lambda → lambda ≤ 1 →
    ∀ J : ℕ,
      |endpointSum (dyadicTime J) - cumulativeResidual lambda J| ≤
        1 / 4 + lambda ^ 3

/-- The original desired EVERY-POSITIVE-RATE one-sided dyadic
quantifiers, applied to any explicit integer-indexed observation. -/
def EveryRateOnFixedDyadicGrid (v : ℕ → ℝ) : Prop :=
  ∀ delta : ℝ, 0 < delta →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ J : ℕ,
        v J ≤ C * Real.exp (delta * dyadicTime J)

/-- UNPROVED as Lean: source-exact bounded-error equivalence.
The right side is the true REMAINING signed original source,
and its all-rate upper estimate is still OPEN/RH-strength. -/
def FixedGridResidualAllRatesIffTarget : Prop :=
  ∀ lambda : ℝ, 0 ≤ lambda → lambda ≤ 1 →
    EveryRateOnFixedDyadicGrid
      (fun J => endpointSum (dyadicTime J)) ↔
    EveryRateOnFixedDyadicGrid
      (cumulativeResidual lambda)

end GRWTSK.NumberTheory.Moebius.DyadicFreshBirthStrip
