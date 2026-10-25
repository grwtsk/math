# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RigidifiedScalar.Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6d895fdaff73155f5460d71ba44bf0dc3237c84` · SHA-256 `1899f1c9031d591238544a17921f2d790226ea5e876d8f0f6300eb52bc9a3ce6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LosslessNatEncoding.Variantff553de3c69071f194f9906ae7242508b4062289f5c0eeb90dba9d32ed6d8e83","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff553de3c69071f194f9906ae7242508b4062289f5c0eeb90dba9d32ed6d8e83","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.LosslessNatEncoding.Variantff553de3c69071f194f9906ae7242508b4062289f5c0eeb90dba9d32ed6d8e83","mathematical_subject":"Logic.Foundations","original_sha256":"ff553de3c69071f194f9906ae7242508b4062289f5c0eeb90dba9d32ed6d8e83","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/RigidifiedScalar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.LabeledProjection

/-!
# Lossless rigidified scalar boundary

The augmented scalar must carry a decoder proof.  A digest cannot inhabit this
record merely by claiming collision resistance.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LosslessNatEncoding.Variantff553de3c69071f194f9906ae7242508b4062289f5c0eeb90dba9d32ed6d8e83

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
