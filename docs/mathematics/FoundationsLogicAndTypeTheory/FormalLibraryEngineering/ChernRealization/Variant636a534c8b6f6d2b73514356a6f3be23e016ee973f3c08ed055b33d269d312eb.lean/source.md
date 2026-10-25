# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ChernRealization.Variant636a534c8b6f6d2b73514356a6f3be23e016ee973f3c08ed055b33d269d312eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a63047a36af227dbd83dc965346e1d3b55293a0` · SHA-256 `636a534c8b6f6d2b73514356a6f3be23e016ee973f3c08ed055b33d269d312eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.ChernRealization

/-!
# Folder.Theorem.DerivedSheaf.ChernRealization

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Chern realization facts, not BinaryMatrix data.
Ontology: derived.chern_realization
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem chern_realization_additive
    {M : Folder.DerivedSheaf.MellKTheory}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (ch : Folder.DerivedSheaf.ChernRealization M H) :
    ch.additive :=
  Folder.DerivedSheaf.chern_realization_additive ch

theorem chern_realization_compatible
    {M : Folder.DerivedSheaf.MellKTheory}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (ch : Folder.DerivedSheaf.ChernRealization M H) :
    ch.compatibleWithPerfectComplexes :=
  Folder.DerivedSheaf.chern_realization_compatible ch

end DerivedSheaf
end Theorem
end Folder
```
