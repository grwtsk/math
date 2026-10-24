# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.MinimalCategoryCore.Variant50811f1519859628.CategoryData

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cacd72d4cfd9bf2aa312563ec0010c0395709673` · SHA-256 `ff9005e9380402080037771282c495c09eaa66c8add8ba6e6718231cdfb66d9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Universe-polymorphic category data and its exact identity/composition laws
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 50811f1519859628a2771ebecfef39738a8369d20c50eeb2121bfd46195cb9e3
Organized SHA-256: 56b12e0483717ca7d2f27e6234d5b0889f756b556b1ccc60aa0dd23933c39ce3
PMD: 510.9.010.010 categories (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
A minimal category/functor layer implemented with Lean core only.

The project intentionally avoids a Mathlib dependency.  These structures are
sufficient to type the realization categories and to state comparison
equivalences as full, faithful, and essentially surjective functors.
-/

universe uObj uHom vObj vHom

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.MinimalCategoryCore.Variant50811f1519859628
/-- A small category-like structure with explicit identity and composition laws. -/
structure CategoryLike where
  Obj : Type uObj
  Hom : Obj → Obj → Type uHom
  id : (X : Obj) → Hom X X
  comp : {X Y Z : Obj} → Hom X Y → Hom Y Z → Hom X Z
  id_comp :
    ∀ {X Y : Obj} (f : Hom X Y),
      comp (id X) f = f
  comp_id :
    ∀ {X Y : Obj} (f : Hom X Y),
      comp f (id Y) = f
  assoc :
    ∀ {W X Y Z : Obj}
      (f : Hom W X) (g : Hom X Y) (h : Hom Y Z),
      comp (comp f g) h = comp f (comp g h)

end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.MinimalCategoryCore.Variant50811f1519859628
```
