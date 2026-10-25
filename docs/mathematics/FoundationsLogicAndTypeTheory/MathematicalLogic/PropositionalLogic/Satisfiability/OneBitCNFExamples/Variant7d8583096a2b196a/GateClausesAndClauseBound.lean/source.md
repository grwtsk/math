# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.OneBitCNFExamples.Variant7d8583096a2b196a.GateClausesAndClauseBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe543e9a6af8255183fc56b8d358028a67de0bb7` · SHA-256 `f8f8685d2a018d976706da03644f89a2254d1a142d9851279f2ec028ff55821f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
GateClausesAndClauseBound — individual source review
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

/- Private assignments000/011 support exact XOR/constant examples; arbitrary assignments retain conjunction/XOR iff equations and arbitrary gate-list four-times-length bound. These are complete original Boolean CNF statements/proofs, not a SAT solver run or a stronger reduction complexity result. -/

import BitMatrix.Reduction.SAT
import Mathlib.Tactic.FinCases

/-!
# Tests for the SAT reduction development
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.OneBitCNFExamples.Variant7d8583096a2b196a

namespace BitMatrix.Tests.SAT

open BitMatrix.Reduction.SAT

private def σ000 : Assignment
  | 0 => false
  | 1 => false
  | 2 => false
  | _ => false

private def σ011 : Assignment
  | 0 => false
  | 1 => true
  | 2 => true
  | _ => false

example : CNF.Holds σ000 (encodeGate 2 (.xor 0 1)) := by
  simp [CNF.Holds, Clause.Holds, Literal.Holds, encodeGate, σ000]

example : CNF.Holds σ011 (encodeGate 2 (.xor 0 1)) := by
  simp [CNF.Holds, Clause.Holds, Literal.Holds, encodeGate, σ011]

example : ¬ CNF.Holds σ000 (encodeGate 2 (.const true)) := by
  simp [CNF.Holds, Clause.Holds, Literal.Holds, Literal.forBit,
    encodeGate, σ000]

example (σ : Assignment) :
    CNF.Holds σ (encodeGate 2 (.conj 0 1)) ↔
      σ 2 = (σ 0 && σ 1) := by
  simpa [Gate.eval] using encodeGate_correct σ 2 (.conj 0 1)

example (σ : Assignment) :
    CNF.Holds σ (encodeGate 2 (.xor 0 1)) ↔
      σ 2 = (σ 0 != σ 1) := by
  simpa [Gate.eval] using encodeGate_correct σ 2 (.xor 0 1)

example (gates : List Gate) :
    (encodeFrom 7 gates).length ≤ 4 * gates.length :=
  encodeFrom_length_le_four_mul 7 gates

end BitMatrix.Tests.SAT

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.OneBitCNFExamples.Variant7d8583096a2b196a
```
