# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declaration.Variant9198527901335aba2df449fbedb8f9e5018973bb7d8a7319b7cef540c6528dcc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a89e912c456d813e1adbeb5933ea6230b78306a` · SHA-256 `9198527901335aba2df449fbedb8f9e5018973bb7d8a7319b7cef540c6528dcc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
