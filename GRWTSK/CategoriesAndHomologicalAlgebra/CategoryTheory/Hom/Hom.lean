import Think.Logic.Core

namespace Think.Logic

structure HomEquivalence {C D : Category} (F : Functor C D) where
  reverse : {A B : C.Obj} → D.Hom (F.obj A) (F.obj B) → C.Hom A B
  forwardReverse :
    ∀ {A B : C.Obj} (g : D.Hom (F.obj A) (F.obj B)),
      F.map (reverse g) = g
  reverseForward :
    ∀ {A B : C.Obj} (f : C.Hom A B),
      reverse (F.map f) = f

theorem HomEquivalence.injective_on_hom
  {C D : Category} {F : Functor C D}
  (H : HomEquivalence F)
  {A B : C.Obj}
  (f g : C.Hom A B) :
  F.map f = F.map g → f = g :=
by
  intro h
  calc
    f = H.reverse (F.map f) := (H.reverseForward f).symm
    _ = H.reverse (F.map g) := by rw [h]
    _ = g := H.reverseForward g

theorem HomEquivalence.surjective_on_hom
  {C D : Category} {F : Functor C D}
  (H : HomEquivalence F)
  {A B : C.Obj}
  (g : D.Hom (F.obj A) (F.obj B)) :
  ∃ f : C.Hom A B, F.map f = g :=
by
  exact ⟨H.reverse g, H.forwardReverse g⟩

end Think.Logic
