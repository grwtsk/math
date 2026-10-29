import Folder.DerivedSheaf.BaseCaseIndex

/-!
# Folder.Theorem.DerivedSheaf.BaseCaseIndex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports base-case index facts, not BinaryMatrix data.
Ontology: base.derived_index
Pivot role: spectral
Zero typology: nonzero-euler
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem base_case_lfunction_center_eq_spectralPivot
    (D : Folder.DerivedSheaf.BaseCaseLFunctionData) :
    D.normalizedCriticalCenter = Folder.Core.spectralPivot :=
  Folder.DerivedSheaf.base_lfunction_center_is_spectral_pivot D

theorem base_case_lfunction_central_value_nonzero
    (D : Folder.DerivedSheaf.BaseCaseLFunctionData) :
    D.centralValueNonzero :=
  Folder.DerivedSheaf.base_lfunction_central_value_nonzero D

theorem base_case_euler_nonzero
    (B : Folder.DerivedSheaf.BaseCaseSectionComplex) :
    B.euler.value ≠ 0 :=
  Folder.DerivedSheaf.base_case_euler_nonzero B

theorem base_case_derived_index_euler_nonzero
    (I : Folder.DerivedSheaf.BaseCaseDerivedIndex) :
    I.derivedIndex.euler.value ≠ 0 :=
  Folder.DerivedSheaf.base_case_derived_index_euler_nonzero I

theorem base_case_derived_index_same_complex
    (I : Folder.DerivedSheaf.BaseCaseDerivedIndex) :
    I.derivedIndex.complex = I.base.complex :=
  Folder.DerivedSheaf.base_case_derived_index_same_complex I

end DerivedSheaf
end Theorem
end Folder
