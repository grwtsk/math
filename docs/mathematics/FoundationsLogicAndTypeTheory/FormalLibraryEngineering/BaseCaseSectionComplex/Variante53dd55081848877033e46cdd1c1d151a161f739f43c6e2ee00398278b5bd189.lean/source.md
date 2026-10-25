# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseSectionComplex.Variante53dd55081848877033e46cdd1c1d151a161f739f43c6e2ee00398278b5bd189

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd03120afc1ffa6a1a5eaf964ebf99c4a264d961` · SHA-256 `e53dd55081848877033e46cdd1c1d151a161f739f43c6e2ee00398278b5bd189`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.SectionComplex
import Folder.DerivedSheaf.EulerCharacteristic
import Folder.DerivedSheaf.BaseCaseEllipticCurve

/-!
# Folder.DerivedSheaf.BaseCaseSectionComplex

Radiation role: research-boundary
BinaryMatrix spine: This module records the base-case section complex, not BinaryMatrix data.
Ontology: base.section_complex
Pivot role: spectral
Zero typology: nonzero-euler
Contract boundary: external-witness
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

/--
A base-case section complex whose Euler characteristic is supplied and
nonzero.

This is the topological anchor.
-/
structure BaseCaseSectionComplex where
  arithmetic : CertifiedBaseCaseEllipticCurve
  complex : SectionComplex
  euler : EulerCharacteristic complex
  euler_nonzero : euler.value ≠ 0
  complexRealizesLFunction : Prop
  complexRealizesLFunction_certified : complexRealizesLFunction
  sourceLabel : String

theorem base_case_euler_nonzero
    (B : BaseCaseSectionComplex) :
    B.euler.value ≠ 0 :=
  B.euler_nonzero

theorem base_case_complex_realizes_lfunction
    (B : BaseCaseSectionComplex) :
    B.complexRealizesLFunction :=
  B.complexRealizesLFunction_certified

end DerivedSheaf
end Folder
```
