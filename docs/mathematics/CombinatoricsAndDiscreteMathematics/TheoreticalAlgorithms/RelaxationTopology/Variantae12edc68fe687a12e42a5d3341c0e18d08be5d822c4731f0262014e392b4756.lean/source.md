# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RelaxationTopology.Variantae12edc68fe687a12e42a5d3341c0e18d08be5d822c4731f0262014e392b4756

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d6f3dd1b8964cbf1f6cc606c43bfef75195e51e` · SHA-256 `ae12edc68fe687a12e42a5d3341c0e18d08be5d822c4731f0262014e392b4756`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.PascalTree.RicciObstruction
import Surface.Legacy.AffineTopos.Modality
import Surface.Legacy.BinaryLogicMatrixFlow.Averaging

namespace Surface
namespace Legacy

namespace PascalTree

structure RelaxedSymmetryAverage (rows cols : Nat) where
  operator : BinaryLogicMatrixAveragingOperator rows cols
  bijectiveCertificate : Prop
  certificateSupplied : Bool
  flowStatus : Bool
  noCertificateNoFlow : certificateSupplied = false → flowStatus = false
  modality : AffineTopos.AffineModality
  claimBoundary : AffineTopos.AffineClaimBoundary

structure ComparisonNeighborhood where
  sourceCandidate : String
  targetCandidate : String
  relaxationWeight : Rat
  claimBoundary : AffineTopos.AffineClaimBoundary

structure RelaxedSymmetryTopology where
  neighborhoods : List ComparisonNeighborhood
  supportsComparison : Prop
  generatedByAverage : Bool
  claimBoundary : AffineTopos.AffineClaimBoundary

structure GeneralizedPascalTreeReducerPipeline where
  tree : GeneralizedPascalTree
  expression : BinaryLogicMatrixTensorExpression
  determinant : DeterminantDescriptor
  fiber : DeterminantFiber
  attachment : MostSimilarReductionAttachment
  carrier : ConnesSpectralCarrier
  branch : FlowOrRicciObstruction
  topology : RelaxedSymmetryTopology
  comparisonObject : AffineTopos.ComparisonObject
  arrows : List AffineTopos.ModalityBoundary
  claimBoundary : AffineTopos.AffineClaimBoundary

theorem relaxedSymmetryAverage_not_flow_without_certificate
    (R : RelaxedSymmetryAverage rows cols) :
    R.certificateSupplied = false → R.flowStatus = false := by
  exact R.noCertificateNoFlow

theorem relaxationTopology_supports_comparison
    (T : RelaxedSymmetryTopology) :
    T.supportsComparison → T.supportsComparison := by
  intro h
  exact h

theorem reducerPipeline_arrows_have_boundaries
    (P : GeneralizedPascalTreeReducerPipeline)
    (arrow : AffineTopos.ModalityBoundary) :
    arrow ∈ P.arrows → arrow.claimBoundary = arrow.claimBoundary := by
  intro _
  rfl

end PascalTree
end Legacy
end Surface
```
