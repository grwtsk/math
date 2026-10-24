/-
CarrierAndEntrywiseExtensionality — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 8e457ae93b872fb8d8a46389ab0d2d6ee6c6b439146eca88e55d5b434fc42164
Organized SHA-256: 00b5fa3020986dd28c3d2ecf0e4cd42ea1014c28bda25e0b5a918791e6a5c6aa
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Matrix is exactly Nat→Nat→Bool. Its entrywise-equality premise implies function equality via the copied two-argument funext proof. Countable indices do not prove universality of every encoding mentioned in original documentation; no finiteness, norm or algebra structure is asserted. -/

import Std

/-!
# BooleanMatrix carrier

The universal carrier is a Boolean matrix indexed by two natural numbers.
-/

namespace BooleanMatrix

/--
The universal Boolean-matrix carrier.

Both dimensions are countably infinite. Finite matrices, streams, chains,
programs, state, data, and metadata can be represented by choosing suitable
regions and encodings.
-/
abbrev Matrix :=
  Nat → Nat → Bool

namespace Matrix

/-- Two matrices are equal when every entry is equal. -/
theorem ext
    {left right : Matrix}
    (h : ∀ row column, left row column = right row column) :
    left = right := by
  funext row column
  exact h row column

end Matrix

end BooleanMatrix
