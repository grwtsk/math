# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.Morphisms.BoundaryComparison.Variante2bf8816689ca12f.FiniteSingletonWitness

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20359525fa313cfd086da2359f5033c511274ead` · SHA-256 `3a51f28d85b8f8c49e774f641491d3623764922e9bb325d5110c85151d80ecae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Finite singleton codomain witness using the supplied comparison mechanism
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

import GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.Morphisms.BoundaryComparison.Variante2bf8816689ca12f.HomComparisonCancellation
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

def finiteBoundaryToUnit : (Fin 3 : Type) ⟶ Unit := TypeCat.ofHom (fun _ => ())

def finiteBoundaryToFinOne : (Fin 3 : Type) ⟶ Fin 1 := TypeCat.ofHom (fun _ => 0)

instance : Epi finiteBoundaryToUnit := by
  constructor
  intro Z q r h
  apply ConcreteCategory.hom_ext
  intro a
  cases a
  exact ConcreteCategory.congr_hom h 0

def finiteClosedFunctionComparison (Z : Type) : (Fin 1 → Z) ≃ (Unit → Z) where
  toFun q := fun _ => q 0
  invFun q := fun _ => q ()
  left_inv q := by
    funext a
    have ha : a = 0 := Subsingleton.elim _ _
    simp [ha]
  right_inv q := by funext a; cases a; rfl

def finiteClosedHomComparison (Z : Type) : (Fin 1 ⟶ Z) ≃ (Unit ⟶ Z) :=
  TypeCat.homEquiv.trans ((finiteClosedFunctionComparison Z).trans TypeCat.homEquiv.symm)

/-- A genuinely different finite boundary codomain, with explicit comparison
maps. The transported boundary is surjective by the proved Hom mechanism. -/
theorem finite_boundary_epi : Epi finiteBoundaryToFinOne := by
  exact boundary_epi_of_hom_comparisons finiteBoundaryToUnit finiteBoundaryToFinOne
    (fun Z => ⟨Z, finiteClosedHomComparison Z, Equiv.refl _, fun q => by
      apply ConcreteCategory.hom_ext
      intro a
      rfl⟩)

end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.Morphisms.BoundaryComparison.Variante2bf8816689ca12f
```
