# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConeIndex.Variantd1e9ea59ab0c66d4ae936f538969cb36694259ebcb9b84428b4eec4d2684af61

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb732eb2352891ace7fce990f5078ffb6d6d0e1a` · SHA-256 `d1e9ea59ab0c66d4ae936f538969cb36694259ebcb9b84428b4eec4d2684af61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
