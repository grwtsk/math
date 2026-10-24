# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Main.Variant157393e3ae41352bb99b860710135ec0028bae9da357c008c6f951a2412cbd32

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a18cfeca2a31495b39e50b3d90702efc7b25b51b` · SHA-256 `157393e3ae41352bb99b860710135ec0028bae9da357c008c6f951a2412cbd32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
