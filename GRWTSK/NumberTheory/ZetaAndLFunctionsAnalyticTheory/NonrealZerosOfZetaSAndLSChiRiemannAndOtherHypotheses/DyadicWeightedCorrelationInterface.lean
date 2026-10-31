/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicModTwoPairLift
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Open arithmetic two-point correlation interface for the ORIGINAL RH source

OpenAI Math family 007 states ordinary (rather than log-averaged)
correlation results for fixed nonproportional affine forms, including a
Liouville theorem and a nonpretentiousness-conditional multiplicative
function theorem. Those statements are NOT imported or silently
applied to the Mobius function, growing shifts, the squarefree
indicator, or the present time-dependent response weights.

The ACTUAL existing source is the full ordered off-diagonal signed
Mobius product with its original causal response, on the EXACT
geometric cutoff 2^j. We expose its complete signed rows, which
can receive estimates from arithmetic correlation methods without
taking absolute values or deleting either pair orientation.

The global signed row comparison is elementary. A real
all-positive-rate estimate for the COMPLETE sum of row allowances,
including the original endpoint curvature, is still the open
arithmetic supplier. A fixed-shift logarithmic saving is insufficient.
-/

namespace GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface

open GRWTSK.NumberTheory.Moebius.DyadicModTwoPairLift
open GRWTSK.NumberTheory.Moebius.PickupCellQuadratic
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint

/-- Exact original closed, unsifted, signed index set at height j. -/
def indices (j : ℕ) : Finset ℕ := Finset.Icc 1 (2 ^ j)

/-- One ordered source pair. The original diagonal is identically zero. -/
def contribution (m n : ℕ) (u : ℝ) : ℝ :=
  if m = n then 0 else originalPair m n u

/-- A complete row of signed correlations; no term is made positive. -/
def signedRow (j m : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ indices j, contribution m n u

/-- The ORIGINAL signed density is exactly the sum over all complete rows.
Every squareful zero and every positive/negative ordered pair survives. -/
theorem crossDensity_eq_signedRows (j : ℕ) (u : ℝ) :
    crossDensity (dyadicTime j) u =
      ∑ m ∈ indices j, signedRow j m u := by
  rw [crossDensity_eq_ordered, dyadic_cutoff]
  simp only [signedRow, indices]
  apply Finset.sum_congr rfl
  intro m _
  apply Finset.sum_congr rfl
  intro n _
  by_cases h : m = n
  · simp [contribution, h]
  · simp [contribution, h, originalPair]

/-- Local source-derived signed upper bounds on complete rows may be
summed without discarding the cancellation INSIDE any row. -/
theorem crossDensity_le_of_signedRowUpper
    (j : ℕ) (u : ℝ) (upper : ℕ → ℝ)
    (hupper : ∀ m ∈ indices j, signedRow j m u ≤ upper m) :
    crossDensity (dyadicTime j) u ≤
      ∑ m ∈ indices j, upper m := by
  rw [crossDensity_eq_signedRows]
  exact Finset.sum_le_sum hupper

/-- The complete source is symmetric under exchanging the two
ARITHMETIC indices, but not under dropping either orientation. -/
theorem contribution_symmetric (m n : ℕ) (u : ℝ) :
    contribution m n u = contribution n m u := by
  by_cases h : m = n
  · subst n
    simp [contribution]
  · have h' : n ≠ m := Ne.symm h
    simp only [contribution, if_neg h, if_neg h']
    unfold originalPair
    ring


end GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
