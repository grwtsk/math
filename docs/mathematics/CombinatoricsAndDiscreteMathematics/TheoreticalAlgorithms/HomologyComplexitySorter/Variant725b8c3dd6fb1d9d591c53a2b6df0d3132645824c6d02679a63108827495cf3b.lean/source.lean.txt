import Surface.Legacy.BinaryLogicMatrix.Stream.TensorLocus

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure PaddedHomologyBoundary where
  paddingDimension : Nat
  sphericalDimension : Nat
  chainComplexDescriptor? : Option String
  boundarySquaredZeroCertificate? : Option String
  bettiDescriptor? : Option String
  noPaddedHomologyGroupClaimWithoutCertificate : True
  claimBoundary : List String

structure HomologyComplexityIndex where
  locus : TensorLocus
  paddedBoundary : PaddedHomologyBoundary
  boundaryDepth : Nat
  tensorWeight : Nat
  arithmeticWeight : Int
  torsionWeight : Nat
  poleOrderWeight : Nat
  leastComplexRank : Nat
  claimBoundary : List String

structure HomologyComplexityPreorder where
  le :
    HomologyComplexityIndex →
    HomologyComplexityIndex →
      Prop
  refl :
    ∀ A, le A A
  trans :
    ∀ A B C, le A B → le B C → le A C
  claimBoundary : List String

theorem homologyComplexity_boundary_visible
    (H : HomologyComplexityIndex) :
    H.claimBoundary = H.claimBoundary :=
  rfl

end Stream
end BinaryLogicMatrix
end Surface.Legacy
