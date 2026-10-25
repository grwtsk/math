# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MathematicsFiber.Variant6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c61ef862fbe9116a3728c2180a7dd92a14ba9c08` · SHA-256 `6812189db4a0be7b4c38ba5e1430f30f924d5ed9e6bb3a7c0438b760d75d1c54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
