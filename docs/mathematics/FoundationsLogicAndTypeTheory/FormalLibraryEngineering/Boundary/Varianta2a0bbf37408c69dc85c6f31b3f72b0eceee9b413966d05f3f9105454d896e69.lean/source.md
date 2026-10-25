# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Boundary.Varianta2a0bbf37408c69dc85c6f31b3f72b0eceee9b413966d05f3f9105454d896e69

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d86a1265772c05fd724eb2abb65a966f6b37b56` · SHA-256 `c60fbe6e626f6f3a0881b8afdc0ef1e8026e60cd9deb51e51b8c964c03dcac52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypedMobiusCarrier.Variant0e559bd0547b8bf93664d12b81cb43904301775ef383892054c6174879ac87e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e559bd0547b8bf93664d12b81cb43904301775ef383892054c6174879ac87e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TypedMobiusCarrier.Variant0e559bd0547b8bf93664d12b81cb43904301775ef383892054c6174879ac87e4","mathematical_subject":"Foundations.Unclassified","original_sha256":"0e559bd0547b8bf93664d12b81cb43904301775ef383892054c6174879ac87e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/TensorNetwork/Boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.TensorNetwork.Interval

/-!
# Typed three-plane Möbius boundary

Activation, validity, and ambiguity are separate Boolean planes.  The protocol
involution complements activation only where reversed validity is true.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypedMobiusCarrier.Variant0e559bd0547b8bf93664d12b81cb43904301775ef383892054c6174879ac87e4

namespace Mathematics.TensorNetwork

/-- Exact finite boundary carrier. -/
structure TypedMobiusCarrier (width : Nat) where
  activation : Fin width → Bool
  validity : Fin width → Bool
  ambiguity : Fin width → Bool
  ambiguityExcludesValidity :
    ∀ index,
      ambiguity index = true →
      validity index = false

def reversePlane
    (plane : Fin width → Bool) :
    Fin width → Bool :=
  fun index ↦ plane index.rev

/-- Reverse all planes and complement activation only through validity. -/
def mobiusTwist
    (carrier : TypedMobiusCarrier width) :
    TypedMobiusCarrier width where
  activation := fun index ↦
    Bool.xor
      (reversePlane carrier.activation index)
      (reversePlane carrier.validity index)
  validity := reversePlane carrier.validity
  ambiguity := reversePlane carrier.ambiguity
  ambiguityExcludesValidity := by
    intro index ambiguous
    exact
      carrier.ambiguityExcludesValidity index.rev
        (by simpa [reversePlane] using ambiguous)

/-- The typed boundary protocol is exactly involutive. -/
theorem mobiusTwist_involutive
    (carrier : TypedMobiusCarrier width) :
    mobiusTwist (mobiusTwist carrier) = carrier := by
  cases carrier with
  | mk activation validity ambiguity excludes =>
      simp only [mobiusTwist, reversePlane, Fin.rev_rev]
      congr
      · funext index
        simp
      · funext index
        simp [reversePlane]
      · funext index
        simp [reversePlane]

end Mathematics.TensorNetwork
```
