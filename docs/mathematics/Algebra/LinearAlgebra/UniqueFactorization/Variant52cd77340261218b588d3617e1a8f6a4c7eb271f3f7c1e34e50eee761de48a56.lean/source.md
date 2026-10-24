# Complete source: GRWTSK.Algebra.LinearAlgebra.UniqueFactorization.Variant52cd77340261218b588d3617e1a8f6a4c7eb271f3f7c1e34e50eee761de48a56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3cc7dea2c6c2915f16b02edeaabfa00f8f17e2f0` · SHA-256 `52cd77340261218b588d3617e1a8f6a4c7eb271f3f7c1e34e50eee761de48a56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Tree.ArithmeticShadow

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

theorem ordered_factorization_by_code
    (P : PairingCodec)
    {A B : OrderedPrimeCore}
    (h : A.code P = B.code P) :
    A = B :=
  same_normalized_code_same_factorization P h

theorem ordered_factorization_by_topology_prime
    (P : PairingCodec)
    (E : PrimeEnumerator)
    {A B : OrderedPrimeCore}
    (h : (topologyPrime P E A).value = (topologyPrime P E B).value) :
    A = B :=
  same_topologyPrime_same_factorization P E h

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```
