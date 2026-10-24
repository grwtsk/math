-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CertifiedBoundaryPair.Variant6597f69d3deb582cc469071b2af3b82bbe2867bd489ec7198ef74ea260f1e1a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6597f69d3deb582cc469071b2af3b82bbe2867bd489ec7198ef74ea260f1e1a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CertifiedBoundaryPair.Variant6597f69d3deb582cc469071b2af3b82bbe2867bd489ec7198ef74ea260f1e1a2","mathematical_subject":"Computation.DataStructures","original_sha256":"6597f69d3deb582cc469071b2af3b82bbe2867bd489ec7198ef74ea260f1e1a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Segmentation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Boundary

/-!
# Certified segmentation plurality
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CertifiedBoundaryPair.Variant6597f69d3deb582cc469071b2af3b82bbe2867bd489ec7198ef74ea260f1e1a2

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
