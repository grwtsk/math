import FCRS.Algebraization.Foundations

universe uObj uHom

namespace FCRS.Algebraization.Theorems

/--
Any two designated ample-generator families define the same effective target
when each is independently characterized by the same essential image.
-/
theorem hen09_ampleIndependence
    {C D : CategoryLike.{uObj, uHom}}
    (F : FunctorLike C D)
    (epiD : EpiClass D)
    (B₁ B₂ : GeneratorBridge F)
    (h₁ :
      ∀ Y : D.Obj,
        AlgebraicallyGenerated B₁ epiD Y ↔
        EssentialImage F Y)
    (h₂ :
      ∀ Y : D.Obj,
        AlgebraicallyGenerated B₂ epiD Y ↔
        EssentialImage F Y) :
    ∀ Y : D.Obj,
      AlgebraicallyGenerated B₁ epiD Y ↔
      AlgebraicallyGenerated B₂ epiD Y := by
  intro Y
  exact (h₁ Y).trans (h₂ Y).symm

end FCRS.Algebraization.Theorems
