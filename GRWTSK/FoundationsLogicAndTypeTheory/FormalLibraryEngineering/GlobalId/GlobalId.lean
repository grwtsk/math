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
