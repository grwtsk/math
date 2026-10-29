-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StabilityMode.Varianteb8e91ac159a7a8bb4f168927fe35ce15601130d8f28a69dc2f42dfae9d4707c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb8e91ac159a7a8bb4f168927fe35ce15601130d8f28a69dc2f42dfae9d4707c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.StabilityMode.Varianteb8e91ac159a7a8bb4f168927fe35ce15601130d8f28a69dc2f42dfae9d4707c","mathematical_subject":"Foundations.Unclassified","original_sha256":"eb8e91ac159a7a8bb4f168927fe35ce15601130d8f28a69dc2f42dfae9d4707c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/Ricci/Stability.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.Ricci.Topology


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StabilityMode.Varianteb8e91ac159a7a8bb4f168927fe35ce15601130d8f28a69dc2f42dfae9d4707c

namespace Surface
namespace Legacy

inductive StabilityMode where
  | finiteTimeExtinction
  | eventualConstant
  | convergesToSoliton
  | convergesToConstantCurvature
  | recurrent
  | homologyStable
  | unknown
deriving DecidableEq, Repr

structure FlowConvergenceCertificate
    (trajectory : RicciFlowTrajectory)
    (metric : trajectory.model.metric) where
  convergenceSound : Prop

structure RicciSolitonCertificate where
  trajectory : RicciFlowTrajectory
  solitonMetric : trajectory.model.metric
  asymptoticMode : StabilityMode
  convergence : FlowConvergenceCertificate trajectory solitonMetric

end Legacy
end Surface
