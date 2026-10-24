# Complete source: GRWTSK.Algebra.LinearAlgebra.Pivot.Variant031b8d83a861ea4f9afc5cd59ce8459965f89a9a963b1cb5e73918aef9cd95bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e11cfe67f323dc11b8175cc1137e1d9d1064a525` · SHA-256 `4744448401e8dc09ddfd986f465c89e0c013894dc2e181cc70f3ed0393f2a50a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PivotPosition.Variant241fdd44ba8e99eda9fa8369ea4ea3e3a018cc6a0d83f392e5c9a322ab95d34d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"241fdd44ba8e99eda9fa8369ea4ea3e3a018cc6a0d83f392e5c9a322ab95d34d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.PivotPosition.Variant241fdd44ba8e99eda9fa8369ea4ea3e3a018cc6a0d83f392e5c9a322ab95d34d","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"241fdd44ba8e99eda9fa8369ea4ea3e3a018cc6a0d83f392e5c9a322ab95d34d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Linear/Pivot.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Linear.Matrix

/-!
# Folder.Linear.Pivot

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: linear.pivot
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.LinearAlgebra.PivotPosition.Variant241fdd44ba8e99eda9fa8369ea4ea3e3a018cc6a0d83f392e5c9a322ab95d34d

namespace Folder
namespace Linear

structure PivotPosition (m n : Nat) where
  row : Fin m
  col : Fin n
deriving Repr

structure PivotCertificate
    {m n : Nat}
    {α : Type _}
    [Zero α]
    (A : Matrix m n α) where
  pos : PivotPosition m n
  nonzero : A pos.row pos.col ≠ 0

theorem pivot_nonzero
    {m n : Nat}
    {α : Type _}
    [Zero α]
    {A : Matrix m n α}
    (C : PivotCertificate A) :
    A C.pos.row C.pos.col ≠ 0 :=
  C.nonzero

end Linear
end Folder
```
