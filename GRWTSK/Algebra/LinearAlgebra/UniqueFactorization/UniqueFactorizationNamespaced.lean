-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.OrderedFactorizationByCode.Variant52cd77340261218b588d3617e1a8f6a4c7eb271f3f7c1e34e50eee761de48a56","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52cd77340261218b588d3617e1a8f6a4c7eb271f3f7c1e34e50eee761de48a56","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OrderedFactorizationByCode.Variant52cd77340261218b588d3617e1a8f6a4c7eb271f3f7c1e34e50eee761de48a56","mathematical_subject":"Foundations.Unclassified","original_sha256":"52cd77340261218b588d3617e1a8f6a4c7eb271f3f7c1e34e50eee761de48a56","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Tree/UniqueFactorization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Tree.ArithmeticShadow


namespace GRWTSK.Algebra.LinearAlgebra.OrderedFactorizationByCode.Variant52cd77340261218b588d3617e1a8f6a4c7eb271f3f7c1e34e50eee761de48a56

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

theorem ordered_factorization_by_code
    (P : PairingCodec)
    {A B : OrderedPrimeCore}
    (h : A.code P = B.code P) :
    A = B :=
  same_normalized_code_same_factorization P h

theorem ordered_factorization_by_topology_prime
    (P : PairingCodec)
    (E : PrimeEnumerator)
    {A B : OrderedPrimeCore}
    (h : (topologyPrime P E A).value = (topologyPrime P E B).value) :
    A = B :=
  same_topologyPrime_same_factorization P E h

end Tree
end BinaryLogicMatrix
end Surface.Legacy
