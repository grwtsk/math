import Mathematics.SemiLocalDefect.ResidueDeflection.Residue
import Mathematics.SemiLocalDefect.ResidueDeflection.Phase
import Mathematics.SemiLocalDefect.ResidueDeflection.Tuple
import Mathematics.SemiLocalDefect.ResidueDeflection.Path
import Mathematics.SemiLocalDefect.ResidueDeflection.Graph
import Mathematics.SemiLocalDefect.ResidueDeflection.SafeNeighbors
import Mathematics.SemiLocalDefect.ResidueDeflection.AmplitudeTransport
import Mathematics.SemiLocalDefect.ResidueDeflection.PhaseTransport
import Mathematics.SemiLocalDefect.ResidueDeflection.Cocycle
import Mathematics.SemiLocalDefect.ResidueDeflection.PolarizedSheaf
import Mathematics.SemiLocalDefect.ResidueDeflection.PhaseRepresentation
import Mathematics.SemiLocalDefect.ResidueDeflection.TraceTransport
import Mathematics.SemiLocalDefect.ResidueDeflection.TraceResidual
import Mathematics.SemiLocalDefect.ResidueDeflection.Certificate
import Mathematics.SemiLocalDefect.ResidueDeflection.UnknownLedger
import Mathematics.SemiLocalDefect.ResidueDeflection.Noninterference
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.All
import Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic.All

/-!
# Polarized residue-deflection sheaf

Zero modulo three remains an excluded obstruction stratum.  Safe residues are
transported by a `C₂` phase, positive amplitudes use an independent channel,
defects are bypassed by certified safe paths, and trace conservation follows
only from exact covariance or a visible bounded residual.

The fixed-Hilbert refinement realizes transport as continuous linear maps,
defines the literal pullback defect `T* D_next T - D_current`, telescopes it
over typed safe paths, and exposes arithmetic meaning only through an exact
five-term trace correspondence with separately budgeted residuals.
-/
