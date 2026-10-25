# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN09AmpleIndependence.Variante90abd6990d2e3a12ce70557d719e09d8eb69897aaddb22d7487e3a51d908eb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3bc6f361e75470b8df465523a380ca72e5889e2` · SHA-256 `e90abd6990d2e3a12ce70557d719e09d8eb69897aaddb22d7487e3a51d908eb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
