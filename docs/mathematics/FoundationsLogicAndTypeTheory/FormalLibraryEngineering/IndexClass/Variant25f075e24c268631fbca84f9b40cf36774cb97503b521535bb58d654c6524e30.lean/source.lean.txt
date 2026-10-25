import Folder.CrystallineIndex.IndexClass

/-!
# Folder.Theorem.CrystallineIndex.IndexClass

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports index-class contract exposure facts.
Ontology: proof.crystalline_index.index_class
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace IndexClass

theorem index_class_represents_formal_index
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (I : Folder.CrystallineIndex.CrystallineIndexClass D H) :
    I.representsFormalIndex :=
  Folder.CrystallineIndex.index_class_represents_formal_index I

theorem crystalline_index_class_in_witt_is_index
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    {F : Folder.AdelicInfinityTopos.SheafOfSpectra J}
    {D : Folder.CrystallineIndex.SheafSpectrumOperator F}
    {W : Folder.CrystallineIndex.WittComplex}
    (I : Folder.CrystallineIndex.CrystallineIndexClassInWitt D W) :
    I.isCrystallineIndex :=
  Folder.CrystallineIndex.crystalline_index_class_in_witt_is_index I

end IndexClass
end CrystallineIndex
end Theorem
end Folder
