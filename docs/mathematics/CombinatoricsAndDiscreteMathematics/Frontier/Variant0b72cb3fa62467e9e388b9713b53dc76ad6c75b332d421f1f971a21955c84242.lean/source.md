# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Frontier.Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06a4b293d2fd7a85127c4f61444ae91a2a9e6a81` · SHA-256 `21d5c857d2e63e36f3adc37fb04eb1c00237c9c5df1251abd78f5efd230a1ac9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GradedFrontierCertificate.Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.GradedFrontierCertificate.Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"cf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Frontier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Origin

/-!
# Finite graded frequency frontier

One grade is retained for each distinct unresolved frequency.  Removing a
displayed grade is a representation reduction only.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GradedFrontierCertificate.Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973

namespace Mathematics.Resolution

universe u v w

def frequencyValues
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    (unresolvedSet : Finset Obligation) :
    Finset Nat :=
  unresolvedSet.image cut.frequency

def frequencyLayer
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    (unresolvedSet : Finset Obligation)
    (frequency : Nat) :
    Finset Obligation :=
  unresolvedSet.filter fun obligation ↦
    cut.frequency obligation = frequency

def maximumFrequency
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    (unresolvedSet : Finset Obligation)
    (nonempty : unresolvedSet.Nonempty) :
    Nat :=
  (frequencyValues cut unresolvedSet).max'
    (nonempty.image cut.frequency)

def firstFrequencyLayer
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    (unresolvedSet : Finset Obligation)
    (nonempty : unresolvedSet.Nonempty) :
    Finset Obligation :=
  frequencyLayer cut unresolvedSet
    (maximumFrequency cut unresolvedSet nonempty)

theorem first_layer_has_maximum_frequency
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    {cut : InvocationCut Obligation Proof Event}
    {unresolvedSet : Finset Obligation}
    {nonempty : unresolvedSet.Nonempty}
    {obligation : Obligation}
    (member :
      obligation ∈
        firstFrequencyLayer cut unresolvedSet nonempty) :
    cut.frequency obligation =
      maximumFrequency cut unresolvedSet nonempty :=
  (Finset.mem_filter.mp member).2

theorem frequency_bounded_by_maximum
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    {cut : InvocationCut Obligation Proof Event}
    {unresolvedSet : Finset Obligation}
    (nonempty : unresolvedSet.Nonempty)
    {obligation : Obligation}
    (member : obligation ∈ unresolvedSet) :
    cut.frequency obligation ≤
      maximumFrequency cut unresolvedSet nonempty := by
  apply Finset.le_max'
  exact Finset.mem_image.mpr ⟨obligation, member, rfl⟩

theorem finite_grade_bound
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    (unresolvedSet : Finset Obligation) :
    (frequencyValues cut unresolvedSet).card ≤
      unresolvedSet.card :=
  Finset.card_image_le

/--
The dimension list is a checked runtime witness for the basis-cardinality
chain.  Strict drops certify removal of exactly one nonempty frequency grade.
-/
structure GradedFrontierCertificate where
  frequencies : List Nat
  dimensions : List Nat
  descending : frequencies.Pairwise (· > ·)
  terminalZero : dimensions.getLast? = some 0
  oneDimensionPerLayer :
    dimensions.length = frequencies.length + 1
  strictDrops : dimensions.Pairwise (· > ·)
  bounded :
    frequencies.length ≤ unresolvedCount
  unresolvedCount : Nat

end Mathematics.Resolution
```
