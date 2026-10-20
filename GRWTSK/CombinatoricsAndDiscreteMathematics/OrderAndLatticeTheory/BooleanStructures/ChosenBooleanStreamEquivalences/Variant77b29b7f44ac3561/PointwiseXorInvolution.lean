/-
Exact Boolean state complement operation and its full zero-program and involution proofs
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

import GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BooleanStructures.ChosenBooleanStreamEquivalences.Variant77b29b7f44ac3561.BooleanFunctionDataAndXor

/-!
# Boolean carrier space and designated scalar interpreter

This provider-neutral core parameterizes the scalar type and designated digit
equivalence. All interpreter and baseline-relative inverse theorems below are
then kernel-checked without postulating an analytic solver or silently choosing
an alternative ternary expansion. `BitMatrix.Topology.DesignatedCantor`
separately supplies the concrete exact middle-thirds-real representation.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BooleanStructures.ChosenBooleanStreamEquivalences.Variant77b29b7f44ac3561

/--
A concrete total state-program interpreter: the program state selects exactly
the coordinates complemented in the input.  This is one fixed interpreter of
the requested `B × B → B` type, not a transformation-complete enumeration.
-/
def stateTransformationInterpreter
    {Address : Type}
    (program input : BooleanState Address) : BooleanState Address :=
  fun address => xorBit (input address) (program address)

@[simp]
theorem stateTransformationInterpreter_zero
    {Address : Type}
    (input : BooleanState Address) :
    stateTransformationInterpreter (fun _ => false) input = input := by
  funext address
  simp [stateTransformationInterpreter]

@[simp]
theorem stateTransformationInterpreter_involutive
    {Address : Type}
    (program input : BooleanState Address) :
    stateTransformationInterpreter program
      (stateTransformationInterpreter program input) = input := by
  funext address
  simp [stateTransformationInterpreter, xorBit]


end GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BooleanStructures.ChosenBooleanStreamEquivalences.Variant77b29b7f44ac3561
