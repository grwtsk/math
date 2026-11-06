/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import Mathlib

/-!
# Trivial intersection of projection ranges does not imply positive I-P-Q

Exact two-dimensional counterexample to a tempting reading of the semilocal
trace formula, Connes arXiv:2602.04022v1, (22). It does not refute that formula
or Weil positivity: the actual arithmetic representation and test-function
constraints contain information absent from this counterexample.
Finite rational algebra; no experimental or numerical hypothesis is used.
AI-assisted source candidate. Compilation/kernel/axiom audit: NOT_RUN.
-/
set_option autoImplicit false
namespace GRWTSK.Analysis.OperatorTheory.ProjectionSign

def dot (u v : ℝ × ℝ) : ℝ := u.1 * v.1 + u.2 * v.2

def first (v : ℝ × ℝ) : ℝ × ℝ := (v.1, 0)
def diagonal (v : ℝ × ℝ) : ℝ × ℝ := ((v.1 + v.2) / 2, (v.1 + v.2) / 2)
def complement (v : ℝ × ℝ) : ℝ × ℝ :=
  (v.1 - (first v).1 - (diagonal v).1, v.2 - (first v).2 - (diagonal v).2)

theorem first_idempotent (v : ℝ × ℝ) : first (first v) = first v := rfl

theorem diagonal_idempotent (v : ℝ × ℝ) : diagonal (diagonal v) = diagonal v := by
  apply Prod.ext <;> dsimp [diagonal] <;> ring

theorem first_symmetric (u v : ℝ × ℝ) : dot (first u) v = dot u (first v) := by
  dsimp [dot, first]
  ring

theorem diagonal_symmetric (u v : ℝ × ℝ) :
    dot (diagonal u) v = dot u (diagonal v) := by
  dsimp [dot, diagonal]
  ring

/-- The only vector fixed by both orthogonal projections is zero. -/
theorem common_fixed_vector_is_zero (v : ℝ × ℝ)
    (hp : first v = v) (hq : diagonal v = v) : v = (0, 0) := by
  have hy := congrArg Prod.snd hp
  have hx := congrArg Prod.fst hq
  dsimp [first] at hy
  dsimp [diagonal] at hx
  apply Prod.ext <;> dsimp <;> linarith

/-- Therefore a trace-positivity argument cannot use trivial intersection alone. -/
theorem complement_has_negative_direction :
    dot (complement (1, 0)) (1, 0) = -(1 / 2 : ℝ) := by
  norm_num [dot, complement, first, diagonal]

end GRWTSK.Analysis.OperatorTheory.ProjectionSign
