import Surface.Legacy.BinaryLogicMatrix.Stream.PolarPaddingPole

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure TensorLocus where
  locusId : Nat
  carrier : SomeBinaryLogicMatrix
  polarPole? : Option PolarSplitPaddingPole
  localWeight : Int
  paddingDimension : Nat
  sphericalDimension : Nat
  claimBoundary : List String

theorem tensorLocus_is_matrix_backed
    (L : TensorLocus) :
    Nonempty
      (BinaryLogicMatrix L.carrier.rows L.carrier.cols) :=
  ⟨L.carrier.matrix⟩

structure TensorAnchoringFiber where
  fiberId : Nat
  anchor : SomeBinaryLogicMatrix
  sourceLocus : TensorLocus
  targetLocus : TensorLocus
  polarPole? : Option PolarSplitPaddingPole
  determinantDescriptor : String
  factorRole : String
  fiberBoundary : List String

theorem tensorAnchor_is_BinaryLogicMatrix
    (F : TensorAnchoringFiber) :
    Nonempty
      (BinaryLogicMatrix F.anchor.rows F.anchor.cols) :=
  ⟨F.anchor.matrix⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
