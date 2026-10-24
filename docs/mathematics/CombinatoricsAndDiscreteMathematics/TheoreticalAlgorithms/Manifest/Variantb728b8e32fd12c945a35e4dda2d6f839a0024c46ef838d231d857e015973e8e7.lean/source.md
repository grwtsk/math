# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Manifest.Variantb728b8e32fd12c945a35e4dda2d6f839a0024c46ef838d231d857e015973e8e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4660223f54ef71a130412c367659e507f10155bd` · SHA-256 `b728b8e32fd12c945a35e4dda2d6f839a0024c46ef838d231d857e015973e8e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Manifest

/-!
# Simplicial fabric manifests

Fabric manifests are operational metadata.  Cell identifiers, module names,
versions, fingerprints, and certificate names can be checked structurally, but
none of them is theorem authority.  In particular, a certificate name in a
manifest has no API that produces a Lean proof, and a presentation manifest is
not itself a proof certificate.

DOM, Rust, worker, and Kubernetes hosts remain external refinement targets.
-/

namespace DAF.Fabric

/-- Metadata for one hosted fabric cell. -/
structure CellManifest where
  id : Lean.Name
  dimension : Nat
  faceIds : List Lean.Name
  presentationModule : Lean.Name
  presentationVersion : DAF.Version
  modelFingerprint : DAF.Fingerprint
  implementationArtifact : Option DAF.Fingerprint
  certificateNames : List Lean.Name

/-- Metadata for a complete fabric deployment description. -/
structure FabricManifest where
  formatVersion : Nat
  fabricId : Lean.Name
  cells : List CellManifest

namespace FabricManifest

/-- Cell identifiers are structurally unique. -/
def UniqueCellIds (M : FabricManifest) : Prop :=
  (M.cells.map CellManifest.id).Nodup

/-- Every named face refers to a cell present in the same manifest. -/
def ValidFaceReferences (M : FabricManifest) : Prop :=
  ∀ (cell : CellManifest), cell ∈ M.cells →
    ∀ (faceId : Lean.Name), faceId ∈ cell.faceIds →
      ∃ target ∈ M.cells, target.id = faceId

/-- The structural checks supported by the pure manifest model. -/
def StructurallyValid (M : FabricManifest) : Prop :=
  M.UniqueCellIds ∧ M.ValidFaceReferences

theorem uniqueCellIds_of_structurallyValid
    {M : FabricManifest}
    (h : M.StructurallyValid) :
    M.UniqueCellIds :=
  h.1

theorem validFaceReferences_of_structurallyValid
    {M : FabricManifest}
    (h : M.StructurallyValid) :
    M.ValidFaceReferences :=
  h.2

end FabricManifest

end DAF.Fabric
```
