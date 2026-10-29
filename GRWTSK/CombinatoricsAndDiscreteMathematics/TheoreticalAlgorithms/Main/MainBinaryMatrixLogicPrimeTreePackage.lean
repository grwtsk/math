import Surface.Legacy.BinaryLogicMatrix.Tree.Core
import Surface.Legacy.BinaryLogicMatrix.Tree.Counting
import Surface.Legacy.BinaryLogicMatrix.Tree.Composition
import Surface.Legacy.BinaryLogicMatrix.Tree.PrimeLabels
import Surface.Legacy.BinaryLogicMatrix.Tree.EuclidInfinitude
import Surface.Legacy.BinaryLogicMatrix.Tree.Irreducible
import Surface.Legacy.BinaryLogicMatrix.Tree.OrderedPrimeNormalForm
import Surface.Legacy.BinaryLogicMatrix.Tree.TopologyPrime
import Surface.Legacy.BinaryLogicMatrix.Tree.ArithmeticShadow
import Surface.Legacy.BinaryLogicMatrix.Tree.UniqueFactorization
import Surface.Legacy.BinaryLogicMatrix.Tree.Modularity
import Surface.Legacy.BinaryLogicMatrix.Tree.StreamEncoding
import Surface.Legacy.BinaryLogicMatrix.Tree.SitePlanning

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

structure BinaryMatrixLogicPrimeTreePackage where
  pairingCodec? : Option PairingCodec
  primeEnumerator : PrimeEnumerator
  claimBoundary : List String

def defaultPrimeTreePackage : BinaryMatrixLogicPrimeTreePackage where
  pairingCodec? := none
  primeEnumerator := linearPrimeEnumerator
  claimBoundary := [
    "BinaryMatrixLogic is represented as a pre-symbolic binary factor-tree substrate.",
    "Raw trees preserve order and bracketing.",
    "Numeric pairing codecs are explicit certificates, not hidden assumptions."
  ]

end Tree
end BinaryLogicMatrix
end Surface.Legacy
