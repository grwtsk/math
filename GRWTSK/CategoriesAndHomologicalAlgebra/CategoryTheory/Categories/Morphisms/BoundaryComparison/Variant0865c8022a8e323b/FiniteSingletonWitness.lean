/-
Finite singleton codomain witness using the supplied comparison mechanism
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 0865c8022a8e323b146bd0dbeaeea69ab07ce0a23d0c115238876c7e0edc48d5
Organized SHA-256: c604b9096e8e9b66d2cf5aa0056de8f682077b776aa69b7d6b1176300238942d
PMD: 510.9.010.010.020 morphisms (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import Mathlib.CategoryTheory.Equivalence
import Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms
import Mathlib.CategoryTheory.Types.Basic

import GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.Morphisms.BoundaryComparison.Variant0865c8022a8e323b.HomComparisonCancellation
/-!
Boundary epimorphism reconstruction and degree relevance from OpenAI family 069,
Sections 9 and 6, pinned at adc7f1241b42e322a6451854ab7e4b4c146bf78a.
grwtsk contributors: theorem selection, conceptual direction and evaluation.
Codex: formalization and replay. Genuine geometric providers remain separate.
-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.Morphisms.BoundaryComparison.Variant0865c8022a8e323b

open CategoryTheory

universe u v w x

variable {C : Type u} {D : Type v} [Category.{w} C] [Category.{x} D]

def finiteBoundaryToUnit : (Fin 3 : Type) ⟶ Unit := fun _ => ()

def finiteBoundaryToFinOne : (Fin 3 : Type) ⟶ Fin 1 := fun _ => 0

instance : Epi finiteBoundaryToUnit := by
  constructor
  intro Z q r h
  funext a
  cases a
  exact congrFun h 0

def finiteClosedHomComparison (Z : Type) : (Fin 1 → Z) ≃ (Unit → Z) where
  toFun q := fun _ => q 0
  invFun q := fun _ => q ()
  left_inv q := by
    funext a
    have ha : a = 0 := Subsingleton.elim _ _
    simp [ha]
  right_inv q := by funext a; cases a; rfl

/-- A genuinely different finite boundary codomain, with explicit comparison
maps. The transported boundary is surjective by the proved Hom mechanism. -/
theorem finite_boundary_epi : Epi finiteBoundaryToFinOne := by
  exact boundary_epi_of_hom_comparisons finiteBoundaryToUnit finiteBoundaryToFinOne
    (fun Z => ⟨Z, finiteClosedHomComparison Z, Equiv.refl _, fun _ => rfl⟩)

end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.Morphisms.BoundaryComparison.Variant0865c8022a8e323b
