import Folder.DerivedSheaf.WittRealization
import Folder.CrystallineIndex.WittValuedIndex

/-!
# Folder.DerivedSheaf.CrystallineIndexBridge

Radiation role: research-boundary
BinaryMatrix spine: This module bridges K-theory indices to crystalline/Witt realizations, not BinaryMatrix data.
Ontology: derived.k_index_to_crystalline_index
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure KIndexToCrystallineIndexBridge
    {M : MellKTheory}
    {W : CrystallineIndex.WittComplex}
    (R : WittRealization M W)
    (I : KTheoryIndex M) where
  wittImage : KTheoryIndexWittImage R I
  crystallineIndexSourceLabel : String
  compatibleWithCrystallineIndexBoundary : Prop
  compatibleWithCrystallineIndexBoundary_certified : compatibleWithCrystallineIndexBoundary

theorem k_index_to_crystalline_index_compatible
    {M : MellKTheory}
    {W : CrystallineIndex.WittComplex}
    {R : WittRealization M W}
    {I : KTheoryIndex M}
    (B : KIndexToCrystallineIndexBridge R I) :
    B.compatibleWithCrystallineIndexBoundary :=
  B.compatibleWithCrystallineIndexBoundary_certified

end DerivedSheaf
end Folder
