# Complete source: GRWTSK.Algebra.LinearAlgebra.Checkerboard.Variant4f219cb34ee81a4fb79cb8ff3a2782e02538abed745a8351230b5f14c129ab90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3cdcce7a6ca0c8dadbfd6ab18e3b9564a59a40c9` · SHA-256 `3ec9bd8444d9a66fb02f2304dd00863e12907bfaf0f91d20559e80278cecb5ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CheckerboardIsProper2Coloring.Variant3bb1bb32cc7a2e26bc38f8ee80da6045242d269e3f3809e662afe85e92c89440","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3bb1bb32cc7a2e26bc38f8ee80da6045242d269e3f3809e662afe85e92c89440","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CheckerboardIsProper2Coloring.Variant3bb1bb32cc7a2e26bc38f8ee80da6045242d269e3f3809e662afe85e92c89440","mathematical_subject":"Foundations.Unclassified","original_sha256":"3bb1bb32cc7a2e26bc38f8ee80da6045242d269e3f3809e662afe85e92c89440","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/BinaryMatrix/Checkerboard.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Bitspace.Checkerboard

/-!
# Folder.Theorem.BinaryMatrix.Checkerboard

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.binary_matrix.checkerboard
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.LinearAlgebra.CheckerboardIsProper2Coloring.Variant3bb1bb32cc7a2e26bc38f8ee80da6045242d269e3f3809e662afe85e92c89440

namespace Folder
namespace Theorem
namespace BinaryMatrix

theorem checkerboard_isProper2Coloring
    (m n : Nat) :
    Bitspace.IsProper2Coloring (Bitspace.checkerboard m n) :=
  Bitspace.checkerboard_isProper2Coloring m n

end BinaryMatrix
end Theorem
end Folder
```
