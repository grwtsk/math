# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561.CertifiedInteriorMultiplicity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10b920a549643b63e17288f645b1aa0806a49201` · SHA-256 `d4b5340612ddee29e99810676a0faa5d0953f804a1004bb3a0a8b69d1b48900b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CertifiedInteriorMultiplicity — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012
Organized SHA-256: 0f79f53aaba330d5b99f48fad13607adae5cf8958c881aeab453dbe0769f4a6a
PMD: 510.3.010.010 euclidean geometry (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole strict-cell or certified INTERNAL-boundary axis witnesses retained; the private Fin-value equality helper remains with both proofs/callers. Multiplicity is 2^codimension under the complete InteriorGridStratum, with no outer-boundary or arbitrary-point extension. -/

import BitMatrix.Geometry.GridCell
import Mathlib.Tactic

import GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561.ClosedSupportAndOrigins

/-!
# Exact carrier-grid geometry

This module gives the closed-cell support relation used by the JavaScript
carrier grid an exact rational model.  It deliberately separates support from
origin matching: a point on an internal face is supported by two cells on that
axis, but it matches neither cell barycenter.
-/

namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561


namespace BitMatrix.Geometry.CarrierGrid

open BitMatrix.Runtime.Semantics

/-- An exact interior stratum on one grid axis. -/
inductive InteriorAxisStratum (size : Nat) (coordinate : ℚ) where
  | cell (index : Fin size)
      (lower : (index.val : ℚ) < (size : ℚ) * coordinate)
      (upper : (size : ℚ) * coordinate < (index.val : ℚ) + 1)
  | internalBoundary (left right : Fin size)
      (adjacent : right.val = left.val + 1)
      (boundaryEquation : (size : ℚ) * coordinate = (right.val : ℚ))


/-- Interior-axis codimension: zero inside a cell and one on an internal face. -/
def InteriorAxisStratum.codimension {size coordinate}
    (stratum : InteriorAxisStratum size coordinate) : Nat :=
  match stratum with
  | .cell .. => 0
  | .internalBoundary .. => 1


private theorem fin_eq_of_val_eq {size : Nat} {left right : Fin size}
    (equality : left.val = right.val) : left = right :=
  Fin.ext equality


/-- Strict cell-interior hypotheses select exactly one axis carrier. -/
theorem axisCarriers_eq_singleton_of_cell
    {size : Nat} {coordinate : ℚ} (index : Fin size)
    (lower : (index.val : ℚ) < (size : ℚ) * coordinate)
    (upper : (size : ℚ) * coordinate < (index.val : ℚ) + 1) :
    axisCarriers size coordinate = {index} := by
  ext candidate
  simp only [axisCarriers, Finset.mem_filter, Finset.mem_univ, true_and,
    Finset.mem_singleton]
  constructor
  · rintro ⟨candidateLower, candidateUpper⟩
    apply fin_eq_of_val_eq
    have leftRational :
        (candidate.val : ℚ) < (index.val : ℚ) + 1 :=
      lt_of_le_of_lt candidateLower upper
    have rightRational :
        (index.val : ℚ) < (candidate.val : ℚ) + 1 :=
      lt_of_lt_of_le lower candidateUpper
    have leftNatural : candidate.val < index.val + 1 := by
      exact_mod_cast leftRational
    have rightNatural : index.val < candidate.val + 1 := by
      exact_mod_cast rightRational
    omega
  · rintro rfl
    exact ⟨lower.le, upper.le⟩


/-- An internal boundary between adjacent in-grid cells selects exactly those
two cells. -/
theorem axisCarriers_eq_pair_of_internalBoundary
    {size : Nat} {coordinate : ℚ} (left right : Fin size)
    (adjacent : right.val = left.val + 1)
    (boundaryEquation : (size : ℚ) * coordinate = (right.val : ℚ)) :
    axisCarriers size coordinate = {left, right} := by
  ext candidate
  simp only [axisCarriers, Finset.mem_filter, Finset.mem_univ, true_and,
    Finset.mem_insert, Finset.mem_singleton]
  constructor
  · rintro ⟨candidateLower, candidateUpper⟩
    have lowerRational : (candidate.val : ℚ) ≤ (right.val : ℚ) := by
      rw [← boundaryEquation]
      exact candidateLower
    have upperRational : (right.val : ℚ) ≤ (candidate.val : ℚ) + 1 := by
      rw [← boundaryEquation]
      exact candidateUpper
    have lowerNatural : candidate.val ≤ right.val := by
      exact_mod_cast lowerRational
    have upperNatural : right.val ≤ candidate.val + 1 := by
      exact_mod_cast upperRational
    have range : candidate.val = left.val ∨ candidate.val = right.val := by
      omega
    rcases range with equality | equality
    · exact Or.inl (fin_eq_of_val_eq equality)
    · exact Or.inr (fin_eq_of_val_eq equality)
  · rintro (rfl | rfl)
    · constructor
      · rw [boundaryEquation, adjacent]
        norm_num
      · rw [boundaryEquation, adjacent]
        norm_num
    · constructor <;> simp [boundaryEquation]


/-- A two-dimensional interior stratum, with boundary status certified
independently on each axis. -/
structure InteriorGridStratum (size : Nat) (point : NormalizedPoint) where
  x : InteriorAxisStratum size point.x
  y : InteriorAxisStratum size point.y


/-- The number of independent internal grid faces containing the point. -/
def InteriorGridStratum.codimension {size point}
    (stratum : InteriorGridStratum size point) : Nat :=
  stratum.x.codimension + stratum.y.codimension


/-- On a certified interior stratum, exact closed-cell multiplicity is
`2^codimension`.  The outer boundary is intentionally outside the theorem's
hypotheses. -/
theorem carrierMultiplicity_eq_two_pow_codimension
    {size : Nat} {point : NormalizedPoint}
    (stratum : InteriorGridStratum size point) :
    carrierMultiplicity size point = 2 ^ stratum.codimension := by
  unfold carrierMultiplicity InteriorGridStratum.codimension
  cases stratum with
  | mk x y =>
    cases x with
    | cell xIndex xLower xUpper =>
      rw [axisCarriers_eq_singleton_of_cell xIndex xLower xUpper]
      cases y with
      | cell yIndex yLower yUpper =>
        rw [axisCarriers_eq_singleton_of_cell yIndex yLower yUpper]
        simp [InteriorAxisStratum.codimension]
      | internalBoundary yLeft yRight yAdjacent yEquation =>
        rw [axisCarriers_eq_pair_of_internalBoundary
          yLeft yRight yAdjacent yEquation]
        have unequal : yLeft ≠ yRight := by
          intro equality
          have values := congrArg Fin.val equality
          omega
        simp [InteriorAxisStratum.codimension, unequal]
    | internalBoundary xLeft xRight xAdjacent xEquation =>
      rw [axisCarriers_eq_pair_of_internalBoundary
        xLeft xRight xAdjacent xEquation]
      have xUnequal : xLeft ≠ xRight := by
        intro equality
        have values := congrArg Fin.val equality
        omega
      cases y with
      | cell yIndex yLower yUpper =>
        rw [axisCarriers_eq_singleton_of_cell yIndex yLower yUpper]
        simp [InteriorAxisStratum.codimension, xUnequal]
      | internalBoundary yLeft yRight yAdjacent yEquation =>
        rw [axisCarriers_eq_pair_of_internalBoundary
          yLeft yRight yAdjacent yEquation]
        have yUnequal : yLeft ≠ yRight := by
          intro equality
          have values := congrArg Fin.val equality
          omega
        simp [InteriorAxisStratum.codimension, xUnequal, yUnequal]


end BitMatrix.Geometry.CarrierGrid

end GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561
```
