# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Role.Variant661e2653830ddced38011484f1b1cfcf5d8c63b1e7086ea0b0a8f9b8fb5af8a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02e053c219850eb79caefce10994d7ff43beb720` · SHA-256 `661e2653830ddced38011484f1b1cfcf5d8c63b1e7086ea0b0a8f9b8fb5af8a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
