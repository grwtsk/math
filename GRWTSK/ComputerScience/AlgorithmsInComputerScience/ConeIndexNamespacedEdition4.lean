-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConeName.Variantd1e9ea59ab0c66d4ae936f538969cb36694259ebcb9b84428b4eec4d2684af61","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d1e9ea59ab0c66d4ae936f538969cb36694259ebcb9b84428b4eec4d2684af61","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ConeName.Variantd1e9ea59ab0c66d4ae936f538969cb36694259ebcb9b84428b4eec4d2684af61","mathematical_subject":"Computation.DataStructures","original_sha256":"d1e9ea59ab0c66d4ae936f538969cb36694259ebcb9b84428b4eec4d2684af61","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Flow/ConeIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConeName.Variantd1e9ea59ab0c66d4ae936f538969cb36694259ebcb9b84428b4eec4d2684af61

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
