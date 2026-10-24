-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectExportMetadata.Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProjectExportMetadata.Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54","mathematical_subject":"Foundations.Unclassified","original_sha256":"6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/bridge/BridgeElements/MathematicsFiber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Export.Project
import URSMContracts

/-! # Project-fiber metadata adapter. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectExportMetadata.Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54

namespace URSM.Bridge

open URSM.Contracts

structure ProjectExportMetadata where
  packageName : String
  publicRoot : String
  leanToolchainDigest : DigestRef
  lakeGraphDigest : DigestRef
  compiledEnvironmentDigest : DigestRef
  publicApiDigest : DigestRef
  theoremIndexDigest : DigestRef
  kernelCheckDigest : DigestRef
  unresolvedDigest : DigestRef
  payloadRoot : ObjectRef
  exportDigest : DigestRef

def projectKeyOfFiber
    (fiber : Mathematics.Federation.ProjectFiber) :
    ProjectKey where
  projectId := fiber.snapshot.identity.projectId.value
  revisionId := fiber.snapshot.revision.revisionId.value
  snapshotDigest := ⟨fiber.snapshot.rootDigest.value⟩

def projectExportOfFiber
    (fiber : Mathematics.Federation.ProjectFiber)
    (metadata : ProjectExportMetadata) :
    ProjectExport where
  key := projectKeyOfFiber fiber
  packageName := metadata.packageName
  publicRoot := metadata.publicRoot
  leanToolchainDigest := metadata.leanToolchainDigest
  lakeGraphDigest := metadata.lakeGraphDigest
  sourceDigest := ⟨fiber.snapshot.revision.sourceDigest.value⟩
  compiledEnvironmentDigest := metadata.compiledEnvironmentDigest
  publicApiDigest := metadata.publicApiDigest
  theoremIndexDigest := metadata.theoremIndexDigest
  kernelCheckDigest := metadata.kernelCheckDigest
  unresolvedDigest := metadata.unresolvedDigest
  payloadRoot := metadata.payloadRoot
  exportDigest := metadata.exportDigest

@[simp] theorem projectExportOfFiber_key
    (fiber : Mathematics.Federation.ProjectFiber)
    (metadata : ProjectExportMetadata) :
    (projectExportOfFiber fiber metadata).key =
      projectKeyOfFiber fiber :=
  rfl

end URSM.Bridge
