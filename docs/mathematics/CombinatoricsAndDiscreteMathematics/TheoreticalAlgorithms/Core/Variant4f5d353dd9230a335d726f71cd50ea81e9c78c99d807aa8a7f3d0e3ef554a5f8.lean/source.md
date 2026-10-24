# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d933cfeea0b4e67996148a2cf6e657a99ceae89` · SHA-256 `c5e2bb4aa4b5d1525dfee38617cfe0e60c296942bd1e6c53016ac97fab5a53d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AffineCoefficient.Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AffineCoefficient.Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355","mathematical_subject":"Computation.DataStructures","original_sha256":"404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/PascalTree/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.AffineTopos.Site


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AffineCoefficient.Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355

namespace Surface
namespace Legacy
namespace PascalTree

structure AffineCoefficient where
  value : Rat
  claimBoundary : AffineTopos.AffineClaimBoundary

structure AffineLocalData where
  nodeName : String
  coefficients : List AffineCoefficient
  claimBoundary : AffineTopos.AffineClaimBoundary

structure ReductionPayload where
  artifactName : String
  factorData : List String
  fiberData : List String
  claimBoundary : AffineTopos.AffineClaimBoundary

structure PascalReduction where
  payload : ReductionPayload
  localData : AffineLocalData
  childCount : Nat
  claimBoundary : AffineTopos.AffineClaimBoundary

inductive GeneralizedPascalTree where
| leaf : ReductionPayload → GeneralizedPascalTree
| node : AffineLocalData → List GeneralizedPascalTree → GeneralizedPascalTree

def combineReductions
    (localData : AffineLocalData)
    (children : List PascalReduction) : PascalReduction where
  payload := {
    artifactName := localData.nodeName
    factorData := children.map fun child => child.payload.artifactName
    fiberData := children.map fun child => child.claimBoundary.label
    claimBoundary := localData.claimBoundary
  }
  localData := localData
  childCount := children.length
  claimBoundary := localData.claimBoundary

def leafLocalData (payload : ReductionPayload) : AffineLocalData where
  nodeName := payload.artifactName
  coefficients := []
  claimBoundary := payload.claimBoundary

def reduce : GeneralizedPascalTree → PascalReduction
| GeneralizedPascalTree.leaf payload => {
    payload := payload
    localData := leafLocalData payload
    childCount := 0
    claimBoundary := payload.claimBoundary
  }
| GeneralizedPascalTree.node localData children =>
    combineReductions localData (children.map reduce)

theorem pascalTree_reducer_wellFounded
    (tree : GeneralizedPascalTree) :
    ∃ reduced : PascalReduction, reduce tree = reduced := by
  exact ⟨reduce tree, rfl⟩

theorem pascalTree_reducer_affine_local
    (localData : AffineLocalData)
    (children : List GeneralizedPascalTree) :
    reduce (GeneralizedPascalTree.node localData children) =
      combineReductions localData (children.map reduce) := by
  simp [reduce]

end PascalTree
end Legacy
end Surface
```
