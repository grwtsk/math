import Folder.CrystallineIndex.WittComplex

/-!
# Folder.Theorem.CrystallineIndex.WittComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Witt-complex contract exposure facts.
Ontology: proof.crystalline_index.witt_complex
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace WittComplex

theorem witt_complex_is_complex
    (W : Folder.CrystallineIndex.WittComplex) :
    W.isComplex :=
  Folder.CrystallineIndex.witt_complex_is_complex W

theorem witt_element_has_degree
    {W : Folder.CrystallineIndex.WittComplex}
    (x : Folder.CrystallineIndex.WittElement W) :
    ∃ d : W.Degree, x.degree = d :=
  Folder.CrystallineIndex.witt_element_has_degree x

end WittComplex
end CrystallineIndex
end Theorem
end Folder
