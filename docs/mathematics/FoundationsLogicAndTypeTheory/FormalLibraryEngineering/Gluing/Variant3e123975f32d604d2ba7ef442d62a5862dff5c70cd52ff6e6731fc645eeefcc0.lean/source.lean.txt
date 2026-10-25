import Think.Knowledge.Sheaf.Presheaf

namespace Think.Knowledge.Sheaf

/-! Equalizer-style knowledge gluing theorem boundary. -/

def Matching
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i)) : Prop :=
  ∀ i j,
    F.res ((c.overlap i j).p₁) (s i) =
    F.res ((c.overlap i j).p₂) (s j)

def Glues
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i))
  (g : F.Sec V) : Prop :=
  ∀ i, F.res (c.map i) g = s i

structure GluingCertificate
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i)) where
  glued : F.Sec V
  matching : Matching F c s
  restricts : Glues F c s glued
  unique : ∀ h : F.Sec V, Glues F c s h → h = glued

def ExistsUniqueGluing
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i)) : Prop :=
  ∃ g : F.Sec V,
    Glues F c s g ∧ ∀ h : F.Sec V, Glues F c s h → h = g

theorem gluing_sound
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i))
  (cert : GluingCertificate F c s) :
  ExistsUniqueGluing F c s :=
by
  exact ⟨cert.glued, cert.restricts, cert.unique⟩

end Think.Knowledge.Sheaf
