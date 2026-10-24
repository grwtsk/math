/-
PredicatePreservingCodecLift — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: b0b9be35259cd59d932fc6ca1306ed38edec64147a0e317a26da704a1ec14427
Organized SHA-256: 93971d81ecb00322cb7463a138c9073a22c7127c9138c4224c43c2c20cbb0236
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The exact typedLift packages the already-defined lifted function with its existential source-image to target-image proof. Full source and target codec parameters, function and TypedApplication result remain. Only the exact same-source defaulted-transport companion is added; original TypedApplication provider remains unchanged. -/

import BooleanMatrix.Codec.Core
import BooleanMatrix.Matrix.Core
import BooleanMatrix.TypedApplication

import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.LosslessMatrixCodecTransport.Variantb0b9be35259cd59d.DefaultedCodecTransport
/-!
# Transporting functions through BooleanMatrix codecs
-/

namespace BooleanMatrix
namespace Codec

universe u v

variable {α : Type u}
variable {β : Type v}

/-- Every codec-lifted function is a typed matrix application. -/
def typedLift
    (source : Codec α)
    (target : Codec β)
    (function : α → β) :
    TypedApplication source.format target.format where
  run := lift source target function
  preserves := by
    intro input valid
    change ∃ value, source.encode value = input at valid
    cases valid with
    | intro value equality =>
        subst input
        change ∃ output,
          target.encode output =
            lift source target function
              (source.encode value)
        exact ⟨
          function value,
          (lift_encode source target function value).symm
        ⟩

end Codec
end BooleanMatrix
