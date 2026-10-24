# Complete source: GRWTSK.Algebra.LinearAlgebra.Radiation.Variantca20060b58cefe306090bf22c6b411f4bdd40f021affa60cff568fc2749ddb0a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba3c40c4861aa212f4075b793753fcce5432ee04` · SHA-256 `b298034cc705090d21bb3f53b1d76aa583e2af86cfbb03b9e23b169b9eff8c23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RadiationSpine.Variant32513228581f508396383ec54d3ed821e873895219bb9286ea0e84acc490ae45","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32513228581f508396383ec54d3ed821e873895219bb9286ea0e84acc490ae45","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RadiationSpine.Variant32513228581f508396383ec54d3ed821e873895219bb9286ea0e84acc490ae45","mathematical_subject":"Foundations.Unclassified","original_sha256":"32513228581f508396383ec54d3ed821e873895219bb9286ea0e84acc490ae45","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BinaryMatrix/Radiation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Carrier.BinaryMatrix
import Folder.Carrier.Grid

/-!
# Folder.BinaryMatrix.Radiation

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: bm.radiation
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/



namespace GRWTSK.Algebra.LinearAlgebra.RadiationSpine.Variant32513228581f508396383ec54d3ed821e873895219bb9286ea0e84acc490ae45

namespace Folder
namespace BinaryMatrix

structure RadiationSpine where
  carrier : Type _
  description : String

def binaryMatrixSpine : RadiationSpine where
  carrier := Carrier.BinaryMatrix
  description :=
    "BinaryMatrix is the finite cellular carrier from which cube address spaces, shell filtrations, spectral heat fields, finite phase connections, and torsion compatibility modules radiate."

end BinaryMatrix
end Folder
```
