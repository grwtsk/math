/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.IntegerPoissonZeroFrame.FloorFrame
import Mathlib

/-! # Nearest-integer Poisson geometry -/

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

/-- Nearest integer frequency.  Unlike the floor assignment, this has
uniform distance at most one half while still lying in `0,...,Z`. -/
def nearestFrequency (z : ZeroPoint) : ℕ :=
  ⌊z.1.im + 1 / 2⌋₊

/-- Multiplicity assigned to one nearest-integer frequency bin. -/
def nearestFrequencyBinMass (Z : ℕ) (known : Finset ZeroPoint) (k : ℕ) : ℕ :=
  ∑ z ∈ unknownPositiveHead Z known,
    if k = nearestFrequency z then multiplicity z else 0

theorem nearestFrequency_mem_range {Z : ℕ} {z : ZeroPoint}
    (hz : z ∈ positiveHeightHead (Z : ℝ)) :
    nearestFrequency z ∈ Finset.range (Z + 1) := by
  have hheight := (mem_positiveHeightHead (Z : ℝ) z).mp hz
  have hnonneg : 0 ≤ z.1.im + 1 / 2 := by linarith
  have hfloor : (nearestFrequency z : ℝ) ≤ z.1.im + 1 / 2 := by
    simpa [nearestFrequency] using Nat.floor_le hnonneg
  have hstrict : z.1.im + 1 / 2 < (nearestFrequency z : ℝ) + 1 := by
    simpa [nearestFrequency] using Nat.lt_floor_add_one (z.1.im + 1 / 2)
  have hreal : (nearestFrequency z : ℝ) < (Z : ℝ) + 1 := by
    linarith
  have hnat : nearestFrequency z < Z + 1 := by
    exact_mod_cast hreal
  exact Finset.mem_range.mpr hnat

/-- The nearest integer sample lies within one half of the source height. -/
theorem nearestFrequency_distance_sq_le_quarter {Z : ℕ} {z : ZeroPoint}
    (hz : z ∈ positiveHeightHead (Z : ℝ)) :
    ((nearestFrequency z : ℝ) - z.1.im) ^ 2 ≤ 1 / 4 := by
  have hheight := (mem_positiveHeightHead (Z : ℝ) z).mp hz
  have hnonneg : 0 ≤ z.1.im + 1 / 2 := by linarith
  have hfloor : (nearestFrequency z : ℝ) ≤ z.1.im + 1 / 2 := by
    simpa [nearestFrequency] using Nat.floor_le hnonneg
  have hstrict : z.1.im + 1 / 2 < (nearestFrequency z : ℝ) + 1 := by
    simpa [nearestFrequency] using Nat.lt_floor_add_one (z.1.im + 1 / 2)
  let d : ℝ := (nearestFrequency z : ℝ) - z.1.im
  have hdle : d ≤ 1 / 2 := by dsimp [d]; linarith
  have hdge : -1 / 2 ≤ d := by dsimp [d]; linarith
  have hp : 0 ≤ (1 / 2 - d) * (1 / 2 + d) :=
    mul_nonneg (by linarith) (by linarith)
  dsimp [d] at hp ⊢
  nlinarith

/-- Sharpened uniform kernel bound on the nearest-integer grid.  The constant
`8/17` is the infimum for `1 <= 2-beta <= 2` and distance at most one half. -/
theorem poissonKernelAtTwo_nearest_ge_eight_seventeenths {Z : ℕ} {z : ZeroPoint}
    (hz : z ∈ positiveHeightHead (Z : ℝ)) :
    (8 / 17 : ℝ) ≤ poissonKernelAtTwo z (nearestFrequency z) := by
  have hs := point_mem_strip z
  have hd2 := nearestFrequency_distance_sq_le_quarter hz
  let a : ℝ := 2 - z.1.re
  let d : ℝ := (nearestFrequency z : ℝ) - z.1.im
  have ha1 : 1 < a := by dsimp [a]; linarith
  have ha2 : a < 2 := by dsimp [a]; linarith
  have hprod : 0 ≤ (8 * a - 1) * (2 - a) :=
    mul_nonneg (by linarith) (by linarith)
  have hpoly : 8 * (a ^ 2 + d ^ 2) ≤ 17 * a := by
    dsimp [d] at hd2
    nlinarith
  have ha0 : 0 < a := lt_trans (by norm_num) ha1
  have hden : 0 < a ^ 2 + d ^ 2 := by
    have haSq : 0 < a ^ 2 := sq_pos_of_pos ha0
    nlinarith [sq_nonneg d]
  unfold poissonKernelAtTwo
  change (8 / 17 : ℝ) ≤ a / (a ^ 2 + d ^ 2)
  rw [le_div_iff₀ hden]
  nlinarith

/-- Every unknown multiplicity is assigned to exactly one nearest bin. -/

end GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame
