-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LeftInverseCodec.Variant8136e4b65fdd2b32c0a6c3485ceef6e5dc6876cec11df03ccdbeff9110e9fadd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8136e4b65fdd2b32c0a6c3485ceef6e5dc6876cec11df03ccdbeff9110e9fadd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.LeftInverseCodec.Variant8136e4b65fdd2b32c0a6c3485ceef6e5dc6876cec11df03ccdbeff9110e9fadd","mathematical_subject":"Logic.Foundations","original_sha256":"8136e4b65fdd2b32c0a6c3485ceef6e5dc6876cec11df03ccdbeff9110e9fadd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Codec.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Logic.Equiv.Defs

/-!
# Generic left-invertible codecs

This module owns the representation-independent codec abstraction used by
downstream domains.  A decoder is permitted to be partial on the ambient
encoded type; the supplied law only requires it to recover every value emitted
by the encoder.  Consequently, the exact equivalence is between the source and
the encoder's image, not the whole encoded type.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LeftInverseCodec.Variant8136e4b65fdd2b32c0a6c3485ceef6e5dc6876cec11df03ccdbeff9110e9fadd

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
