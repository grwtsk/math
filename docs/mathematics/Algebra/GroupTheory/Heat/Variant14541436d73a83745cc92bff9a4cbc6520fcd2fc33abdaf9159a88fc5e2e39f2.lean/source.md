# Complete source: GRWTSK.Algebra.GroupTheory.Heat.Variant14541436d73a83745cc92bff9a4cbc6520fcd2fc33abdaf9159a88fc5e2e39f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `135c9502832c6d2bace4e79a98e46fd393d596e2` · SHA-256 `14541436d73a83745cc92bff9a4cbc6520fcd2fc33abdaf9159a88fc5e2e39f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Flow.Heat.Kernel
import Surface.Flow.Heat.Semigroup
import Surface.Flow.Heat.Transport
import Surface.Flow.Heat.Averaging
import Surface.Flow.Heat.FrameCommutation
import Surface.Flow.Heat.ModularDecomposition
import Surface.Flow.Heat.Smoothing
import Surface.Flow.Heat.Coverage

/-!
# Surface heat-flow layer

What is formalized:
Finite heat-kernel, semigroup, transport, averaging, frame-commutation,
modular-decomposition, smoothing, and coverage interfaces for Surface flow
objects.

What is certificate-gated:
Any analytic heat-equation interpretation, convergence theorem, Ricci-flow
comparison, or reversible-flow claim.

What is not claimed:
These finite heat-flow structures do not prove analytic heat relaxation,
Ricci-flow equivalence, spectral correspondence, or invertibility without the
corresponding checked certificates.

Primary mathematical source:
Internal Surface finite-flow infrastructure.
-/
```
