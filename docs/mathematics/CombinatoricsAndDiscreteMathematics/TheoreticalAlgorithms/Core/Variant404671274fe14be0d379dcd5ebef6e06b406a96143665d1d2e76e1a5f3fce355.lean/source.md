# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fc2cf6dbdff4e97bbf2bb039631341973bc7338` · SHA-256 `404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.AffineTopos.Site

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
