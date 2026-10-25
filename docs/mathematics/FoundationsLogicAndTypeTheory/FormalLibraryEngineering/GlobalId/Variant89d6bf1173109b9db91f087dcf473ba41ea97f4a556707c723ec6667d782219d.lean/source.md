# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalId.Variant89d6bf1173109b9db91f087dcf473ba41ea97f4a556707c723ec6667d782219d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b541efef11bc122635c3cf7d2c3894194b595b55` · SHA-256 `89d6bf1173109b9db91f087dcf473ba41ea97f4a556707c723ec6667d782219d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ingestion.Declaration

/-! # Project-qualified global declaration identity -/

namespace Mathematics.Federation

/--
Global identity includes source sovereignty and revision.  Equal Lean names
from different projects remain distinct.
-/
structure GlobalDeclarationId where
  snapshot : Ecosystem.ProjectSnapshotKey
  localId : Extractor.DeclarationId
  deriving DecidableEq, Repr

def GlobalDeclarationId.ofProjectDeclaration
    (id : Ingestion.ProjectDeclarationId) : GlobalDeclarationId :=
  ⟨id.snapshot, id.localId⟩

theorem GlobalDeclarationId.project_qualification
    {left right : GlobalDeclarationId}
    (projectsDiffer :
      left.snapshot.project ≠ right.snapshot.project) :
    left ≠ right := by
  intro equal
  exact projectsDiffer
    (congrArg
      (fun declaration ↦ declaration.snapshot.project)
      equal)

/-- Equal printed names cannot erase distinct transparent occurrence keys. -/
theorem GlobalDeclarationId.same_name_does_not_collapse
    {left right : GlobalDeclarationId}
    (snapshotsDiffer : left.snapshot ≠ right.snapshot) :
    left ≠ right := by
  intro equal
  exact snapshotsDiffer
    (congrArg GlobalDeclarationId.snapshot equal)

end Mathematics.Federation
```
