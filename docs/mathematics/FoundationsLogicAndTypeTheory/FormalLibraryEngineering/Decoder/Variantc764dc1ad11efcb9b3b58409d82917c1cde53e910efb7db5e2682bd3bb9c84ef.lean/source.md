# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Decoder.Variantc764dc1ad11efcb9b3b58409d82917c1cde53e910efb7db5e2682bd3bb9c84ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea28578cba3fe90a49780631cdefbcb169108c81` · SHA-256 `e001af3a0a82f90d2e0bfd209852ab35d85df9393c84e1ac2e51cd2caba73663`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecodeResult.Variant8672c18ee89f55fff58e913f42bef0ec89a5a26d4946b03338c760247f374a2a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8672c18ee89f55fff58e913f42bef0ec89a5a26d4946b03338c760247f374a2a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DecodeResult.Variant8672c18ee89f55fff58e913f42bef0ec89a5a26d4946b03338c760247f374a2a","mathematical_subject":"Foundations.Unclassified","original_sha256":"8672c18ee89f55fff58e913f42bef0ec89a5a26d4946b03338c760247f374a2a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/staged-validation-6c1160a309e689e3/Mathematics/NeuralDiffusion/Decoder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.NeuralDiffusion.Residue

/-!
# Independent decoder-completeness obligations

Soundness, object surjectivity, transition completeness, and latent exactness
are separate predicates.  None is derived from analytic stability or imported
cohomological authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecodeResult.Variant8672c18ee89f55fff58e913f42bef0ec89a5a26d4946b03338c760247f374a2a

namespace Mathematics.NeuralDiffusion

universe u v w

inductive DecodeResult (Object : Type u)
  | decoded (object : Object)
  | reject
  deriving DecidableEq, Repr

def DecoderSound
    {Latent : Type u} {Object : Type v}
    (decode : Latent → DecodeResult Object) : Prop :=
  ∀ latent,
    (∃ object, decode latent = .decoded object) ∨
      decode latent = .reject

def DecoderSurjective
    {Latent : Type u} {Object : Type v}
    (decode : Latent → DecodeResult Object) : Prop :=
  ∀ object, ∃ latent, decode latent = .decoded object

def TransitionComplete
    {Latent : Type u} {Object : Type v} {Parameter : Type w}
    (encode : Object → Latent)
    (step : Parameter → Latent → Latent)
    (admissible : Object → Object → Prop) : Prop :=
  ∀ {source target},
    admissible source target →
      ∃ parameter,
        step parameter (encode source) = encode target

def LatentExact
    {Latent : Type u} {Object : Type v}
    (decode : Latent → DecodeResult Object)
    (equivalent : Latent → Latent → Prop) : Prop :=
  ∀ left right,
    decode left = decode right ↔ equivalent left right

structure DecoderObligations
    (Latent : Type u) (Object : Type v) (Parameter : Type w) where
  encode : Object → Latent
  decode : Latent → DecodeResult Object
  step : Parameter → Latent → Latent
  admissible : Object → Object → Prop
  equivalent : Latent → Latent → Prop
  sound : DecoderSound decode
  surjective : DecoderSurjective decode
  transitionComplete : TransitionComplete encode step admissible
  latentExact : LatentExact decode equivalent

theorem decoder_sound_by_result_type
    {Latent : Type u} {Object : Type v}
    (decode : Latent → DecodeResult Object) :
    DecoderSound decode := by
  intro latent
  cases decode latent <;> simp

end Mathematics.NeuralDiffusion
```
