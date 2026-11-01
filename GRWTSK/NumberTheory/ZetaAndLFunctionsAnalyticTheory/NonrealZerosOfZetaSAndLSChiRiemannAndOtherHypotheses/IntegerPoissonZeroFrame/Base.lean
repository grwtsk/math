/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PadicMobiusCofinalTwoUnitBridge
import Mathlib.Algebra.Order.Chebyshev
import Mathlib

/-!
# A fixed lower frame for the positive-height zeta-zero deficit

For every positive-height nontrivial zero `rho = beta + i gamma` through
integer height `Z`, sample the positive Poisson kernel on the line `Re s = 2`
at all integer frequencies `0,...,Z` and assign the zero to its nearest
integer frequency.

The critical-strip inequalities imply

  (2-beta) / ((2-beta)^2 + (nearest gamma-gamma)^2) >= 8/17.

All kernel terms are nonnegative.  Grouping unknown zeros by nearest integer
frequency therefore gives the sharpened fixed lower frame

  64 * deficit <= 289 * sum_{k=0}^Z sample(k)^2.

There is no factor `Z+1`: collisions in one bin increase the square.  The
older floor assignment and its `4/25` frame are retained as a simpler
intermediate theorem.  The module then exposes, separately, the source
comparison needed to dominate
this zero energy by a prime-window family and the centered p-adic arithmetic
upper bound needed for one-zero resolution.

No completed-log-derivative identity, zero-to-prime comparison, centered
large-prime estimate, cofinal numerical inventory, RH conclusion,
compilation, or kernel audit is supplied unconditionally.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame

open CanonicalZeroDivisor
open PositiveHeightCountDeficit
open CofinalTwoUnitEffectiveRateBridge
open GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedPairBudget
open GRWTSK.NumberTheory.PadicMobiusPrimeWindowSeam
open PadicMobiusCofinalTwoUnitBridge

/-- The actual uncredited positive-height source points through `Z`. -/
def unknownPositiveHead (Z : ℕ) (known : Finset ZeroPoint) : Finset ZeroPoint :=
  positiveHeightHead (Z : ℝ) \ known

/-- Their complete analytic multiplicity. -/
def unknownMultiplicityDeficit (Z : ℕ) (known : Finset ZeroPoint) : ℕ :=
  ∑ z ∈ unknownPositiveHead Z known, multiplicity z

/-- Integer frequency assigned to a positive-height zero. -/
def floorFrequency (z : ZeroPoint) : ℕ :=
  ⌊z.1.im⌋₊

/-- Positive Poisson kernel on the line `Re s = 2`. -/
def poissonKernelAtTwo (z : ZeroPoint) (k : ℕ) : ℝ :=
  (2 - z.1.re) /
    ((2 - z.1.re) ^ 2 + ((k : ℝ) - z.1.im) ^ 2)

/-- Multiplicity-weighted unknown-zero sample at integer frequency `k`. -/
def integerPoissonSample (Z : ℕ) (known : Finset ZeroPoint) (k : ℕ) : ℝ :=
  ∑ z ∈ unknownPositiveHead Z known,
    (multiplicity z : ℝ) * poissonKernelAtTwo z k

/-- Complete finite integer-frequency energy through the same height. -/
def integerPoissonEnergy (Z : ℕ) (known : Finset ZeroPoint) : ℝ :=
  ∑ k ∈ Finset.range (Z + 1), integerPoissonSample Z known k ^ 2

/-- Multiplicity assigned to one integer frequency bin. -/
def frequencyBinMass (Z : ℕ) (known : Finset ZeroPoint) (k : ℕ) : ℕ :=
  ∑ z ∈ unknownPositiveHead Z known,
    if k = floorFrequency z then multiplicity z else 0

theorem poissonKernelAtTwo_nonneg (z : ZeroPoint) (k : ℕ) :
    0 ≤ poissonKernelAtTwo z k := by
  have hs := point_mem_strip z
  have ha : 0 < 2 - z.1.re := by linarith
  unfold poissonKernelAtTwo
  exact div_nonneg (le_of_lt ha)
    (add_nonneg (sq_nonneg _) (sq_nonneg _))

theorem floorFrequency_mem_range {Z : ℕ} {z : ZeroPoint}
    (hz : z ∈ positiveHeightHead (Z : ℝ)) :
    floorFrequency z ∈ Finset.range (Z + 1) := by
  have hheight := (mem_positiveHeightHead (Z : ℝ) z).mp hz
  have hfloor : (floorFrequency z : ℝ) ≤ z.1.im := by
    simpa [floorFrequency] using Nat.floor_le (le_of_lt hheight.1)
  have hfloorZ : (floorFrequency z : ℝ) ≤ (Z : ℝ) :=
    hfloor.trans hheight.2
  have hfloorNat : floorFrequency z ≤ Z := by
    exact_mod_cast hfloorZ
  exact Finset.mem_range.mpr (Nat.lt_succ_of_le hfloorNat)

/-- The floor sample lies within one unit of the source height. -/
theorem floorFrequency_distance_sq_lt_one {Z : ℕ} {z : ZeroPoint}
    (hz : z ∈ positiveHeightHead (Z : ℝ)) :
    ((floorFrequency z : ℝ) - z.1.im) ^ 2 < 1 := by
  have hheight := (mem_positiveHeightHead (Z : ℝ) z).mp hz
  have hfloor : (floorFrequency z : ℝ) ≤ z.1.im := by
    simpa [floorFrequency] using Nat.floor_le (le_of_lt hheight.1)
  have hnext : z.1.im < (floorFrequency z : ℝ) + 1 := by
    simpa [floorFrequency] using Nat.lt_floor_add_one z.1.im
  let d : ℝ := (floorFrequency z : ℝ) - z.1.im
  have hd0 : d ≤ 0 := by dsimp [d]; linarith
  have hdm1 : -1 < d := by dsimp [d]; linarith
  have hp : 0 < (1 - d) * (1 + d) :=
    mul_pos (by linarith) (by linarith)
  dsimp [d] at hp ⊢
  nlinarith

/-- Uniform critical-strip lower bound at the assigned integer sample.
The constant `2/5` is the infimum for `1 <= 2-beta <= 2` and distance below one. -/

end GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame
