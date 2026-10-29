-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BfsPathCertificate.Variantbb1e2b11e6f5a396ddb3988cc739e2f0da64dd87fca2bb24a58039ad4d4d0ea4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb1e2b11e6f5a396ddb3988cc739e2f0da64dd87fca2bb24a58039ad4d4d0ea4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BfsPathCertificate.Variantbb1e2b11e6f5a396ddb3988cc739e2f0da64dd87fca2bb24a58039ad4d4d0ea4","mathematical_subject":"Computation.DataStructures","original_sha256":"bb1e2b11e6f5a396ddb3988cc739e2f0da64dd87fca2bb24a58039ad4d4d0ea4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Exact/BFS.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Conditional BFS shortest-shell certificate

The theorem projects shortestness from explicit complete-shell and candidate
path evidence.  Concrete neighbor completeness remains external evidence.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BfsPathCertificate.Variantbb1e2b11e6f5a396ddb3988cc739e2f0da64dd87fca2bb24a58039ad4d4d0ea4

namespace Mathematics.GraphAccess

structure BfsPathCertificate (Node : Type u) where
  source : Node
  target : Node
  distance : Nat
  path : List Node
  shellComplete : Prop
  edgeValidity : Prop
  shellCompleteEvidence : shellComplete
  edgeValidityEvidence : edgeValidity
  candidateDistances : List Nat
  firstTargetShellShortest :
    ∀ candidateDistance,
      candidateDistance ∈ candidateDistances →
      distance ≤ candidateDistance

theorem bfs_first_target_shell_shortest
    {Node : Type u}
    (certificate : BfsPathCertificate Node)
    (candidateDistance : Nat)
    (candidateRegistered :
      candidateDistance ∈ certificate.candidateDistances) :
    certificate.distance ≤ candidateDistance :=
  certificate.firstTargetShellShortest
    candidateDistance
    candidateRegistered

end Mathematics.GraphAccess
