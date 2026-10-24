# Complete source: GRWTSK.Algebra.LinearAlgebra.BaseChange.Variant8bef49b0d0d0325194e0c0d4a254df4f16b2afa89a9bd00ea63d7f3271f5887d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e27e969f648ac8af3dd10df70a35c021ab2f28f0` · SHA-256 `2f6570d27c56e98e0c0d3e72dd64933aafbc6f265be2d6e1e4b7d603ca2e8542`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BaseChange.Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.BaseChange.Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"ff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/Dual/BaseChange.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Antoine Chambert-Loir. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir
-/
module

public import Mathlib.LinearAlgebra.Dual.Defs
public import Mathlib.LinearAlgebra.FreeModule.Finite.Basic
public import Mathlib.RingTheory.TensorProduct.IsBaseChangeFree
public import Mathlib.RingTheory.TensorProduct.IsBaseChangeHom
/-!
# Base change for the dual of a module

* `Module.Dual.congr` : equivalent modules have equivalent duals.

If `f : Module.Dual R V` and `Algebra R A`, then

* `Module.Dual.baseChange A f` is the element
  of `Module.Dual A (A ⊗[R] V)` deduced by base change.

* `Module.Dual.baseChangeHom` is the `R`-linear map
  given by `Module.Dual.baseChange`.

* `IsBaseChange.dual` : for finite free modules, taking dual commutes with base change.

-/


namespace GRWTSK.Algebra.LinearAlgebra.BaseChange.Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77

@[expose] public section

namespace Module.Dual

open TensorProduct LinearEquiv

variable {R : Type*} [CommSemiring R]
  {V : Type*} [AddCommMonoid V] [Module R V]
  {W : Type*} [AddCommMonoid W] [Module R W]
  (A : Type*) [CommSemiring A] [Algebra R A]

/-- Equivalent modules have equivalent duals. -/
@[simps!] def congr (e : V ≃ₗ[R] W) :
    Dual R V ≃ₗ[R] Dual R W := congrLeft R R e

/-- `LinearMap.baseChange` for `Module.Dual`. -/
def baseChange : Dual R V →ₗ[R] Dual A (A ⊗[R] V) :=
  (AlgebraTensorModule.rid R A A).compRight R ∘ₗ LinearMap.baseChangeHom R A V R

@[simp]
theorem baseChange_apply_tmul (f : Dual R V) (a : A) (v : V) :
    f.baseChange A (a ⊗ₜ v) = (f v) • a :=
  rfl

variable {B : Type*} [CommSemiring B] [Algebra R B] [Algebra A B] [IsScalarTower R A B]

open AlgebraTensorModule in
theorem baseChange_baseChange (f : Dual R V) :
    (f.baseChange A).baseChange B = (congr (cancelBaseChange R A B B V)).symm (f.baseChange B) := by
  ext; simp

end Module.Dual

namespace IsBaseChange

open Module TensorProduct

variable {R : Type*} [CommSemiring R]
  {V : Type*} [AddCommMonoid V] [Module R V]
  {W : Type*} [AddCommMonoid W] [Module R W]
  {A : Type*} [CommSemiring A] [Algebra R A] [Module A W] [IsScalarTower R A W]
  {j : V →ₗ[R] W} (ibc : IsBaseChange A j)

/-- The base change of an element of the dual. -/
noncomputable def toDual :
    Dual R V →ₗ[R] Dual A W :=
  linearMapLeftRightHom ibc (Algebra.linearMap R A)

theorem toDual_comp_apply (f : Dual R V) (v : V) :
    ibc.toDual f (j v) = algebraMap R A (f v) := by
  simp [toDual, linearMapLeftRightHom_comp_apply]

theorem toDual_apply (f : Dual R V) :
    ibc.toDual f = (f.baseChange A).congr ibc.equiv := by
  apply ibc.algHom_ext
  intro v
  simp [toDual_comp_apply, Algebra.algebraMap_eq_smul_one]

set_option backward.privateInPublic true in
/-- The linear map underlying `IsBaseChange.toDualBaseChangeLinearEquiv`. -/
private noncomputable def toDualBaseChangeAux :
    A ⊗[R] Dual R V →ₗ[A] Dual A W where
  toAddHom := (TensorProduct.lift {
    toFun a := a • ibc.toDual
    map_add' a b := by simp [add_smul]
    map_smul' r a := by simp }).toAddHom
  map_smul' a g := by
    induction g using TensorProduct.inductionOn with
    | add x y hx hy => aesop
    | tmul b f => simp [TensorProduct.smul_tmul', mul_smul]

set_option backward.privateInPublic true in
private theorem toDualBaseChangeAux_tmul (a : A) (f : Dual R V) (v : V) :
    (ibc.toDualBaseChangeAux (a ⊗ₜ[R] f)) (j v) = a * algebraMap R A (f v) := by
  simp [toDualBaseChangeAux, toDual_comp_apply]

variable [Free R V] [Module.Finite R V]

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- The linear equivalence underlying `IsBaseChange.dual`. -/
noncomputable def toDualBaseChange :
    A ⊗[R] Dual R V ≃ₗ[A] Dual A W := by
  apply LinearEquiv.ofBijective ibc.toDualBaseChangeAux
  let b := Free.chooseBasis R V
  set ι := Free.ChooseBasisIndex R V
  have ibc_pow : IsBaseChange A ((Algebra.linearMap R A).compLeft ι) := (linearMap R A).finitePow ι
  suffices ibc.toDualBaseChangeAux =
      (((b.constr R).symm.baseChange ..).trans ibc_pow.equiv).trans ((ibc.basis b).constr A) from
    this ▸ LinearEquiv.bijective _
  ext f w
  simp only [AlgebraTensorModule.curry_apply, curry_apply, LinearMap.coe_restrictScalars,
    LinearEquiv.coe_coe, LinearEquiv.trans_apply]
  induction w using ibc.inductionOn with
  | tmul v =>
    simp only [toDualBaseChangeAux_tmul, one_mul]
    conv_lhs => rw [← Basis.sum_equivFun b v, map_sum]
    simp [LinearEquiv.baseChange, basis_repr_comp_apply]
  | smul a w h => simp [h]
  | add x y hx hy => simp [map_add, hx, hy]

theorem toDualBaseChange_tmul (a : A) (f : Dual R V) (v : V) :
    (ibc.toDualBaseChange (a ⊗ₜ[R] f)) (j v) = a * algebraMap R A (f v) :=
  toDualBaseChangeAux_tmul ibc a f v

theorem dual : IsBaseChange A (ibc.toDual) := by
  apply of_equiv (toDualBaseChange ibc)
  intro f
  simp [toDualBaseChange, toDualBaseChangeAux]

end IsBaseChange
```
