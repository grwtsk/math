import Surface.Spectral.HilbertTrace
import Surface.Spectral.FiniteHilbertConvergence
import Surface.Spectral.AnalyticPDEBridge

namespace Surface
namespace Spectral
namespace Annals

/-!
# Spectral Annals theorem cone

What this theorem cone formalizes:
The spectral cone formalizes Hilbert-trace bridge readiness and the
finite-to-Hilbert convergence route for finite graph or matrix spectral data.

Hard inputs:
Boundary condition, convergence mode, sampling, kernel scaling, normalization,
boundary compatibility, Hilbert embedding, self-adjointness, spectral measure,
spectral theorem applicability, and trace-or-resolvent control must be supplied.

Minimal imports:
`Surface.Spectral.HilbertTrace`,
`Surface.Spectral.FiniteHilbertConvergence`,
`Surface.Spectral.AnalyticPDEBridge`.

Allowed imports:
`Surface.Spectral.*`, Hilbert operator interfaces, and explicitly named
finite-to-Hilbert convergence adapters.

Forbidden imports:
BSD, Ricci surgery, Kakeya theorem narratives, and prismatic comparison
narratives unless a separately named bridge theorem supplies the connection.

Public theorem-facing declarations:
`HilbertTraceBridgeTheoremCertificate.implies_ready`,
`HilbertTraceBridgeTheoremCertificate.implies_theoremReady`,
`FiniteGraphLaplacianConvergenceCertificate.certifiedForHilbertEvidence`,
`HilbertTraceEvidenceInput.finiteConvergence_present`.

Certificate-only infrastructure:
`HilbertTraceBridgeTheoremCertificate`,
`FiniteGraphLaplacianConvergenceCertificate`,
`AnalyticPDESpectralTheoremInput`.

What is not proved:
Spectral convergence, Hilbert spectral theorem applicability, Hilbert--Pólya,
Connes trace formulas, zeta spectral correspondence, BSD, or analytic PDE
theorem content.

Forbidden bridge claims:
Finite matrices and graph Laplacians are not Hilbert spectral evidence without
`FiniteGraphLaplacianConvergenceCertificate` or a stronger supplied theorem.
-/

def publicTheoremFacingDeclarations : List String := [
  "Surface.Spectral.HilbertTraceBridgeTheoremCertificate.implies_ready",
  "Surface.Spectral.HilbertTraceBridgeTheoremCertificate.implies_theoremReady",
  "Surface.Spectral.FiniteGraphLaplacianConvergenceCertificate.certifiedForHilbertEvidence",
  "Surface.Spectral.HilbertTraceEvidenceInput.finiteConvergence_present"
]

def certificateOnlyDeclarations : List String := [
  "Surface.Spectral.HilbertTraceBridgeTheoremCertificate",
  "Surface.Spectral.FiniteGraphLaplacianConvergenceCertificate",
  "Surface.Spectral.AnalyticPDESpectralTheoremInput"
]

def hardInputDeclarations : List String := [
  "BoundaryConditionKind",
  "SpectralConvergenceMode",
  "SelfAdjointCertificate",
  "SpectralMeasure",
  "SpectralTheoremCertificate"
]

def forbiddenClaims : List String := [
  "finite matrix as spectral evidence without convergence",
  "dashboard as theorem authority",
  "analytic PDE data as spectral theorem authority"
]

end Annals
end Spectral
end Surface
