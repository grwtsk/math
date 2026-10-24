# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Finite.Variantb7d3aa96634b498c3075ff680df1937e25397f896bef9b2e26626385d9a6f2d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bf60cc409900f3dc1f1ed9b5e9bcc57dd7aa958` · SHA-256 `b7d3aa96634b498c3075ff680df1937e25397f896bef9b2e26626385d9a6f2d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
