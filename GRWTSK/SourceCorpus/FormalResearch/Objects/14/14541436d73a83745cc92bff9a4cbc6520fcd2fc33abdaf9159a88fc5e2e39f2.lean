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
