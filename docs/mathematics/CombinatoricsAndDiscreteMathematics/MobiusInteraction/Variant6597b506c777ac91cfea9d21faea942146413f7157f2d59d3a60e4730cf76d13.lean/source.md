# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.MobiusInteraction.Variant6597b506c777ac91cfea9d21faea942146413f7157f2d59d3a60e4730cf76d13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `235c358a798ec5d8ffbe233f6a9787ee75d54d4f` · SHA-256 `3fd1444573637d0eb8e66a7a8f8fdabcd3f29f08b1c73741a943fbb3f577767d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MobiusReconstructionCertificate.Variantacc529a6695cbccde8240a3a370da835a67faa0e36d7adbf608ed695c9f4e265","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"acc529a6695cbccde8240a3a370da835a67faa0e36d7adbf608ed695c9f4e265","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MobiusReconstructionCertificate.Variantacc529a6695cbccde8240a3a370da835a67faa0e36d7adbf608ed695c9f4e265","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"acc529a6695cbccde8240a3a370da835a67faa0e36d7adbf608ed695c9f4e265","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/MobiusInteraction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.PlaceInteraction

/-!
# Operator Möbius interaction

Higher differences are defined independently of first-order monotonicity.
Positivity of every Möbius coefficient is a strictly stronger certificate.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MobiusReconstructionCertificate.Variantacc529a6695cbccde8240a3a370da835a67faa0e36d7adbf608ed695c9f4e265

namespace Mathematics.SemiLocalDefect

open scoped BigOperators

universe uPrime

def mobiusSign (degree : Nat) : ℚ :=
  if Even degree then 1 else -1

def higherDifference
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (base directions : Finset Prime) :
    model.Operator :=
  ∑ subset ∈ directions.powerset,
    mobiusSign
      (directions.card - subset.card) •
      capacity.defect (base ∪ subset)

def mobiusInteraction
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (directions : Finset Prime) :
    model.Operator :=
  higherDifference capacity ∅ directions

structure MobiusReconstructionCertificate
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) where
  reconstruct :
    ∀ cut,
      capacity.defect cut =
        ∑ subset ∈ cut.powerset,
          mobiusInteraction capacity subset

structure CompletelyPositiveInteraction
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) : Prop where
  positive :
    ∀ directions,
      model.Nonnegative
        (mobiusInteraction
          capacity directions)

end Mathematics.SemiLocalDefect
```
