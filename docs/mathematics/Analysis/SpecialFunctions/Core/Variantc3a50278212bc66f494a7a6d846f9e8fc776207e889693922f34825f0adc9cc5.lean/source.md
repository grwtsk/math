# Complete source: GRWTSK.Analysis.SpecialFunctions.Core.Variantc3a50278212bc66f494a7a6d846f9e8fc776207e889693922f34825f0adc9cc5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80c66d42ea9331614ef690a0bf13942b38383ee5` · SHA-256 `52b730bd2acaf4ded0842f85651161708a2fafd33b9888371928f06c93e40232`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.AffineClaimBoundary.Variant077d890a99bf83e17d7679a861b9638b0a251d13d14f2c6477bdb72e7113beb5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"077d890a99bf83e17d7679a861b9638b0a251d13d14f2c6477bdb72e7113beb5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.AffineClaimBoundary.Variant077d890a99bf83e17d7679a861b9638b0a251d13d14f2c6477bdb72e7113beb5","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"077d890a99bf83e17d7679a861b9638b0a251d13d14f2c6477bdb72e7113beb5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/AffineTopos/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Gamma
import Surface.Legacy.BinaryLogicMatrix.Comparison


namespace GRWTSK.Analysis.SpecialFunctions.AffineClaimBoundary.Variant077d890a99bf83e17d7679a861b9638b0a251d13d14f2c6477bdb72e7113beb5

namespace Surface
namespace Legacy
namespace AffineTopos

structure AffineClaimBoundary where
  label : String

inductive CoverageModality
| theoremChecked
| fixtureValidated
| runtimeValidated
| visualizationOnly
| boundaryOnly
deriving DecidableEq, Repr

structure Context where
  gamma : Gamma
  foundation : LogicalFoundation
  claimBoundary : AffineClaimBoundary
  foundationVisible : foundation = gamma.logicalFoundation → True

structure Object where
  name : String
  context : Context
  trusted : Bool
  proofStatus : ClaimStatus
  claimBoundary : AffineClaimBoundary

structure Morphism (source target : Object) where
  name : String
  modality : CoverageModality
  claimBoundary : AffineClaimBoundary
  checked : Prop

structure ComparisonObject where
  left : Object
  right : Object
  metricName : String
  claimBoundary : AffineClaimBoundary
  checked : Prop

structure ComparisonTopologyDescriptor where
  comparisons : List ComparisonObject
  generatedByRelaxation : Bool
  claimBoundary : AffineClaimBoundary

theorem affineTopos_claimBoundary_visible
    (O : Object) :
    O.claimBoundary = O.claimBoundary := by
  rfl

theorem affineTopos_comparison_boundary_visible
    (C : ComparisonObject) :
    C.claimBoundary = C.claimBoundary := by
  rfl

end AffineTopos
end Legacy
end Surface
```
