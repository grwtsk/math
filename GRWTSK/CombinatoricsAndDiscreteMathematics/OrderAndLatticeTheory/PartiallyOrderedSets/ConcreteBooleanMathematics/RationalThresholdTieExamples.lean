/-
RationalThresholdTieExamples — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ff1c4d5be5dcb39c8ee06bf780d84a10ab53e8a67dadbfecaf50b98a6caf6431
Organized SHA-256: c7bc098aeced07b97c4f24fced632b79ce42045aa175ad5af03c03680ac4493f
PMD: 510.7.070.010 partially ordered sets (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Three exact rational-threshold ties preserve arbitrary ownership policy Booleans and positive/negative/zero scalar cases; labels assert no access-control or owner authority. Original source namespaces are retained exactly; mathematical examples remain anonymous commands, not new named theorems. Native_decide, decide, examples and tactics are copied text and have not been executed. Whole original documentation may describe other retained components or historical claimed checked status; no present replay or external program acceptance is asserted. -/

import BitMatrix.Formal
import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Correspondence
import BitMatrix.Runtime.Semantics
import Mathlib.Tactic

namespace BitMatrix.Tests.Correspondence

open BitMatrix.Carrier

example (threshold : ℚ)
    (ownership : BitMatrix.Runtime.Semantics.OwnershipTiePolicies) :
    BitMatrix.Runtime.Semantics.resolveThreshold
        threshold threshold 1 .ownership ownership = ownership.positive :=
  BitMatrix.Runtime.Semantics.resolveThreshold_positive_tie
    threshold 1 ownership (by norm_num)

example (threshold : ℚ)
    (ownership : BitMatrix.Runtime.Semantics.OwnershipTiePolicies) :
    BitMatrix.Runtime.Semantics.resolveThreshold
        threshold threshold (-1) .ownership ownership = ownership.negative :=
  BitMatrix.Runtime.Semantics.resolveThreshold_negative_tie
    threshold (-1) ownership (by norm_num)

example (threshold : ℚ)
    (ownership : BitMatrix.Runtime.Semantics.OwnershipTiePolicies) :
    BitMatrix.Runtime.Semantics.resolveThreshold
        threshold threshold 0 .ownership ownership = ownership.zero :=
  BitMatrix.Runtime.Semantics.resolveThreshold_zero_tie threshold ownership
end BitMatrix.Tests.Correspondence
