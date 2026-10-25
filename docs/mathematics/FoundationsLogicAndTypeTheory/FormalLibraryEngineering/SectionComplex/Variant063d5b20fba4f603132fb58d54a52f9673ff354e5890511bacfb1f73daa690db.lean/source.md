# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SectionComplex.Variant063d5b20fba4f603132fb58d54a52f9673ff354e5890511bacfb1f73daa690db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b144075dd72eea5db923d87d768568a2bda00de7` · SHA-256 `063d5b20fba4f603132fb58d54a52f9673ff354e5890511bacfb1f73daa690db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.Degree

/-!
# Folder.DerivedSheaf.SectionComplex

Radiation role: research-boundary
BinaryMatrix spine: This module names section complexes, not BinaryMatrix entries.
Ontology: derived.section_complex
Pivot role: none
Zero typology: d_squared_zero-contract
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure SectionComplex where
  Section : Degree → Type _
  differential : ∀ n : Degree, Section n → Section (n + 1)
  d_comp_d_zero : Prop
  d_comp_d_zero_certified : d_comp_d_zero
  bounded : Prop
  bounded_certified : bounded
  label : String

theorem section_complex_d_squared_zero
    (C : SectionComplex) :
    C.d_comp_d_zero :=
  C.d_comp_d_zero_certified

theorem section_complex_bounded
    (C : SectionComplex) :
    C.bounded :=
  C.bounded_certified

end DerivedSheaf
end Folder
```
