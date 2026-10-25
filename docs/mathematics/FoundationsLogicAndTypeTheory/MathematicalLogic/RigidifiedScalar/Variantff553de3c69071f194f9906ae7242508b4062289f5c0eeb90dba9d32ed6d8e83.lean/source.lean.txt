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
