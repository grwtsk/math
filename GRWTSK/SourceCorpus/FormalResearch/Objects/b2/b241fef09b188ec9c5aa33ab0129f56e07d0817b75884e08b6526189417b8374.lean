import Mathematics.ConnesBitfield.System
import Mathematics.ConnesBitfield.Cut
import Mathematics.ConnesBitfield.CrossedProduct
import Mathematics.ConnesBitfield.MatrixFiberCrossedProduct
import Mathematics.ConnesBitfield.HilbertTransport
import Mathematics.ConnesBitfield.CrossedProductOperator
import Mathematics.ConnesBitfield.SpectralOperator
import Mathematics.ConnesBitfield.OperatorPurity
import Mathematics.ConnesBitfield.SpectralMeasure
import Mathematics.ConnesBitfield.Dynamics
import Mathematics.ConnesBitfield.Equivariance
import Mathematics.ConnesBitfield.OrbitSymmetry
import Mathematics.ConnesBitfield.SymmetryDefect
import Mathematics.ConnesBitfield.SymmetryLayers
import Mathematics.ConnesBitfield.InvariantLawPerturbation
import Mathematics.ConnesBitfield.Trace
import Mathematics.ConnesBitfield.Influence
import Mathematics.ConnesBitfield.Concentration
import Mathematics.ConnesBitfield.TraceBounds
import Mathematics.ConnesBitfield.TraceScale
import Mathematics.ConnesBitfield.TraceStability
import Mathematics.ConnesBitfield.Typicality
import Mathematics.ConnesBitfield.SpectralSize
import Mathematics.ConnesBitfield.Interfaces
import Mathematics.ConnesBitfield.UnknownLedger
import Mathematics.ConnesBitfield.Closure
import Mathematics.ConnesBitfield.Family

/-!
# Connes--random-bitfield spectral closure

This aggregate exposes a finite crossed-product bitfield model, a
unitary matrix-fiber action with normalized positive canonical trace, a
certificate-bearing self-adjoint spectral operator, contractive
admissibility-preserving invariant-law dynamics, pointwise and law-level
automorphism equivariance, Reynolds/orbit--stabilizer decomposition,
contracted symmetry-defect control, certified direct or semidirect symmetry
layers, an exact arithmetic trace interface, and separate influence,
concentration, deterministic-typicality, and spectral-size certificates.

The square-root theorem is conditional on the assembled certificates.
Boundary-law mode has five terminal interfaces: arithmetic encoding,
invariant-trace correspondence, semantic boundary identity, uniform trace
scale, and local--global compatibility.  Uniform test-class typicality is an
additional committed-realization interface; uniform ensemble convergence is
an additional family-limit interface.
-/
