import Folder.CrystallineIndex.WittValuedIndex
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.DerivedSheaf.WittRealization

Radiation role: research-boundary
BinaryMatrix spine: This module makes Witt elements downstream of K-theory, not BinaryMatrix data.
Ontology: derived.witt_realization
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure WittRealization
    (M : MellKTheory)
    (W : CrystallineIndex.WittComplex) where
  realize :
    KTheoryClass M.K → CrystallineIndex.WittElement W
  compatibleWithChernCharacter : Prop
  compatibleWithChernCharacter_certified : compatibleWithChernCharacter
  sourceLabel : String

structure KTheoryIndexWittImage
    {M : MellKTheory}
    {W : CrystallineIndex.WittComplex}
    (R : WittRealization M W)
    (I : KTheoryIndex M) where
  image : CrystallineIndex.WittElement W
  image_eq : image = R.realize I.indexClass

theorem witt_realization_compatible
    {M : MellKTheory}
    {W : CrystallineIndex.WittComplex}
    (R : WittRealization M W) :
    R.compatibleWithChernCharacter :=
  R.compatibleWithChernCharacter_certified

theorem ktheory_index_witt_image_eq
    {M : MellKTheory}
    {W : CrystallineIndex.WittComplex}
    {R : WittRealization M W}
    {I : KTheoryIndex M}
    (X : KTheoryIndexWittImage R I) :
    X.image = R.realize I.indexClass :=
  X.image_eq

end DerivedSheaf
end Folder
