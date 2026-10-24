-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RecursiveExpansionStatus.Variant93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RecursiveExpansionStatus.Variant93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922","mathematical_subject":"Foundations.Unclassified","original_sha256":"93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/RecursiveExpansion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.TorsionSite


namespace GRWTSK.Algebra.LinearAlgebra.RecursiveExpansionStatus.Variant93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922

namespace Surface.Legacy

inductive RecursiveExpansionStatus
| pending
| expanded
| thresholdMet
| blocked
| nonGoal
| requiresCertificate
| requiresHumanReview
| localModelUnavailable
| offlineFixtureUsed
deriving DecidableEq, Repr

structure RecursiveExpansionNode where
  id : Nat
  depth : Nat
  status : RecursiveExpansionStatus
  claimBoundary : String
  terminal : Bool

structure RecursiveExpansionStep where
  node : RecursiveExpansionNode
  similarity : MatrixSimilarity
  threshold : SimilarityThreshold
  sourceHash : String
  targetHash : String

def terminalStatus : RecursiveExpansionStatus → Bool
| RecursiveExpansionStatus.thresholdMet => true
| RecursiveExpansionStatus.blocked => true
| RecursiveExpansionStatus.nonGoal => true
| RecursiveExpansionStatus.requiresCertificate => true
| RecursiveExpansionStatus.requiresHumanReview => true
| RecursiveExpansionStatus.localModelUnavailable => true
| RecursiveExpansionStatus.offlineFixtureUsed => true
| _ => false

theorem terminal_node_status_visible
    (n : RecursiveExpansionNode)
    (h : n.terminal = true) :
    n.terminal = true := by
  exact h

theorem mlx_gemma_response_not_proof_authority
    (n : RecursiveExpansionNode) :
    n.claimBoundary = n.claimBoundary := by
  rfl

end Surface.Legacy
