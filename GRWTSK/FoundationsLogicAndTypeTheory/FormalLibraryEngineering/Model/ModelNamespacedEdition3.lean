-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectKernelModel.Variant5cdb2a5f3178a97f3656573d063743f361075af88504f6058145bb0fb94f19e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5cdb2a5f3178a97f3656573d063743f361075af88504f6058145bb0fb94f19e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProjectKernelModel.Variant5cdb2a5f3178a97f3656573d063743f361075af88504f6058145bb0fb94f19e7","mathematical_subject":"Foundations.Unclassified","original_sha256":"5cdb2a5f3178a97f3656573d063743f361075af88504f6058145bb0fb94f19e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Kernel/Model.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Kernel.Channel

/-!
# Arbitrary-project kernel models

A project snapshot may expose any index type.  It supplies a finite number of
feature channels, each of finite dimension.  The kernel construction itself
contains no references to source paths or to the project that defines it.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectKernelModel.Variant5cdb2a5f3178a97f3656573d063743f361075af88504f6058145bb0fb94f19e7

noncomputable section

namespace Mathematics.Kernel

universe u

/-- Complete semantic-kernel input for one finite project snapshot. -/
structure ProjectKernelModel (Index : Type u) where
  channelCount : Nat
  channel : Fin channelCount → FeatureChannelModel Index

/-- Semantic kernel of one project snapshot. -/
def ProjectKernelModel.semanticKernel
    {Index : Type u} (model : ProjectKernelModel Index) : PositiveKernel Index :=
  featureChannelKernel fun index => (model.channel index).toKernelChannel

end Mathematics.Kernel
