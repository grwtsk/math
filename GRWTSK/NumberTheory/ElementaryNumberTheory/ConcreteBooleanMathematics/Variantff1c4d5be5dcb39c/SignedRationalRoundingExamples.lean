/-
SignedRationalRoundingExamples — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ff1c4d5be5dcb39c8ee06bf780d84a10ab53e8a67dadbfecaf50b98a6caf6431
Organized SHA-256: c7bc098aeced07b97c4f24fced632b79ce42045aa175ad5af03c03680ac4493f
PMD: 510.2.010 elementary number theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact positive/negative half ties, signed normalization at4 including negative coordinate and orientation, full original rounding invocation equality and separate negative-zero flag example. No machine rounding implementation acceptance. Original source namespaces are retained exactly; mathematical examples remain anonymous commands, not new named theorems. Native_decide, decide, examples and tactics are copied text and have not been executed. Whole original documentation may describe other retained components or historical claimed checked status; no present replay or external program acceptance is asserted. -/

import BitMatrix.Formal
import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Correspondence
import BitMatrix.Runtime.Semantics
import Mathlib.Tactic

namespace BitMatrix.Tests.Correspondence

open BitMatrix.Carrier

/-! The examples below are the kernel-checked side of
`client/test/runtimeSemanticsVectors.test.js`.  They deliberately state the
same discrete policies without claiming that matching examples alone verify
foreign JavaScript execution. -/

example :
    BitMatrix.Runtime.Semantics.RasterRounding.nearest.round (1 / 2) = 1 :=
  BitMatrix.Runtime.Semantics.round_positive_tie

example :
    BitMatrix.Runtime.Semantics.RasterRounding.nearest.round (-1 / 2) = 0 :=
  BitMatrix.Runtime.Semantics.round_negative_tie

example :
    BitMatrix.Runtime.Semantics.normalizeRasterCoordinate
        .nearest .increasing 4 (-1) = -1 / 4 := by
  have floorNegativeHalf : Rat.floor (-1 / 2 : ℚ) = -1 := by
    change ⌊(-1 / 2 : ℚ)⌋ = -1
    rw [Int.floor_eq_iff]
    norm_num
  unfold BitMatrix.Runtime.Semantics.normalizeRasterCoordinate
  simp only [BitMatrix.Runtime.Semantics.RasterRounding.round]
  rw [show (-1 : ℚ) + 1 / 2 = -1 / 2 by norm_num, floorNegativeHalf]
  norm_num

example :
    BitMatrix.Runtime.Semantics.normalizeRasterCoordinate
        .nearest .decreasing 4 5 = -1 / 4 := by
  have floorElevenHalves : Rat.floor (11 / 2 : ℚ) = 5 := by
    change ⌊(11 / 2 : ℚ)⌋ = 5
    rw [Int.floor_eq_iff]
    norm_num
  unfold BitMatrix.Runtime.Semantics.normalizeRasterCoordinate
  simp only [BitMatrix.Runtime.Semantics.RasterRounding.round]
  rw [show (5 : ℚ) + 1 / 2 = 11 / 2 by norm_num, floorElevenHalves]
  norm_num
example (invocation : BitMatrix.Runtime.Correspondence.RoundingInvocation) :
    BitMatrix.Runtime.Correspondence.roundingResultRepresentation.represents
      invocation (invocation.mode.round invocation.input) :=
  BitMatrix.Runtime.Correspondence.executeRounding_represents invocation
example :
    (BitMatrix.Runtime.Correspondence.executeSignedRounding
      ⟨.nearest, -1 / 2⟩).value = 0 ∧
    (BitMatrix.Runtime.Correspondence.executeSignedRounding
      ⟨.nearest, -1 / 2⟩).negativeZero = true := by
  constructor <;> simp [BitMatrix.Runtime.Correspondence.executeSignedRounding]
end BitMatrix.Tests.Correspondence
