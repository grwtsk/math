# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BijectiveSplit.Variant34057de17b4ee0b70df1de0d7f522875e9ee98deff8f4441a2155fd2936d0bf7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `391d3ca50a37c7e154a052fa6a4bd1456c21b8d9` · SHA-256 `595d9fc07ccd1bd3993e0a0b16ec386cf0e12a4f4c7c33aaf8b5ee4dc7e21439`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReconstructSplit.Variantd0cfcbed9e66ce34ce3778a85b698a0a038c8ba4198ff1562021b1f39f97a73d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0cfcbed9e66ce34ce3778a85b698a0a038c8ba4198ff1562021b1f39f97a73d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ReconstructSplit.Variantd0cfcbed9e66ce34ce3778a85b698a0a038c8ba4198ff1562021b1f39f97a73d","mathematical_subject":"Foundations.Unclassified","original_sha256":"d0cfcbed9e66ce34ce3778a85b698a0a038c8ba4198ff1562021b1f39f97a73d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Shader/BijectiveSplit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Shader.BijectiveSplit

/-!
# Folder.Theorem.Shader.BijectiveSplit

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes the arithmetic split proof mirrored by runtime shader code.
Ontology: proof.shader.bijective_split
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: residual
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReconstructSplit.Variantd0cfcbed9e66ce34ce3778a85b698a0a038c8ba4198ff1562021b1f39f97a73d

namespace Folder
namespace Theorem
namespace Shader

theorem reconstruct_split
    (raw step : Nat)
    (hstep : 0 < step) :
    Folder.Shader.reconstruct
        (Folder.Shader.split raw step hstep) = raw :=
  Folder.Shader.reconstruct_split raw step hstep

theorem residual_lt_step
    (S : Folder.Shader.QuantizedSplit) :
    S.residual < S.step :=
  Folder.Shader.residual_lt_step S

end Shader
end Theorem
end Folder
```
