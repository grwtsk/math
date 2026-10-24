/-
FiniteNormalizationExamples — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ff1c4d5be5dcb39c8ee06bf780d84a10ab53e8a67dadbfecaf50b98a6caf6431
Organized SHA-256: c7bc098aeced07b97c4f24fced632b79ce42045aa175ad5af03c03680ac4493f
PMD: 510.8.010 probability foundations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Full original ownership/weighted-bit invocation equalities, genuine supplied coverage unit-interval bounds, finite nonnegative positive-total normalization sum and all-true projection. No floating accumulation or observed foreign byte theorem; all original count and complete carrier premises retained. Original source namespaces are retained exactly; mathematical examples remain anonymous commands, not new named theorems. Native_decide, decide, examples and tactics are copied text and have not been executed. Whole original documentation may describe other retained components or historical claimed checked status; no present replay or external program acceptance is asserted. -/

import BitMatrix.Formal
import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Correspondence
import BitMatrix.Runtime.Semantics
import Mathlib.Tactic

namespace BitMatrix.Tests.Correspondence

open BitMatrix.Carrier

example {count : Nat}
    (invocation : BitMatrix.Runtime.Correspondence.OwnershipInvocation count) :
    (BitMatrix.Runtime.Correspondence.ownershipRepresentation count).represents
      invocation
      (BitMatrix.Runtime.Semantics.ownershipWeight invocation.mask) :=
  BitMatrix.Runtime.Correspondence.executeOwnership_represents invocation

example {count : Nat}
    (invocation : BitMatrix.Runtime.Correspondence.WeightedBitInvocation count) :
    (BitMatrix.Runtime.Correspondence.weightedBitRepresentation count).represents
      invocation
      (BitMatrix.Runtime.Semantics.weightedBitEvaluation
        invocation.mask invocation.bits) :=
  BitMatrix.Runtime.Correspondence.executeWeightedBit_represents invocation

example (invocation : BitMatrix.Runtime.Correspondence.CoverageInvocation) :
    0 ≤ (BitMatrix.Runtime.Correspondence.executeCoverage invocation).value ∧
      (BitMatrix.Runtime.Correspondence.executeCoverage invocation).value ≤ 1 :=
  BitMatrix.Runtime.Correspondence.executeCoverage_mem_unitInterval invocation

example {count : Nat}
    (invocation : BitMatrix.Runtime.Correspondence.FiniteWeightsInvocation count) :
    ∑ index, BitMatrix.Runtime.Correspondence.executeFiniteWeights
      invocation index = 1 :=
  BitMatrix.Runtime.Correspondence.executeFiniteWeights_sum invocation

example {count : Nat}
    (weights : BitMatrix.Runtime.Semantics.NormalizableWeights count) :
    BitMatrix.Runtime.Correspondence.executeFiniteBitProjection
      ⟨weights, fun _ => true⟩ = 1 :=
  BitMatrix.Runtime.Correspondence.executeFiniteBitProjection_all_true weights
end BitMatrix.Tests.Correspondence
