/-
Exact Cantor, finite-sequence and specification-code injectivity
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c
Organized SHA-256: 8b26a214146396c3bca993b027ce70c07fd75d180e9923ee158928caab86f407
PMD: 510.2.010 elementary number theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Original namespace blocks are retained exactly for imported-type extension/field lookup; no containing namespace is changed in this output and no GRWTSK alias is fabricated. Isolated uncompiled historical declarations must not be coimported with another full copy/version. This is pure supplied mathematics, not a source/runtime acceptance or foreign provider construction. -/

import GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeCoordinateAxes.Variante097301879a07848.AxisExpansion

import BitMatrix.Carrier.Address
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Data.Nat.Nth

/-!
# Complete sequential-prime carrier

This module constructs the restricted carrier described by the rhetorical
specification.  Unlike `RawCarrierAddress`, every coordinate here belongs to
the finite dependent product selected by its sequential-prime specification.
The canonical enumeration is obtained by increasing enumeration of the exact
image of the documented address code.
-/

namespace BitMatrix.Carrier

open scoped BigOperators

namespace CantorCode

/-- Triangular numbers, used to reason about the displayed Cantor formula. -/
def triangular (diagonal : Nat) : Nat :=
  ∑ index ∈ Finset.range (diagonal + 1), index

theorem triangular_formula (diagonal : Nat) :
    triangular diagonal = diagonal * (diagonal + 1) / 2 := by
  rw [triangular, Finset.sum_range_id]
  simp only [Nat.add_sub_cancel]
  rw [Nat.mul_comm]

theorem triangular_succ (diagonal : Nat) :
    triangular (diagonal + 1) = triangular diagonal + diagonal + 1 := by
  simp [triangular, Finset.sum_range_succ, Nat.add_assoc]

theorem triangular_strictMono : StrictMono triangular :=
  strictMono_nat_of_lt_succ (fun diagonal => by
    rw [triangular_succ]
    omega)

theorem pair_eq_triangular (left right : Nat) :
    cantorPair left right = triangular (left + right) + right := by
  rw [cantorPair, triangular_formula]

theorem pair_lower (left right : Nat) :
    triangular (left + right) ≤ cantorPair left right := by
  rw [pair_eq_triangular]
  omega

theorem pair_upper (left right : Nat) :
    cantorPair left right < triangular (left + right + 1) := by
  rw [pair_eq_triangular, triangular_succ]
  omega

theorem pair_injective : Function.Injective (fun pair : Nat × Nat =>
    cantorPair pair.1 pair.2) := by
  intro left right equality
  change cantorPair left.1 left.2 = cantorPair right.1 right.2 at equality
  have diagonalEquality : left.1 + left.2 = right.1 + right.2 := by
    by_contra different
    rcases lt_or_gt_of_ne different with less | greater
    · have step : left.1 + left.2 + 1 ≤ right.1 + right.2 := by omega
      have triangleOrder :
          triangular (left.1 + left.2 + 1) ≤
            triangular (right.1 + right.2) :=
        triangular_strictMono.monotone step
      have leftUpper := pair_upper left.1 left.2
      have rightLower := pair_lower right.1 right.2
      omega
    · have step : right.1 + right.2 + 1 ≤ left.1 + left.2 := by omega
      have triangleOrder :
          triangular (right.1 + right.2 + 1) ≤
            triangular (left.1 + left.2) :=
        triangular_strictMono.monotone step
      have leftLower := pair_lower left.1 left.2
      have rightUpper := pair_upper right.1 right.2
      omega
  have secondEquality : left.2 = right.2 := by
    rw [pair_eq_triangular, pair_eq_triangular, diagonalEquality] at equality
    omega
  exact Prod.ext (by omega) secondEquality

theorem pair_injective₂ {a b c d : Nat}
    (equality : cantorPair a b = cantorPair c d) :
    a = c ∧ b = d := by
  have pairEquality : (a, b) = (c, d) := by
    apply pair_injective
    exact equality
  exact Prod.ext_iff.mp pairEquality

end CantorCode

theorem finiteSequenceCode_injective : Function.Injective finiteSequenceCode := by
  intro left
  induction left with
  | nil =>
      intro right equality
      cases right with
      | nil => rfl
      | cons head tail =>
          simp only [finiteSequenceCode] at equality
          omega
  | cons head tail inductionHypothesis =>
      intro right equality
      cases right with
      | nil =>
          simp only [finiteSequenceCode] at equality
          omega
      | cons otherHead otherTail =>
          simp only [finiteSequenceCode] at equality
          have paired := Nat.add_left_cancel equality
          have parts := CantorCode.pair_injective₂ paired
          congr
          · exact parts.1
          · exact inductionHypothesis parts.2

theorem specificationCode_injective : Function.Injective specificationCode := by
  intro left right equality
  have parts := CantorCode.pair_injective₂ equality
  apply SequentialPrimeSpecification.ext parts.1
  exact finiteSequenceCode_injective parts.2

end BitMatrix.Carrier
