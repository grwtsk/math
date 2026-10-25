# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Gluing.Variant71ec0bf494f161dd5e742bbef83ab8f9e83105152f91f4cea64a9a90e04d6c07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e29aa4eef729608cb6fe1b0ee64bda49a19a9a71` · SHA-256 `71ec0bf494f161dd5e742bbef83ab8f9e83105152f91f4cea64a9a90e04d6c07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Epistemology.Induction.Core

namespace Think.Epistemology.Induction

/-! Scaling of certified Knowledge sheaf gluing. -/

def ScaledGluing
    {C : Think.Knowledge.Sheaf.FinCat} {V : C.Obj}
    (F : Think.Knowledge.Sheaf.Presheaf C)
    (c : Think.Knowledge.Sheaf.Cover C V)
    (s : (i : c.I) → F.Sec (c.U i))
    (n : Nat) : Prop :=
  StableAtScale (Think.Knowledge.Sheaf.ExistsUniqueGluing F c s) n

theorem gluing_scales
    {C : Think.Knowledge.Sheaf.FinCat} {V : C.Obj}
    (F : Think.Knowledge.Sheaf.Presheaf C)
    (c : Think.Knowledge.Sheaf.Cover C V)
    (s : (i : c.I) → F.Sec (c.U i))
    (cert : Think.Knowledge.Sheaf.GluingCertificate F c s) :
    ∀ n : Nat, ScaledGluing F c s n :=
by
  exact atScale_of_base (Think.Knowledge.Sheaf.gluing_sound F c s cert)

end Think.Epistemology.Induction
```
