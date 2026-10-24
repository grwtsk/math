# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FileEntry.Varianta9b0282570d30b60f477c80166407749f92be7a86bbf9031c2f3512d1fdd0d43

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d3f39b9aab348dbc83213090c41f8592c3c0198` · SHA-256 `a9b0282570d30b60f477c80166407749f92be7a86bbf9031c2f3512d1fdd0d43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Archive.Byte
import Folder.Archive.SafePath

/-!
# Folder.Archive.FileEntry

Radiation role: archive-manifest
BinaryMatrix spine: This module records folder entries before file bytes become BinaryMatrix archive layers.
Ontology: archive.file_entry
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/

namespace Folder
namespace Archive

inductive EntryKind where
  | file
  | dir
  | symlink
deriving DecidableEq, Repr

structure ArchiveEntry where
  path : SafeRelPath
  kind : EntryKind
  bytes : List Byte
  mode : Nat
  sha256 : String

end Archive
end Folder
```
