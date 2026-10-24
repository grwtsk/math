import Surface.Hilbert.TraceFormula
import Surface.Spectral.HilbertTrace

namespace Surface
namespace Hilbert
namespace Annals

/-!
# Hilbert trace Annals theorem cone

What this theorem cone formalizes:
The Hilbert trace cone formalizes Hilbert spaces, linear operators,
self-adjointness gates, trace-class gates, spectral-measure gates, and
conditional trace-formula readiness.

Hard inputs:
Self-adjointness, trace-class status, spectral measure, spectral theorem
applicability, side readiness, normalization compatibility, and packed
spectral-prismatic input must be supplied.

Minimal imports:
`Surface.Hilbert.TraceFormula`, `Surface.Spectral.HilbertTrace`.

Allowed imports:
`Surface.Hilbert.*`, Hilbert-trace spectral bridge modules, and explicitly
named Flow Hilbert adapters.

Forbidden imports:
BSD, Ricci, analytic PDE, finite OS, and Kakeya modules except through a
separately named adapter theorem with all hypotheses visible.

Public theorem-facing declarations:
`TraceFormulaTheoremCertificate.implies_ready`,
`TraceFormulaTheoremCertificate.implies_theoremReady`,
`standardTraceFormulaCore_not_theoremReady`,
`Spectral.HilbertTraceBridgeTheoremCertificate.implies_theoremReady`.

Certificate-only infrastructure:
`TraceFormulaTheoremCertificate`,
`Spectral.HilbertTraceBridgeTheoremCertificate`.

What is not proved:
Hilbert--Pólya, Connes trace formulas, zeta spectral correspondence, BSD, or a
trace formula for the standard placeholder core.

Forbidden bridge claims:
No arithmetic, Ricci-flow, analytic PDE, finite OS, or Kakeya input is part of
this cone without an explicitly named adapter theorem.
-/

def publicTheoremFacingDeclarations : List String := [
  "Surface.Hilbert.TraceFormulaTheoremCertificate.implies_ready",
  "Surface.Hilbert.TraceFormulaTheoremCertificate.implies_theoremReady",
  "Surface.Hilbert.standardTraceFormulaCore_not_theoremReady",
  "Surface.Spectral.HilbertTraceBridgeTheoremCertificate.implies_theoremReady"
]

def certificateOnlyDeclarations : List String := [
  "Surface.Hilbert.TraceFormulaTheoremCertificate",
  "Surface.Spectral.HilbertTraceBridgeTheoremCertificate"
]

def hardInputDeclarations : List String := [
  "SelfAdjointCertificate",
  "TraceClassCertificate",
  "SpectralMeasure",
  "SpectralTheoremCertificate",
  "PackedPrismaticHilbertTheoremInput"
]

def forbiddenClaims : List String := [
  "BSD theorem input without Flow certificate",
  "finite graph spectral evidence without convergence certificate",
  "Ricci or analytic PDE theorem authority",
  "standard scaffold theorem readiness"
]

end Annals
end Hilbert
end Surface
