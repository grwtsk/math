# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Modularity.Variant1b97b44aed35e2ee90985cbc5b03489f219ea0ec5071e497fc1cac57c27cd09c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2efada11c9e64483b0f4941b0dec1d35a004b552` · SHA-256 `1b97b44aed35e2ee90985cbc5b03489f219ea0ec5071e497fc1cac57c27cd09c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Tree.UniqueFactorization

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

structure ModularityPrimeAssignment where
  modularity : Modularity
  factor : IrreducibleFactor
  sameModularity : factor.modularity = modularity
  claimBoundary : List String

theorem modularity_assignment_prime_visible
    (A : ModularityPrimeAssignment) :
    Nat.Prime A.factor.prime.value :=
  A.factor.prime.isPrime

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```
