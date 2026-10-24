import Surface.Legacy.BinaryLogicMatrix.Stream.Frame
import Surface.Legacy.BinaryLogicMatrix.Stream.PolarCircle
import Surface.Legacy.BinaryLogicMatrix.Padding
import Surface.Legacy.BinaryLogicMatrix.Comparison
import Surface.Legacy.BinaryLogicMatrix.Similarity
import Surface.Legacy.BinaryLogicMatrix.Spectral
import Surface.Legacy.BinaryLogicMatrix.TorsionSite
import Surface.Legacy.BinaryLogicMatrixFlow.Core
import Surface.Homology.ChainComplex
import Surface.Homology.ChainMap
import Surface.Homology.Basic
import Surface.Homology.Betti

namespace Surface.Legacy

namespace BinaryLogicMatrix
namespace Stream

structure SphericalPaddingDimension where
  paddingDimension : Nat
  sphericalDimension : Nat
  sphericalDimension_eq_paddingDimension :
    sphericalDimension = paddingDimension
  meshRatioDescriptor? : Option String
  coveringDescriptor? : Option String
  separationDescriptor? : Option String
  noAnalyticSphereClaim : True
  claimBoundary : List String

def oneDimensionalSphericalPadding :
    SphericalPaddingDimension where
  paddingDimension := 1
  sphericalDimension := 1
  sphericalDimension_eq_paddingDimension := rfl
  meshRatioDescriptor? := some "finite-circle-seam-mesh"
  coveringDescriptor? := some "0110-periodic-cover"
  separationDescriptor? := some "01/10-oriented-separation"
  noAnalyticSphereClaim := True.intro
  claimBoundary := [
    "The one-dimensional padding seam is represented as a finite circle descriptor.",
    "This is not an analytic sphere theorem."
  ]

structure GammaPaddingWeight where
  padding : Nat
  gammaInputDescriptor : String
  inverseGammaWeightDescriptor : String
  noGammaAnalyticClaim : True
  claimBoundary : List String

inductive PoleResidueSign where
  | positive
  | negative
  | balanced
deriving DecidableEq, Repr

structure GammaCurvedPoleResidue where
  leftWeight : GammaPaddingWeight
  rightWeight : GammaPaddingWeight
  residueSign : PoleResidueSign
  matrixWitness : SomeBinaryLogicMatrix
  splitBase : OneDimensionalPolarBase
  claimBoundary : List String

theorem gammaResidue_has_matrix_witness
    (R : GammaCurvedPoleResidue) :
    Nonempty
      (BinaryLogicMatrix R.matrixWitness.rows R.matrixWitness.cols) :=
  ⟨R.matrixWitness.matrix⟩

structure PolarSplitPaddingPole where
  base : OneDimensionalPolarBase
  sphericalPadding : SphericalPaddingDimension
  leftPadding : Nat
  rightPadding : Nat
  segment : PolarCircleSegment
  gammaResidue : GammaCurvedPoleResidue
  streamFrame : Frame
  frameCarriesPoleMatrix :
    Nonempty
      (BinaryLogicMatrix
        streamFrame.payload.rows
        streamFrame.payload.cols)
  nullPointHandledBySplit :
    base.splitWord = word0110
  xorNaturalityMode : XorNaturalityMode
  finiteEpsilonOrComplementUsed : True
  noBSDClaim : True
  noCriticalLineClaim : True
  noDeBruijnNewmanDynamicsClaim : True
  noConnesSpectralTripleClaim : True
  noAnalyticPoleClaim : True
  claimBoundary : List String

theorem polarSplitPole_frame_is_matrix_backed
    (P : PolarSplitPaddingPole) :
    Nonempty
      (BinaryLogicMatrix
        P.streamFrame.payload.rows
        P.streamFrame.payload.cols) :=
  P.frameCarriesPoleMatrix

theorem polarSplitPole_base_split_is_0110
    (P : PolarSplitPaddingPole) :
    P.base.splitWord = word0110 :=
  P.nullPointHandledBySplit

structure PolarFlowInitiation
    (rows cols : Nat) where
  pole : PolarSplitPaddingPole
  initialMatrix : BinaryLogicMatrix rows cols
  epsilon : FiniteEpsilon
  baseBit : PolarBaseBit
  relaxedValue :
    relaxedValueOfBase epsilon baseBit =
      relaxedValueOfBase epsilon baseBit
  flow? : Option (BinaryLogicMatrixFlow rows cols)
  initiationBoundary : List String

def PolarFlowInitiation.HasFlowCertificate
    {rows cols : Nat}
    (I : PolarFlowInitiation rows cols) : Prop :=
  ∃ F : BinaryLogicMatrixFlow rows cols, I.flow? = some F

theorem polarFlow_not_reversible_without_certificate
    {rows cols : Nat}
    (I : PolarFlowInitiation rows cols) :
    I.flow? = none → ¬ I.HasFlowCertificate := by
  intro hnone h
  rcases h with ⟨F, hF⟩
  simp [hnone] at hF

end Stream
end BinaryLogicMatrix
end Surface.Legacy
