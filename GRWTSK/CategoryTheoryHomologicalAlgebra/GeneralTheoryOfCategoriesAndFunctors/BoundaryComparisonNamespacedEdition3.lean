-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoundaryEpiOfHomComparisons.Variant0865c8022a8e323b146bd0dbeaeea69ab07ce0a23d0c115238876c7e0edc48d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0865c8022a8e323b146bd0dbeaeea69ab07ce0a23d0c115238876c7e0edc48d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.BoundaryEpiOfHomComparisons.Variant0865c8022a8e323b146bd0dbeaeea69ab07ce0a23d0c115238876c7e0edc48d5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0865c8022a8e323b146bd0dbeaeea69ab07ce0a23d0c115238876c7e0edc48d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/primary-delta-index-retrieved-b246bcb45ff5/primary-deltas/source/08/0865c8022a8e323b146bd0dbeaeea69ab07ce0a23d0c115238876c7e0edc48d5/BoundaryComparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.CategoryTheory.Equivalence
import Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms
import Mathlib.CategoryTheory.Types.Basic

/-!
Boundary epimorphism reconstruction and degree relevance from OpenAI family 069,
Sections 9 and 6, pinned at adc7f1241b42e322a6451854ab7e4b4c146bf78a.
grwtsk contributors: theorem selection, conceptual direction and evaluation.
Codex: formalization and replay. Genuine geometric providers remain separate.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoundaryEpiOfHomComparisons.Variant0865c8022a8e323b146bd0dbeaeea69ab07ce0a23d0c115238876c7e0edc48d5

namespace FormalResearch.QuantumLanglands.BoundaryComparison

open CategoryTheory

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
