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
