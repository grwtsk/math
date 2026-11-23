/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE; Lean 4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Elaboration, kernel replay, axiom audit: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiToeplitzHilbertPolyaCriterion
import Mathlib.Tactic

/-!
# Xi Taylor companion: exact zero-independent Fredholm source

The mathematical proof in XiTaylorFredholmLinearization.md constructs
a trace-class operator K directly from the original theta-derived
Taylor coefficients of the TRUE completed xi. Its finite determinants
are precisely the original Taylor polynomials, with no zero ordinates
used as input. Every zero and analytic multiplicity is therefore
retained by the resulting full Fredholm determinant.

The infinite Hilbert-space construction, trace-class convergence and
determinant identities are proved ANALYTICALLY in the adjacent note,
not formalized in Lean. This file supplies source-bound finite-matrix
definitions and elementary two/three-step algebra candidates only.

K has an unmatched shift subdiagonal and is NOT self-adjoint, even
if RH holds. No theorem of Alpoge, RH, positive Xi Hankel moment or
other conjectural source is imported, asserted, or used.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.XiTaylorFredholmLinearization

open GRWTSK.NumberTheory.XiToeplitzHilbertPolyaCriterion

/-- The fixed summable, strictly positive shift weights. -/
def sourceShiftWeight (n : ℕ) : ℝ :=
  (n + 2 : ℝ) ^ (-(3 : ℝ) / 2)

/-- Coefficient-independent finite product; W_0=1. -/
def sourceWeightProduct (n : ℕ) : ℝ :=
  ∏ j ∈ Finset.range n, sourceShiftWeight j

/-- A rank-one row built only from the actual original xi Taylor
coefficients, not a zero record. -/
def originalXiCompanionRow (j : ℕ) : ℂ :=
  ((normalizedEvenXiTaylor (j + 1) : ℝ) : ℂ) /
    ((sourceWeightProduct j : ℝ) : ℂ)

/-- Finite coefficient-based Hessenberg realization of original xi.
The mathematical determinant formula is
det(I+w*K_N)=sum_{j=0}^N a_j*w^j. This source-identification
is NOT established by an infinite Lean theorem here. -/
def originalXiCompanionMatrix (N : ℕ) : Matrix (Fin N) (Fin N) ℂ :=
  fun i j =>
    if i.val = 0 then originalXiCompanionRow j.val
    else if i.val = j.val + 1 then
      -((sourceShiftWeight j.val : ℝ) : ℂ)
    else 0

/-- Exact two-step determinant identity when the rank-one row
and shift product equal the original second coefficient. -/
theorem two_step_companion_determinant
    (a1 a2 q v z : ℂ) (h : q * v = a2) :
    (1 + z * a1) - (z * v) * (-(z * q)) =
      1 + a1 * z + a2 * z ^ 2 := by
  calc
    (1 + z * a1) - (z * v) * (-(z * q))
        = 1 + a1 * z + (q * v) * z ^ 2 := by ring
    _ = 1 + a1 * z + a2 * z ^ 2 := by rw [h]

/-- Exact length-three rank-one row coefficients. This is the
coefficient identity behind the dimension-three determinant. -/
theorem three_step_companion_coefficients
    (a1 a2 a3 q0 q1 v1 v2 z : ℂ)
    (h2 : q0 * v1 = a2)
    (h3 : q0 * q1 * v2 = a3) :
    1 + a1 * z + (q0 * v1) * z ^ 2 +
        (q0 * q1 * v2) * z ^ 3 =
      1 + a1 * z + a2 * z ^ 2 + a3 * z ^ 3 := by
  rw [h2, h3]

/-- The first nontrivial power trace of the finite companion,
and hence the second genuine Newton trace, is NOT a positive
square of the raw theta moments. -/
theorem two_step_trace_square
    (a1 a2 q v : ℂ) (h : q * v = a2) :
    a1 ^ 2 - 2 * q * v = a1 ^ 2 - 2 * a2 := by
  calc
    a1 ^ 2 - 2 * q * v = a1 ^ 2 - 2 * (q * v) := by ring
    _ = a1 ^ 2 - 2 * a2 := by rw [h]

end GRWTSK.NumberTheory.XiTaylorFredholmLinearization
