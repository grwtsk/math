/-
Functor data between independently universe-polymorphic category carriers
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 50811f1519859628a2771ebecfef39738a8369d20c50eeb2121bfd46195cb9e3
Organized SHA-256: 56b12e0483717ca7d2f27e6234d5b0889f756b556b1ccc60aa0dd23933c39ce3
PMD: 510.9.010.020 functors (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.MinimalCategoryCore.Variant50811f1519859628.CategoryData
/-
A minimal category/functor layer implemented with Lean core only.

The project intentionally avoids a Mathlib dependency.  These structures are
sufficient to type the realization categories and to state comparison
equivalences as full, faithful, and essentially surjective functors.
-/

universe uObj uHom vObj vHom

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.MinimalCategoryCore.Variant50811f1519859628
/-- A covariant functor between `CategoryLike` structures. -/
structure FunctorLike
    (C : CategoryLike.{uObj, uHom})
    (D : CategoryLike.{vObj, vHom}) where
  obj : C.Obj → D.Obj
  map : {X Y : C.Obj} → C.Hom X Y → D.Hom (obj X) (obj Y)
  map_id :
    ∀ X : C.Obj,
      map (C.id X) = D.id (obj X)
  map_comp :
    ∀ {X Y Z : C.Obj}
      (f : C.Hom X Y) (g : C.Hom Y Z),
      map (C.comp f g) = D.comp (map f) (map g)

end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.MinimalCategoryCore.Variant50811f1519859628
