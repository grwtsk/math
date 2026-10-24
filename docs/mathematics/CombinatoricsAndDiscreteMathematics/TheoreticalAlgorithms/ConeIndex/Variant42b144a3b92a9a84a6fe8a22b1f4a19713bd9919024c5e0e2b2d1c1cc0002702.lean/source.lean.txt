-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConeName.Variant8a0e90fd1c90e3a1c8ba8ee06949a0b702ad3bab1c6392e81a683e609e5083bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a0e90fd1c90e3a1c8ba8ee06949a0b702ad3bab1c6392e81a683e609e5083bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ConeName.Variant8a0e90fd1c90e3a1c8ba8ee06949a0b702ad3bab1c6392e81a683e609e5083bb","mathematical_subject":"Computation.DataStructures","original_sha256":"8a0e90fd1c90e3a1c8ba8ee06949a0b702ad3bab1c6392e81a683e609e5083bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/EllipticCurve/BSD/ConeIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConeName.Variant8a0e90fd1c90e3a1c8ba8ee06949a0b702ad3bab1c6392e81a683e609e5083bb

namespace Surface.Arithmetic.EllipticCurve.BSD
namespace ConeIndex

/-! Audit-facing index for the BSD theorem cone. -/

def coneName : String := "BSD"

def publicTheoremDeclarations : List String := [
  "BSD.firstPart",
  "BSD.secondPart",
  "BSDReadiness.ready",
  "currentBSDReadiness_not_ready"
]

def certificateOnlyDeclarations : List String := [
  "BSDCertificate",
  "BSDTheoremSeed",
  "PackedSmoothBSDTheoremInput"
]

def hardInputDeclarations : List String := [
  "AnalyticContinuationCertificate",
  "FunctionalEquationCertificate",
  "OrderOfVanishingCertificate",
  "FinitelyGeneratedAbelianCertificate"
]

def forbiddenClaims : List String := [
  "Hilbert trace bridge",
  "Ricci flow bridge",
  "analytic PDE bridge",
  "spectral correspondence"
]

end ConeIndex
end Surface.Arithmetic.EllipticCurve.BSD
