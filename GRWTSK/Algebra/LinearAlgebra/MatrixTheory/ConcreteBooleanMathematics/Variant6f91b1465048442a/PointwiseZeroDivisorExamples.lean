/-
PointwiseZeroDivisorExamples — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 6f91b1465048442a0944d997ddb9a9ea192785b54cd4b4c10720870e22780573
Organized SHA-256: fdb97643f0cb4c5b2c989cc83fe8c2ac4314b32313696550e338f57d239cc784
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Both concrete1x2 nonzero supports and all four disjoint pointwise-AND/zero-divisor examples; contrast is with the complete model-indexed field multiplication, never an identification of these operations. Original source namespaces are retained exactly; mathematical examples remain anonymous commands, not new named theorems. Native_decide, decide, examples and tactics are copied text and have not been executed. Whole original documentation may describe other retained components or historical claimed checked status; no present replay or external program acceptance is asserted. -/

import BitMatrix.FiniteField.GaloisRound
import BitMatrix.FiniteField.Regular
import Mathlib.Tactic.FinCases

/-!
# Concrete tests for model-indexed Galois-field semantics

The one-cell model realizes `GF(2)` with the existing pointwise Boolean
operations.  Separate examples exhibit pointwise zero divisors in a two-bit
carrier and show computationally that ordinary `GF(2)` matrix multiplication
is not pointwise conjunction.
-/

namespace BitMatrix.Tests.FiniteField

open BitMatrix.FiniteField

/-! ## A concrete one-cell linear encoding -/

/-! ## Pointwise Boolean zero divisors -/

/-- The first coordinate of a two-bit row. -/
def leftBit : BitMatrix 1 2 :=
  fun _ j => j.val == 0

/-- The second coordinate of a two-bit row. -/
def rightBit : BitMatrix 1 2 :=
  fun _ j => j.val == 1

example : leftBit ≠ zeroMatrix 1 2 := by
  native_decide

example : rightBit ≠ zeroMatrix 1 2 := by
  native_decide

example : BitMatrix.and leftBit rightBit = zeroMatrix 1 2 := by
  native_decide

example :
    ∃ A B : BitMatrix 1 2,
      A ≠ zeroMatrix 1 2 ∧
      B ≠ zeroMatrix 1 2 ∧
      BitMatrix.and A B = zeroMatrix 1 2 :=
  exists_pointwise_zero_divisors (by decide)

end BitMatrix.Tests.FiniteField
