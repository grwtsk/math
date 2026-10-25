# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PerfectComplex.Variante46dd907233a71f3f6701ff6705e6d0cbd86b234b6855ea011b852e9eecb48b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8fcd04877116ffce7b518513a9f8d9cc49e0fbc3` · SHA-256 `e46dd907233a71f3f6701ff6705e6d0cbd86b234b6855ea011b852e9eecb48b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.DerivedObject

/-!
# Folder.DerivedSheaf.PerfectComplex

Radiation role: research-boundary
BinaryMatrix spine: This module stores perfect-complex contracts, not BinaryMatrix data.
Ontology: derived.perfect_complex
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure PerfectComplex where
  derived : DerivedObject
  locallyFinitePresentation : Prop
  locallyFinitePresentation_certified : locallyFinitePresentation
  boundedTorAmplitude : Prop
  boundedTorAmplitude_certified : boundedTorAmplitude
  dualizable : Prop
  dualizable_certified : dualizable
  label : String

theorem perfect_complex_dualizable
    (P : PerfectComplex) :
    P.dualizable :=
  P.dualizable_certified

theorem perfect_complex_locally_finite
    (P : PerfectComplex) :
    P.locallyFinitePresentation :=
  P.locallyFinitePresentation_certified

theorem perfect_complex_bounded_tor
    (P : PerfectComplex) :
    P.boundedTorAmplitude :=
  P.boundedTorAmplitude_certified

end DerivedSheaf
end Folder
```
