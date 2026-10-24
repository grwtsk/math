# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TensorLocus.Variantdd4a79a459f4ade7c3c417ddaf98ca12417c57e9ad790ff3798c31d00590da98

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `700b0d089a9e3a5e21b4d2a98c6d5eeddf1960ed` · SHA-256 `8d30018b9c2d8f1e08022f89466d6795c70f3695b52e27a9a2d6410f3091fd2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TensorLocus.Variant1c57e8f115b5073c02300eb2174e2e994151b487bee733b7cd09e917ace1c739","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c57e8f115b5073c02300eb2174e2e994151b487bee733b7cd09e917ace1c739","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TensorLocus.Variant1c57e8f115b5073c02300eb2174e2e994151b487bee733b7cd09e917ace1c739","mathematical_subject":"Computation.DataStructures","original_sha256":"1c57e8f115b5073c02300eb2174e2e994151b487bee733b7cd09e917ace1c739","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Stream/TensorLocus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Stream.PolarPaddingPole


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TensorLocus.Variant1c57e8f115b5073c02300eb2174e2e994151b487bee733b7cd09e917ace1c739

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure TensorLocus where
  locusId : Nat
  carrier : SomeBinaryLogicMatrix
  polarPole? : Option PolarSplitPaddingPole
  localWeight : Int
  paddingDimension : Nat
  sphericalDimension : Nat
  claimBoundary : List String

theorem tensorLocus_is_matrix_backed
    (L : TensorLocus) :
    Nonempty
      (BinaryLogicMatrix L.carrier.rows L.carrier.cols) :=
  ⟨L.carrier.matrix⟩

structure TensorAnchoringFiber where
  fiberId : Nat
  anchor : SomeBinaryLogicMatrix
  sourceLocus : TensorLocus
  targetLocus : TensorLocus
  polarPole? : Option PolarSplitPaddingPole
  determinantDescriptor : String
  factorRole : String
  fiberBoundary : List String

theorem tensorAnchor_is_BinaryLogicMatrix
    (F : TensorAnchoringFiber) :
    Nonempty
      (BinaryLogicMatrix F.anchor.rows F.anchor.cols) :=
  ⟨F.anchor.matrix⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```
