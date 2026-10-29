-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModularityPrimeAssignment.Variant1b97b44aed35e2ee90985cbc5b03489f219ea0ec5071e497fc1cac57c27cd09c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b97b44aed35e2ee90985cbc5b03489f219ea0ec5071e497fc1cac57c27cd09c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ModularityPrimeAssignment.Variant1b97b44aed35e2ee90985cbc5b03489f219ea0ec5071e497fc1cac57c27cd09c","mathematical_subject":"Computation.DataStructures","original_sha256":"1b97b44aed35e2ee90985cbc5b03489f219ea0ec5071e497fc1cac57c27cd09c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Tree/Modularity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Tree.UniqueFactorization


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModularityPrimeAssignment.Variant1b97b44aed35e2ee90985cbc5b03489f219ea0ec5071e497fc1cac57c27cd09c

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

structure ModularityPrimeAssignment where
  modularity : Modularity
  factor : IrreducibleFactor
  sameModularity : factor.modularity = modularity
  claimBoundary : List String

theorem modularity_assignment_prime_visible
    (A : ModularityPrimeAssignment) :
    Nat.Prime A.factor.prime.value :=
  A.factor.prime.isPrime

end Tree
end BinaryLogicMatrix
end Surface.Legacy
