import Mathematics.SemanticTokenization.Boundary

/-!
# Certified segmentation plurality
-/

namespace Mathematics.SemanticTokenization

structure CertifiedBoundaryPair
    (cut : EvidenceCut) where
  left : Span cut.text
  right : Span cut.text
  certificate : BoundaryCertificate cut left right

structure CertifiedSegmentation
    (cut : EvidenceCut) where
  tokenization : Tokenization cut.text
  boundaries : Array (CertifiedBoundaryPair cut)
  boundaryCoverage :
    ∀ index : Fin tokenization.spans.size,
      index.val + 1 < tokenization.spans.size →
      ∃ pair ∈ boundaries,
        pair.left = tokenization.spans[index] ∧
        pair.right =
          tokenization.spans[
            ⟨index.val + 1, by assumption⟩]

structure SegmentationFamily
    (cut : EvidenceCut) where
  members : Array (CertifiedSegmentation cut)
  nonempty : 0 < members.size

def UniqueSegmentation
    {cut : EvidenceCut}
    (family : SegmentationFamily cut) : Prop :=
  ∃ segmentation : CertifiedSegmentation cut,
    ∀ index : Fin family.members.size,
      family.members[index] = segmentation

inductive SegmentationStatus
    (cut : EvidenceCut)
  | unique
      (segmentation : CertifiedSegmentation cut)
      (certificate :
        ∀ family : SegmentationFamily cut,
          ∀ index : Fin family.members.size,
            family.members[index] = segmentation)
  | ambiguous
      (family : SegmentationFamily cut)

theorem ambiguity_preserves_family
    {cut : EvidenceCut}
    {family : SegmentationFamily cut}
    (status : SegmentationStatus cut)
    (equality : status = .ambiguous family) :
    0 < family.members.size := by
  exact family.nonempty

end Mathematics.SemanticTokenization
