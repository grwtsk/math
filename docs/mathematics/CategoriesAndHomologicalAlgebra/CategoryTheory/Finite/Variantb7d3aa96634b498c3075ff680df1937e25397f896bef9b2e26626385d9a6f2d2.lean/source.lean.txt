namespace Think.Knowledge.Category

/-! Finite category and pullback skeleton for knowledge sheaf certificates. -/

structure FinCat where
  Obj : Type
  Hom : Obj → Obj → Type
  id : (U : Obj) → Hom U U
  comp : {U V W : Obj} → Hom U V → Hom V W → Hom U W

structure Pullback
  (C : FinCat) {V U W : C.Obj}
  (f : C.Hom U V) (g : C.Hom W V) where
  apex : C.Obj
  p₁ : C.Hom apex U
  p₂ : C.Hom apex W

end Think.Knowledge.Category
