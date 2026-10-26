/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and existing GRWTSK source retain upstream authorship/license. -/
import Mathlib

set_option autoImplicit false

/-!
# A source-explicit, finite bent-route versus straight-route energy fixture

This is a *planar, axis-aligned polygonal* comparison, not a geometric
optics ray equation and not a Kakeya tube family. The straight route
passes through one declared high-cost cell centered at (1,0).
A detour takes the four unit segments:
  (0,0) → (0,1) → (1,1) → (2,1) → (2,0).
The straight path takes two unit segments:
  (0,0) → (1,0) → (2,0).

With one straight-route medium penalty V ≥ 0 and two independent
turn penalties κ ≥ 0 on the detour, the detour is preferred precisely
when V > 2 + 2κ. Equal or lower barriers do not force bending.

This is a model of *cost competition*. Actual optical fibers require
Maxwell/geometric optics and index/interface laws; harmonic fields
minimize quadratic energy instead of this discrete route cost.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFiberDetourEnergy

/-- Two-dimensional chosen grid points; no physical refractive index
or general Euclidean path metric is inferred from a grid fixture. -/
abbrev GridPoint := Fin 2 → ℝ

def xy (x y : ℝ) : GridPoint :=
  fun j => if j = 0 then x else y

/-- Manhattan length, equal to ordinary Euclidean segment length for
each axis-aligned unit segment in this *particular* fixture. -/
def axisAlignedLength (p q : GridPoint) : ℝ :=
  |p 0 - q 0| + |p 1 - q 1|

def origin : GridPoint := xy 0 0
def middle : GridPoint := xy 1 0
def target : GridPoint := xy 2 0
def upperLeft : GridPoint := xy 0 1
def upperMiddle : GridPoint := xy 1 1
def upperRight : GridPoint := xy 2 1

def straightLength : ℝ :=
  axisAlignedLength origin middle +
    axisAlignedLength middle target

def detourLength : ℝ :=
  axisAlignedLength origin upperLeft +
    axisAlignedLength upperLeft upperMiddle +
      axisAlignedLength upperMiddle upperRight +
        axisAlignedLength upperRight target

theorem straightLength_eq_two : straightLength = 2 := by
  norm_num [straightLength, axisAlignedLength,
    origin, middle, target, xy]

theorem detourLength_eq_four : detourLength = 4 := by
  norm_num [detourLength, axisAlignedLength,
    origin, upperLeft, upperMiddle, upperRight, target, xy]

/-- One visit to the selected costly cell, whose modeled penalty is V. -/
def straightCost (V : ℝ) : ℝ := straightLength + V

/-- Two turns of cost κ each; this detour does not enter the costly cell. -/
def bentCost (κ : ℝ) : ℝ := detourLength + 2 * κ

/-- The exact finite trade-off behind a barrier-guided bent path.
The strict threshold includes the added length **and** both turns. -/
theorem bent_cheaper_iff (V κ : ℝ) :
    bentCost κ < straightCost V ↔ 2 + 2 * κ < V := by
  rw [bentCost, straightCost, detourLength_eq_four,
    straightLength_eq_two]
  constructor <;> intro h <;> linarith

/-- A sufficiently costly straight-medium cell forces this particular
detour to be cheaper, independently of any harmonic-field terminology. -/
theorem bent_cheaper_of_high_barrier
    {V κ : ℝ} (h : 2 + 2 * κ < V) :
    bentCost κ < straightCost V :=
  (bent_cheaper_iff V κ).2 h

/-- Explicit hostile control: with no barrier and no turn cost the
straight route wins, so bending is not unconditional. -/
theorem straight_preferred_without_barrier :
    straightCost 0 < bentCost 0 := by
  simp [straightCost, bentCost,
    straightLength_eq_two, detourLength_eq_four]

/-- Equality at the exact barrier threshold: a minimizer need not be
unique, hence strict preference must use a strict hypothesis. -/
theorem energy_tie_at_threshold (κ : ℝ) :
    straightCost (2 + 2 * κ) = bentCost κ := by
  simp [straightCost, bentCost,
    straightLength_eq_two, detourLength_eq_four]
  ring

end GRWTSK.Analysis.Geometry.FiniteFiberDetourEnergy
