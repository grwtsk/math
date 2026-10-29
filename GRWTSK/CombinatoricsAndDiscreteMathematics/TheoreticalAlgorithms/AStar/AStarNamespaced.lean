-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AStarPathCertificate.Variant293ba15ef409cdeddf84962e263ecdc8fbd346aace4d33b8a68ca51bcf3d9408","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"293ba15ef409cdeddf84962e263ecdc8fbd346aace4d33b8a68ca51bcf3d9408","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AStarPathCertificate.Variant293ba15ef409cdeddf84962e263ecdc8fbd346aace4d33b8a68ca51bcf3d9408","mathematical_subject":"Computation.DataStructures","original_sha256":"293ba15ef409cdeddf84962e263ecdc8fbd346aace4d33b8a68ca51bcf3d9408","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Exact/AStar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Exact.Heuristic

/-!
# Conditional A-star optimality

The certificate deliberately carries the algorithm-specific implication from
admissibility and consistency to optimality.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AStarPathCertificate.Variant293ba15ef409cdeddf84962e263ecdc8fbd346aace4d33b8a68ca51bcf3d9408

namespace Mathematics.GraphAccess

structure AStarPathCertificate (Node : Type u) where
  source : Node
  target : Node
  pathCost : Nat
  candidateCosts : List Nat
  optimalOfAdmissibleConsistent :
    (heuristic : CertifiedHeuristic Node) →
    (∀ candidateCost,
      candidateCost ∈ candidateCosts →
      pathCost ≤ candidateCost)

theorem astar_optimal_of_admissible_consistent
    {Node : Type u}
    (certificate : AStarPathCertificate Node)
    (heuristic : CertifiedHeuristic Node)
    (candidateCost : Nat)
    (candidateRegistered :
      candidateCost ∈ certificate.candidateCosts) :
    certificate.pathCost ≤ candidateCost :=
  certificate.optimalOfAdmissibleConsistent
    heuristic
    candidateCost
    candidateRegistered

end Mathematics.GraphAccess
