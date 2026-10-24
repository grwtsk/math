# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Build.Varianta5d21b5fbe2fb11c54d67fb6603a67929ba7040045c559b9f2bcada211c037cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac89568b9d04cc10fbb70239ee405e2763f0bbd3` · SHA-256 `a5d21b5fbe2fb11c54d67fb6603a67929ba7040045c559b9f2bcada211c037cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Extractor.Module

/-!
# Build-system and artifact receipt boundary

These records carry build-system evidence. They never override declaration
facts recovered from the compiled Lean environment.
-/

namespace MathDiscovery.Extractor

open MathDiscovery

inductive BuildArtifactKind
  | source
  | olean
  | library
  | executable
  | lakefile
  | lakeManifest
  | leanToolchain
  | other
  deriving DecidableEq, Repr, Inhabited

structure BuildArtifactRecord where
  kind : BuildArtifactKind
  path : Option CanonicalPath
  digest : Option Digest
  required : Bool
  present : Bool
  authority : ExtractionAuthority := .buildSystem
  deriving DecidableEq, Repr, Inhabited

structure ModuleBuildReceipt where
  moduleName : Lean.Name
  packageId : PackageId
  ownership : OwnershipClass
  source : BuildArtifactRecord
  olean : BuildArtifactRecord
  deriving DecidableEq, Repr, Inhabited

structure BuildReceipt where
  schemaVersion : String
  projectId : ProjectId
  leanVersion : Option String
  lakeVersion : Option String
  leanGitRevision : Option String
  modules : Array ModuleBuildReceipt
  projectArtifacts : Array BuildArtifactRecord
  missingArtifacts : Array String
  authority : ExtractionAuthority := .buildSystem
  deriving DecidableEq, Repr, Inhabited

namespace BuildArtifactRecord

/-- A required artifact is complete exactly when it is present. -/
def Complete (artifact : BuildArtifactRecord) : Prop :=
  artifact.required = true → artifact.present = true

end BuildArtifactRecord

namespace ModuleBuildReceipt

/-- A module receipt accounts for both its source and compiled artifact. -/
def Complete (receipt : ModuleBuildReceipt) : Prop :=
  receipt.source.Complete ∧ receipt.olean.Complete

end ModuleBuildReceipt

namespace BuildReceipt

/--
An authoritative receipt has no recorded missing artifact, every module source
and `.olean` requirement is present, and every required project artifact is
present. This is build-system evidence only; it does not override the compiled
environment.
-/
def Complete (receipt : BuildReceipt) : Prop :=
  receipt.missingArtifacts.isEmpty = true ∧
  (∀ moduleReceipt ∈ receipt.modules, moduleReceipt.Complete) ∧
  (∀ artifact ∈ receipt.projectArtifacts, artifact.Complete)

end BuildReceipt

end MathDiscovery.Extractor
```
