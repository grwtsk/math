import Folder.CrystallineIndex.CohomologyClass
import Folder.CrystallineIndex.DeRhamWittBoundary

/-!
# Folder.Theorem.CrystallineIndex.CohomologyClass

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports cohomology-class and de Rham-Witt boundary facts.
Ontology: proof.crystalline_index.cohomology_class
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace CohomologyClass

theorem class_equality_compatible
    {H : Folder.CrystallineIndex.CohomologyTheory}
    {a b : Folder.CrystallineIndex.CohomologyClass H}
    (E : Folder.CrystallineIndex.ClassEquality a b) :
    E.compatible :=
  Folder.CrystallineIndex.class_equality_compatible E

theorem deRhamWitt_is_complex
    (W : Folder.CrystallineIndex.DeRhamWittComplexContract) :
    W.witt.isComplex :=
  Folder.CrystallineIndex.deRhamWitt_is_complex W

theorem deRhamWitt_identifies_with_crystalline_target
    (W : Folder.CrystallineIndex.DeRhamWittComplexContract) :
    W.identifiesWithCrystallineTarget :=
  Folder.CrystallineIndex.deRhamWitt_identifies_with_crystalline_target W

end CohomologyClass
end CrystallineIndex
end Theorem
end Folder
