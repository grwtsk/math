# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comma.Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c93ebf7292d36a2a288fa9caa4e8c05514bd6147` · SHA-256 `390063276b9b37fe3ffd942f36bc948a92a4f01c5c8791e3264be551810958b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftAdjointOfStructuredArrowInitialsAux.Variantc49280771f4942905eac9d5c53e400e7de89d57ab7ed56750c3cf7ea42c88afd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c49280771f4942905eac9d5c53e400e7de89d57ab7ed56750c3cf7ea42c88afd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LeftAdjointOfStructuredArrowInitialsAux.Variantc49280771f4942905eac9d5c53e400e7de89d57ab7ed56750c3cf7ea42c88afd","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c49280771f4942905eac9d5c53e400e7de89d57ab7ed56750c3cf7ea42c88afd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Adjunction/Comma.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Adjunction.Basic
import Mathlib.CategoryTheory.PUnit
import Mathlib.CategoryTheory.StructuredArrow


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftAdjointOfStructuredArrowInitialsAux.Variantc49280771f4942905eac9d5c53e400e7de89d57ab7ed56750c3cf7ea42c88afd

#align_import category_theory.adjunction.comma from "leanprover-community/mathlib"@"8a318021995877a44630c898d0b2bc376fceef3b"

/-!
# Properties of comma categories relating to adjunctions

This file shows that for a functor `G : D ⥤ C` the data of an initial object in each
`StructuredArrow` category on `G` is equivalent to a left adjoint to `G`, as well as the dual.

Specifically, `adjunctionOfStructuredArrowInitials` gives the left adjoint assuming the
appropriate initial objects exist, and `mkInitialOfLeftAdjoint` constructs the initial objects
provided a left adjoint.

The duals are also shown.
-/


universe v₁ v₂ u₁ u₂

noncomputable section

namespace CategoryTheory

open Limits

variable {C : Type u₁} {D : Type u₂} [Category.{v₁} C] [Category.{v₂} D] (G : D ⥤ C)

section OfInitials

variable [∀ A, HasInitial (StructuredArrow A G)]

/-- Implementation: If each structured arrow category on `G` has an initial object, an equivalence
which is helpful for constructing a left adjoint to `G`.
-/
@[simps]
def leftAdjointOfStructuredArrowInitialsAux (A : C) (B : D) :
    ((⊥_ StructuredArrow A G).right ⟶ B) ≃ (A ⟶ G.obj B)
    where
  toFun g := (⊥_ StructuredArrow A G).hom ≫ G.map g
  invFun f := CommaMorphism.right (initial.to (StructuredArrow.mk f))
  left_inv g := by
    let B' : StructuredArrow A G := StructuredArrow.mk ((⊥_ StructuredArrow A G).hom ≫ G.map g)
    let g' : ⊥_ StructuredArrow A G ⟶ B' := StructuredArrow.homMk g rfl
    have : initial.to _ = g' := by aesop_cat
    change CommaMorphism.right (initial.to B') = _
    rw [this]
    rfl
  right_inv f := by
    let B' : StructuredArrow A G := StructuredArrow.mk f
    apply (CommaMorphism.w (initial.to B')).symm.trans (Category.id_comp _)
#align category_theory.left_adjoint_of_structured_arrow_initials_aux CategoryTheory.leftAdjointOfStructuredArrowInitialsAux

/--
If each structured arrow category on `G` has an initial object, construct a left adjoint to `G`. It
is shown that it is a left adjoint in `adjunctionOfStructuredArrowInitials`.
-/
def leftAdjointOfStructuredArrowInitials : C ⥤ D :=
  Adjunction.leftAdjointOfEquiv (leftAdjointOfStructuredArrowInitialsAux G) fun _ _ => by simp
#align category_theory.left_adjoint_of_structured_arrow_initials CategoryTheory.leftAdjointOfStructuredArrowInitials

/--
If each structured arrow category on `G` has an initial object, we have a constructed left adjoint
to `G`.
-/
def adjunctionOfStructuredArrowInitials : leftAdjointOfStructuredArrowInitials G ⊣ G :=
  Adjunction.adjunctionOfEquivLeft _ _
#align category_theory.adjunction_of_structured_arrow_initials CategoryTheory.adjunctionOfStructuredArrowInitials

/-- If each structured arrow category on `G` has an initial object, `G` is a right adjoint. -/
def isRightAdjointOfStructuredArrowInitials : IsRightAdjoint G
    where
  left := _
  adj := adjunctionOfStructuredArrowInitials G
#align category_theory.is_right_adjoint_of_structured_arrow_initials CategoryTheory.isRightAdjointOfStructuredArrowInitials

end OfInitials

section OfTerminals

variable [∀ A, HasTerminal (CostructuredArrow G A)]

/-- Implementation: If each costructured arrow category on `G` has a terminal object, an equivalence
which is helpful for constructing a right adjoint to `G`.
-/
@[simps]
def rightAdjointOfCostructuredArrowTerminalsAux (B : D) (A : C) :
    (G.obj B ⟶ A) ≃ (B ⟶ (⊤_ CostructuredArrow G A).left)
    where
  toFun g := CommaMorphism.left (terminal.from (CostructuredArrow.mk g))
  invFun g := G.map g ≫ (⊤_ CostructuredArrow G A).hom
  left_inv := by aesop_cat
  right_inv g := by
    let B' : CostructuredArrow G A :=
      CostructuredArrow.mk (G.map g ≫ (⊤_ CostructuredArrow G A).hom)
    let g' : B' ⟶ ⊤_ CostructuredArrow G A := CostructuredArrow.homMk g rfl
    have : terminal.from _ = g' := by aesop_cat
    change CommaMorphism.left (terminal.from B') = _
    rw [this]
    rfl
#align category_theory.right_adjoint_of_costructured_arrow_terminals_aux CategoryTheory.rightAdjointOfCostructuredArrowTerminalsAux

/--
If each costructured arrow category on `G` has a terminal object, construct a right adjoint to `G`.
It is shown that it is a right adjoint in `adjunctionOfStructuredArrowInitials`.
-/
def rightAdjointOfCostructuredArrowTerminals : C ⥤ D :=
  Adjunction.rightAdjointOfEquiv (rightAdjointOfCostructuredArrowTerminalsAux G)
      fun B₁ B₂ A f g => by
    rw [← Equiv.eq_symm_apply]
    simp
#align category_theory.right_adjoint_of_costructured_arrow_terminals CategoryTheory.rightAdjointOfCostructuredArrowTerminals

/-- If each costructured arrow category on `G` has a terminal object, we have a constructed right
adjoint to `G`.
-/
def adjunctionOfCostructuredArrowTerminals : G ⊣ rightAdjointOfCostructuredArrowTerminals G :=
  Adjunction.adjunctionOfEquivRight _ _
#align category_theory.adjunction_of_costructured_arrow_terminals CategoryTheory.adjunctionOfCostructuredArrowTerminals

/-- If each costructured arrow category on `G` has a terminal object, `G` is a left adjoint. -/
def isLeftAdjointOfCostructuredArrowTerminals : IsLeftAdjoint G
    where
  right := rightAdjointOfCostructuredArrowTerminals G
  adj := Adjunction.adjunctionOfEquivRight _ _
#align category_theory.is_left_adjoint_of_costructured_arrow_terminals CategoryTheory.isLeftAdjointOfCostructuredArrowTerminals

end OfTerminals

section

variable {F : C ⥤ D}

/-- Given a left adjoint to `G`, we can construct an initial object in each structured arrow
category on `G`. -/
def mkInitialOfLeftAdjoint (h : F ⊣ G) (A : C) :
    IsInitial (StructuredArrow.mk (h.unit.app A) : StructuredArrow A G)
    where
  desc B := StructuredArrow.homMk ((h.homEquiv _ _).symm B.pt.hom)
  uniq s m _ := by
    apply StructuredArrow.ext
    dsimp
    rw [Equiv.eq_symm_apply, Adjunction.homEquiv_unit]
    apply StructuredArrow.w m
#align category_theory.mk_initial_of_left_adjoint CategoryTheory.mkInitialOfLeftAdjoint

/-- Given a right adjoint to `F`, we can construct a terminal object in each costructured arrow
category on `F`. -/
def mkTerminalOfRightAdjoint (h : F ⊣ G) (A : D) :
    IsTerminal (CostructuredArrow.mk (h.counit.app A) : CostructuredArrow F A)
    where
  lift B := CostructuredArrow.homMk (h.homEquiv _ _ B.pt.hom)
  uniq s m _ := by
    apply CostructuredArrow.ext
    dsimp
    rw [h.eq_homEquiv_apply, Adjunction.homEquiv_counit]
    exact CostructuredArrow.w m
#align category_theory.mk_terminal_of_right_adjoint CategoryTheory.mkTerminalOfRightAdjoint

end

theorem nonempty_isRightAdjoint_iff_hasInitial_structuredArrow {G : D ⥤ C} :
    Nonempty (IsRightAdjoint G) ↔ ∀ A, HasInitial (StructuredArrow A G) :=
  ⟨fun ⟨h⟩ A => (mkInitialOfLeftAdjoint _ h.adj A).hasInitial, fun _ =>
    ⟨isRightAdjointOfStructuredArrowInitials _⟩⟩
#align category_theory.nonempty_is_right_adjoint_iff_has_initial_structured_arrow CategoryTheory.nonempty_isRightAdjoint_iff_hasInitial_structuredArrow

theorem nonempty_isLeftAdjoint_iff_hasTerminal_costructuredArrow {F : C ⥤ D} :
    Nonempty (IsLeftAdjoint F) ↔ ∀ A, HasTerminal (CostructuredArrow F A) :=
  ⟨fun ⟨h⟩ A => (mkTerminalOfRightAdjoint _ h.adj A).hasTerminal, fun _ =>
    ⟨isLeftAdjointOfCostructuredArrowTerminals _⟩⟩
#align category_theory.nonempty_is_left_adjoint_iff_has_terminal_costructured_arrow CategoryTheory.nonempty_isLeftAdjoint_iff_hasTerminal_costructuredArrow

end CategoryTheory
```
