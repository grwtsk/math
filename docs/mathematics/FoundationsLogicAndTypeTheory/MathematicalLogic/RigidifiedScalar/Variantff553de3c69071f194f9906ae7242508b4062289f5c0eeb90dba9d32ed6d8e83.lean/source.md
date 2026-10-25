# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RigidifiedScalar.Variantff553de3c69071f194f9906ae7242508b4062289f5c0eeb90dba9d32ed6d8e83

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1f80bbb14a9be8a68c21a49f051473e40911936` · SHA-256 `ff553de3c69071f194f9906ae7242508b4062289f5c0eeb90dba9d32ed6d8e83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projection.LabeledProjection

/-!
# Lossless rigidified scalar boundary

The augmented scalar must carry a decoder proof.  A digest cannot inhabit this
record merely by claiming collision resistance.
-/

namespace Mathematics.Projection

universe u v

/-- A lossless natural-number encoding with an executable left inverse. -/
structure LosslessNatEncoding (Input : Type u) where
  encode : Input → Nat
  decode : Nat → Option Input
  decode_encode : ∀ input, decode (encode input) = some input

theorem losslessNatEncoding_injective
    {Input : Type u}
    (encoding : LosslessNatEncoding Input) :
    Function.Injective encoding.encode := by
  intro left right equality
  have decoded := congrArg encoding.decode equality
  rw [encoding.decode_encode, encoding.decode_encode] at decoded
  exact Option.some.inj decoded

/--
The rigidified input explicitly includes the intrinsic scalar, external
certificate payload, projection-law version, and constructor version.
-/
structure RigidifiedScalarInput where
  intrinsicScalar : Nat
  externalCertificateCode : Nat
  projectionLawVersion : Nat
  derivedConstructorVersion : Nat
  deriving DecidableEq, Repr

def rigidifiedScalar
    (encoding : LosslessNatEncoding RigidifiedScalarInput)
    (input : RigidifiedScalarInput) : Nat :=
  encoding.encode input

theorem rigidifiedScalar_exact
    (encoding : LosslessNatEncoding RigidifiedScalarInput)
    (input : RigidifiedScalarInput) :
    encoding.decode (rigidifiedScalar encoding input) = some input :=
  encoding.decode_encode input

/--
A proof-producing evaluator for one registered projection profile.  `project`
is the exact finite reconstruction law; `fallback` only totalizes the decoder
outside the image of the lossless scalar and is never used by the theorem.
-/
structure ExactProjectionEvaluator (Projection : Type u) where
  encoding : LosslessNatEncoding RigidifiedScalarInput
  project : RigidifiedScalarInput → Projection
  fallback : Projection

def ExactProjectionEvaluator.decode
    {Projection : Type u}
    (evaluator : ExactProjectionEvaluator Projection)
    (scalar : Nat) : Projection :=
  match evaluator.encoding.decode scalar with
  | some input => evaluator.project input
  | none => evaluator.fallback

/--
The exact augmented scalar determines the selected labeled projection.  This is
an executable equality for every encoded finite stage, not a digest claim.
-/
theorem exact_projection_from_rigidifiedScalar
    {Projection : Type u}
    (evaluator : ExactProjectionEvaluator Projection) :
    ∃ reconstruct : Nat → Projection,
      ∀ input,
        evaluator.project input =
          reconstruct
            (rigidifiedScalar evaluator.encoding input) := by
  refine ⟨evaluator.decode, ?_⟩
  intro input
  simp [
    ExactProjectionEvaluator.decode,
    rigidifiedScalar,
    evaluator.encoding.decode_encode,
  ]

end Mathematics.Projection
```
