import Surface.Legacy.PascalTree.DeterminantFiber
import Surface.Legacy.BinaryLogicMatrix.Similarity

namespace Surface
namespace Legacy
namespace PascalTree

inductive SimilarityMetric
| exactMatrixSimilarity
| comparisonDistance
| factorOverlap
deriving DecidableEq, Repr

inductive PaddingPolicyDescriptor
| ignorePadding
| penalizePadding
| rejectPaddingMismatch
deriving DecidableEq, Repr

inductive TiePolicy
| firstStable
| requireUnique
| carryAllTies
deriving DecidableEq, Repr

structure MostSimilarReductionAttachment where
  fiber : DeterminantFiber
  metric : SimilarityMetric
  paddingPolicy : PaddingPolicyDescriptor
  tiePolicy : TiePolicy
  candidateSet : List ReductionCandidate
  selectedCandidate : Option ReductionCandidate
  similarityWitness : MatrixSimilarity
  claimBoundary : AffineTopos.AffineClaimBoundary

theorem determinantFiber_attachment_uses_similarity
    (A : MostSimilarReductionAttachment) :
    A.similarityWitness.denominator ≠ 0 := by
  exact matrixSimilarity_denominator_ne_zero A.similarityWitness

theorem mostSimilarReduction_boundary_visible
    (A : MostSimilarReductionAttachment) :
    A.claimBoundary = A.claimBoundary ∧
      A.metric = A.metric ∧
      A.tiePolicy = A.tiePolicy ∧
      A.paddingPolicy = A.paddingPolicy := by
  exact ⟨rfl, rfl, rfl, rfl⟩

end PascalTree
end Legacy
end Surface
