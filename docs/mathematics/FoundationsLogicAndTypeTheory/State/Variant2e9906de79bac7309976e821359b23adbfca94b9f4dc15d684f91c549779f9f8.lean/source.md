# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.State.Variant2e9906de79bac7309976e821359b23adbfca94b9f4dc15d684f91c549779f9f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82b8b85373e16c69b49d5ac0f60adb56260653bd` · SHA-256 `4f886dd30f305d1be254777f87aaeb668a732c30a96afa0927298b3e960cfcba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SemanticTensorEncodingCertificate.Variantfe0db7085d632380fbe6b236bb4d1efec4e58143a28507d3ba3a94ad060d9734","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe0db7085d632380fbe6b236bb4d1efec4e58143a28507d3ba3a94ad060d9734","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SemanticTensorEncodingCertificate.Variantfe0db7085d632380fbe6b236bb4d1efec4e58143a28507d3ba3a94ad060d9734","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"fe0db7085d632380fbe6b236bb4d1efec4e58143a28507d3ba3a94ad060d9734","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/TensorNetwork/State.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.TensorNetwork.Index
import Mathlib.Data.Complex.Basic

/-!
# Profile-bound semantic tensor states

Enumeration alone does not turn a semantic object into a tensor state.  An
encoding certificate names the decoder, observation transport, identity law,
and its quantitative error boundary.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SemanticTensorEncodingCertificate.Variantfe0db7085d632380fbe6b236bb4d1efec4e58143a28507d3ba3a94ad060d9734

namespace Mathematics.TensorNetwork

universe u v w x

/-- A finite tensor state in coordinate form. -/
abbrev TensorState (N D : Nat) :=
  PhysicalConfiguration N D → ℂ

/--
Certified semantic realization into one selected tensor profile.  The partial
decoder is defined only on its admitted image.
-/
structure SemanticTensorEncodingCertificate
    (SemanticState : Type u)
    (SemanticContext : Type v)
    (HilbertState : Type w)
    (Observation : Type x) where
  encode : SemanticState → HilbertState
  decode : HilbertState → Option SemanticContext
  semanticContext : SemanticState → SemanticContext
  decodeEncode :
    ∀ state, decode (encode state) = some (semanticContext state)
  observeSemantic : Observation → SemanticState → ℂ
  observeHilbert : Observation → HilbertState → ℂ
  observationNaturality :
    ∀ observation state,
      observeHilbert observation (encode state) =
        observeSemantic observation state
  identityPreserved :
    Function.Injective semanticContext
  errorBound : ℝ
  errorBound_nonnegative : 0 ≤ errorBound

/-- Exact recovery is available only from the supplied decoder theorem. -/
theorem SemanticTensorEncodingCertificate.recovers
    (certificate :
      SemanticTensorEncodingCertificate
        SemanticState SemanticContext HilbertState Observation)
    (state : SemanticState) :
    certificate.decode (certificate.encode state) =
      some (certificate.semanticContext state) :=
  certificate.decodeEncode state

/--
An explicitly injective tensor encoding is a stronger certificate; it is not
derived from positive semidefiniteness or from an upper norm estimate.
-/
structure InjectiveSemanticTensorEncodingCertificate
    (SemanticState : Type u)
    (SemanticContext : Type v)
    (HilbertState : Type w)
    (Observation : Type x) where
  base :
    SemanticTensorEncodingCertificate
      SemanticState SemanticContext HilbertState Observation
  encodeInjective : Function.Injective base.encode

end Mathematics.TensorNetwork
```
