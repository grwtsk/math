/-
Whole Boolean function data and exact elementary XOR cancellation laws
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 77b29b7f44ac3561a59374cf6878e8e1ca1ad440cd960770ca1c82f277347a5f
Organized SHA-256: f77bbfa7e54d8098a4295328fae809fab07f9ffebb61a8a44f7442472d5e88ce
PMD: 510.7.070.030 boolean structures (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import BitMatrix.Carrier.Address

/-!
# Boolean carrier space and designated scalar interpreter

This provider-neutral core parameterizes the scalar type and designated digit
equivalence. All interpreter and baseline-relative inverse theorems below are
then kernel-checked without postulating an analytic solver or silently choosing
an alternative ternary expansion. `BitMatrix.Topology.DesignatedCantor`
separately supplies the concrete exact middle-thirds-real representation.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BooleanStructures.ChosenBooleanStreamEquivalences.Variant77b29b7f44ac3561

/-- Infinite designated binary digit streams. -/
abbrev BitStream := Nat → Bool

/-- Boolean states indexed by a carrier address type. -/
abbrev BooleanState (Address : Type) := Address → Bool

/-- Boolean exclusive-or, kept separate from matrix XOR. -/
def xorBit (left right : Bool) : Bool := left != right

@[simp]
theorem xorBit_self (value : Bool) : xorBit value value = false := by
  cases value <;> rfl

@[simp]
theorem xorBit_false_right (value : Bool) : xorBit value false = value := by
  cases value <;> rfl

@[simp]
theorem xorBit_cancel_left (left right : Bool) :
    xorBit left (xorBit left right) = right := by
  cases left <;> cases right <;> rfl


end GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BooleanStructures.ChosenBooleanStreamEquivalences.Variant77b29b7f44ac3561
