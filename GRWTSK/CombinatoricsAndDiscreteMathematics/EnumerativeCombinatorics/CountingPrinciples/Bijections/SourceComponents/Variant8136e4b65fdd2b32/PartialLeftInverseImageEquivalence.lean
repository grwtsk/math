/-
PartialLeftInverseImageEquivalence — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 8136e4b65fdd2b32c0a6c3485ceef6e5dc6876cec11df03ccdbeff9110e9fadd
Organized SHA-256: 4d7823dbd601d19d87974257a27216b3fe0e5a61800eaf08157589dfe35d2fab
PMD: 510.7.010.010.010 bijections (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole partial left-inverse package and equivalence with exactly the valid output image, preserving Option-valued decoding and all proofs. Exact original namespaces and imports remain; no added containing namespace or open binding. Only declared same-source public companions are added. Source documentation may describe archived components. Provider resolution, namespace coimport compatibility and elaboration are unreplayed. -/

import Mathlib.Logic.Equiv.Defs

/-!
# Generic left-invertible codecs

This module owns the representation-independent codec abstraction used by
downstream domains.  A decoder is permitted to be partial on the ambient
encoded type; the supplied law only requires it to recover every value emitted
by the encoder.  Consequently, the exact equivalence is between the source and
the encoder's image, not the whole encoded type.
-/

namespace DAF

universe u v

/--
A codec whose decoder is a left inverse of its encoder.  Encoded values outside
the encoder image need not decode.
-/
structure LeftInverseCodec
    (Source : Type u)
    (Encoded : Type v) where
  encode : Source → Encoded
  decode : Encoded → Option Source
  decode_encode : ∀ source, decode (encode source) = some source

namespace LeftInverseCodec

/-- A left-invertible encoder is injective. -/
theorem encode_injective
    (C : LeftInverseCodec Source Encoded) :
    Function.Injective C.encode := by
  intro x y hxy
  have hdecode := congrArg C.decode hxy
  simpa [C.decode_encode] using hdecode

/-- The proposition that an ambient encoded value lies in the encoder image. -/
def ValidOutput
    (C : LeftInverseCodec Source Encoded)
    (encoded : Encoded) :
    Prop :=
  ∃ source, C.encode source = encoded

/-- Encoded values carrying a proof that they are encoder outputs. -/
def ValidOutputType
    (C : LeftInverseCodec Source Encoded) :=
  {encoded : Encoded // C.ValidOutput encoded}

/-- Decoding and re-encoding a valid output recovers that output. -/
theorem encode_decode_of_valid
    (C : LeftInverseCodec Source Encoded)
    {encoded : Encoded}
    (hvalid : C.ValidOutput encoded) :
    Option.map C.encode (C.decode encoded) = some encoded := by
  rcases hvalid with ⟨source, rfl⟩
  simp [C.decode_encode]

/-- The source is exactly equivalent to the valid image of the encoder. -/
noncomputable def sourceEquivValidOutput
    (C : LeftInverseCodec Source Encoded) :
    Source ≃ C.ValidOutputType where
  toFun source := ⟨C.encode source, ⟨source, rfl⟩⟩
  invFun encoded := Classical.choose encoded.property
  left_inv source := by
    apply C.encode_injective
    exact Classical.choose_spec
      ((show C.ValidOutput (C.encode source) from ⟨source, rfl⟩))
  right_inv encoded := by
    apply Subtype.ext
    exact Classical.choose_spec encoded.property

end LeftInverseCodec

end DAF
