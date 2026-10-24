# Complete source: GRWTSK.Algebra.LinearAlgebra.PresentationRule.Variantbd1c0b69796350ad7425564e60634b11afff7b47f8792bc4cf19123aefbd60e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `552386f1cce091ab82948e75b9574623109cf35a` · SHA-256 `15306bb5cfc0e566823c26a4a299a00df1df9c7f22fc55a302e8107b0b3875bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PresentationRule.Variant2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PresentationRule.Variant2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32","mathematical_subject":"Foundations.Unclassified","original_sha256":"2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Archive/PresentationRule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Carrier.BinaryMatrix

/-!
# Folder.Archive.PresentationRule

Radiation role: archive-rule-engine
BinaryMatrix spine: This module separates local reconstruction rules from materialized BinaryMatrixStream storage.
Ontology: archive.presentation_rule
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: infrastructure
-/


namespace GRWTSK.Algebra.LinearAlgebra.PresentationRule.Variant2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32

namespace Folder
namespace Archive

structure PresentationRule where
  name : String
  apply : Carrier.BinaryMatrix → Carrier.BinaryMatrix

def IsFixedBy
    (R : PresentationRule)
    (M : Carrier.BinaryMatrix) : Prop :=
  R.apply M = M

def copyRule : PresentationRule where
  name := "copy"
  apply := id

theorem copyRule_fixed
    (M : Carrier.BinaryMatrix) :
    IsFixedBy copyRule M :=
  rfl

end Archive
end Folder
```
