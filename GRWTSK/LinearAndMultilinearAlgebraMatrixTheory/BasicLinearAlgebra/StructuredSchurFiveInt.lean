/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Data.Int.Basic

/-!
# Five integer coordinates for rank-two rounded Schur rows

A row stores its diagonal and two pairs of generator coordinates.
Signed quotient and remainder comparison implements the existing
nearest-even rule, including its parity choice at a tie. One transition
computes the column once and subtracts the five rounded corrections.
Natural absolute values compare the column and four successor generator
magnitudes with their natural bounds.

The row traversal also compares an eliminated row with its exact pivot
anchor. A surviving row is compared with its supplied endpoint. These
checks supply a finite arithmetic representation of compact replay.
The source table, node ordering, pivot conditions and paid error bounds
are inputs to the original replay consumer. Independent mathematical
review is pending.
-/


set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.FiveIntSchur

structure Row where
  diag : ℤ
  v0 : ℤ
  u0 : ℤ
  v1 : ℤ
  u1 : ℤ
  deriving DecidableEq

structure Caps where
  column : ℕ
  v0 : ℕ
  u0 : ℕ
  v1 : ℕ
  u1 : ℕ

def columnFactor : ℤ := 262144
def displacementFactor : ℤ := 4194304

private def roundMagnitude (x d : ℤ) : ℤ :=
  let q := x / d
  let r := x - q * d
  if d - r < r ∨ (r = d - r ∧ q % 2 = 1) then q + 1 else q

def nearestEven (x d : ℤ) : ℤ :=
  if x < 0 then -roundMagnitude (-x) d else roundMagnitude x d

def transition (delta : ℤ) (pivot row : Row) : ℤ × Row :=
  let c := nearestEven
    ((row.v0 * pivot.u0 - row.u0 * pivot.v0) + (row.v1 * pivot.u1 - row.u1 * pivot.v1))
    (delta * displacementFactor)
  let denominator := pivot.diag * columnFactor
  let next := {
    diag := row.diag - nearestEven (c*c) (pivot.diag * (columnFactor*columnFactor))
    v0 := row.v0 - nearestEven (c*pivot.v0) denominator
    u0 := row.u0 - nearestEven (c*pivot.u0) denominator
    v1 := row.v1 - nearestEven (c*pivot.v1) denominator
    u1 := row.u1 - nearestEven (c*pivot.u1) denominator }
  (c,next)

def Magnitudes (c : ℤ) (row : Row) (bounds : Caps) : Prop :=
  c.natAbs ≤ bounds.column ∧
    row.v0.natAbs ≤ bounds.v0 ∧ row.u0.natAbs ≤ bounds.u0 ∧
    row.v1.natAbs ≤ bounds.v1 ∧ row.u1.natAbs ≤ bounds.u1

instance (c : ℤ) (row : Row) (bounds : Caps) : Decidable (Magnitudes c row bounds) := by
  unfold Magnitudes
  infer_instance

def cell (node : ℕ → ℤ) (pivot : ℕ → Row) (bounds : ℕ → Caps)
    (p i : ℕ) (row : Row) : Bool × Row :=
  if p < i then
    let anchor := pivot p
    let result := transition (node i - node p) anchor row
    (decide (Magnitudes result.1 result.2 (bounds p)), result.2)
  else if p = i then (decide (row = pivot p),row)
  else (true,row)

def run (node : ℕ → ℤ) (pivot : ℕ → Row) (bounds : ℕ → Caps)
    (start i : ℕ) (initial : Row) : ℕ → Bool × Row
  | 0 => (true,initial)
  | k+1 =>
    let old := run node pivot bounds start i initial k
    let next := cell node pivot bounds (start+k) i old.2
    (old.1 && next.1,next.2)

def checkCheckpoint (node : ℕ → ℤ) (pivot : ℕ → Row) (bounds : ℕ → Caps)
    (start i length : ℕ) (initial expected : Row) : Bool :=
  let result := run node pivot bounds start i initial (min length (i+1-start))
  result.1 && if start+length ≤ i then decide (result.2 = expected) else true

end GRWTSK.Algebra.LinearAlgebra.FiveIntSchur
