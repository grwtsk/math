import Surface.Legacy.BinaryLogicMatrix.Stream.EpsilonRelaxation

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure OneDimensionalPolarBase where
  baseBit : PolarBaseBit
  epsilon : FiniteEpsilon
  originalWord : List Bool
  splitWord : List Bool
  inverseWord : List Bool
  original_eq_010 :
    originalWord = word010
  split_eq_0110 :
    splitWord = word0110
  inverse_eq_1001 :
    inverseWord = word1001
  splitSymmetric :
    splitWord.reverse = splitWord
  inverseIsComplement :
    splitWord.map bitNot = inverseWord
  positiveHalf : List Bool
  negativeHalf : List Bool
  positiveHalf_eq_01 :
    positiveHalf = word01
  negativeHalf_eq_10 :
    negativeHalf = word10
  relaxedValue : FiniteRelaxedValue
  relaxedValueSound :
    relaxedValue = relaxedValueOfBase epsilon baseBit
  claimBoundary : List String

def mkOneDimensionalPolarBase
    (eps : FiniteEpsilon)
    (b : PolarBaseBit) :
    OneDimensionalPolarBase where
  baseBit := b
  epsilon := eps
  originalWord := word010
  splitWord := word0110
  inverseWord := word1001
  original_eq_010 := rfl
  split_eq_0110 := rfl
  inverse_eq_1001 := rfl
  splitSymmetric := by
    exact split0110_reverse_symmetric
  inverseIsComplement := by
    exact split0110_inverts_to_1001
  positiveHalf := word01
  negativeHalf := word10
  positiveHalf_eq_01 := rfl
  negativeHalf_eq_10 := rfl
  relaxedValue := relaxedValueOfBase eps b
  relaxedValueSound := rfl
  claimBoundary := [
    "Base case: 010 is singular under naive tail gluing.",
    "Repair: 010 to 0110 separates original orientation 01 from polar inversion 10.",
    "The base split is finite and symmetric.",
    "Invertibility is word-level complement/reversal only unless a BinaryLogicMatrixFlow certificate is supplied."
  ]

theorem oneDimensional_base_split_symmetric
    (B : OneDimensionalPolarBase) :
    B.splitWord.reverse = B.splitWord :=
  B.splitSymmetric

theorem oneDimensional_base_inverse_is_1001
    (B : OneDimensionalPolarBase) :
    B.inverseWord = word1001 :=
  B.inverse_eq_1001

inductive XorNaturalityMode where
  | direct0110
  | inverse1001
  | expanded0110
  | expanded1001
  | obstruction
deriving DecidableEq, Repr

structure PolarCircleSegment where
  epsilon : FiniteEpsilon
  coreWord : List Bool
  repetitions : Nat
  expandedWord : List Bool
  mode : XorNaturalityMode
  coreIsSplitOrInverse :
    coreWord = word0110 ∨ coreWord = word1001
  expandedSound :
    expandedWord = repeatWord repetitions coreWord
  endpointBoundary : List String
  xorBoundary : List String

def mkSplitCircleSegment
    (eps : FiniteEpsilon)
    (n : Nat) :
    PolarCircleSegment where
  epsilon := eps
  coreWord := word0110
  repetitions := n
  expandedWord := repeatWord n word0110
  mode := .expanded0110
  coreIsSplitOrInverse := Or.inl rfl
  expandedSound := rfl
  endpointBoundary := [
    "The segment should be read as epsilon-0110^n-epsilon.",
    "Endpoints are finite epsilon descriptors."
  ]
  xorBoundary := [
    "XOR preservation is descriptor-gated.",
    "If direct XOR naturality fails, use the expanded split/inverse seam."
  ]

def mkInverseCircleSegment
    (eps : FiniteEpsilon)
    (n : Nat) :
    PolarCircleSegment where
  epsilon := eps
  coreWord := word1001
  repetitions := n
  expandedWord := repeatWord n word1001
  mode := .expanded1001
  coreIsSplitOrInverse := Or.inr rfl
  expandedSound := rfl
  endpointBoundary := [
    "The segment should be read as epsilon-1001^n-epsilon.",
    "Endpoints are finite epsilon descriptors."
  ]
  xorBoundary := [
    "This is the inverted polar seam.",
    "No stream invertibility is claimed without BinaryLogicMatrixFlow."
  ]

end Stream
end BinaryLogicMatrix
end Surface.Legacy
