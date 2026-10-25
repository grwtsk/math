# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafePath.Variantfb3ac7eab87ed9412b7ee2d12ae09910f041a2284c4d32ab27a3fa4b6ca20038

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03b1fd580923a8eaa8e8faf33249c5a04090a4c8` · SHA-256 `fb3ac7eab87ed9412b7ee2d12ae09910f041a2284c4d32ab27a3fa4b6ca20038`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Archive.SafePath

Radiation role: archive-manifest
BinaryMatrix spine: This module constrains archive paths before payloads are materialized as BinaryMatrix layers.
Ontology: archive.safe_path
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Archive

structure SafeRelPath where
  value : String
  not_empty : value ≠ ""
  no_dotdot : ¬ ".." ∈ value.splitOn "/"
  not_absolute : ¬ value.startsWith "/"
  no_empty_components : ∀ c ∈ value.splitOn "/", c ≠ ""

theorem safeRelPath_no_dotdot
    (p : SafeRelPath) :
    ¬ ".." ∈ p.value.splitOn "/" :=
  p.no_dotdot

theorem safeRelPath_not_empty
    (p : SafeRelPath) :
    p.value ≠ "" :=
  p.not_empty

end Archive
end Folder
```
