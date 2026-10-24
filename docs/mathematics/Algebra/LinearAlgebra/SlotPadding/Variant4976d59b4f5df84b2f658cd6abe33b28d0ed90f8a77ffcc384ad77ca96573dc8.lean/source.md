# Complete source: GRWTSK.Algebra.LinearAlgebra.SlotPadding.Variant4976d59b4f5df84b2f658cd6abe33b28d0ed90f8a77ffcc384ad77ca96573dc8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb5bca2c2b9e80b4c787e92e18bd91567f4080c0` · SHA-256 `eeac5072b26ba70b96434afd61cc8e6a4911b1f8a016797d6542f1e86ce1eff7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PadBitMatrix.Variant707bd469f512df4c10ff859a11bc27b02808f253e09dca9e80a248d93dba91a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"707bd469f512df4c10ff859a11bc27b02808f253e09dca9e80a248d93dba91a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PadBitMatrix.Variant707bd469f512df4c10ff859a11bc27b02808f253e09dca9e80a248d93dba91a5","mathematical_subject":"Foundations.Unclassified","original_sha256":"707bd469f512df4c10ff859a11bc27b02808f253e09dca9e80a248d93dba91a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/bridge/BridgeElements/SlotPadding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BridgeElements.BitMatrixSurface
import URSMContracts

/-! # Preservation of logical matrix cells under Rust-owned slot embedding. -/


namespace GRWTSK.Algebra.LinearAlgebra.PadBitMatrix.Variant707bd469f512df4c10ff859a11bc27b02808f253e09dca9e80a248d93dba91a5

namespace URSM.Bridge

open URSM.Contracts

def padBitMatrix
    (slot : SlotEmbedding n S)
    (matrix : BitMatrix n n) :
    BitMatrix S S :=
  slot.pad (asContractSquare n matrix)

@[simp] theorem padBitMatrix_on_image
    (slot : SlotEmbedding n S)
    (matrix : BitMatrix n n)
    (i j : Fin n) :
    padBitMatrix slot matrix (slot.encode i) (slot.encode j) =
      matrix i j :=
  slot.pad_on_image (asContractSquare n matrix) i j

end URSM.Bridge
```
