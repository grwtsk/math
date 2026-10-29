-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.RodgersTaoFlowRealizesDerivedTransport.Variant9e9bcefbf5ee0c1247c8e1fc7b12ee653cbf66ee4cdd93bea9ca2d92d1971d7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e9bcefbf5ee0c1247c8e1fc7b12ee653cbf66ee4cdd93bea9ca2d92d1971d7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.RodgersTaoFlowRealizesDerivedTransport.Variant9e9bcefbf5ee0c1247c8e1fc7b12ee653cbf66ee4cdd93bea9ca2d92d1971d7d","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"9e9bcefbf5ee0c1247c8e1fc7b12ee653cbf66ee4cdd93bea9ca2d92d1971d7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/RodgersTaoEulerTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.RodgersTaoEulerTransport

/-!
# Folder.Theorem.DerivedSheaf.RodgersTaoEulerTransport

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Rodgers-Tao derived transport facts, not BinaryMatrix data.
Ontology: derived.rodgers_tao_transport
Pivot role: spectral
Zero typology: euler-invariance-contract
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.RodgersTaoFlowRealizesDerivedTransport.Variant9e9bcefbf5ee0c1247c8e1fc7b12ee653cbf66ee4cdd93bea9ca2d92d1971d7d

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem rodgers_tao_flow_realizes_derived_transport
    (T : Folder.DerivedSheaf.RodgersTaoDerivedTransport) :
    T.flowRealizesDerivedTransport :=
  Folder.DerivedSheaf.rodgers_tao_flow_realizes_derived_transport T

theorem rodgers_tao_transport_preserves_euler_characteristic
    (T : Folder.DerivedSheaf.RodgersTaoDerivedTransport) :
    T.eulerTransport.targetEuler.value =
      T.eulerTransport.sourceEuler.value :=
  Folder.DerivedSheaf.rodgers_tao_transport_preserves_euler_characteristic T

end DerivedSheaf
end Theorem
end Folder
