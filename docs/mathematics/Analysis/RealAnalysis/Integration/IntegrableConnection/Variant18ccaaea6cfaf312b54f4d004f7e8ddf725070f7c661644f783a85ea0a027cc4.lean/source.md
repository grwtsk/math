# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.IntegrableConnection.Variant18ccaaea6cfaf312b54f4d004f7e8ddf725070f7c661644f783a85ea0a027cc4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b2b6bf80bd75cd55538c687993f294d5570d4d7` · SHA-256 `18ccaaea6cfaf312b54f4d004f7e8ddf725070f7c661644f783a85ea0a027cc4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
