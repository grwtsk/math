import Surface.Flow.AnalyticPDE
import Surface.Flow.AnalyticPDE.Readiness

namespace Surface
namespace Flow
namespace AnalyticPDE
namespace Annals

/-!
# Analytic PDE and Ricci Annals theorem cone

What this theorem cone formalizes:
The analytic PDE cone formalizes certificate-gated heat-flow, Ricci-flow,
quasi-isomorphism, homology-stability, and finite OS boundary compatibility
interfaces.

Hard inputs:
Heat equation applicability, semigroup laws, transport soundness, smoothing,
mass or energy estimates, Ricci equation/evolution, parabolic gauge or
DeTurck control, curvature control, surgery boundary, quasi-isomorphism, Betti
preservation, and coverage witnesses must be supplied.

Minimal imports:
`Surface.Flow.AnalyticPDE`, `Surface.Flow.AnalyticPDE.Readiness`.

Allowed imports:
`Surface.Flow.Heat.*`, `Surface.Flow.AnalyticPDE`, and explicitly named
homology interfaces needed by the conditional PDE-to-homology theorem.

Forbidden imports:
`Surface.Legacy.Ricci`, BSD theorem narratives, Hilbert trace theorem
narratives, prismatic comparison narratives, and spectral correspondence
narratives unless a separately named adapter theorem states the bridge.

Public theorem-facing declarations:
`analytic_pde_flow_preserves_declared_homology`,
`AnalyticPDEHomologyStabilityTheoremCertificate.certifiedForMajorProof`,
`currentAnalyticPDEReadiness_not_ready`.

Certificate-only infrastructure:
`AnalyticHeatFlowCertificate`, `RicciFlowTheoremCertificate`,
`QuasiIsomorphismTheoremCertificate`,
`HomologyStabilityTheoremCertificate`,
`AnalyticPDEHomologyStabilityTheoremCertificate`.

What is not proved:
Analytic heat-flow theory, Ricci-flow existence, Ricci-flow surgery,
Poincaré, geometrization, spectral convergence, Hilbert--Pólya, Connes trace
formulas, BSD, or prismatic comparison.

Forbidden bridge claims:
No finite heat descriptor, Ricci mode label, Boolean dashboard, finite OS
object, or graph/matrix object is theorem authority without supplied
Prop-valued witnesses and a precise conditional theorem.
-/

def publicTheoremFacingDeclarations : List String := [
  "Surface.Flow.analytic_pde_flow_preserves_declared_homology",
  "Surface.Flow.AnalyticPDEHomologyStabilityTheoremCertificate.certifiedForMajorProof",
  "Surface.Flow.currentAnalyticPDEReadiness_not_ready"
]

def certificateOnlyDeclarations : List String := [
  "AnalyticHeatFlowCertificate",
  "RicciFlowTheoremCertificate",
  "QuasiIsomorphismTheoremCertificate",
  "HomologyStabilityTheoremCertificate",
  "AnalyticPDEHomologyStabilityTheoremCertificate"
]

def hardInputDeclarations : List String := [
  "analyticHeatEquationApplies",
  "ricciEquationCertified",
  "parabolicGaugeOrDeTurckControl",
  "curvatureControl",
  "quasiIso.inducesHomologyIso",
  "HomologyStabilityCoverageAdmissible"
]

def forbiddenClaims : List String := [
  "Ricci theorem from mode label",
  "analytic heat theorem from finite descriptor",
  "homology stability from finite OS alone",
  "spectral theorem from PDE descriptor"
]

end Annals
end AnalyticPDE
end Flow
end Surface
