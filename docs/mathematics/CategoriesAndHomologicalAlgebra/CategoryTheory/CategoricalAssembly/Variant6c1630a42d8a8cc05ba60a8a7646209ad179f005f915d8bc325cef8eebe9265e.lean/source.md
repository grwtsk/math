# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoricalAssembly.Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f48362c9f6fa5a85c29f83053b791183b50c227` · SHA-256 `3791aaef8aac831d5e28baadfdac06c184611314bd2b7c9fe6630052321be7ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SeparateInverseIso.Variantb7da77b7771cc516f6632a404f2ba38d69a526a65c89ae5bb359723ea8ddd5cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7da77b7771cc516f6632a404f2ba38d69a526a65c89ae5bb359723ea8ddd5cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SeparateInverseIso.Variantb7da77b7771cc516f6632a404f2ba38d69a526a65c89ae5bb359723ea8ddd5cd","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b7da77b7771cc516f6632a404f2ba38d69a526a65c89ae5bb359723ea8ddd5cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/primary-delta-index-retrieved-b246bcb45ff5/primary-deltas/source/b7/b7da77b7771cc516f6632a404f2ba38d69a526a65c89ae5bb359723ea8ddd5cd/CategoricalAssembly.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.CategoryTheory.Equivalence
import Mathlib.CategoryTheory.Discrete.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.Omega

/-!
Scoped categorical mechanisms extracted from Sections 9 and 13 of OpenAI,
Global quantum geometric Langlands at irrational level (2026-10-04), pinned
at openai/math adc7f1241b42e322a6451854ab7e4b4c146bf78a.

Theorem selection, conceptual direction and evaluation: grwtsk contributors.
Lean implementation and checks: Codex. No geometric comparison is asserted.
The finite instance is the discrete category of three labels, with translation
by one and separately supplied inverse witnesses.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SeparateInverseIso.Variantb7da77b7771cc516f6632a404f2ba38d69a526a65c89ae5bb359723ea8ddd5cd

namespace QGLAudit

open CategoryTheory

universe u v w x

variable {C : Type u} {D : Type v} [Category.{w} C] [Category.{x} D]

/-- Independently typed left and right inverses agree by natural isomorphism.
Lean writes composition left-to-right: `F ⋙ L` represents `L ∘ F`. -/
def separateInverseIso (F : C ⥤ D) (L R : D ⥤ C)
    (hL : F ⋙ L ≅ 𝟭 C) (hR : R ⋙ F ≅ 𝟭 D) : L ≅ R :=
  L.leftUnitor.symm ≪≫ isoWhiskerRight hR.symm L ≪≫
    Functor.associator R F L ≪≫ isoWhiskerLeft R hL ≪≫ R.rightUnitor

/-- The two independently typed witnesses give an actual categorical equivalence.
Mathlib adjointifies the witnesses; arbitrary supplied unit/counit maps need not
already obey the triangle identities. -/
def assembleSeparateInverses (F : C ⥤ D) (L R : D ⥤ C)
    (hL : F ⋙ L ≅ 𝟭 C) (hR : R ⋙ F ≅ 𝟭 D) : C ≌ D :=
  CategoryTheory.Equivalence.mk F L hL.symm
    (isoWhiskerRight (separateInverseIso F L R hL hR) F ≪≫ hR)

/-- The original forward functor is retained by the assembly. -/
theorem assembled_forward (F : C ⥤ D) (L R : D ⥤ C)
    (hL : F ⋙ L ≅ 𝟭 C) (hR : R ⋙ F ≅ 𝟭 D) :
    (assembleSeparateInverses F L R hL hR).functor = F := rfl

/-- Recover an epimorphism from Hom comparisons that preserve the actual boundary
map. This is a precise cancellation mechanism; it does not construct the Hom
comparisons, closed support, or low-degree gaps in the geometric application. -/
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

/-- The finiteness step used in the Section 6 weight estimate, after the genuine
degree bound has been supplied. Both indices must be nonnegative. -/
theorem degree_relevance_bounds (c l K : ℕ) (h : c + l ≤ K) :
    c ≤ K ∧ l ≤ K := by omega

def threeLabelForward : Discrete (ZMod 3) ⥤ Discrete (ZMod 3) :=
  Discrete.functor (fun a => Discrete.mk (a + 1))

def threeLabelLeft : Discrete (ZMod 3) ⥤ Discrete (ZMod 3) :=
  Discrete.functor (fun a => Discrete.mk (a - 1))

def threeLabelRight : Discrete (ZMod 3) ⥤ Discrete (ZMod 3) :=
  Discrete.functor (fun a => Discrete.mk (a + 2))

def threeLabelLeftWitness : threeLabelForward ⋙ threeLabelLeft ≅ 𝟭 _ :=
  Discrete.natIso (fun a => Discrete.eqToIso (by
    change a.as + 1 - 1 = a.as
    simp))

def threeLabelRightWitness : threeLabelRight ⋙ threeLabelForward ≅ 𝟭 _ :=
  Discrete.natIso (fun a => Discrete.eqToIso (by
    change a.as + 2 + 1 = a.as
    have h : (2 : ZMod 3) + 1 = 0 := by decide
    rw [add_assoc, h, add_zero]))

def threeLabelAssembly : Discrete (ZMod 3) ≌ Discrete (ZMod 3) :=
  assembleSeparateInverses threeLabelForward threeLabelLeft threeLabelRight
    threeLabelLeftWitness threeLabelRightWitness

/-- The concrete finite model retains the forward translation. -/
theorem threeLabelAssembly_zero :
    threeLabelAssembly.functor.obj (Discrete.mk 0) = Discrete.mk (1 : ZMod 3) := by
  change Discrete.mk ((0 : ZMod 3) + 1) = _
  simp

#print axioms separateInverseIso
#print axioms assembleSeparateInverses
#print axioms assembled_forward
#print axioms boundary_epi_of_hom_comparisons
#print axioms degree_relevance_bounds
#print axioms threeLabelAssembly
#print axioms threeLabelAssembly_zero

end QGLAudit
```
