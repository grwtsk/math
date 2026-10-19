import Folder.DerivedSheaf.BaseCaseSectionComplex

/-!
# Folder.Theorem.DerivedSheaf.BaseCaseSectionComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports base-case section-complex facts, not BinaryMatrix data.
Ontology: base.section_complex
Pivot role: spectral
Zero typology: nonzero-euler
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem certified_base_curve_lvalue_nonzero
    (E : Folder.DerivedSheaf.CertifiedBaseCaseEllipticCurve) :
    E.lfunction.centralValueNonzero :=
  Folder.DerivedSheaf.certified_base_curve_lvalue_nonzero E

theorem certified_base_curve_center_normalized
    (E : Folder.DerivedSheaf.CertifiedBaseCaseEllipticCurve) :
    E.normalization.normalize E.lfunction.rawCriticalCenter =
      Folder.Core.spectralPivot :=
  Folder.DerivedSheaf.certified_base_curve_center_normalized E

theorem base_case_euler_nonzero
    (B : Folder.DerivedSheaf.BaseCaseSectionComplex) :
    B.euler.value ≠ 0 :=
  Folder.DerivedSheaf.base_case_euler_nonzero B

theorem base_case_complex_realizes_lfunction
    (B : Folder.DerivedSheaf.BaseCaseSectionComplex) :
    B.complexRealizesLFunction :=
  Folder.DerivedSheaf.base_case_complex_realizes_lfunction B

end DerivedSheaf
end Theorem
end Folder
