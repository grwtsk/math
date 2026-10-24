# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Validation.Variantbf190de40cd5d6e989073dae9ae6ab557a13170315e6fa2d8cc04080ffec7cb9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ed1e0804407c87ea41903affb39d5c5936954b5` · SHA-256 `bf190de40cd5d6e989073dae9ae6ab557a13170315e6fa2d8cc04080ffec7cb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.Index.Change

/-!
# Canonical-index validation

Validation separates structural integrity from mathematical truth.  It checks
stable identifiers, referential integrity, ownership, schema compatibility,
and non-promotion of authority; it does not prove indexed propositions.
-/

namespace Surface.ContinuousAssurance

/-- Explicit validation result for one proposed index snapshot. -/
structure CanonicalIndexValidation
    (index : CanonicalIndex) where
  identifiersUnique : index.Valid
  referencesResolve : Prop
  referencesResolve_proof : referencesResolve
  ownershipValid : Prop
  ownershipValid_proof : ownershipValid
  importPolicyValid : Prop
  importPolicyValid_proof : importPolicyValid
  schemaValid : Prop
  schemaValid_proof : schemaValid
  authorityNonPromotion : Prop
  authorityNonPromotion_proof : authorityNonPromotion
  assuranceNonPromotion : Prop
  assuranceNonPromotion_proof : assuranceNonPromotion
  openObligations : List ObligationId

/-- Every advertised validation check is backed by its corresponding proof. -/
theorem CanonicalIndexValidation.checked_conditions
    {index : CanonicalIndex}
    (validation : CanonicalIndexValidation index) :
    validation.referencesResolve ∧
      validation.ownershipValid ∧
      validation.importPolicyValid ∧
      validation.schemaValid ∧
      validation.authorityNonPromotion ∧
      validation.assuranceNonPromotion :=
  ⟨validation.referencesResolve_proof,
    validation.ownershipValid_proof,
    validation.importPolicyValid_proof,
    validation.schemaValid_proof,
    validation.authorityNonPromotion_proof,
    validation.assuranceNonPromotion_proof⟩

/-- Successful validation exposes uniqueness but no indexed theorem. -/
theorem CanonicalIndexValidation.unique_identifiers
    {index : CanonicalIndex}
    (validation : CanonicalIndexValidation index) :
    index.records.Pairwise fun left right => left.identifier ≠ right.identifier :=
  validation.identifiersUnique

/-- Validation evidence explicitly required before a patch can be considered. -/
structure ValidatedCanonicalIndexPatch where
  patch : CanonicalIndexPatch
  proposed : CanonicalIndex
  proposedRootMatches : proposed.rootDigest.value = patch.proposedRoot.digest
  validation : CanonicalIndexValidation proposed

end Surface.ContinuousAssurance
```
