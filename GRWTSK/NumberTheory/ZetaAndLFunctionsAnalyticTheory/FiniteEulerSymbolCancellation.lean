/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean elaboration / transitive axiom audit /
independent kernel replay NOT_RUN (pinned Lean toolchain unavailable here).
-/
import Mathlib.Tactic

/-!
# Finite Euler-symbol cancellation: an algebraic core

The exact counterterm in a logarithmic derivative of an Euler factor
cancels the linear-in-X part of its finite smoothed prime-power sum.
This module proves the polynomial identity *before* dividing by 1-z.
The complex symbols are abstract; their identification with values
of actual Dirichlet characters, original L'/L, and the prime-Jacobi
root reconstruction are separate proved/required interfaces.

This finite identity does not by itself give an all-window
Alpöge one-sided estimate, a Weil positivity criterion, or the
actual xi spectral determinant of the prime-only Jacobi operator.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.FiniteEulerSymbolCancellation

/-- Powers 1 through n; the zero-length sum is zero. -/
def geometricPrefix (z : ℂ) (n : ℕ) : ℂ :=
  ∑ h ∈ Finset.range n, z ^ (h + 1)

theorem geometricPrefix_zero (z : ℂ) :
    geometricPrefix z 0 = 0 := by
  simp [geometricPrefix]

theorem geometricPrefix_succ (z : ℂ) (n : ℕ) :
    geometricPrefix z (n + 1) = geometricPrefix z n + z ^ (n + 1) := by
  simp [geometricPrefix, Finset.sum_range_succ]

/-- The precise finite geometric-series identity, without division. -/
theorem geometricPrefix_telescope (z : ℂ) (n : ℕ) :
    geometricPrefix z n * (1 - z) = z - z ^ (n + 1) := by
  induction n with
  | zero =>
      simp [geometricPrefix]
  | succ n ih =>
      rw [geometricPrefix_succ, add_mul, ih]
      conv_rhs => rw [pow_succ]
      ring

/-- Before restoring log(p), X is real but cast to complex scalars.
For an actual prime p, choose z=u/p and w=u. -/
def finiteSmoothedSymbol (z w X : ℂ) (n : ℕ) : ℂ :=
  X * geometricPrefix z n - geometricPrefix w n

/-- Polynomial cancellation theorem: multiplying by (1-z) removes
all denominators and exposes only the finite prefix and geometric tail.
The analytic counterterm X z/(1-z) is not discarded. -/
theorem finiteSmoothedSymbol_cancel (z w X : ℂ) (n : ℕ) :
    (1 - z) * finiteSmoothedSymbol z w X - X * z =
      -(1 - z) * geometricPrefix w n - X * z ^ (n + 1) := by
  change (1 - z) * (X * geometricPrefix z n - geometricPrefix w n) - X * z =
    -(1 - z) * geometricPrefix w n - X * z ^ (n + 1)
  calc
    (1 - z) * (X * geometricPrefix z n - geometricPrefix w n) - X * z =
        X * (geometricPrefix z n * (1 - z)) -
          (1 - z) * geometricPrefix w n - X * z := by ring
    _ = X * (z - z ^ (n + 1)) -
          (1 - z) * geometricPrefix w n - X * z := by
      rw [geometricPrefix_telescope]
    _ = -(1 - z) * geometricPrefix w n - X * z ^ (n + 1) := by ring

end GRWTSK.NumberTheory.FiniteEulerSymbolCancellation
