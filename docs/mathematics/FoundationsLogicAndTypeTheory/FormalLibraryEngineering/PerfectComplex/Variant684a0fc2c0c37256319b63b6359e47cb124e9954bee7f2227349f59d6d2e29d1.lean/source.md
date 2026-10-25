# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PerfectComplex.Variant684a0fc2c0c37256319b63b6359e47cb124e9954bee7f2227349f59d6d2e29d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8314b5d59ba77eeee4ce9ca0a7600ee6d59d3fd` · SHA-256 `684a0fc2c0c37256319b63b6359e47cb124e9954bee7f2227349f59d6d2e29d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.PerfectComplex

/-!
# Folder.Theorem.DerivedSheaf.PerfectComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports perfect-complex facts, not BinaryMatrix data.
Ontology: derived.perfect_complex
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem perfect_complex_dualizable
    (P : Folder.DerivedSheaf.PerfectComplex) :
    P.dualizable :=
  Folder.DerivedSheaf.perfect_complex_dualizable P

theorem perfect_complex_locally_finite
    (P : Folder.DerivedSheaf.PerfectComplex) :
    P.locallyFinitePresentation :=
  Folder.DerivedSheaf.perfect_complex_locally_finite P

theorem perfect_complex_bounded_tor
    (P : Folder.DerivedSheaf.PerfectComplex) :
    P.boundedTorAmplitude :=
  Folder.DerivedSheaf.perfect_complex_bounded_tor P

end DerivedSheaf
end Theorem
end Folder
```
