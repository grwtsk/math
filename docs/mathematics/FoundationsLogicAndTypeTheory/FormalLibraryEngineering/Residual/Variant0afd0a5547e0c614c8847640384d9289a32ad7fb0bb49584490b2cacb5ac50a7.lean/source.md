# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Residual.Variant0afd0a5547e0c614c8847640384d9289a32ad7fb0bb49584490b2cacb5ac50a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `348b34df22ad72d3de2f9ab5623f98a7c03b5d2a` · SHA-256 `66df1f5246a3e08169af0b84e6d9ab2f48a6725f38c0ff1a4b62476a3cd0c4c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResidualEncoding.Variantdde55fb84d0a7e537b3e12283919a909dd7a0b8dda738e5cea24a292bd450230","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dde55fb84d0a7e537b3e12283919a909dd7a0b8dda738e5cea24a292bd450230","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ResidualEncoding.Variantdde55fb84d0a7e537b3e12283919a909dd7a0b8dda738e5cea24a292bd450230","mathematical_subject":"Foundations.Unclassified","original_sha256":"dde55fb84d0a7e537b3e12283919a909dd7a0b8dda738e5cea24a292bd450230","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Residual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Quantization.Residual

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: quantization.residual
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: residual
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResidualEncoding.Variantdde55fb84d0a7e537b3e12283919a909dd7a0b8dda738e5cea24a292bd450230

namespace Folder
namespace Quantization

structure ResidualEncoding (α β ρ : Type _) where
  encode : α → β × ρ
  decode : β × ρ → α
  left_inverse : Function.LeftInverse decode encode
  right_inverse : Function.RightInverse decode encode

end Quantization
end Folder
```
