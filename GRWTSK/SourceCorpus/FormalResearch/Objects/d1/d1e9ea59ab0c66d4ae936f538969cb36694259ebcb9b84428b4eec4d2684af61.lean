namespace Surface
namespace Flow
namespace ConeIndex

/-! Audit-facing index for the analytic PDE and Hilbert-flow adapter cones. -/

def coneName : String := "AnalyticPDE"

def publicTheoremDeclarations : List String := [
  "analytic_pde_flow_preserves_declared_homology",
  "analytic_heat_ricci_flow_preserves_declared_homology",
  "ConditionalHilbertTraceFormulaOrientedTopologicalSeed.implies_trace_scaffold_theoremReady"
]

def certificateOnlyDeclarations : List String := [
  "AnalyticHeatFlowCertificate",
  "RicciFlowTheoremCertificate",
  "AnalyticPDEHomologyStabilityTheoremCertificate",
  "ConditionalHilbertTraceFormulaOrientedTopologicalSeed"
]

def hardInputDeclarations : List String := [
  "heat equation witnesses",
  "Ricci-flow witnesses",
  "oriented-flatness witnesses",
  "chain-map and quasi-isomorphism witnesses",
  "homology-stability coverage"
]

def forbiddenClaims : List String := [
  "standard Surface Hilbert flow theorem readiness",
  "Ricci theorem from a mode label",
  "PDE theorem from a heat descriptor",
  "spectral evidence from finite PDE data"
]

end ConeIndex
end Flow
end Surface
