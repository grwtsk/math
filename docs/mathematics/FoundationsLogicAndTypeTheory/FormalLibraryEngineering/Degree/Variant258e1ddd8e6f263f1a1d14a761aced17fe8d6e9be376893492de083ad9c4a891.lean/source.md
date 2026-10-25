# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Degree.Variant258e1ddd8e6f263f1a1d14a761aced17fe8d6e9be376893492de083ad9c4a891

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32a9648642980356cd3e06fd54ac6f05d7177f7c` · SHA-256 `258e1ddd8e6f263f1a1d14a761aced17fe8d6e9be376893492de083ad9c4a891`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.DerivedSheaf.Degree

Radiation role: research-boundary
BinaryMatrix spine: This module supplies derived sheaf degree labels, not BinaryMatrix carriers.
Ontology: derived.section_complex
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

abbrev Degree := Int

structure GradedObject where
  Obj : Degree → Type _
  label : String

def GradedObject.term
    (G : GradedObject)
    (n : Degree) : Type _ :=
  G.Obj n

theorem graded_object_has_term
    (G : GradedObject)
    (n : Degree) :
    ∃ T : Type _, T = G.term n :=
  ⟨G.term n, rfl⟩

end DerivedSheaf
end Folder
```
