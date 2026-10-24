-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Single.Variant7a0479e6ace67acaf1b1b3cefb3b6e789851f5106eda799ce85245823b970314","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a0479e6ace67acaf1b1b3cefb3b6e789851f5106eda799ce85245823b970314","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.Single.Variant7a0479e6ace67acaf1b1b3cefb3b6e789851f5106eda799ce85245823b970314","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"7a0479e6ace67acaf1b1b3cefb3b6e789851f5106eda799ce85245823b970314","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Homology/Single.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Algebra.Homology.Homology


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Single.Variant7a0479e6ace67acaf1b1b3cefb3b6e789851f5106eda799ce85245823b970314

#align_import algebra.homology.single from "leanprover-community/mathlib"@"324a7502510e835cdbd3de1519b6c66b51fb2467"

/-!
# Chain complexes supported in a single degree

We define `single V j c : V ⥤ HomologicalComplex V c`,
which constructs complexes in `V` of shape `c`, supported in degree `j`.

Similarly `single₀ V : V ⥤ ChainComplex V ℕ` is the special case for
`ℕ`-indexed chain complexes, with the object supported in degree `0`,
but with better definitional properties.

In `toSingle₀Equiv` we characterize chain maps to an `ℕ`-indexed complex concentrated in degree 0;
they are equivalent to `{ f : C.X 0 ⟶ X // C.d 1 0 ≫ f = 0 }`.
(This is useful translating between a projective resolution and
an augmented exact complex of projectives.)
-/


noncomputable section

open CategoryTheory

open CategoryTheory.Limits

open ZeroObject

universe v u

variable (V : Type u) [Category.{v} V] [HasZeroMorphisms V] [HasZeroObject V]

namespace HomologicalComplex

variable {ι : Type*} [DecidableEq ι] (c : ComplexShape ι)

/-- The functor `V ⥤ HomologicalComplex V c` creating a chain complex supported in a single degree.

See also `ChainComplex.single₀ : V ⥤ ChainComplex V ℕ`,
which has better definitional properties,
if you are working with `ℕ`-indexed complexes.
-/
@[simps]
def single (j : ι) : V ⥤ HomologicalComplex V c where
  obj A :=
    { X := fun i => if i = j then A else 0
      d := fun i j => 0 }
  map f :=
    { f := fun i => if h : i = j then eqToHom (by dsimp; rw [if_pos h]) ≫ f ≫
              eqToHom (by dsimp; rw [if_pos h]) else 0 }
  map_id A := by
    ext
    dsimp
    split_ifs with h
    · subst h
      simp
    · rw [if_neg h]
      simp
  map_comp f g := by
    ext
    dsimp
    split_ifs with h
    · subst h
      simp
    · simp
#align homological_complex.single HomologicalComplex.single

/-- The object in degree `j` of `(single V c h).obj A` is just `A`.
-/
@[simps!]
def singleObjXSelf (j : ι) (A : V) : ((single V c j).obj A).X j ≅ A :=
  eqToIso (by simp)
set_option linter.uppercaseLean3 false in
#align homological_complex.single_obj_X_self HomologicalComplex.singleObjXSelf

@[simp 1100]
theorem single_map_f_self (j : ι) {A B : V} (f : A ⟶ B) :
    ((single V c j).map f).f j = (singleObjXSelf V c j A).hom ≫
      f ≫ (singleObjXSelf V c j B).inv := by simp
#align homological_complex.single_map_f_self HomologicalComplex.single_map_f_self

instance (j : ι) : Faithful (single V c j) where
  map_injective w := by
    have := congr_hom w j
    dsimp at this
    simp only [dif_pos] at this
    rw [← IsIso.inv_comp_eq, inv_eqToHom, eqToHom_trans_assoc, eqToHom_refl,
      Category.id_comp, ← IsIso.comp_inv_eq, Category.assoc, inv_eqToHom, eqToHom_trans,
      eqToHom_refl, Category.comp_id] at this
    exact this

instance (j : ι) : Full (single V c j) where
  preimage f := eqToHom (by simp) ≫ f.f j ≫ eqToHom (by simp)
  witness f := by
    ext i
    dsimp
    split_ifs with h
    · subst h
      simp
    · symm
      apply zero_of_target_iso_zero
      dsimp
      rw [if_neg h]

end HomologicalComplex

open HomologicalComplex

namespace ChainComplex

/-- `ChainComplex.single₀ V` is the embedding of `V` into `ChainComplex V ℕ`
as chain complexes supported in degree 0.

This is naturally isomorphic to `single V _ 0`, but has better definitional properties.
-/
def single₀ : V ⥤ ChainComplex V ℕ where
  obj X :=
    { X := fun n =>
        match n with
        | 0 => X
        | _ + 1 => 0
      d := fun i j => 0 }
  map f :=
    { f := fun n =>
        match n with
        | 0 => f
        | n + 1 => 0 }
  map_id X := by
    ext (_|_)
    · rfl
    · simp
  map_comp f g := by
    ext (_|_)
    · rfl
    · simp
#align chain_complex.single₀ ChainComplex.single₀

@[simp]
theorem single₀_obj_X_0 (X : V) : ((single₀ V).obj X).X 0 = X :=
  rfl
set_option linter.uppercaseLean3 false in
#align chain_complex.single₀_obj_X_0 ChainComplex.single₀_obj_X_0

@[simp]
theorem single₀_obj_X_succ (X : V) (n : ℕ) : ((single₀ V).obj X).X (n + 1) = 0 :=
  rfl
set_option linter.uppercaseLean3 false in
#align chain_complex.single₀_obj_X_succ ChainComplex.single₀_obj_X_succ

@[simp]
theorem single₀_obj_X_d (X : V) (i j : ℕ) : ((single₀ V).obj X).d i j = 0 :=
  rfl
set_option linter.uppercaseLean3 false in
#align chain_complex.single₀_obj_X_d ChainComplex.single₀_obj_X_d

@[simp]
theorem single₀_obj_X_dTo (X : V) (j : ℕ) : ((single₀ V).obj X).dTo j = 0 := by
  rw [dTo_eq ((single₀ V).obj X) rfl]
  simp
set_option linter.uppercaseLean3 false in
#align chain_complex.single₀_obj_X_d_to ChainComplex.single₀_obj_X_dTo

@[simp]
theorem single₀_obj_x_dFrom (X : V) (i : ℕ) : ((single₀ V).obj X).dFrom i = 0 := by
  cases i
  · rw [dFrom_eq_zero]
    simp
  · erw [dFrom_eq ((single₀ V).obj X) rfl]
    simp
set_option linter.uppercaseLean3 false in
#align chain_complex.single₀_obj_X_d_from ChainComplex.single₀_obj_x_dFrom

@[simp]
theorem single₀_map_f_0 {X Y : V} (f : X ⟶ Y) : ((single₀ V).map f).f 0 = f :=
  rfl
#align chain_complex.single₀_map_f_0 ChainComplex.single₀_map_f_0

@[simp]
theorem single₀_map_f_succ {X Y : V} (f : X ⟶ Y) (n : ℕ) : ((single₀ V).map f).f (n + 1) = 0 :=
  rfl
#align chain_complex.single₀_map_f_succ ChainComplex.single₀_map_f_succ

section

variable [HasEqualizers V] [HasCokernels V] [HasImages V] [HasImageMaps V]

/-- Sending objects to chain complexes supported at `0` then taking `0`-th homology
is the same as doing nothing.
-/
noncomputable def homologyFunctor0Single₀ : single₀ V ⋙ homologyFunctor V _ 0 ≅ 𝟭 V :=
  NatIso.ofComponents (fun X => homology.congr _ _ (by simp) (by simp) ≪≫ homologyZeroZero)
    fun f => by
      -- Porting note: why can't `aesop_cat` do this?
      dsimp
      ext
      simp
#align chain_complex.homology_functor_0_single₀ ChainComplex.homologyFunctor0Single₀

/-- Sending objects to chain complexes supported at `0` then taking `(n+1)`-st homology
is the same as the zero functor.
-/
noncomputable def homologyFunctorSuccSingle₀ (n : ℕ) :
    single₀ V ⋙ homologyFunctor V _ (n + 1) ≅ 0 :=
  NatIso.ofComponents
    (fun X =>
      homology.congr _ _ (by simp) (by simp) ≪≫
        homologyZeroZero ≪≫ (Functor.zero_obj _).isoZero.symm)
    fun f => (Functor.zero_obj _).eq_of_tgt _ _
#align chain_complex.homology_functor_succ_single₀ ChainComplex.homologyFunctorSuccSingle₀

end

variable {V}

/-- Morphisms from an `ℕ`-indexed chain complex `C`
to a single object chain complex with `X` concentrated in degree 0
are the same as morphisms `f : C.X 0 ⟶ X` such that `C.d 1 0 ≫ f = 0`.
-/
@[simps]
def toSingle₀Equiv (C : ChainComplex V ℕ) (X : V) :
    (C ⟶ (single₀ V).obj X) ≃ { f : C.X 0 ⟶ X // C.d 1 0 ≫ f = 0 } where
  toFun f :=
    ⟨f.f 0, by
      rw [← f.comm 1 0]
      simp⟩
  invFun f :=
    { f := fun i =>
        match i with
        | 0 => f.1
        | n + 1 => 0
      comm' := fun i j h => by
        rcases i with (_|_|i) <;> cases j <;> simp only [single₀_obj_X_d, comp_zero]
        · rw [C.shape, zero_comp]
          simp
        · exact f.2.symm
        · rw [C.shape, zero_comp]
          exact i.succ_succ_ne_one.symm }
  left_inv f := by
    ext i
    rcases i with ⟨⟩
    · rfl
    · dsimp
      ext
  right_inv := by aesop_cat
#align chain_complex.to_single₀_equiv ChainComplex.toSingle₀Equiv

@[ext]
theorem to_single₀_ext {C : ChainComplex V ℕ} {X : V} (f g : C ⟶ (single₀ V).obj X)
    (h : f.f 0 = g.f 0) : f = g :=
  (toSingle₀Equiv C X).injective
    (by
      ext
      exact h)
#align chain_complex.to_single₀_ext ChainComplex.to_single₀_ext

/-- Morphisms from a single object chain complex with `X` concentrated in degree 0
to an `ℕ`-indexed chain complex `C` are the same as morphisms `f : X → C.X`.
-/
@[simps]
def fromSingle₀Equiv (C : ChainComplex V ℕ) (X : V) : ((single₀ V).obj X ⟶ C) ≃ (X ⟶ C.X 0) where
  toFun f := f.f 0
  invFun f :=
    { f := fun i =>
        match i with
        | 0 => f
        | n + 1 => 0
      comm' := fun i j h => by
        cases i <;> cases j <;>
          simp only [shape, ComplexShape.down_Rel, Nat.one_ne_zero, not_false_iff,
            zero_comp, single₀_obj_X_d, Nat.zero_eq, add_eq_zero, comp_zero] }
  left_inv f := by
    ext i
    cases i
    · rfl
    · dsimp
      ext
  right_inv g := rfl
#align chain_complex.from_single₀_equiv ChainComplex.fromSingle₀Equiv

variable (V)

/-- `single₀` is the same as `single V _ 0`. -/
def single₀IsoSingle : single₀ V ≅ single V _ 0 :=
  NatIso.ofComponents
    (fun X =>
      { hom := { f := fun i => by cases i <;> exact 𝟙 _ }
        inv := { f := fun i => by cases i <;> exact 𝟙 _ }
        hom_inv_id := to_single₀_ext _ _ (by simp)
        inv_hom_id := by
          ext (_|_)
          · dsimp
            simp
          · dsimp
            rw [Category.comp_id] })
    fun f => by ext (_|_) <;> aesop_cat
#align chain_complex.single₀_iso_single ChainComplex.single₀IsoSingle

instance : Faithful (single₀ V) :=
  Faithful.of_iso (single₀IsoSingle V).symm

instance : Full (single₀ V) :=
  Full.ofIso (single₀IsoSingle V).symm

end ChainComplex

namespace CochainComplex

/-- `CochainComplex.single₀ V` is the embedding of `V` into `CochainComplex V ℕ`
as cochain complexes supported in degree 0.

This is naturally isomorphic to `single V _ 0`, but has better definitional properties.
-/
def single₀ : V ⥤ CochainComplex V ℕ where
  obj X :=
    { X := fun n =>
        match n with
        | 0 => X
        | _ + 1 => 0
      d := fun i j => 0 }
  map f :=
    { f := fun n =>
        match n with
        | 0 => f
        | n + 1 => 0 }
  map_id X := by
    ext (_|_)
    · rfl
    · simp
  map_comp f g := by
    ext (_|_)
    · rfl
    · simp
#align cochain_complex.single₀ CochainComplex.single₀

@[simp]
theorem single₀_obj_X_0 (X : V) : ((single₀ V).obj X).X 0 = X :=
  rfl
set_option linter.uppercaseLean3 false in
#align cochain_complex.single₀_obj_X_0 CochainComplex.single₀_obj_X_0

@[simp]
theorem single₀_obj_X_succ (X : V) (n : ℕ) : ((single₀ V).obj X).X (n + 1) = 0 :=
  rfl
set_option linter.uppercaseLean3 false in
#align cochain_complex.single₀_obj_X_succ CochainComplex.single₀_obj_X_succ

@[simp]
theorem single₀_obj_X_d (X : V) (i j : ℕ) : ((single₀ V).obj X).d i j = 0 :=
  rfl
set_option linter.uppercaseLean3 false in
#align cochain_complex.single₀_obj_X_d CochainComplex.single₀_obj_X_d

@[simp]
theorem single₀_obj_x_dFrom (X : V) (j : ℕ) : ((single₀ V).obj X).dFrom j = 0 := by
  rw [dFrom_eq ((single₀ V).obj X) rfl]
  simp
set_option linter.uppercaseLean3 false in
#align cochain_complex.single₀_obj_X_d_from CochainComplex.single₀_obj_x_dFrom

@[simp]
theorem single₀_obj_x_dTo (X : V) (i : ℕ) : ((single₀ V).obj X).dTo i = 0 := by
  cases i
  · rw [dTo_eq_zero]
    simp
  · erw [dTo_eq ((single₀ V).obj X) rfl]
    simp
set_option linter.uppercaseLean3 false in
#align cochain_complex.single₀_obj_X_d_to CochainComplex.single₀_obj_x_dTo

@[simp]
theorem single₀_map_f_0 {X Y : V} (f : X ⟶ Y) : ((single₀ V).map f).f 0 = f :=
  rfl
#align cochain_complex.single₀_map_f_0 CochainComplex.single₀_map_f_0

@[simp]
theorem single₀_map_f_succ {X Y : V} (f : X ⟶ Y) (n : ℕ) : ((single₀ V).map f).f (n + 1) = 0 :=
  rfl
#align cochain_complex.single₀_map_f_succ CochainComplex.single₀_map_f_succ

section

variable [HasEqualizers V] [HasCokernels V] [HasImages V] [HasImageMaps V]

/-- Sending objects to cochain complexes supported at `0` then taking `0`-th homology
is the same as doing nothing.
-/
noncomputable def homologyFunctor0Single₀ : single₀ V ⋙ homologyFunctor V _ 0 ≅ 𝟭 V :=
  NatIso.ofComponents (fun X => homology.congr _ _ (by simp) (by simp) ≪≫ homologyZeroZero)
    fun f => by
      -- Porting note: why can't `aesop_cat` do this?
      dsimp
      ext
      simp
#align cochain_complex.homology_functor_0_single₀ CochainComplex.homologyFunctor0Single₀

/-- Sending objects to cochain complexes supported at `0` then taking `(n+1)`-st homology
is the same as the zero functor.
-/
noncomputable def homologyFunctorSuccSingle₀ (n : ℕ) :
    single₀ V ⋙ homologyFunctor V _ (n + 1) ≅ 0 :=
  NatIso.ofComponents
    (fun X =>
      homology.congr _ _ (by simp) (by simp) ≪≫
        homologyZeroZero ≪≫ (Functor.zero_obj _).isoZero.symm)
    fun f => (Functor.zero_obj _).eq_of_tgt _ _
#align cochain_complex.homology_functor_succ_single₀ CochainComplex.homologyFunctorSuccSingle₀

end

variable {V}

/-- Morphisms from a single object cochain complex with `X` concentrated in degree 0
to an `ℕ`-indexed cochain complex `C`
are the same as morphisms `f : X ⟶ C.X 0` such that `f ≫ C.d 0 1 = 0`.
-/
def fromSingle₀Equiv (C : CochainComplex V ℕ) (X : V) :
    ((single₀ V).obj X ⟶ C) ≃ { f : X ⟶ C.X 0 // f ≫ C.d 0 1 = 0 } where
  toFun f :=
    ⟨f.f 0, by
      rw [f.comm 0 1]
      simp⟩
  invFun f :=
    { f := fun i =>
        match i with
        | 0 => f.1
        | n + 1 => 0
      comm' := fun i j h => by
        rcases f with ⟨f, hf⟩
        rcases j with (_|_|j) <;> cases i <;> simp only [single₀_obj_X_d, zero_comp]
        · rw [C.shape, comp_zero]
          simp
        · exact hf
        · rw [C.shape, comp_zero]
          simp
          exact j.succ_succ_ne_one.symm }
  left_inv f := by
    ext i
    rcases i with ⟨⟩
    · rfl
    · dsimp
      ext
  right_inv := by aesop_cat
#align cochain_complex.from_single₀_equiv CochainComplex.fromSingle₀Equiv

-- porting note: added to ease the following definition
@[ext]
theorem from_single₀_ext {C : CochainComplex V ℕ} {X : V} (f g : (single₀ V).obj X ⟶ C)
    (h : f.f 0 = g.f 0) : f = g :=
  (fromSingle₀Equiv C X).injective
    (by
      ext
      exact h)

variable (V)

/-- `single₀` is the same as `single V _ 0`. -/
def single₀IsoSingle : single₀ V ≅ single V _ 0 :=
  NatIso.ofComponents fun X =>
    { hom := { f := fun i => by cases i <;> exact 𝟙 _ }
      inv := { f := fun i => by cases i <;> exact 𝟙 _ }
      hom_inv_id := from_single₀_ext _ _ (by simp)
      inv_hom_id := by
        ext (_|_)
        · dsimp
          simp
        · dsimp
          rw [Category.id_comp]
          rfl }
#align cochain_complex.single₀_iso_single CochainComplex.single₀IsoSingle

instance : Faithful (single₀ V) :=
  Faithful.of_iso (single₀IsoSingle V).symm

instance : Full (single₀ V) :=
  Full.ofIso (single₀IsoSingle V).symm

end CochainComplex
