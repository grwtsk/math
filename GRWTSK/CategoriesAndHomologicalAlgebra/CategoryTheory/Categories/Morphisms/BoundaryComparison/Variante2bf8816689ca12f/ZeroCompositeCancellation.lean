/-
Zero-preserving Hom comparisons cancel an actual zero composite
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e2bf8816689ca12f10d4e9b0fd130c5626ebe0aca8f37702a3c3a7980e74d6cd
Organized SHA-256: 34e5ed448ad31c43e1645195647b5b2046b2d8254292bb28fd487c3e06577423
PMD: 510.9.010.010.020 morphisms (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import Mathlib.CategoryTheory.Equivalence
import Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms
import Mathlib.CategoryTheory.Types.Basic

/-!
Boundary epimorphism reconstruction and degree relevance from OpenAI family 069,
Sections 9 and 6, pinned at adc7f1241b42e322a6451854ab7e4b4c146bf78a.
grwtsk contributors: theorem selection, conceptual direction and evaluation.
Codex: formalization and replay. Genuine geometric providers remain separate.
-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.Morphisms.BoundaryComparison.Variante2bf8816689ca12f

open CategoryTheory CategoryTheory.Limits

universe u v w x

variable {C : Type u} {D : Type v} [Category.{w} C] [Category.{x} D]

/-- The actual Section 9 cancellation only needs comparisons for the closed
cokernel target. An additive Hom comparison preserving zero and the boundary
composite forces the cokernel quotient map to vanish. -/
theorem boundary_quotient_zero [HasZeroMorphisms C] [HasZeroMorphisms D]
    {X Y Z : C} {X' Y' Z' : D} (f : X ⟶ Y) [Epi f] (g : X' ⟶ Y')
    (q : Y' ⟶ Z') (eY : (Y' ⟶ Z') ≃ (Y ⟶ Z))
    (eX : (X' ⟶ Z') ≃ (X ⟶ Z))
    (hY0 : eY 0 = 0) (hX0 : eX 0 = 0)
    (hcomp : eX (g ≫ q) = f ≫ eY q) (hq : g ≫ q = 0) : q = 0 := by
  apply eY.injective
  rw [hY0]
  apply (cancel_epi f).mp
  rw [comp_zero, ← hcomp, hq, hX0]

end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.Morphisms.BoundaryComparison.Variante2bf8816689ca12f
