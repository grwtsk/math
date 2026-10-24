# Complete source: GRWTSK.Algebra.LinearAlgebra.Irreducible.Variant44ed2f619378d4983c9b0ec5c48f90a239aca0ea6f3b0c2792756425b0733145

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f1ceb250a373db2e469300b0d5e601f53d59438` · SHA-256 `44ed2f619378d4983c9b0ec5c48f90a239aca0ea6f3b0c2792756425b0733145`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Stepan Nesterov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stepan Nesterov
-/
module

public import Mathlib.RepresentationTheory.Subrepresentation
public import Mathlib.RepresentationTheory.Intertwining
public import Mathlib.RepresentationTheory.AlgebraRepresentation.Basic

/-!
# Irreducible representations

This file defines irreducible monoid representations.

-/

public section

namespace Representation

open scoped MonoidAlgebra

variable {G k V W : Type*} [Monoid G] [Field k] [AddCommGroup V] [Module k V] [AddCommGroup W]
    [Module k W] (ρ : Representation k G V) (σ : Representation k G W)

/-- A representation `ρ` is irreducible if it is non-trivial and has no proper non-trivial
subrepresentations. -/
abbrev IsIrreducible :=
  IsSimpleOrder (Subrepresentation ρ)

theorem irreducible_iff_isSimpleModule_asModule :
    IsIrreducible ρ ↔ IsSimpleModule k[G] ρ.asModule := by
  rw [isSimpleModule_iff]
  exact OrderIso.isSimpleOrder_iff Subrepresentation.subrepresentationSubmoduleOrderIso

set_option backward.isDefEq.respectTransparency false in
theorem isSimpleModule_iff_irreducible_ofModule (M : Type*) [AddCommGroup M] [Module k[G] M] :
    IsSimpleModule k[G] M ↔ IsIrreducible (ofModule (k := k) (G := G) M) := by
  rw [isSimpleModule_iff]
  exact OrderIso.isSimpleOrder_iff Subrepresentation.submoduleSubrepresentationOrderIso

namespace IsIrreducible

variable {ρ σ} (f : IntertwiningMap ρ σ) [IsIrreducible ρ]

instance : IsSimpleModule k[G] ρ.asModule :=
  (irreducible_iff_isSimpleModule_asModule ρ).mp inferInstance

open Function IntertwiningMap

theorem injective_or_eq_zero : Injective f ∨ f = 0 := by
  rw [← LinearEquiv.map_eq_zero_iff (equivLinearMapAsModule ρ σ)]
  exact LinearMap.injective_or_eq_zero (equivLinearMapAsModule ρ σ f)

theorem surjective_or_eq_zero (g : IntertwiningMap σ ρ) : Surjective g ∨ g = 0 := by
  rw [← LinearEquiv.map_eq_zero_iff (equivLinearMapAsModule σ ρ)]
  exact LinearMap.surjective_or_eq_zero (equivLinearMapAsModule σ ρ g)

theorem bijective_or_eq_zero [IsIrreducible σ] : Bijective f ∨ f = 0 := by
  rw [← LinearEquiv.map_eq_zero_iff (equivLinearMapAsModule ρ σ)]
  exact LinearMap.bijective_or_eq_zero (equivLinearMapAsModule ρ σ f)

instance [IsIrreducible σ] [IsEmpty (Equiv ρ σ)] : Subsingleton (IntertwiningMap ρ σ) :=
  ⟨fun f g ↦ sub_eq_zero.mp <| (bijective_or_eq_zero _).resolve_left
    fun h ↦ isEmpty_iff.mp inferInstance <| (f - g).ofBijective h⟩
variable [FiniteDimensional k V] [IsAlgClosed k]

variable (f : IntertwiningMap ρ ρ) in
theorem algebraMap_intertwiningMap_bijective_of_isAlgClosed :
    Bijective (algebraMap k (IntertwiningMap ρ ρ)) := by
  have : Bijective (algebraMap k (Module.End k[G] ρ.asModule)) :=
    IsSimpleModule.algebraMap_end_bijective_of_isAlgClosed k
  exact (Bijective.of_comp_iff' (IntertwiningMap.equivAlgEnd (ρ := ρ)).bijective _).1 this

variable (ρ) in
@[simp] theorem finrank_intertwiningMap_self : Module.finrank k (IntertwiningMap ρ ρ) = 1 := by
  rw [LinearEquiv.finrank_eq (LinearEquiv.ofBijective (Algebra.linearMap k (IntertwiningMap ρ ρ))
      algebraMap_intertwiningMap_bijective_of_isAlgClosed).symm]
  exact CommSemiring.finrank_self k

open scoped IsMulCommutative in
include ρ in
variable (ρ) in
theorem finrank_eq_one_of_isMulCommutative [IsMulCommutative G] : Module.finrank k V = 1 := by
  exact IsSimpleModule.finrank_eq_one_of_isMulCommutative k[G] ρ.asModule k

end IsIrreducible

end Representation
```
