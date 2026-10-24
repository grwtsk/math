# Complete source: GRWTSK.Algebra.LinearAlgebra.Determinant.Variantf77e309736b8279d16b6a74ac4a110b566d0a284a316957b6e92c62345ab6c01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca9ae620518c8609908d621acaa949dff79c72bf` · SHA-256 `f77e309736b8279d16b6a74ac4a110b566d0a284a316957b6e92c62345ab6c01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.PerfectComplex.Core
import DAF.PerfectComplex.Comparison
import DAF.Determinant.Core
import DAF.Determinant.Transport
import DAF.Determinant.ScalarExtension

/-!
# Perfect-complex determinant transport

This declaration-free umbrella exposes determinant-line transport only for a
selected perfect-complex model and certified chain-level quasi-isomorphisms.
A state equivalence does not automatically induce a chain equivalence, and
determinant transport therefore cannot be manufactured from a state map.

A determinant-line statement is also not a same-degree group isomorphism.
Scalar extension changes both the coefficient context and the target
determinant theory; comparison with an integral line requires separately
supplied compatibility data.
-/
```
