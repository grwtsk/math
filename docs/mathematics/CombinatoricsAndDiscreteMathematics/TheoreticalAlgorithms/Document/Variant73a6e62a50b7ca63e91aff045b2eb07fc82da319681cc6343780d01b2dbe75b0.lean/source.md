# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Document.Variant73a6e62a50b7ca63e91aff045b2eb07fc82da319681cc6343780d01b2dbe75b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa548235f4127e7c72e9c6dd5e5850ca3377aed0` · SHA-256 `b9400a19d71e99abf7cad9990e9f737aa3f5341b1df206b727e6d54a11265a6d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DocumentId.Variant78599e63739d3e62d3b27452cb35ee92769ddadea79b9ce8e2f086bed6d09715","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78599e63739d3e62d3b27452cb35ee92769ddadea79b9ce8e2f086bed6d09715","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DocumentId.Variant78599e63739d3e62d3b27452cb35ee92769ddadea79b9ce8e2f086bed6d09715","mathematical_subject":"Computation.DataStructures","original_sha256":"78599e63739d3e62d3b27452cb35ee92769ddadea79b9ce8e2f086bed6d09715","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Document.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Presentation.Document

Radiation role: presentation-document
BinaryMatrix spine: This module models documents derived from BinaryMatrixStream carriers without changing archive reconstruction.
Ontology: presentation.document
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: presentation
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DocumentId.Variant78599e63739d3e62d3b27452cb35ee92769ddadea79b9ce8e2f086bed6d09715

namespace Folder
namespace Presentation

structure DocumentId where
  value : String

structure SectionId where
  value : String

structure DocumentSection where
  id : SectionId
  title : String
  body : String
  sourceModule? : Option String
  referenceRank : Nat

structure PresentationDocument where
  id : DocumentId
  title : String
  sections : List DocumentSection
  sortedByRank : Prop

theorem document_sections_have_rank
    (D : PresentationDocument)
    (S : DocumentSection)
    (_h : S ∈ D.sections) :
    ∃ r, S.referenceRank = r :=
  ⟨S.referenceRank, rfl⟩

end Presentation
end Folder
```
