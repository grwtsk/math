/-
DefaultedCodecTransport — individual source review
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

/- Supplied codecs have partial decode and an exact decode_encode law. All fallback/empty-matrix branches and encode transport proofs are copied; invalid matrices receive the explicit fallback, not a guessed value. Original historical imports and namespaces retained; no provider replay or independently constructed codec. -/

import BooleanMatrix.Codec.Core
import BooleanMatrix.Matrix.Core
import BooleanMatrix.TypedApplication

/-!
# Transporting functions through BooleanMatrix codecs
-/

namespace BooleanMatrix
namespace Codec

universe u v

variable {α : Type u}
variable {β : Type v}

/--
Transport an ordinary function through matrix codecs.

Invalid source matrices emit the supplied fallback matrix.
-/
def liftOr
    (source : Codec α)
    (target : Codec β)
    (function : α → β)
    (fallback : Matrix) :
    Application :=
  fun input =>
    match source.decode input with
    | some value => target.encode (function value)
    | none => fallback

@[simp]
theorem liftOr_encode
    (source : Codec α)
    (target : Codec β)
    (function : α → β)
    (fallback : Matrix)
    (value : α) :
    liftOr source target function fallback
        (source.encode value) =
      target.encode (function value) := by
  simp [liftOr, source.decode_encode]

/-- Lift a function using the empty matrix as its invalid-input result. -/
def lift
    (source : Codec α)
    (target : Codec β)
    (function : α → β) :
    Application :=
  liftOr source target function Matrix.empty

@[simp]
theorem lift_encode
    (source : Codec α)
    (target : Codec β)
    (function : α → β)
    (value : α) :
    lift source target function (source.encode value) =
      target.encode (function value) := by
  exact liftOr_encode
    source target function Matrix.empty value

end Codec
end BooleanMatrix
