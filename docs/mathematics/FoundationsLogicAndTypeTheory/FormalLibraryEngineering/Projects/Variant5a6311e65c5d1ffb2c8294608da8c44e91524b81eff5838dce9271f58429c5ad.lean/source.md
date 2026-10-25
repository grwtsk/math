# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Projects.Variant5a6311e65c5d1ffb2c8294608da8c44e91524b81eff5838dce9271f58429c5ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40a4cce02fc8aea74887bca1bf593e79d03209fe` · SHA-256 `5a6311e65c5d1ffb2c8294608da8c44e91524b81eff5838dce9271f58429c5ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic
import URSMBridge
import URSMNetwork

/-! # Stable Phase-1 project table. -/

namespace URSM.Composite

structure ProjectDescriptor where
  projectId : String
  packageName : String
  publicRoot : String
  root : String
  sourcePaths : List String
  compiledRoot : String
  deriving DecidableEq, Repr

abbrev projectCount : Nat := 6

def contractsProject : ProjectDescriptor where
  projectId :=
    "project:d92f5d6f9d22cbfb672381f8f96e8efb8430cbeffbbd64f7b1857ab7fe76365a"
  packageName := "ursm_contracts"
  publicRoot := "URSMContracts"
  root := "lean/contracts"
  sourcePaths :=
    ["lakefile.toml", "lake-manifest.json", "lean-toolchain",
      "URSMContracts.lean", "ContractElements"]
  compiledRoot := ".lake/build/lib/lean"

def bitMatrixProject : ProjectDescriptor where
  projectId :=
    "project:1ea8d99479c9087aa8b3efd77908945be1dabf4617a6cb3fc3fbf48c9a3194a1"
  packageName := "bit_matrix"
  publicRoot := "BitMatrix"
  root := "lean/bit-matrix"
  sourcePaths :=
    ["lakefile.toml", "lake-manifest.json", "lean-toolchain",
      "BitMatrix.lean", "BitMatrixElements"]
  compiledRoot := ".lake/build/lib/lean"

def mathematicsProject : ProjectDescriptor where
  projectId :=
    "project:50ed1e7c7f3db42a0bbff0f213d7e1f7fca59245dcbfa68aa60ec675d75bc609"
  packageName := "mathematics"
  publicRoot := "Mathematics.Export.All"
  root := "."
  sourcePaths :=
    ["lakefile.toml", "lake-manifest.json", "lean-toolchain",
      "Mathematics.lean", "Mathematics",
      "tools/LeanEnvironmentExtract.lean",
      "tools/LeanEnvironmentExtractElements",
      "tools/LeanKernelCheck.lean", "tools/LeanSource",
      "tools/LeanSourceTrace.lean"]
  compiledRoot := ".lake/build/lib/lean"

def bridgeProject : ProjectDescriptor where
  projectId :=
    "project:5d468e55a88cafbb407b94b0298a2e3967c453b739f188c727fda734435935c2"
  packageName := "ursm_bridge"
  publicRoot := "URSMBridge"
  root := "lean/bridge"
  sourcePaths :=
    ["lakefile.toml", "lake-manifest.json", "lean-toolchain",
      "URSMBridge.lean", "BridgeElements"]
  compiledRoot := ".lake/build/lib/lean"

def networkProject : ProjectDescriptor where
  projectId :=
    "project:48f15d6006711cd9b7e7fbe4bfb0093b51b4c138dce2580a98d16bc2a31e6c7b"
  packageName := "ursm_network"
  publicRoot := "URSMNetwork"
  root := "lean/network"
  sourcePaths :=
    ["lakefile.toml", "lake-manifest.json", "lean-toolchain",
      "URSMNetwork.lean", "NetworkElements"]
  compiledRoot := ".lake/build/lib/lean"

def compositeProject : ProjectDescriptor where
  projectId :=
    "project:49aeeae9e34fbe4e28764df902cc7a50a475a501766e772c14ec7fb258b1d671"
  packageName := "ursm_composite"
  publicRoot := "URSMComposite"
  root := "lean/composite"
  sourcePaths :=
    ["lakefile.toml", "lake-manifest.json", "lean-toolchain",
      "URSMComposite.lean", "CompositeElements", "Tools"]
  compiledRoot := ".lake/build/lib/lean"

def projectAt : Fin projectCount → ProjectDescriptor :=
  ![
    contractsProject,
    bitMatrixProject,
    mathematicsProject,
    bridgeProject,
    networkProject,
    compositeProject
  ]

def projectDescriptors : List ProjectDescriptor :=
  [contractsProject, bitMatrixProject, mathematicsProject,
    bridgeProject, networkProject, compositeProject]

@[simp] theorem projectDescriptors_length :
    projectDescriptors.length = projectCount :=
  rfl

theorem projectId_unique :
    Function.Injective (fun index ↦ (projectAt index).projectId) := by
  native_decide

end URSM.Composite
```
