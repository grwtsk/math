import Mathematics.Export.Project
import URSMContracts

/-! # Project-fiber metadata adapter. -/

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
