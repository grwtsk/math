# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Crystal.Variantb8dd203a313ee4a102f6a8bcc8e7e101e53aed4247e5c657099d4a777f3e121c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9499ae4bd904b11e29b94cf6c02b64581a57a28a` · SHA-256 `b8dd203a313ee4a102f6a8bcc8e7e101e53aed4247e5c657099d4a777f3e121c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.CrystallineSite
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.CrystallineTensor.Crystal

Radiation role: research-boundary
BinaryMatrix spine: This module records crystal-style section compatibility, not a BinaryMatrix carrier.
Ontology: crystalline.crystal
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

/--
Contract-level crystal data over an abstract crystalline-site boundary.

The compatibility and rigidity facts are supplied as certificates; this module
does not formalize crystalline cohomology.
-/
structure Crystal
    (C : CrystallineSite) where
  Section : C.Site.Obj → Type _
  restriction :
    ∀ {X Y : C.Site.Obj},
      C.Site.Hom Y X → Section X → Section Y
  crystalCompatibility : Prop
  crystalCompatibility_certified : crystalCompatibility
  infinitesimalRigidity : Prop
  infinitesimalRigidity_certified : infinitesimalRigidity
  label : String

theorem crystal_has_compatibility
    {C : CrystallineSite}
    (F : Crystal C) :
    F.crystalCompatibility :=
  F.crystalCompatibility_certified

theorem crystal_has_infinitesimal_rigidity
    {C : CrystallineSite}
    (F : Crystal C) :
    F.infinitesimalRigidity :=
  F.infinitesimalRigidity_certified

end CrystallineTensor
end Folder
```
