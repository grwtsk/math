import Number.Payload
import Number.ArithmeticFunction
import Number.EulerProduct
import Number.Mobius
import Number.LFunction
import Number.AutomorphicEulerProduct
import Number.Determinant
import Number.TraceFormula
import Number.Cohomology
import Number.NumericalEstimate

/-!
`Number` is deliberately independent of `Boolean`.

The bridge `Boolean → Number` lives in `Number.Bridge.Boolean`, but it is not
imported here.  This keeps the arithmetic semantics layer usable without the
finite Boolean verifier substrate.
-/
