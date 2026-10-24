# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PlaceInteraction.Variant6c71b100cbd84b6f43083f9707c29a4bb2fbf137ad3d442752ee560bc687fe9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d72ba35473fc50599975d85f2501725e7bbfbbbc` · SHA-256 `b51723c81fc88f10c960d6779c8b7df09db88f7b12bf3c206efe4a53df07dbde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.InteractionSign.Variantc85d0f5d5faf31cd3374b14553641717859d34b0cc7431658a4d4489e913b721","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c85d0f5d5faf31cd3374b14553641717859d34b0cc7431658a4d4489e913b721","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.InteractionSign.Variantc85d0f5d5faf31cd3374b14553641717859d34b0cc7431658a4d4489e913b721","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c85d0f5d5faf31cd3374b14553641717859d34b0cc7431658a4d4489e913b721","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/PlaceInteraction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.CochainReconstruction

/-!
# Higher place interaction

Closedness of the first cochain is automatic.  The second finite difference is
a new sign-bearing invariant.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.InteractionSign.Variantc85d0f5d5faf31cd3374b14553641717859d34b0cc7431658a4d4489e913b721

namespace Mathematics.SemiLocalDefect

universe uPrime

def placeInteraction
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    model.Operator :=
  capacity.defect (insert left (insert right cut)) -
    capacity.defect (insert left cut) -
    capacity.defect (insert right cut) +
    capacity.defect cut

theorem placeInteraction_eq_incrementDifference
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    placeInteraction capacity cut left right =
      capacity.increment (insert right cut) left -
        capacity.increment cut left := by
  simp only [placeInteraction,
    PrimeCutDefectCapacity.increment]
  abel

inductive InteractionSign
  | diminishing
  | additive
  | reinforcing
  | indefinite
deriving DecidableEq, Repr

structure PlaceInteractionCertificate
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) where
  sign : InteractionSign
  diminishing :
    sign = .diminishing →
      model.Nonnegative
        (-placeInteraction
          capacity cut left right)
  additive :
    sign = .additive →
      placeInteraction capacity cut left right = 0
  reinforcing :
    sign = .reinforcing →
      model.Nonnegative
        (placeInteraction
          capacity cut left right)

end Mathematics.SemiLocalDefect
```
