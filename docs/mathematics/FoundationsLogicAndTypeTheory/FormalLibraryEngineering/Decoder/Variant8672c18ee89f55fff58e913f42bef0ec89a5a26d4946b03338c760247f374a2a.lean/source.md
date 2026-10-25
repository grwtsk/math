# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Decoder.Variant8672c18ee89f55fff58e913f42bef0ec89a5a26d4946b03338c760247f374a2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ac6de076ed080ac4c9be6ad54bbe910bad55f09` · SHA-256 `8672c18ee89f55fff58e913f42bef0ec89a5a26d4946b03338c760247f374a2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.NeuralDiffusion.Residue

/-!
# Independent decoder-completeness obligations

Soundness, object surjectivity, transition completeness, and latent exactness
are separate predicates.  None is derived from analytic stability or imported
cohomological authority.
-/

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
