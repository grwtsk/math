# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StandardReferenceBaseCase.Variant8db958001112608776627741338bccef465e0b246dc74f4f6e803d8c692765fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7cd0961b7013be3a42bf9b24f44be3687eb3925b` · SHA-256 `8db958001112608776627741338bccef465e0b246dc74f4f6e803d8c692765fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.StandardReferenceBaseCase

/-!
# Folder.Theorem.DerivedSheaf.StandardReferenceBaseCase

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports toy and 11a1 standard-reference base-case facts, not BinaryMatrix data.
Ontology: base.standard_reference
Pivot role: spectral
Zero typology: nonzero-euler
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem standard_reference_base_case_euler_nonzero :
    Folder.DerivedSheaf.toyBaseCaseSectionComplex.euler.value ≠ 0 :=
  Folder.DerivedSheaf.standard_reference_base_case_euler_nonzero

theorem standard_reference_base_case_index_nonzero :
    Folder.DerivedSheaf.standardReferenceBaseCase.kIndex.indexClass.Nonzero :=
  Folder.DerivedSheaf.standard_reference_base_case_index_nonzero

theorem standardReference11a1_centralValueNonzero :
    Folder.DerivedSheaf.standardReference11a1LFunctionData.centralValueNonzero :=
  Folder.DerivedSheaf.standardReference11a1_centralValueNonzero

theorem standard_reference_11a1_base_case_euler_nonzero :
    Folder.DerivedSheaf.standardReference11a1SectionComplex.euler.value ≠ 0 :=
  Folder.DerivedSheaf.standard_reference_11a1_base_case_euler_nonzero

theorem standard_reference_11a1_base_case_index_nonzero :
    Folder.DerivedSheaf.standardReference11a1BaseCase.kIndex.indexClass.Nonzero :=
  Folder.DerivedSheaf.standard_reference_11a1_base_case_index_nonzero

end DerivedSheaf
end Theorem
end Folder
```
