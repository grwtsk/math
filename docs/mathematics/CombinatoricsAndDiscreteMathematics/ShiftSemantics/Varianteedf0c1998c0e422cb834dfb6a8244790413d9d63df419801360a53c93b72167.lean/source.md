# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ShiftSemantics.Varianteedf0c1998c0e422cb834dfb6a8244790413d9d63df419801360a53c93b72167

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5880ee9d4a1170c20b134156a96898dbf845419a` · SHA-256 `8032ccb441b68bc8555bf9f354b265bbdc00f6e01e2a3826d917f277abde97e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.LogicalShift.Variant36edc2ca026a08b1d0e602e4934bf5dc3ba5951911a6649b60a597bde52dda97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"36edc2ca026a08b1d0e602e4934bf5dc3ba5951911a6649b60a597bde52dda97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.LogicalShift.Variant36edc2ca026a08b1d0e602e4934bf5dc3ba5951911a6649b60a597bde52dda97","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"36edc2ca026a08b1d0e602e4934bf5dc3ba5951911a6649b60a597bde52dda97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/ShiftSemantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.MobiusOntology.TwistedBitfield

/-!
# Logical shifts and decoder-scoped scaling

A shift is a coordinate operation.  Numerical scaling is available only
through a decoder theorem on a certified no-overflow domain.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.LogicalShift.Variant36edc2ca026a08b1d0e602e4934bf5dc3ba5951911a6649b60a597bde52dda97

namespace Mathematics.MobiusOntology

universe u

def hammingDistance
    (left right : BooleanBitfield width) : Nat :=
  (Finset.univ.filter fun index => left index != right index).card

def zeroFillShift
    (amount width : Nat)
    (bitfield : BooleanBitfield width) :
    BooleanBitfield width :=
  fun index =>
    if inRange : index.val + amount < width then
      bitfield ⟨index.val + amount, inRange⟩
    else
      false

/-- A logical shift carries its exact Hamming-Lipschitz theorem. -/
structure LogicalShift (width : Nat) where
  amount : Nat
  apply : BooleanBitfield width → BooleanBitfield width
  coordinateExact :
    apply = zeroFillShift amount width
  hammingLipschitz : Nat
  hammingBound :
    ∀ left right,
      hammingDistance (apply left) (apply right) ≤
        hammingLipschitz * hammingDistance left right

inductive OverflowBehavior
  | truncation
  | wraparound
  | saturation
  | signChange
  | undefined
  deriving DecidableEq, Repr

structure FixedPointDecoder
    (Value : Type u) (width : Nat) where
  decode : BooleanBitfield width → Value

structure ShiftScaleCertificate
    (Value : Type u) (width : Nat)
    (shift : LogicalShift width)
    (decoder : FixedPointDecoder Value width) where
  noOverflow : BooleanBitfield width → Prop
  scale : Value → Value
  exactOnDomain :
    ∀ bitfield,
      noOverflow bitfield →
        decoder.decode (shift.apply bitfield) =
          scale (decoder.decode bitfield)
  outsideDomain : OverflowBehavior

end Mathematics.MobiusOntology
```
