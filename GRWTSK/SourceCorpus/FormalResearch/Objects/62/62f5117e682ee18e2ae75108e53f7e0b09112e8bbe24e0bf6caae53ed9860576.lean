import Folder.DerivedSheaf.BaseCaseLFunction

/-!
# Folder.Theorem.DerivedSheaf.BaseCaseLFunction

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports base-case L-function facts, not BinaryMatrix data.
Ontology: base.lfunction_data
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem base_lfunction_center_is_spectral_pivot
    (L : Folder.DerivedSheaf.BaseCaseLFunctionData) :
    L.normalizedCriticalCenter = Folder.Core.spectralPivot :=
  Folder.DerivedSheaf.base_lfunction_center_is_spectral_pivot L

theorem base_lfunction_central_value_nonzero
    (L : Folder.DerivedSheaf.BaseCaseLFunctionData) :
    L.centralValueNonzero :=
  Folder.DerivedSheaf.base_lfunction_central_value_nonzero L

end DerivedSheaf
end Theorem
end Folder
