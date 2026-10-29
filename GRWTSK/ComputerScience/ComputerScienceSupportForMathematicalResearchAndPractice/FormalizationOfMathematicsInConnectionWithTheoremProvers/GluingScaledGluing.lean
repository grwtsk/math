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
