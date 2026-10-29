import Think.Knowledge.Category.Finite

namespace Think.Knowledge.Sheaf

/-! Presheaves and covers for knowledge gluing certificates. -/

abbrev FinCat := Think.Knowledge.Category.FinCat
abbrev Pullback := Think.Knowledge.Category.Pullback

structure Presheaf (C : FinCat) where
  Sec : C.Obj → Type
  res : {U V : C.Obj} → C.Hom U V → Sec V → Sec U
  res_id : ∀ {U} (s : Sec U), res (C.id U) s = s
  res_comp :
    ∀ {U V W} (f : C.Hom U V) (g : C.Hom V W) (s : Sec W),
      res (C.comp f g) s = res f (res g s)

structure Cover (C : FinCat) (V : C.Obj) where
  I : Type
  indices : List I
  U : I → C.Obj
  map : (i : I) → C.Hom (U i) V
  overlap : (i j : I) → Pullback C (map i) (map j)

end Think.Knowledge.Sheaf
