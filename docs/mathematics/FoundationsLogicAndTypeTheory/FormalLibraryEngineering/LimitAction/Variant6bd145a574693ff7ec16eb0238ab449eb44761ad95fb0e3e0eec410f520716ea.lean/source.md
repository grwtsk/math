# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitAction.Variant6bd145a574693ff7ec16eb0238ab449eb44761ad95fb0e3e0eec410f520716ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4624e76450dbc1eedd51145f0eeb85a0eaed3d12` · SHA-256 `d0cf4a909e70f8431fa292167f60dabfddb3df8fa497f2f25040eb84ad2e4cda`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitAutomorphismBoundaryLaw.Variante32ead5b46e076dd199b08e0d9ae3a4a4f2aa3dad6a1b54ea675f9cf818755f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e32ead5b46e076dd199b08e0d9ae3a4a4f2aa3dad6a1b54ea675f9cf818755f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LimitAutomorphismBoundaryLaw.Variante32ead5b46e076dd199b08e0d9ae3a4a4f2aa3dad6a1b54ea675f9cf818755f8","mathematical_subject":"Foundations.Unclassified","original_sha256":"e32ead5b46e076dd199b08e0d9ae3a4a4f2aa3dad6a1b54ea675f9cf818755f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Symmetry/LimitAction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Symmetry.SuccessorCompatibility

/-!
# Limit action and boundary-law preservation
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitAutomorphismBoundaryLaw.Variante32ead5b46e076dd199b08e0d9ae3a4a4f2aa3dad6a1b54ea675f9cf818755f8

namespace Mathematics.StratifiedBoundary

structure LimitAutomorphismBoundaryLaw
    (GroupElement State BoundaryLaw : Type u) where
  action : CutAutomorphismAction GroupElement State
  boundaryLaw : BoundaryLaw
  transformedBoundaryLaw :
    GroupElement → BoundaryLaw → BoundaryLaw
  preserves :
    ∀ groupElement,
      transformedBoundaryLaw groupElement boundaryLaw =
        boundaryLaw
  projectiveActionCertificateRef : String

theorem limit_automorphism_preserves_boundary_law
    {GroupElement State BoundaryLaw : Type u}
    (certificate :
      LimitAutomorphismBoundaryLaw
        GroupElement State BoundaryLaw)
    (groupElement : GroupElement) :
    certificate.transformedBoundaryLaw
        groupElement certificate.boundaryLaw =
      certificate.boundaryLaw :=
  certificate.preserves groupElement

end Mathematics.StratifiedBoundary
```
