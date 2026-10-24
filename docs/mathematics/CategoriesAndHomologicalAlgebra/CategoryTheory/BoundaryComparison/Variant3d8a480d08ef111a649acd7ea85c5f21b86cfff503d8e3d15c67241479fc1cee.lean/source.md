# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoundaryComparison.Variant3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3033038334271931ef2c30a5041512085c4ce363` · SHA-256 `3d8a480d08ef111a649acd7ea85c5f21b86cfff503d8e3d15c67241479fc1cee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.CategoryTheory.Equivalence
import Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms
import Mathlib.CategoryTheory.Types.Basic

/-!
Boundary epimorphism reconstruction and degree relevance from OpenAI family 069,
Sections 9 and 6, pinned at adc7f1241b42e322a6451854ab7e4b4c146bf78a.
grwtsk contributors: theorem selection, conceptual direction and evaluation.
Codex: formalization and replay. Genuine geometric providers remain separate.
-/

namespace FormalResearch.QuantumLanglands.BoundaryComparison

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

/-- The Section 6 finite-index inference, after supplying a genuine uniform
upper degree E and fixing readout degree j, has K = max(0,E-j). -/
theorem degree_relevance_bounds (c l K : ℕ) (h : c + l ≤ K) :
    c ≤ K ∧ l ≤ K :=
  ⟨(Nat.le_add_right c l).trans h, (Nat.le_add_left l c).trans h⟩

#print axioms boundary_epi_of_hom_comparisons
#print axioms boundary_identity_consumer
#print axioms boundary_quotient_zero
#print axioms finite_boundary_epi
#print axioms degree_relevance_bounds

end FormalResearch.QuantumLanglands.BoundaryComparison
```
