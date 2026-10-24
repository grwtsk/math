# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoundaryComparison.Variant187ecea7f443e13ea00d8b8db8f8b211d82d29a826071ff4aa76c4051e0dced4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c03fc314af4acfc1aad4f4f5baf266645b31f43` · SHA-256 `8c0c56a38c1c68f1e9c9742d6308015b6496aaf7c372297fe32e5411ce54742c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoundaryEpiOfHomComparisons.Variant8514187adb25b4f0086c1c8cda69e8b134828165e7aedeacb4bdc43f5253a5c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8514187adb25b4f0086c1c8cda69e8b134828165e7aedeacb4bdc43f5253a5c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.BoundaryEpiOfHomComparisons.Variant8514187adb25b4f0086c1c8cda69e8b134828165e7aedeacb4bdc43f5253a5c7","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8514187adb25b4f0086c1c8cda69e8b134828165e7aedeacb4bdc43f5253a5c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/QuantumLanglands/BoundaryComparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.CategoryTheory.Equivalence
import Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms
import Mathlib.CategoryTheory.Types.Basic

/-!
Boundary epimorphism reconstruction and degree relevance from OpenAI family 069,
Sections 9 and 6, pinned at adc7f1241b42e322a6451854ab7e4b4c146bf78a.
grwtsk contributors: theorem selection, conceptual direction and evaluation.
Codex: formalization and replay. Genuine geometric providers remain separate.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoundaryEpiOfHomComparisons.Variant8514187adb25b4f0086c1c8cda69e8b134828165e7aedeacb4bdc43f5253a5c7

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

/-- The constant boundary from `Fin 3` to `Unit` in the category of types. -/
def finiteBoundaryToUnit : (Fin 3 : Type) ⟶ Unit := TypeCat.ofHom (fun _ => ())

/-- The constant boundary from `Fin 3` to the one-element type `Fin 1`. -/
def finiteBoundaryToFinOne : (Fin 3 : Type) ⟶ Fin 1 := TypeCat.ofHom (fun _ => 0)

instance : Epi finiteBoundaryToUnit := by
  constructor
  intro Z q r h
  apply ConcreteCategory.hom_ext
  intro a
  cases a
  exact ConcreteCategory.congr_hom h 0

/-- Identify functions from `Fin 1` and `Unit` by evaluating at their unique elements. -/
def finiteClosedFunctionComparison (Z : Type) : (Fin 1 → Z) ≃ (Unit → Z) where
  toFun q := fun _ => q 0
  invFun q := fun _ => q ()
  left_inv q := by
    funext a
    have ha : a = 0 := Subsingleton.elim _ _
    simp [ha]
  right_inv q := by funext a; cases a; rfl

/-- Lift the function comparison on singleton types to morphisms in the category of types. -/
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
