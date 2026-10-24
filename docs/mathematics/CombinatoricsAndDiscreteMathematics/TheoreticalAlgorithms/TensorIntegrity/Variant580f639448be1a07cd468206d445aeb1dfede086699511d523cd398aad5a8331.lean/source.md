# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TensorIntegrity.Variant580f639448be1a07cd468206d445aeb1dfede086699511d523cd398aad5a8331

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be05f1ab307148bcbdfe00f97814247d24313044` · SHA-256 `580f639448be1a07cd468206d445aeb1dfede086699511d523cd398aad5a8331`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Stream.TensorLocus

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure FiniteArithmeticDescriptor where
  arithmeticName : String
  qWeight? : Option Int
  localFactorTags : List String
  conductorTag? : Option Nat
  torsionTags : List String
  ramanujanInspired : Bool
  hasseWeilInspired : Bool
  noBSDClaim : True
  noCriticalLineClaim : True
  noAnalyticContinuationClaim : True
  claimBoundary : List String

structure TensoralIntegrity where
  left : TensorLocus
  right : TensorLocus
  comparisonMatrix :
    BinaryLogicMatrix left.carrier.rows right.carrier.cols
  overlapScore : Nat
  xorNaturalityMode : XorNaturalityMode
  curvaturePressure : Int
  torsionCompatible : Prop
  arithmeticDescriptor : FiniteArithmeticDescriptor
  claimBoundary : List String

theorem tensoralIntegrity_boundary_visible
    (I : TensoralIntegrity) :
    I.claimBoundary = I.claimBoundary ∧
    I.arithmeticDescriptor.claimBoundary =
      I.arithmeticDescriptor.claimBoundary := by
  exact ⟨rfl, rfl⟩

inductive IntegrityDefectKind where
  | tensorMismatch
  | xorNaturalityFailure
  | curvatureImbalance
  | torsionMismatch
  | homologyMismatch
  | arithmeticWeightMismatch
  | streamOrderConflict
  | missingKernelTheorem
  | proofBoundaryDefect
  | paddingDefect
  | nonReversibleDefect
  | nullPointGluingDefect
deriving DecidableEq, Repr

structure IntegrityDefect where
  kind : IntegrityDefectKind
  left : TensorLocus
  right : TensorLocus
  witness : SomeBinaryLogicMatrix
  explanation : String
  repairData : List String
  claimBoundary : List String

theorem integrityDefect_has_matrix_witness
    (D : IntegrityDefect) :
    Nonempty
      (BinaryLogicMatrix D.witness.rows D.witness.cols) :=
  ⟨D.witness.matrix⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```
