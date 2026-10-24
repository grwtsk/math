# Complete source: GRWTSK.Algebra.LinearAlgebra.ThresholdTransform.Variant9efe8216bfa1c6b2988b870076913c937dcba5ad7af11b0653728d1662531b11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad162c9e5c94d856eab4a4e2a17acc45f800bcaf` · SHA-256 `0db9bda0a024910613f366459153af910bdaa26ed7d13344b44068a036ff2142`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ThresholdTransform.Variant506b3b5165fea790ac38f3d1bff13ca7c479b49140c6ee921bdd9ffe21b47eac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"506b3b5165fea790ac38f3d1bff13ca7c479b49140c6ee921bdd9ffe21b47eac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ThresholdTransform.Variant506b3b5165fea790ac38f3d1bff13ca7c479b49140c6ee921bdd9ffe21b47eac","mathematical_subject":"Foundations.Unclassified","original_sha256":"506b3b5165fea790ac38f3d1bff13ca7c479b49140c6ee921bdd9ffe21b47eac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Transform/ThresholdTransform.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Quantization.Threshold
import Folder.Carrier.BinaryMatrixStream

/-!
# Folder.Transform.ThresholdTransform

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: transform.threshold_transform
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.LinearAlgebra.ThresholdTransform.Variant506b3b5165fea790ac38f3d1bff13ca7c479b49140c6ee921bdd9ffe21b47eac

namespace Folder
namespace Transform

open Carrier Quantization

structure ThresholdTransform (Source : Type _) where
  quantizer : ThresholdQuantizer
  rows : Nat
  cols : Nat
  sample : Source → Nat → Fin rows → Fin cols → Real
  layerAt : Source → Nat → BinaryMatrix :=
    fun source t =>
      BinaryMatrix.ofFunction rows cols
        (fun i j => quantizer.bitOf (sample source t i j))

end Transform
end Folder
```
