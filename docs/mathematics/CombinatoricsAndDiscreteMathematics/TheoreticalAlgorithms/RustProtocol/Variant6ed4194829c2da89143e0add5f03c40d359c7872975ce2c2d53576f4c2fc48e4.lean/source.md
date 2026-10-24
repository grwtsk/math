# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RustProtocol.Variant6ed4194829c2da89143e0add5f03c40d359c7872975ce2c2d53576f4c2fc48e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b36cc1db08465dd961e085d3c13f669b0e976c6` · SHA-256 `551a413e9b90295e6fb152b783dc10aaa895b0b005f7e51ebb38988a26706275`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RustIncrementalRequestFrame.Variant6aa72d473dd7e8fc304d00814476f73f9eb2545c362c856a56b2d3af0e2ae779","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6aa72d473dd7e8fc304d00814476f73f9eb2545c362c856a56b2d3af0e2ae779","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RustIncrementalRequestFrame.Variant6aa72d473dd7e8fc304d00814476f73f9eb2545c362c856a56b2d3af0e2ae779","mathematical_subject":"Computation.DataStructures","original_sha256":"6aa72d473dd7e8fc304d00814476f73f9eb2545c362c856a56b2d3af0e2ae779","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Incremental/RustProtocol.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Incremental.Json


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RustIncrementalRequestFrame.Variant6aa72d473dd7e8fc304d00814476f73f9eb2545c362c856a56b2d3af0e2ae779

namespace Surface
namespace Incremental

structure RustIncrementalRequestFrame where
  requestId : String
  changedPath : String
  beforeHash? : Option String
  afterHash : String
  generatorVersionHash : String
  toolchainHash : String
  claimBoundary : List String
deriving Repr

structure RustIncrementalResultFrame where
  requestId : String
  affectedModulesHash : String
  orderHash : String
  reportHash : String
  success : Bool
  rustIsNotProofAuthority : True
  claimBoundary : List String
deriving Repr

theorem rustIncrementalResult_is_transport_not_authority
    (R : RustIncrementalResultFrame) :
    R.rustIsNotProofAuthority = True.intro :=
  rfl

end Incremental
end Surface
```
