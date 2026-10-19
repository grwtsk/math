/-
Universal Hom-comparison epimorphism cancellation and its identity specialization
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 8514187adb25b4f0086c1c8cda69e8b134828165e7aedeacb4bdc43f5253a5c7
Organized SHA-256: 9f25fccf6a3252e255367430784d8c4ad9cf8af6cbf23696adcf5878445ab293
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

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.Morphisms.BoundaryComparison.Variant8514187adb25b4f0

open CategoryTheory CategoryTheory.Limits

universe u v w x

variable {C : Type u} {D : Type v} [Category.{w} C] [Category.{x} D]

/-- Recover an epimorphism from Hom comparisons preserving the actual boundary.
This proves cancellation, while requiring genuine comparison providers. -/
theorem boundary_epi_of_hom_comparisons
    {X Y : C} {X' Y' : D} (f : X ⟶ Y) [Epi f] (g : X' ⟶ Y')
    (compare : ∀ Z' : D, ∃ Z : C,
      ∃ eY : (Y' ⟶ Z') ≃ (Y ⟶ Z), ∃ eX : (X' ⟶ Z') ≃ (X ⟶ Z),
      ∀ q : Y' ⟶ Z', eX (g ≫ q) = f ≫ eY q) : Epi g := by
  constructor
  intro Z' q r h
  obtain ⟨Z, eY, eX, hcomp⟩ := compare Z'
  apply eY.injective
  apply (cancel_epi f).mp
  rw [← hcomp q, ← hcomp r, h]

/-- The same boundary mechanism has an actual consumer: identity Hom comparisons
on any category preserve every epimorphism, without assuming a whole equivalence. -/
theorem boundary_identity_consumer {X Y : C} (f : X ⟶ Y) [Epi f] : Epi f :=
  boundary_epi_of_hom_comparisons f f (fun Z =>
    ⟨Z, Equiv.refl _, Equiv.refl _, fun _ => rfl⟩)

end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.Morphisms.BoundaryComparison.Variant8514187adb25b4f0
