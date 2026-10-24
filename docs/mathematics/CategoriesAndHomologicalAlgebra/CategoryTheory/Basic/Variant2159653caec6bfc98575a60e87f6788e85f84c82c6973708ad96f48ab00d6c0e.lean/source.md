# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6cbca8d68ed4bccf2492d86e016b77f170adc4d` · SHA-256 `3b59c71c79f5b135f5028eec6226ca9ffdf9d99b34cca6537c77ce6f5057dd5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsIdempotentComplete.Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsIdempotentComplete.Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Idempotents/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Abelian.Basic

/-!
# Idempotent complete categories

In this file, we define the notion of idempotent complete categories
(also known as Karoubian categories, or pseudoabelian in the case of
preadditive categories).

## Main definitions

- `IsIdempotentComplete C` expresses that `C` is idempotent complete, i.e.
all idempotents in `C` split. Other characterisations of idempotent completeness are given
by `isIdempotentComplete_iff_hasEqualizer_of_id_and_idempotent` and
`isIdempotentComplete_iff_idempotents_have_kernels`.
- `isIdempotentComplete_of_abelian` expresses that abelian categories are
idempotent complete.
- `isIdempotentComplete_iff_ofEquivalence` expresses that if two categories `C` and `D`
are equivalent, then `C` is idempotent complete iff `D` is.
- `isIdempotentComplete_iff_opposite` expresses that `Cᵒᵖ` is idempotent complete
iff `C` is.

## References
* [Stacks: Karoubian categories] https://stacks.math.columbia.edu/tag/09SF

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsIdempotentComplete.Variant0d4fc29e99ab30f0984d01da16f801088aa8dba9d475cfe1ef4c24d766a034dd

open CategoryTheory

open CategoryTheory.Category

open CategoryTheory.Limits

open CategoryTheory.Preadditive

open Opposite

namespace CategoryTheory

variable (C : Type*) [Category C]

/-- A category is idempotent complete iff all idempotent endomorphisms `p`
split as a composition `p = e ≫ i` with `i ≫ e = 𝟙 _` -/
class IsIdempotentComplete : Prop where
  /-- A category is idempotent complete iff all idempotent endomorphisms `p`
    split as a composition `p = e ≫ i` with `i ≫ e = 𝟙 _` -/
  idempotents_split :
    ∀ (X : C) (p : X ⟶ X), p ≫ p = p → ∃ (Y : C) (i : Y ⟶ X) (e : X ⟶ Y), i ≫ e = 𝟙 Y ∧ e ≫ i = p

namespace Idempotents

/-- A category is idempotent complete iff for all idempotent endomorphisms,
the equalizer of the identity and this idempotent exists. -/
theorem isIdempotentComplete_iff_hasEqualizer_of_id_and_idempotent :
    IsIdempotentComplete C ↔ ∀ (X : C) (p : X ⟶ X), p ≫ p = p → HasEqualizer (𝟙 X) p := by
  constructor
  · intro
    intro X p hp
    rcases IsIdempotentComplete.idempotents_split X p hp with ⟨Y, i, e, ⟨h₁, h₂⟩⟩
    exact
      ⟨Nonempty.intro
          { cone := Fork.ofι i (show i ≫ 𝟙 X = i ≫ p by rw [comp_id, ← h₂, ← assoc, h₁, id_comp])
            isLimit := by
              apply Fork.IsLimit.mk'
              intro s
              refine ⟨s.ι ≫ e, ?_⟩
              constructor
              · erw [assoc, h₂, ← Limits.Fork.condition s, comp_id]
              · intro m hm
                rw [Fork.ι_ofι] at hm
                rw [← hm]
                simp only [← hm, assoc, h₁]
                exact (comp_id m).symm }⟩
  · intro h
    refine ⟨?_⟩
    intro X p hp
    haveI : HasEqualizer (𝟙 X) p := h X p hp
    refine ⟨equalizer (𝟙 X) p, equalizer.ι (𝟙 X) p,
      equalizer.lift p (show p ≫ 𝟙 X = p ≫ p by rw [hp, comp_id]), ?_, equalizer.lift_ι _ _⟩
    ext
    simp only [assoc, limit.lift_π, Eq.ndrec, id_eq, eq_mpr_eq_cast, Fork.ofι_pt,
      Fork.ofι_π_app, id_comp]
    rw [← equalizer.condition, comp_id]

variable {C} in
/-- In a preadditive category, when `p : X ⟶ X` is idempotent,
then `𝟙 X - p` is also idempotent. -/
theorem idem_of_id_sub_idem [Preadditive C] {X : C} (p : X ⟶ X) (hp : p ≫ p = p) :
    (𝟙 _ - p) ≫ (𝟙 _ - p) = 𝟙 _ - p := by
  simp only [comp_sub, sub_comp, id_comp, comp_id, hp, sub_self, sub_zero]

/-- A preadditive category is pseudoabelian iff all idempotent endomorphisms have a kernel. -/
theorem isIdempotentComplete_iff_idempotents_have_kernels [Preadditive C] :
    IsIdempotentComplete C ↔ ∀ (X : C) (p : X ⟶ X), p ≫ p = p → HasKernel p := by
  rw [isIdempotentComplete_iff_hasEqualizer_of_id_and_idempotent]
  constructor
  · intro h X p hp
    haveI : HasEqualizer (𝟙 X) (𝟙 X - p) := h X (𝟙 _ - p) (idem_of_id_sub_idem p hp)
    convert hasKernel_of_hasEqualizer (𝟙 X) (𝟙 X - p)
    rw [sub_sub_cancel]
  · intro h X p hp
    haveI : HasKernel (𝟙 _ - p) := h X (𝟙 _ - p) (idem_of_id_sub_idem p hp)
    apply Preadditive.hasEqualizer_of_hasKernel

/-- An abelian category is idempotent complete. -/
instance (priority := 100) isIdempotentComplete_of_abelian (D : Type*) [Category D] [Abelian D] :
    IsIdempotentComplete D := by
  rw [isIdempotentComplete_iff_idempotents_have_kernels]
  intros
  infer_instance

variable {C}

theorem split_imp_of_iso {X X' : C} (φ : X ≅ X') (p : X ⟶ X) (p' : X' ⟶ X')
    (hpp' : p ≫ φ.hom = φ.hom ≫ p')
    (h : ∃ (Y : C) (i : Y ⟶ X) (e : X ⟶ Y), i ≫ e = 𝟙 Y ∧ e ≫ i = p) :
    ∃ (Y' : C) (i' : Y' ⟶ X') (e' : X' ⟶ Y'), i' ≫ e' = 𝟙 Y' ∧ e' ≫ i' = p' := by
  rcases h with ⟨Y, i, e, ⟨h₁, h₂⟩⟩
  use Y, i ≫ φ.hom, φ.inv ≫ e
  constructor
  · slice_lhs 2 3 => rw [φ.hom_inv_id]
    rw [id_comp, h₁]
  · slice_lhs 2 3 => rw [h₂]
    rw [hpp', ← assoc, φ.inv_hom_id, id_comp]

theorem split_iff_of_iso {X X' : C} (φ : X ≅ X') (p : X ⟶ X) (p' : X' ⟶ X')
    (hpp' : p ≫ φ.hom = φ.hom ≫ p') :
    (∃ (Y : C) (i : Y ⟶ X) (e : X ⟶ Y), i ≫ e = 𝟙 Y ∧ e ≫ i = p) ↔
      ∃ (Y' : C) (i' : Y' ⟶ X') (e' : X' ⟶ Y'), i' ≫ e' = 𝟙 Y' ∧ e' ≫ i' = p' := by
  constructor
  · exact split_imp_of_iso φ p p' hpp'
  · apply split_imp_of_iso φ.symm p' p
    rw [← comp_id p, ← φ.hom_inv_id]
    slice_rhs 2 3 => rw [hpp']
    slice_rhs 1 2 => erw [φ.inv_hom_id]
    simp only [id_comp]
    rfl

theorem Equivalence.isIdempotentComplete {D : Type*} [Category D] (ε : C ≌ D)
    (h : IsIdempotentComplete C) : IsIdempotentComplete D := by
  refine ⟨?_⟩
  intro X' p hp
  let φ := ε.counitIso.symm.app X'
  erw [split_iff_of_iso φ p (φ.inv ≫ p ≫ φ.hom)
      (by
        slice_rhs 1 2 => rw [φ.hom_inv_id]
        rw [id_comp])]
  rcases IsIdempotentComplete.idempotents_split (ε.inverse.obj X') (ε.inverse.map p)
      (by rw [← ε.inverse.map_comp, hp]) with
    ⟨Y, i, e, ⟨h₁, h₂⟩⟩
  use ε.functor.obj Y, ε.functor.map i, ε.functor.map e
  constructor
  · rw [← ε.functor.map_comp, h₁, ε.functor.map_id]
  · simp only [← ε.functor.map_comp, h₂, Equivalence.fun_inv_map]
    rfl

/-- If `C` and `D` are equivalent categories, that `C` is idempotent complete iff `D` is. -/
theorem isIdempotentComplete_iff_of_equivalence {D : Type*} [Category D] (ε : C ≌ D) :
    IsIdempotentComplete C ↔ IsIdempotentComplete D := by
  constructor
  · exact Equivalence.isIdempotentComplete ε
  · exact Equivalence.isIdempotentComplete ε.symm

theorem isIdempotentComplete_of_isIdempotentComplete_opposite (h : IsIdempotentComplete Cᵒᵖ) :
    IsIdempotentComplete C := by
  refine ⟨?_⟩
  intro X p hp
  rcases IsIdempotentComplete.idempotents_split (op X) p.op (by rw [← op_comp, hp]) with
    ⟨Y, i, e, ⟨h₁, h₂⟩⟩
  use Y.unop, e.unop, i.unop
  constructor
  · simp only [← unop_comp, h₁]
    rfl
  · simp only [← unop_comp, h₂]
    rfl

theorem isIdempotentComplete_iff_opposite : IsIdempotentComplete Cᵒᵖ ↔ IsIdempotentComplete C := by
  constructor
  · exact isIdempotentComplete_of_isIdempotentComplete_opposite
  · intro h
    apply isIdempotentComplete_of_isIdempotentComplete_opposite
    rw [isIdempotentComplete_iff_of_equivalence (opOpEquivalence C)]
    exact h

instance [IsIdempotentComplete C] : IsIdempotentComplete Cᵒᵖ := by
  rwa [isIdempotentComplete_iff_opposite]

end Idempotents

end CategoryTheory
```
