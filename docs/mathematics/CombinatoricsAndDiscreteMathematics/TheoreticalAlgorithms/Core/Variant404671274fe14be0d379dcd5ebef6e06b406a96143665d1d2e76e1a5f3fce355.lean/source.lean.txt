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
