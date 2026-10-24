# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SimilarReduction.Variantc696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aca131c01e47f8a43bd22f522b6423656a284621` · SHA-256 `c696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
