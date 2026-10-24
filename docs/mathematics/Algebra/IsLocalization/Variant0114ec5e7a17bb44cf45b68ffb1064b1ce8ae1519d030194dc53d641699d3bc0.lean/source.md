# Complete source: GRWTSK.Algebra.IsLocalization.Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d30404dae678363873714863ac3f07e5692ec6d5` · SHA-256 `0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang, Jujian Zhang
-/
import Mathlib.Algebra.Algebra.Bilinear
import Mathlib.Algebra.Module.LocalizedModule.Basic

/-!
# Equivalence between `IsLocalizedModule` and `IsLocalization`
-/

section IsLocalizedModule

variable {R : Type*} [CommSemiring R] (S : Submonoid R)
variable {A Aₛ : Type*} [CommSemiring A] [Algebra R A]
variable [CommSemiring Aₛ] [Algebra A Aₛ] [Algebra R Aₛ] [IsScalarTower R A Aₛ]

variable {S} in
theorem isLocalizedModule_iff_isLocalization :
    IsLocalizedModule S (IsScalarTower.toAlgHom R A Aₛ).toLinearMap ↔
      IsLocalization (Algebra.algebraMapSubmonoid A S) Aₛ := by
  rw [isLocalizedModule_iff, isLocalization_iff]
  refine and_congr ?_ (and_congr (forall_congr' fun _ ↦ ?_) (forall₂_congr fun _ _ ↦ ?_))
  · simp_rw [← (Algebra.lmul R Aₛ).commutes, Algebra.lmul_isUnit_iff, Subtype.forall,
      Algebra.algebraMapSubmonoid, ← SetLike.mem_coe, Submonoid.coe_map,
      Set.forall_mem_image, ← IsScalarTower.algebraMap_apply]
  · simp_rw [Prod.exists, Subtype.exists, Algebra.algebraMapSubmonoid]
    simp [← IsScalarTower.algebraMap_apply, Submonoid.mk_smul, Algebra.smul_def, mul_comm]
  · congr!; simp_rw [Subtype.exists, Algebra.algebraMapSubmonoid]; simp [Algebra.smul_def]

instance [IsLocalization (Algebra.algebraMapSubmonoid A S) Aₛ] :
    IsLocalizedModule S (IsScalarTower.toAlgHom R A Aₛ).toLinearMap :=
  isLocalizedModule_iff_isLocalization.mpr ‹_›

variable (A)

/-- `A` is a localization of a commutative semiring `R` with respect to `S` iff
the associated linear map `R →ₗ[R] A` is a localization of modules with respect to `S`. -/
lemma isLocalizedModule_iff_isLocalization' :
    IsLocalizedModule S (Algebra.linearMap R A) ↔ IsLocalization S A := by
  convert isLocalizedModule_iff_isLocalization (S := S) (A := R) (Aₛ := A)
  exact (Submonoid.map_id S).symm

instance [IsLocalization S A] : IsLocalizedModule S (Algebra.linearMap R A) :=
  (isLocalizedModule_iff_isLocalization' S _).mpr inferInstance

variable {S A} in
/-- `IsLocalization.mk'` agrees with `IsLocalizedModule.mk'`. -/
lemma IsLocalization.mk'_algebraMap_eq_mk' [IsLocalization (Algebra.algebraMapSubmonoid A S) Aₛ]
    {x : A} {s : S} : IsLocalization.mk' Aₛ x ⟨_, Algebra.mem_algebraMapSubmonoid_of_mem s⟩ =
      IsLocalizedModule.mk' (IsScalarTower.toAlgHom R A Aₛ).toLinearMap x s := by
  rw [← IsLocalizedModule.smul_inj (IsScalarTower.toAlgHom R A Aₛ).toLinearMap s,
    IsLocalizedModule.mk'_cancel', Submonoid.smul_def, ← algebraMap_smul A]
  exact IsLocalization.smul_mk'_self (m := ⟨_, _⟩)

/-- `IsLocalization.mk'` agrees with `IsLocalizedModule.mk'`. -/
lemma IsLocalization.mk'_eq_mk' [IsLocalization S A] (x : R) (s : S) :
    IsLocalization.mk' A x s = IsLocalizedModule.mk' (Algebra.linearMap R A) x s := by
  rw [← IsLocalizedModule.smul_inj (Algebra.linearMap R A) s, IsLocalizedModule.mk'_cancel']
  exact IsLocalization.smul_mk'_self

end IsLocalizedModule
```
