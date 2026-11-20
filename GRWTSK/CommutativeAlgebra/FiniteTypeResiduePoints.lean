/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.FieldTheory.IsAlgClosed.Basic
import Mathlib.RingTheory.Jacobson.Ring
import Mathlib.Tactic

/-!
# Residue-field points and separation of a reduced Jacobson algebra

Finite type over a field makes every maximal residue field algebraic over
the coefficient field, so it embeds in an algebraically closed extension.
More generally, explicit embeddings of the maximal residue fields give
enough points to detect every nonzero element of a reduced Jacobson ring.
These are the residue-point and point-separation suppliers for the
finite-type point-derivation rigidity argument.
-/

namespace GRWTSK.CommutativeAlgebra.FiniteTypeResiduePoints

/-- A maximal residue field of a finite-type field algebra has an actual
coefficient-compatible embedding into an algebraically closed extension. -/
theorem exists_residueField_embedding
    (E K C : Type*) [Field E] [Field K] [Algebra E K] [IsAlgClosed K]
    [CommRing C] [Algebra E C] [Algebra.FiniteType E C]
    (m : Ideal C) [m.IsMaximal] :
    ∃ ι : C ⧸ m →ₐ[E] K, Function.Injective ι := by
  let : Field (C ⧸ m) := Ideal.Quotient.field m
  have : Module.Finite E (C ⧸ m) :=
    finite_of_finite_type_of_isJacobsonRing E (C ⧸ m)
  refine ⟨IsAlgClosed.lift, ?_⟩
  exact (IsAlgClosed.lift : C ⧸ m →ₐ[E] K).toRingHom.injective

/-- A nonzero element of a reduced Jacobson algebra is detected by a point
whenever every maximal residue field embeds into the target ring. -/
theorem exists_point_ne_zero_of_jacobson
    (O K C : Type*) [CommRing O] [CommRing K] [CommRing C]
    [Algebra O K] [Algebra O C] [IsJacobsonRing C] [IsReduced C]
    (hp : ∀ m : Ideal C, m.IsMaximal →
      ∃ ι : C ⧸ m →ₐ[O] K, Function.Injective ι)
    (x : C) (hx : x ≠ 0) : ∃ ξ : C →ₐ[O] K, ξ x ≠ 0 := by
  classical
  have hxj : x ∉ (⊥ : Ideal C).jacobson := by
    rw [IsJacobsonRing.out' (⊥ : Ideal C) Ideal.isRadical_bot, Ideal.mem_bot]
    exact hx
  rw [Ideal.jacobson, Ideal.mem_sInf] at hxj
  push Not at hxj
  obtain ⟨m, hm, hxm⟩ := hxj
  obtain ⟨ι, hι⟩ := hp m hm.2
  refine ⟨ι.comp (Ideal.Quotient.mkₐ O m), ?_⟩
  intro hzero
  apply hxm
  apply Ideal.Quotient.eq_zero_iff_mem.mp
  apply hι
  simpa only [AlgHom.comp_apply, Ideal.Quotient.mkₐ_eq_mk, map_zero] using hzero

/-- Vanishing at all target-valued points forces an element of a reduced
Jacobson algebra to be zero when its maximal residue fields embed there. -/
theorem eq_zero_of_all_points
    (O K C : Type*) [CommRing O] [CommRing K] [CommRing C]
    [Algebra O K] [Algebra O C] [IsJacobsonRing C] [IsReduced C]
    (hp : ∀ m : Ideal C, m.IsMaximal →
      ∃ ι : C ⧸ m →ₐ[O] K, Function.Injective ι)
    (x : C) (hx : ∀ ξ : C →ₐ[O] K, ξ x = 0) : x = 0 := by
  by_contra hne
  obtain ⟨ξ, hξ⟩ := exists_point_ne_zero_of_jacobson O K C hp x hne
  exact hξ (hx ξ)

/-- An algebraically closed extension detects every nonzero element of a
reduced finite-type algebra over the coefficient field. -/
theorem exists_point_ne_zero_of_finiteType
    (E K C : Type*) [Field E] [Field K] [Algebra E K] [IsAlgClosed K]
    [CommRing C] [Algebra E C] [Algebra.FiniteType E C] [IsReduced C]
    (x : C) (hx : x ≠ 0) : ∃ ξ : C →ₐ[E] K, ξ x ≠ 0 := by
  have : IsJacobsonRing C := isJacobsonRing_of_finiteType (A := E)
  apply exists_point_ne_zero_of_jacobson E K C _ x hx
  intro m hm
  have : m.IsMaximal := hm
  exact exists_residueField_embedding E K C m

/-- The exact all-points-zero return for a reduced finite-type field algebra. -/
theorem eq_zero_of_all_points_of_finiteType
    (E K C : Type*) [Field E] [Field K] [Algebra E K] [IsAlgClosed K]
    [CommRing C] [Algebra E C] [Algebra.FiniteType E C] [IsReduced C]
    (x : C) (hx : ∀ ξ : C →ₐ[E] K, ξ x = 0) : x = 0 := by
  by_contra hne
  obtain ⟨ξ, hξ⟩ := exists_point_ne_zero_of_finiteType E K C x hne
  exact hξ (hx ξ)

end GRWTSK.CommutativeAlgebra.FiniteTypeResiduePoints
