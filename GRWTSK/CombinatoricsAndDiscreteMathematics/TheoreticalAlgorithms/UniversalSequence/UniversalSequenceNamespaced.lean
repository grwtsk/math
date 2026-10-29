-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UniversalSequenceCertificate.Variantde633d032e7683689c73847527285dfc1fe98453d79ba7dbd46c997e4df41dad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de633d032e7683689c73847527285dfc1fe98453d79ba7dbd46c997e4df41dad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.UniversalSequenceCertificate.Variantde633d032e7683689c73847527285dfc1fe98453d79ba7dbd46c997e4df41dad","mathematical_subject":"Computation.DataStructures","original_sha256":"de633d032e7683689c73847527285dfc1fe98453d79ba7dbd46c997e4df41dad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Exploration/UniversalSequence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Declared-class universal exploration

Coverage is conditional on the supplied graph-class membership and port-label
certificate.  No cross-class universality is asserted.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UniversalSequenceCertificate.Variantde633d032e7683689c73847527285dfc1fe98453d79ba7dbd46c997e4df41dad

namespace Mathematics.GraphAccess

structure UniversalSequenceCertificate (Node : Type u) where
  graphClassRef : String
  sequenceRevisionRef : String
  declaredNodes : List Node
  visitedNodes : List Node
  graphClassMembership : Prop
  portLabelsComplete : Prop
  graphClassMembershipEvidence : graphClassMembership
  portLabelsCompleteEvidence : portLabelsComplete
  covers :
    ∀ node, node ∈ declaredNodes → node ∈ visitedNodes

theorem universal_sequence_covers_declared_class
    {Node : Type u}
    (certificate : UniversalSequenceCertificate Node)
    (node : Node)
    (declared : node ∈ certificate.declaredNodes) :
    node ∈ certificate.visitedNodes :=
  certificate.covers node declared

end Mathematics.GraphAccess
