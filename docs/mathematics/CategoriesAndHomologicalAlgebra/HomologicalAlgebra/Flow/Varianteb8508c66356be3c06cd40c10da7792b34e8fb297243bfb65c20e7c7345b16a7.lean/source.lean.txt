import Surface.Flow.Symbolic
import Surface.Flow.Arithmetic
import Surface.Flow.Examples
import Surface.Flow.AnalyticPDE
import Surface.Flow.AnalyticPDE.Readiness
import Surface.Flow.AnalyticPDE.Annals
import Surface.Flow.Hilbert
import Surface.Flow.HilbertTopology
import Surface.Flow.Heat
import Surface.Flow.HeatRicciHomology
import Surface.Flow.Matrix
import Surface.Flow.Trace
import Surface.Flow.ConeIndex

/-!
# Surface flow layer

Formalized: symbolic flow expressions, arithmetic flow examples, finite
matrix/trace extraction, finite heat-flow interfaces, and adapters to canonical
`Surface.Hilbert` conditional trace-readiness scaffolds.  The flow adapter
delegates its Hilbert operator package and analytic gates to
`Hilbert.TraceFormulaCore`.

Certificate-gated: analytic continuation, BSD interpretation, Hilbert-space
operators, Connes trace formulas, and spectral correspondences.

Not claimed: the flow layer does not own Hilbert-space objects and does not
prove BSD, Hilbert--Pólya, Connes trace formulas, or spectral correspondence.
-/
