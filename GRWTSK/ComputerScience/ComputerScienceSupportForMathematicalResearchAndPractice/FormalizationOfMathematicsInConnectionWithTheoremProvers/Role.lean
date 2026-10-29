import DAF.Universe.RhetoricalRole

/-!
# Rhetorical roles

These seven constructors label a concept's position in a rhetorical relation.
They are finite presentation metadata; changing a role does not identify or
alter the underlying concept.
-/

namespace DAF.Rhetorical

/-- Public rhetorical-layer alias of the transport vocabulary. -/
abbrev RhetoricalRole := Universe.RhetoricalRole

/-- Canonical index of the project rhetorical kernel. -/
abbrev RhetoricalIndex := Universe.ConceptId × RhetoricalRole

end DAF.Rhetorical
