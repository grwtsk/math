# Complete source: GRWTSK.Algebra.LinearAlgebra.BitMatrixSurface.Variantc5db54131ec1c163f322329579a59fc1936066995a570b190bf387b335381483

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b004c54a00c693fea298be6a3b1370d6981d8333` · SHA-256 `bfdb504c873dc8bbf5143abe1a6fdaa6f2ad8273a4048bf845d5e0a56213e318`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.AsContractSquare.Variant19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AsContractSquare.Variant19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7","mathematical_subject":"Foundations.Unclassified","original_sha256":"19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/bridge/BridgeElements/BitMatrixSurface.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix
import URSMContracts

/-! # Definitionally exact bridge between the two finite function squares. -/


namespace GRWTSK.Algebra.LinearAlgebra.AsContractSquare.Variant19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7

namespace URSM.Bridge

open URSM.Contracts

abbrev asContractSquare (n : Nat) :
    BitMatrix n n → BitSquare n :=
  id

abbrev asBitMatrix (n : Nat) :
    BitSquare n → BitMatrix n n :=
  id

@[simp] theorem roundTripBitMatrix
    (matrix : BitMatrix n n) :
    asBitMatrix n (asContractSquare n matrix) = matrix :=
  rfl

@[simp] theorem roundTripContractSquare
    (matrix : BitSquare n) :
    asContractSquare n (asBitMatrix n matrix) = matrix :=
  rfl

end URSM.Bridge
```
