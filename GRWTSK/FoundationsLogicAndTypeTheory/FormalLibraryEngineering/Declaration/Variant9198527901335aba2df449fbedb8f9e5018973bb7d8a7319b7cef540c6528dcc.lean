import Mathematics.Ingestion.Environment
import Mathematics.Ecosystem.Registry

/-! # Project-qualified declaration extraction -/

namespace Mathematics.Ingestion

/-- Identity local to one immutable project revision. -/
structure ProjectDeclarationId where
  snapshot : Ecosystem.ProjectSnapshotKey
  localId : Extractor.DeclarationId
  deriving DecidableEq, Repr

/--
The authoritative declaration payload is the existing extractor record,
including expressions, ownership, safety, reducibility, dependencies,
attributes, source records, and trust closure linkage.
-/
abbrev Declaration := Extractor.DeclarationRecord

end Mathematics.Ingestion
