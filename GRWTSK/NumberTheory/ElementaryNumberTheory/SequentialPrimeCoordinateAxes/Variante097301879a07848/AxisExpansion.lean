/-
Exact sequential-prime axis expansion and positivity
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

namespace SequentialPrimeSpecification

@[ext]
theorem ext
    {left right : SequentialPrimeSpecification}
    (start : left.start = right.start)
    (multiplicities : left.multiplicities = right.multiplicities) :
    left = right := by
  cases left
  cases right
  cases start
  cases multiplicities
  rfl

/-- Expand one prime index per multiplicity into the documented axis list. -/
noncomputable def axesFrom : Nat → List Nat → List Nat
  | _, [] => []
  | primeIndex, multiplicity :: tail =>
      List.replicate multiplicity (canonicalPrimeEnumeration.value primeIndex) ++
        axesFrom (primeIndex + 1) tail

/-- Cardinalities of all axes of a sequential-prime coordinate fiber. -/
noncomputable def axisCardinalities
    (specification : SequentialPrimeSpecification) : List Nat :=
  axesFrom specification.start specification.multiplicities

theorem axesFrom_positive
    {start : Nat} {multiplicities : List Nat}
    {axis : Nat}
    (member : axis ∈ axesFrom start multiplicities) :
    0 < axis := by
  induction multiplicities generalizing start with
  | nil => simp [axesFrom] at member
  | cons multiplicity tail inductionHypothesis =>
      simp only [axesFrom, List.mem_append, List.mem_replicate] at member
      rcases member with member | member
      · rw [member.2]
        exact (canonicalPrimeEnumeration_prime start).pos
      · exact inductionHypothesis member

theorem axisCardinalities_positive
    (specification : SequentialPrimeSpecification)
    {axis : Nat}
    (member : axis ∈ specification.axisCardinalities) :
    0 < axis :=
  axesFrom_positive member

end SequentialPrimeSpecification

end BitMatrix.Carrier
