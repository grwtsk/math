# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HomologyComplexitySorter.Variant90ae9413955f9b64251d06df570d29f2336e054c0a98e1eb835c5c7dd128942d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45bd4fdfd78c4363da1aa8ed31fd11ee81632896` · SHA-256 `468c8a7b118e28fd573b7e4f29bee96096c9e15e893a7fd03d625bbae2f203de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PaddedHomologyBoundary.Variant725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PaddedHomologyBoundary.Variant725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b","mathematical_subject":"Computation.DataStructures","original_sha256":"725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Stream/HomologyComplexitySorter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Stream.TensorLocus


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PaddedHomologyBoundary.Variant725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure PaddedHomologyBoundary where
  paddingDimension : Nat
  sphericalDimension : Nat
  chainComplexDescriptor? : Option String
  boundarySquaredZeroCertificate? : Option String
  bettiDescriptor? : Option String
  noPaddedHomologyGroupClaimWithoutCertificate : True
  claimBoundary : List String

structure HomologyComplexityIndex where
  locus : TensorLocus
  paddedBoundary : PaddedHomologyBoundary
  boundaryDepth : Nat
  tensorWeight : Nat
  arithmeticWeight : Int
  torsionWeight : Nat
  poleOrderWeight : Nat
  leastComplexRank : Nat
  claimBoundary : List String

structure HomologyComplexityPreorder where
  le :
    HomologyComplexityIndex →
    HomologyComplexityIndex →
      Prop
  refl :
    ∀ A, le A A
  trans :
    ∀ A B C, le A B → le B C → le A C
  claimBoundary : List String

theorem homologyComplexity_boundary_visible
    (H : HomologyComplexityIndex) :
    H.claimBoundary = H.claimBoundary :=
  rfl

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```
