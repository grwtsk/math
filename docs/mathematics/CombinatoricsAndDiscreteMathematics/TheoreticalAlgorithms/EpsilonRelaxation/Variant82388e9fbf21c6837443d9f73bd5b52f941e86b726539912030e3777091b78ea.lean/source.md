# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EpsilonRelaxation.Variant82388e9fbf21c6837443d9f73bd5b52f941e86b726539912030e3777091b78ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e2c1f566afc0e3dfa6cedb022e2a92de9f49424` · SHA-256 `160d144ef265212f6c0542b755c68cbe5666f8f8815fccbf1020600578f2473d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteEpsilon.Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FiniteEpsilon.Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c","mathematical_subject":"Computation.DataStructures","original_sha256":"81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Stream/EpsilonRelaxation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Stream.Core


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteEpsilon.Variant81836b822e4d995d0cb4a70226702282e9f8679adc8ee7c77514547d0a2fae3c

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure FiniteEpsilon where
  numerator : Nat
  denominator : Nat
  denominatorPositive : denominator > 0
  numeratorBounded : numerator ≤ denominator
  claimBoundary : List String

structure FiniteRelaxedValue where
  numerator : Nat
  denominator : Nat
  denominatorPositive : denominator > 0
  claimBoundary : List String

inductive PolarBaseBit where
  | paddedOne
  | paddedZero
deriving DecidableEq, Repr

def relaxedValueOfBase
    (eps : FiniteEpsilon)
    (b : PolarBaseBit) :
    FiniteRelaxedValue :=
  match b with
  | .paddedOne =>
      {
        numerator := eps.numerator
        denominator := eps.denominator
        denominatorPositive := eps.denominatorPositive
        claimBoundary := [
          "The padded-one base relaxes to finite epsilon.",
          "This is a finite descriptor, not a real-valued analytic limit."
        ]
      }
  | .paddedZero =>
      {
        numerator := eps.denominator - eps.numerator
        denominator := eps.denominator
        denominatorPositive := eps.denominatorPositive
        claimBoundary := [
          "The padded-zero base relaxes to one-minus-epsilon.",
          "This is a finite descriptor, not a real-valued analytic limit."
        ]
      }

theorem relaxedValue_denominator_positive
    (eps : FiniteEpsilon)
    (b : PolarBaseBit) :
    (relaxedValueOfBase eps b).denominator > 0 :=
  (relaxedValueOfBase eps b).denominatorPositive

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```
