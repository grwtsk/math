# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittRealization.Variant27d2a5b50223fd47eb5c0d1edbb6a55da938fc4bd745a0353f489476ef75ecf6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `155b8bdf6317490d5e1fb8122453e0a741ee9c60` · SHA-256 `27d2a5b50223fd47eb5c0d1edbb6a55da938fc4bd745a0353f489476ef75ecf6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
