# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variant9b36c82bf5664a6a3ab149bd3c8f9351cfe9dd16932c9ef36460fe758120fc4a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bb8344c163ebfac0719657e1202545faa379b1b` · SHA-256 `9b36c82bf5664a6a3ab149bd3c8f9351cfe9dd16932c9ef36460fe758120fc4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
