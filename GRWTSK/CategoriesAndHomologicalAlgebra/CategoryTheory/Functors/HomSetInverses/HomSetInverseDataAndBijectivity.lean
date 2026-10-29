/-
Individually read source: hom-set inverse data and its injectivity/surjectivity consequences.
Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic recombination,
and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are user-specified provisional contribution roles, not independently established model
mechanisms or final per-declaration authorship. Existing notices remain exact in the archives.
Original source SHA256: 45d92d9ee7be6729d20a99b64a23072736f243bab579391058efb3e3e202a698
Review: attribution-254-review-000075.
PMD: 510.9.010.020 functors; secondary full functors and faithful functors.
A supplied inverse on each hom-set yields the two bijectivity consequences.
This does not construct an object inverse or an equivalence of categories.
The original custom Think.Logic.Core dependency remains explicit and unreplayed.
No Mathlib Category, Functor, Full or Faithful instance is substituted or introduced.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

import Think.Logic.Core

open Think.Logic

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.HomSetInverses.Variant45d92d9ee7be6729

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

end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.HomSetInverses.Variant45d92d9ee7be6729
