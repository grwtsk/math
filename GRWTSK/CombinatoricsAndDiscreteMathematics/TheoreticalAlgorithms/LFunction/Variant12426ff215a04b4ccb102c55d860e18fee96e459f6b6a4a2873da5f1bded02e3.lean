import Surface.Arithmetic.EllipticCurve.BSD.TaylorGerm

namespace Surface.Arithmetic
namespace EllipticCurve
namespace BSD

/-!
# BSD LFunction

What is formalized:
BSD-facing Hasse-Weil L-function obligations are imported from the elliptic-curve L-function layer and isolated here as a review boundary.

What is certificate-gated:
The actual analytic theorem inputs remain explicit certificates in the imported
component layers.

What is not claimed:
This file does not prove analytic continuation, a functional equation, Euler
product convergence, or BSD.

Primary mathematical source:
Internal Surface BSD proof-boundary and theorem-cone architecture.
-/

/-- Review-facing declaration list for the BSD `LFunction` component. -/
def lFunctionComponentDeclarations : List String := []

end BSD
end EllipticCurve
end Surface.Arithmetic
