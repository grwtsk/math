-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatSemigroupCertificate.Variant2db930c1badda2933f681bdcc2ab662d809ab517f7f442d95f58ee2b69b61359","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2db930c1badda2933f681bdcc2ab662d809ab517f7f442d95f58ee2b69b61359","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HeatSemigroupCertificate.Variant2db930c1badda2933f681bdcc2ab662d809ab517f7f442d95f58ee2b69b61359","mathematical_subject":"Foundations.Unclassified","original_sha256":"2db930c1badda2933f681bdcc2ab662d809ab517f7f442d95f58ee2b69b61359","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Flow/Heat/Semigroup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Flow.Heat.Kernel


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatSemigroupCertificate.Variant2db930c1badda2933f681bdcc2ab662d809ab517f7f442d95f58ee2b69b61359

namespace Surface

structure HeatSemigroupCertificate where
  flow : HeatFlowDescriptor
  identityAtZero : Prop
  compositionLaw : Prop

theorem heatSemigroup_requires_identity_and_composition
    (cert : HeatSemigroupCertificate) :
    cert.identityAtZero ->
      cert.compositionLaw ->
        cert.identityAtZero ∧ cert.compositionLaw := by
  intro h0 hcomp
  exact ⟨h0, hcomp⟩

end Surface
