# Complete source: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant760a3c62e2133c0c984c99cc17a49874afdaf6c2a0a6f207fc6fb9f8da482672

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eee9a1261edbcb88a3a9270a1774407c1458c158` · SHA-256 `39e9a0a613877d1e8b1ab10d70bb8f8eae4b41b41299fb5708f60e826fcfba96`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RowOp.Variant085007721fd0a0ea9fa095c8f7ecf106bfd82e013bbc975aacdfa09842a6f3ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"085007721fd0a0ea9fa095c8f7ecf106bfd82e013bbc975aacdfa09842a6f3ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.RowOp.Variant085007721fd0a0ea9fa095c8f7ecf106bfd82e013bbc975aacdfa09842a6f3ae","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"085007721fd0a0ea9fa095c8f7ecf106bfd82e013bbc975aacdfa09842a6f3ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Linear/Matrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Linear.Matrix

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: linear.matrix
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.LinearAlgebra.RowOp.Variant085007721fd0a0ea9fa095c8f7ecf106bfd82e013bbc975aacdfa09842a6f3ae

namespace Folder
namespace Linear

abbrev Matrix (m n : Nat) (α : Type _) := Fin m → Fin n → α

inductive RowOp (m : Nat) (α : Type _) where
  | swap : Fin m → Fin m → RowOp m α
  | scale : Fin m → α → RowOp m α
  | addScaled : Fin m → Fin m → α → RowOp m α
deriving Repr

end Linear
end Folder
```
