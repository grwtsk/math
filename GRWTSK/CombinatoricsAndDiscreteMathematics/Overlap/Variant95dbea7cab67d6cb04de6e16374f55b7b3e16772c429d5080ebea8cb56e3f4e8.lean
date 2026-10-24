import Mathematics.SemanticTokenization.EvidenceCut

/-!
# Typed metadata overlap

Profiles retain complete accepted assertion records.  Comparison remains
field-indexed, so values belonging to different metadata types cannot be
compared by an untyped equality.
-/

namespace Mathematics.SemanticTokenization

abbrev MetadataProfile
    (cut : EvidenceCut)
    (_source : Finset (Span cut.text))
    (_context : ContextId) : Type :=
  Finset (PackedAcceptedAssertion cut)

inductive FieldComparison
  | equal
  | compatible
  | incompatible
  | missingLeft
  | missingRight
  | ambiguous
deriving DecidableEq, Repr

structure FieldOverlap
    (metadataType : MetadataType) where
  field : MetadataType := metadataType
  result : FieldComparison
  score : Option ℚ
  comparedAssertions : Finset AssertionId
  evidence : Finset EvidenceId
deriving Repr

structure TypedOverlap where
  fields : Array (Sigma FieldOverlap)
  aggregateScore : Option ℚ
  completeForRule : Bool
deriving Repr

structure MetadataComparator
    (cut : EvidenceCut)
    (left right : Finset (Span cut.text))
    (context : ContextId) where
  compare :
    ∀ metadataType,
      MetadataProfile cut left context →
      MetadataProfile cut right context →
      FieldOverlap metadataType
  compatibleTypesOnly :
    ∀ metadataType leftProfile rightProfile,
      (compare metadataType leftProfile rightProfile).field =
        metadataType

def computeOverlap
    {cut : EvidenceCut}
    {left right : Finset (Span cut.text)}
    {context : ContextId}
    (comparator : MetadataComparator cut left right context)
    (leftProfile : MetadataProfile cut left context)
    (rightProfile : MetadataProfile cut right context)
    (requested : Array MetadataType) :
    TypedOverlap :=
  { fields :=
      requested.map fun metadataType =>
        ⟨metadataType,
          comparator.compare
            metadataType leftProfile rightProfile⟩
    aggregateScore := none
    completeForRule := true }

theorem computed_overlap_is_type_indexed
    {cut : EvidenceCut}
    {left right : Finset (Span cut.text)}
    {context : ContextId}
    (comparator : MetadataComparator cut left right context)
    (leftProfile : MetadataProfile cut left context)
    (rightProfile : MetadataProfile cut right context)
    (metadataType : MetadataType) :
    (comparator.compare
      metadataType leftProfile rightProfile).field =
        metadataType :=
  comparator.compatibleTypesOnly
    metadataType leftProfile rightProfile

end Mathematics.SemanticTokenization
