# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Paper.Variant266f04dbb5d7da6a6e5546b4c0ed9bb8620a82c10ad038050841a1379f964a5f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dcea884c67a21fdd2336c85bd2d7869ddded597` · SHA-256 `266f04dbb5d7da6a6e5546b4c0ed9bb8620a82c10ad038050841a1379f964a5f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.Literature.Paper

/-!
# Folder.Theorem.CanonicalPath.Literature.Paper

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports literature paper facts.
Ontology: proof.canonical_path.literature
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath
namespace Literature

theorem paper_has_title
    (P : Folder.CanonicalPath.Literature.PaperReference) :
    ∃ t, P.title = t :=
  Folder.CanonicalPath.Literature.paper_has_title P

theorem paper_has_remaining_gap
    (P : Folder.CanonicalPath.Literature.PaperReference) :
    ∃ g, P.remainingGap = g :=
  Folder.CanonicalPath.Literature.paper_has_remaining_gap P

end Literature
end CanonicalPath
end Theorem
end Folder
```
