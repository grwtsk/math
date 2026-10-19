import Folder.CrystallineTensor.Crystal

/-!
# Folder.CrystallineTensor.IntegrableConnection

Radiation role: research-boundary
BinaryMatrix spine: This module records horizontal-section interface data, not BinaryMatrix dynamics.
Ontology: crystalline.integrable_connection
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

/--
Connection interface for a crystal.

Flatness and integrability are certificates supplied by the contract; no
Hodge-theoretic degeneration theorem is proved here.
-/
structure Connection
    {C : CrystallineSite}
    (F : Crystal C) where
  Nabla : ∀ X : C.Site.Obj, F.Section X → Type _
  horizontal : ∀ X : C.Site.Obj, F.Section X → Prop
  flat : Prop
  flat_certified : flat
  integrable : Prop
  integrable_certified : integrable

theorem connection_flat
    {C : CrystallineSite}
    {F : Crystal C}
    (nabla : Connection F) :
    nabla.flat :=
  nabla.flat_certified

theorem connection_integrable
    {C : CrystallineSite}
    {F : Crystal C}
    (nabla : Connection F) :
    nabla.integrable :=
  nabla.integrable_certified

structure HorizontalSection
    {C : CrystallineSite}
    {F : Crystal C}
    (nabla : Connection F)
    (X : C.Site.Obj) where
  value : F.Section X
  horizontal : nabla.horizontal X value

theorem horizontal_section_is_horizontal
    {C : CrystallineSite}
    {F : Crystal C}
    {nabla : Connection F}
    {X : C.Site.Obj}
    (s : HorizontalSection nabla X) :
    nabla.horizontal X s.value :=
  s.horizontal

end CrystallineTensor
end Folder
