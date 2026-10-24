# Complete source: GRWTSK.Algebra.GroupTheory.HeatCompatibleEndomorphism.Variantc962962f4004a75c262edb8fe10210a6f0383c68d23473b699989c6de0df6aa7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4216ba6bb8e1c0e0eb19d4fc6cf1fac26b883951` · SHA-256 `c962962f4004a75c262edb8fe10210a6f0383c68d23473b699989c6de0df6aa7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.HeatCompatibleEndomorphism

/-!
# Folder.Theorem.CrystallineTensor.HeatCompatibleEndomorphism

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports heat-action and heat-compatible-endomorphism contract facts.
Ontology: proof.crystalline.heat_compatible_endomorphism
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace HeatCompatibleEndomorphism

theorem heat_flow_identity_at_zero
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    (H : Folder.CrystallineTensor.HeatFlowAction F) :
    H.identityAtZero :=
  Folder.CrystallineTensor.heat_flow_identity_at_zero H

theorem heat_flow_semigroup
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    (H : Folder.CrystallineTensor.HeatFlowAction F) :
    H.semigroupLaw :=
  Folder.CrystallineTensor.heat_flow_semigroup H

theorem heat_compatible_commutes
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    (E : Folder.CrystallineTensor.HeatCompatibleEndomorphism H e) :
    E.commutesWithHeat :=
  Folder.CrystallineTensor.heat_compatible_commutes E

theorem heat_compatible_preserves_horizontal
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    (E : Folder.CrystallineTensor.HeatCompatibleEndomorphism H e)
    (nabla : Folder.CrystallineTensor.Connection F)
    (X : C.Site.Obj)
    (s : F.Section X)
    (h : nabla.horizontal X s) :
    nabla.horizontal X (e.map X s) :=
  Folder.CrystallineTensor.heat_compatible_preserves_horizontal E nabla X s h

end HeatCompatibleEndomorphism
end CrystallineTensor
end Theorem
end Folder
```
