/-
OneBitTruthTableAndCircuitPreimages — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 7d8583096a2b196a5aad54e0e25b89a64434813e2c25d55cee0db5f3b70c0002
Organized SHA-256: 9394e73d16a3e1601807ef3a3bd5955f1be067dcbb99f2ae5a10409af6cae6a9
PMD: 510.0.020.010.050 satisfiability (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The bit-not truth-table example and the full private identity function, bijectivity proof, one-wire circuit, Implements proof and exact satisfiable/unique-input wrappers remain together. Unique input projection is not uniqueness of all ambient SAT variable assignments; no unproved circuit implementation premise is dropped. -/

import BitMatrix.Reduction.SAT
import Mathlib.Tactic.FinCases

/-!
# Tests for the SAT reduction development
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.OneBitCNFExamples.Variant7d8583096a2b196a

namespace BitMatrix.Tests.SAT

open BitMatrix.Reduction.SAT

private def bitNot1 : Bits 1 → Bits 1 :=
  fun x _ => !(x 0)

example (target : Bits 1) :
    CNF.Satisfiable (truthTableCNF bitNot1 target) ↔
      ∃ input, bitNot1 input = target :=
  every_fixed_width_function_reduces_to_sat bitNot1 target

private def identity1 : Bits 1 → Bits 1 := id

private theorem identity1_bijective : Function.Bijective identity1 := by
  constructor
  · intro a b h
    simpa [identity1] using h
  · intro y
    exact ⟨y, rfl⟩

example (target : Bits 1) :
    ∃! input, identity1 input = target :=
  bijective_has_unique_preimage identity1 identity1_bijective target


private def identityCircuit1 : Circuit 1 1 where
  gates := []
  outputs := fun _ => ⟨0, by decide⟩

private theorem identityCircuit1_implements :
    identityCircuit1.Implements identity1 := by
  constructor
  · intro σ _
    funext i
    fin_cases i
    rfl
  · intro input
    exact ⟨inputAssignment input, readInput_inputAssignment input, trivial⟩

example (target : Bits 1) :
    CNF.Satisfiable (identityCircuit1.toCNF target) ↔
      ∃ input, identity1 input = target :=
  identityCircuit1.satisfiable_toCNF_iff_preimage
    identity1 identityCircuit1_implements target

example (target : Bits 1) :
    ∃! input, identityCircuit1.InputWitness target input :=
  bijective_circuit_has_unique_sat_input
    identityCircuit1 identity1 identityCircuit1_implements
    identity1_bijective target

end BitMatrix.Tests.SAT

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.OneBitCNFExamples.Variant7d8583096a2b196a
