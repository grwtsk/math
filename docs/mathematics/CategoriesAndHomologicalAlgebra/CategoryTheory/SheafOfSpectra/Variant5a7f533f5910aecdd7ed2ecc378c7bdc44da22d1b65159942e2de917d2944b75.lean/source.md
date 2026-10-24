# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafOfSpectra.Variant5a7f533f5910aecdd7ed2ecc378c7bdc44da22d1b65159942e2de917d2944b75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1876205bf987f7ed66c489c2a104237b7b55593a` · SHA-256 `5a7f533f5910aecdd7ed2ecc378c7bdc44da22d1b65159942e2de917d2944b75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.ResearchTopos.GrothendieckTopology
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.AdelicInfinityTopos.SheafOfSpectra

Radiation role: research-boundary
BinaryMatrix spine: This module records sheaves of spectra as contract data over a site.
Ontology: adelic.sheaf_of_spectra
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

open ResearchTopos

structure PresheafOfSpectra
    (C : SiteCategory) where
  obj : C.Obj → SpectrumObject
  restrict :
    ∀ {X Y : C.Obj}, C.Hom Y X →
      SpectrumMorphism (obj X) (obj Y)

structure SheafOfSpectra
    {C : SiteCategory}
    (J : GrothendieckTopology C) where
  presheaf : PresheafOfSpectra C
  descent : Prop
  descent_certified : descent
  hyperdescent : Prop
  hyperdescent_certified : hyperdescent
  homotopyCoherent : Prop

theorem sheaf_of_spectra_has_descent
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    (F : SheafOfSpectra J) :
    F.descent :=
  F.descent_certified

theorem sheaf_of_spectra_has_hyperdescent
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    (F : SheafOfSpectra J) :
    F.hyperdescent :=
  F.hyperdescent_certified

end AdelicInfinityTopos
end Folder
```
