# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseIndex.Variant469d3c384c378f6829975b191ea32142960bea2dd0784f660a91fd7a3d82a1f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23593d5a6590bbe84c3d013513f9494d235c55c8` · SHA-256 `469d3c384c378f6829975b191ea32142960bea2dd0784f660a91fd7a3d82a1f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.BaseCaseSectionComplex
import Folder.DerivedSheaf.DerivedIndex

/-!
# Folder.DerivedSheaf.BaseCaseIndex

Radiation role: research-boundary
BinaryMatrix spine: This module records a nonzero base-case derived index, not BinaryMatrix data.
Ontology: base.derived_index
Pivot role: spectral
Zero typology: nonzero-euler
Contract boundary: external-witness
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure BaseCaseDerivedIndex where
  base : BaseCaseSectionComplex
  derivedIndex : DerivedIndex
  sameComplex :
    derivedIndex.complex = base.complex
  sameEulerValue :
    derivedIndex.euler.value = base.euler.value
  sourceLabel : String

theorem base_case_derived_index_euler_nonzero
    (I : BaseCaseDerivedIndex) :
    I.derivedIndex.euler.value ≠ 0 := by
  intro h
  apply I.base.euler_nonzero
  rw [← I.sameEulerValue]
  exact h

theorem base_case_derived_index_same_complex
    (I : BaseCaseDerivedIndex) :
    I.derivedIndex.complex = I.base.complex :=
  I.sameComplex

end DerivedSheaf
end Folder
```
