# Complete source: GRWTSK.Algebra.Restriction.Variant34bb24f0e6d38d6c3a6d6ca2270bb6e3eb79a6c5a3d8002e6c4c5ab46c359f3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a9ba493c0009b54df9f4b2f8dc822f1d34b3cae` · SHA-256 `34bb24f0e6d38d6c3a6d6ca2270bb6e3eb79a6c5a3d8002e6c4c5ab46c359f3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Arithmetic.GaloisCohomology.Finite

namespace Surface.Arithmetic
namespace GaloisCohomology

/-!
# Restriction for finite degree-one cohomology

What is formalized:
The restriction API for finite abstract `H1`.  The definitions and checked
theorems are implemented in `Finite`: `resC1`, `resZ1`, `resFiniteH1`,
`restriction_preserves_oneCocycle`, `restriction_preserves_oneCoboundary`,
`resFiniteH1_id`, and `resFiniteH1_comp`.

What is certificate-gated:
Only action compatibility of the finite group homomorphism is an input.

What is not claimed:
This module does not introduce local fields, absolute Galois groups, continuous
cochains, arithmetic-descent maps, Selmer exact sequences, Sha, or BSD.

Dependency invariant:
Weak descent, Sha, and BSD-facing interfaces must use this finite restriction
substrate before any later continuous or absolute-Galois adapter.
-/

end GaloisCohomology
end Surface.Arithmetic
```
