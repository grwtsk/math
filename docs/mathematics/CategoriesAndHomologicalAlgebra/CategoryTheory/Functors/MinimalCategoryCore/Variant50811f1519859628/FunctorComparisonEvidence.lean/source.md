# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.MinimalCategoryCore.Variant50811f1519859628.FunctorComparisonEvidence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e993c23e8db262a9ed40821f0f8ac6d7450a1a75` · SHA-256 `3b866ff363b6b73f2c58a94fd1b7f46aead9011351b3d3a87d9aac10bb4e13e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Fullness, faithfulness and essential-surjectivity predicates bundled only as supplied evidence
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

import GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.MinimalCategoryCore.Variant50811f1519859628.FunctorData
import GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.Morphisms.MinimalCategoryCore.Variant50811f1519859628.IsomorphismData
/-
A minimal category/functor layer implemented with Lean core only.

The project intentionally avoids a Mathlib dependency.  These structures are
sufficient to type the realization categories and to state comparison
equivalences as full, faithful, and essentially surjective functors.
-/

universe uObj uHom vObj vHom

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.MinimalCategoryCore.Variant50811f1519859628
/-- Surjectivity of a functor on every hom-set. -/
def Full
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D) : Prop :=
  ∀ {X Y : C.Obj} (g : D.Hom (F.obj X) (F.obj Y)),
    ∃ f : C.Hom X Y, F.map f = g

/-- Injectivity of a functor on every hom-set. -/
def Faithful
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D) : Prop :=
  ∀ {X Y : C.Obj} (f g : C.Hom X Y),
    F.map f = F.map g → f = g

/-- Every target object is isomorphic to an object in the image. -/
def EssentiallySurjective
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D) : Prop :=
  ∀ Y : D.Obj,
    ∃ X : C.Obj, Nonempty (IsoLike D (F.obj X) Y)

/--
The exact comparison evidence used by this project.

This avoids identifying equivalent realization objects: the functor remains a
typed map between distinct categories, with explicit categorical properties.
-/
structure EquivalenceWitness
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D) : Prop where
  full : Full F
  faithful : Faithful F
  essentiallySurjective : EssentiallySurjective F

end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.MinimalCategoryCore.Variant50811f1519859628
```
