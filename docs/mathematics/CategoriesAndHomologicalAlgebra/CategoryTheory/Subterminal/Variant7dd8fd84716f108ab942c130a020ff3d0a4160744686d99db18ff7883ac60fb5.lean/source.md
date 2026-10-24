# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subterminal.Variant7dd8fd84716f108ab942c130a020ff3d0a4160744686d99db18ff7883ac60fb5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6df28826eb9762b355a542646698156acbc17c9c` · SHA-256 `8874c65846cbf0d66d5e10ea4445f4b47944802c771d6029e9c1ee8f1d2923f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsSubterminal.Variant127011e9ed84b9a3e73c2f226c2e253f9dcf44af897047fd1246b588bd71585f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"127011e9ed84b9a3e73c2f226c2e253f9dcf44af897047fd1246b588bd71585f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsSubterminal.Variant127011e9ed84b9a3e73c2f226c2e253f9dcf44af897047fd1246b588bd71585f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"127011e9ed84b9a3e73c2f226c2e253f9dcf44af897047fd1246b588bd71585f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Subterminal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
module

public import Mathlib.CategoryTheory.Subobject.MonoOver

/-!
# Subterminal objects

Subterminal objects are the objects which can be thought of as subobjects of the terminal object.
In fact, the definition can be constructed to not require a terminal object, by defining `A` to be
subterminal iff for any `Z`, there is at most one morphism `Z ⟶ A`.
An alternate definition is that the diagonal morphism `A ⟶ A ⨯ A` is an isomorphism.
In this file we define subterminal objects and show the equivalence of these three definitions.

We also construct the subcategory of subterminal objects.

## TODO

* Define exponential ideals, and show this subcategory is an exponential ideal.
* Use the above to show that in a locally Cartesian closed category, every subobject lattice
  is Cartesian closed (equivalently, a Heyting algebra).

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsSubterminal.Variant127011e9ed84b9a3e73c2f226c2e253f9dcf44af897047fd1246b588bd71585f

@[expose] public section


universe v₁ v₂ u₁ u₂

noncomputable section

namespace CategoryTheory

open Limits Category

variable {C : Type u₁} [Category.{v₁} C] {A : C}

/-- An object `A` is subterminal iff for any `Z`, there is at most one morphism `Z ⟶ A`. -/
def IsSubterminal (A : C) : Prop :=
  ∀ ⦃Z : C⦄ (f g : Z ⟶ A), f = g

theorem IsSubterminal.def : IsSubterminal A ↔ ∀ ⦃Z : C⦄ (f g : Z ⟶ A), f = g :=
  Iff.rfl

/-- If `A` is subterminal, the unique morphism from it to a terminal object is a monomorphism.
The converse of `isSubterminal_of_mono_isTerminal_from`.
-/
theorem IsSubterminal.mono_isTerminal_from (hA : IsSubterminal A) {T : C} (hT : IsTerminal T) :
    Mono (hT.from A) :=
  { right_cancellation := fun _ _ _ => hA _ _ }

/-- If `A` is subterminal, the unique morphism from it to the terminal object is a monomorphism.
The converse of `isSubterminal_of_mono_terminal_from`.
-/
theorem IsSubterminal.mono_terminal_from [HasTerminal C] (hA : IsSubterminal A) :
    Mono (terminal.from A) :=
  hA.mono_isTerminal_from terminalIsTerminal

/-- If the unique morphism from `A` to a terminal object is a monomorphism, `A` is subterminal.
The converse of `IsSubterminal.mono_isTerminal_from`.
-/
theorem isSubterminal_of_mono_isTerminal_from {T : C} (hT : IsTerminal T) [Mono (hT.from A)] :
    IsSubterminal A := fun Z f g => by
  rw [← cancel_mono (hT.from A)]
  apply hT.hom_ext

/-- If the unique morphism from `A` to the terminal object is a monomorphism, `A` is subterminal.
The converse of `IsSubterminal.mono_terminal_from`.
-/
theorem isSubterminal_of_mono_terminal_from [HasTerminal C] [Mono (terminal.from A)] :
    IsSubterminal A := fun Z f g => by
  rw [← cancel_mono (terminal.from A)]
  subsingleton

theorem isSubterminal_of_isTerminal {T : C} (hT : IsTerminal T) : IsSubterminal T := fun _ _ _ =>
  hT.hom_ext _ _

theorem isSubterminal_of_terminal [HasTerminal C] : IsSubterminal (⊤_ C) := fun _ _ _ => by
  subsingleton

/-- If `A` is subterminal, its diagonal morphism is an isomorphism.
The converse of `isSubterminal_of_isIso_diag`.
-/
theorem IsSubterminal.isIso_diag (hA : IsSubterminal A) [HasBinaryProduct A A] : IsIso (diag A) :=
  ⟨⟨Limits.prod.fst,
      ⟨by simp, by
        rw [IsSubterminal.def] at hA
        cat_disch⟩⟩⟩

/-- If the diagonal morphism of `A` is an isomorphism, then it is subterminal.
The converse of `isSubterminal.isIso_diag`.
-/
theorem isSubterminal_of_isIso_diag [HasBinaryProduct A A] [IsIso (diag A)] : IsSubterminal A :=
  fun Z f g => by
  have : (Limits.prod.fst : A ⨯ A ⟶ _) = Limits.prod.snd := by simp [← cancel_epi (diag A)]
  rw [← prod.lift_fst f g, this, prod.lift_snd]

/-- If `A` is subterminal, it is isomorphic to `A ⨯ A`. -/
@[simps!]
def IsSubterminal.isoDiag (hA : IsSubterminal A) [HasBinaryProduct A A] : A ⨯ A ≅ A := by
  letI := IsSubterminal.isIso_diag hA
  apply (asIso (diag A)).symm

variable (C)

/-- The (full sub)category of subterminal objects.
TODO: If `C` is the category of sheaves on a topological space `X`, this category is equivalent
to the lattice of open subsets of `X`. More generally, if `C` is a topos, this is the lattice of
"external truth values".
-/
def Subterminals (C : Type u₁) [Category.{v₁} C] :=
  ObjectProperty.FullSubcategory fun A : C => IsSubterminal A

instance (C : Type u₁) [Category.{v₁} C] : Category (Subterminals C) :=
  ObjectProperty.FullSubcategory.category _

instance [HasTerminal C] : Inhabited (Subterminals C) :=
  ⟨⟨⊤_ C, isSubterminal_of_terminal⟩⟩

/-- The inclusion of the subterminal objects into the original category. -/
@[simps!]
def subterminalInclusion : Subterminals C ⥤ C :=
  ObjectProperty.ι _

instance (C : Type u₁) [Category.{v₁} C] : (subterminalInclusion C).Full :=
  ObjectProperty.full_ι _

instance (C : Type u₁) [Category.{v₁} C] : (subterminalInclusion C).Faithful :=
  ObjectProperty.faithful_ι _

instance subterminals_thin (X Y : Subterminals C) : Subsingleton (X ⟶ Y) where
  allEq _ _ := ObjectProperty.hom_ext _ (Y.2 _ _)

/--
The category of subterminal objects is equivalent to the category of monomorphisms to the terminal
object (which is in turn equivalent to the subobjects of the terminal object).
-/
@[simps]
def subterminalsEquivMonoOverTerminal [HasTerminal C] : Subterminals C ≌ MonoOver (⊤_ C) where
  functor :=
    { obj := fun X => ⟨Over.mk (terminal.from X.1), X.2.mono_terminal_from⟩
      map := fun f => MonoOver.homMk f.hom (by ext1 ⟨⟨⟩⟩) }
  inverse :=
    { obj := fun X =>
        ⟨X.obj.left, fun Z f g => by
          rw [← cancel_mono X.arrow]
          subsingleton⟩
      map := fun f => ObjectProperty.homMk f.hom.1 }
  unitIso := NatIso.ofComponents (fun X => Iso.refl X) (by subsingleton)
  counitIso := NatIso.ofComponents (fun X => MonoOver.isoMk (Iso.refl _)) (by subsingleton)
  functor_unitIso_comp := by subsingleton

@[simp]
theorem subterminals_to_monoOver_terminal_comp_forget [HasTerminal C] :
    (subterminalsEquivMonoOverTerminal C).functor ⋙ MonoOver.forget _ ⋙ Over.forget _ =
      subterminalInclusion C :=
  rfl

@[simp]
theorem monoOver_terminal_to_subterminals_comp [HasTerminal C] :
    (subterminalsEquivMonoOverTerminal C).inverse ⋙ subterminalInclusion C =
      MonoOver.forget _ ⋙ Over.forget _ :=
  rfl

end CategoryTheory
```
