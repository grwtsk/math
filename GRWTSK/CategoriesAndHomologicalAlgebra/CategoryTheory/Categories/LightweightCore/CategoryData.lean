/-
Small category data with supplied identity and associativity laws
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 23db0bf34a1f68f8a2116f26f4edae6f4ee580445b3f772167fd693898275840
Organized SHA-256: 9f68bb1286a3ee4ab992bc37d0088476317b77f95938123fc808de85512b54b4
PMD: 510.9.010.010 categories (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.LightweightCore.Variant23db0bf34a1f68f8

/-! Core lightweight category and bijection predicates for Think logic receipts. -/

structure Category where
  Obj : Type
  Hom : Obj → Obj → Type
  id : (A : Obj) → Hom A A
  comp : {A B C : Obj} → Hom A B → Hom B C → Hom A C
  id_left : ∀ {A B : Obj} (f : Hom A B), comp (id A) f = f
  id_right : ∀ {A B : Obj} (f : Hom A B), comp f (id B) = f
  assoc :
    ∀ {A B C D : Obj}
      (f : Hom A B) (g : Hom B C) (h : Hom C D),
      comp (comp f g) h = comp f (comp g h)

end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.LightweightCore.Variant23db0bf34a1f68f8
