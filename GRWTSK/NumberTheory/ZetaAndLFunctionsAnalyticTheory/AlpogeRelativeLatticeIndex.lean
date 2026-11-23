/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.AlpogeDeterminantLattices
import Mathlib.Algebra.Module.ZLattice.Covolume
import Mathlib.LinearAlgebra.FreeModule.Finite.CardQuotient

/-!
# Relative index of fractional lattices

For two full rational lattices, a common full sublattice measures the signed
logarithmic index via two genuine finite indices. For the fractional ideals
of a number field their intersection always supplies such a sublattice.
-/

open NumberField Module
open scoped nonZeroDivisors

namespace GRWTSK.NumberTheory.AlpogeRelativeLatticeIndex

/-- For two rational lattices with a common full sublattice, the quotient
of the two ordinary indices is the absolute change-of-basis determinant. -/
theorem index_ratio_eq_abs_det {E ι : Type*} [AddCommGroup E] [Module ℚ E]
    [DecidableEq ι] [Fintype ι] (C P Q : AddSubgroup E) (hCP : C ≤ P) (hCQ : C ≤ Q)
    (bC bP bQ : Basis ι ℚ E) (hc : C = .closure (Set.range bC))
    (hp : P = .closure (Set.range bP)) (hq : Q = .closure (Set.range bQ)) :
    (C.relIndex Q : ℚ) / (C.relIndex P : ℚ) = |bQ.det bP| := by
  rw [AddSubgroup.relIndex_eq_abs_det C Q hCQ bC bQ hc hq,
    AddSubgroup.relIndex_eq_abs_det C P hCP bC bP hc hp,
    ← bQ.det_mul_det bP bC, abs_mul]
  exact mul_div_cancel_right₀ _ (abs_ne_zero.mpr (bP.isUnit_det bC).ne_zero)

/-- A rational automorphism contributes its absolute determinant to the
relative index of its actual image lattice, even without nested lattices. -/
theorem mapped_index_ratio {E ι : Type*} [AddCommGroup E] [Module ℚ E]
    [DecidableEq ι] [Fintype ι] (T : E ≃ₗ[ℚ] E) (C P Q : AddSubgroup E)
    (hCP : C ≤ P.map T.toLinearMap.toAddMonoidHom) (hCQ : C ≤ Q)
    (bC bP bQ : Basis ι ℚ E) (hc : C = .closure (Set.range bC))
    (hp : P = .closure (Set.range bP)) (hq : Q = .closure (Set.range bQ)) :
    (C.relIndex Q : ℚ) / (C.relIndex (P.map T.toLinearMap.toAddMonoidHom) : ℚ) =
      |T.toLinearMap.det| * |bQ.det bP| := by
  have hmap : P.map T.toLinearMap.toAddMonoidHom = .closure (Set.range (bP.map T)) := by
    rw [hp, AddMonoidHom.map_closure, Basis.coe_map, Set.range_comp]
    rfl
  rw [index_ratio_eq_abs_det _ _ _ hCP hCQ bC (bP.map T) bQ hc hmap hq, Basis.coe_map]
  change |bQ.det (T.toLinearMap ∘ bP)| = _
  rw [bQ.det_comp, abs_mul]

variable {K : Type*} [Field K] [NumberField K]

/-- The underlying additive lattice of a fractional ideal. -/
abbrev additiveLattice (I : FractionalIdeal (𝓞 K)⁰ K) : AddSubgroup K :=
  I.coeToSubmodule.toAddSubgroup

private noncomputable def commonIndexBasis (I : (FractionalIdeal (𝓞 K)⁰ K)ˣ) :
    Basis (Free.ChooseBasisIndex ℤ (𝓞 K)) ℚ K :=
  (basisOfFractionalIdeal K I).reindex
    ((integralBasis K).indexEquiv (basisOfFractionalIdeal K I)).symm

private theorem basis_spans (I : (FractionalIdeal (𝓞 K)⁰ K)ˣ) :
    additiveLattice (I : FractionalIdeal (𝓞 K)⁰ K) =
      AddSubgroup.closure (Set.range (commonIndexBasis I)) := by
  rw [← Submodule.span_int_eq_addSubgroupClosure]
  ext x
  change x ∈ (I : Set K) ↔ x ∈ Submodule.span ℤ (Set.range (commonIndexBasis I))
  simpa [commonIndexBasis, Basis.coe_reindex] using
    (mem_span_basisOfFractionalIdeal (K := K) (I := I) (x := x)).symm

private theorem determinant_norm (I : (FractionalIdeal (𝓞 K)⁰ K)ˣ) :
    |(integralBasis K).det (commonIndexBasis I)| = FractionalIdeal.absNorm I.val :=
  det_basisOfFractionalIdeal_eq_absNorm K I _

/-- The virtual index of any two nonzero fractional ideals, computed
with their actual additive intersection, is the ratio of absolute norms. -/
theorem fractionalIdeal_intersection_index_ratio (I J : FractionalIdeal (𝓞 K)⁰ K)
    (hI : I ≠ 0) (hJ : J ≠ 0) :
    ((additiveLattice (I ⊓ J)).relIndex (additiveLattice J) : ℚ) /
        ((additiveLattice (I ⊓ J)).relIndex (additiveLattice I) : ℚ) =
      FractionalIdeal.absNorm I / FractionalIdeal.absNorm J := by
  classical
  have hC : I ⊓ J ≠ 0 := by
    intro h
    have h' := FractionalIdeal.sup_mul_inf I J
    rw [h, zero_mul] at h'
    exact mul_ne_zero hI hJ h'.symm
  let u := Units.mk0 I hI
  let v := Units.mk0 J hJ
  let c := Units.mk0 (I ⊓ J) hC
  rw [index_ratio_eq_abs_det _ _ _ (show additiveLattice (I ⊓ J) ≤ additiveLattice I from
        fun _ h => h.1) (show additiveLattice (I ⊓ J) ≤ additiveLattice J from fun _ h => h.2)
      (commonIndexBasis c) (commonIndexBasis u) (commonIndexBasis v)
      (basis_spans c) (basis_spans u) (basis_spans v)]
  have h := congrArg abs ((integralBasis K).det_mul_det (commonIndexBasis v) (commonIndexBasis u))
  rw [abs_mul, determinant_norm, determinant_norm] at h
  have hn : FractionalIdeal.absNorm J ≠ 0 :=
    (map_ne_zero (FractionalIdeal.absNorm : FractionalIdeal (𝓞 K)⁰ K →*₀ ℚ)).mpr hJ
  exact (eq_div_iff hn).mpr
    ((mul_comm _ _).trans h)

/-- The determinant lines of two pseudo-bases have an exact relative
index even when the map does not carry the source lattice into the target. -/
theorem determinant_line_intersection_index_ratio {ι : Type*} [Fintype ι] [DecidableEq ι]
    (A : Matrix ι ι K) (hA : A.det ≠ 0) (I J : ι → FractionalIdeal (𝓞 K)⁰ K)
    (hI : ∀ j, I j ≠ 0) (hJ : ∀ i, J i ≠ 0) :
    let P := FractionalIdeal.spanSingleton (𝓞 K)⁰ A.det * ∏ j, I j
    let Q := ∏ i, J i
    ((additiveLattice (P ⊓ Q)).relIndex (additiveLattice Q) : ℚ) /
      ((additiveLattice (P ⊓ Q)).relIndex (additiveLattice P) : ℚ) =
      |Algebra.norm ℚ A.det| * (∏ j, FractionalIdeal.absNorm (I j)) /
        (∏ i, FractionalIdeal.absNorm (J i)) := by
  dsimp only
  rw [fractionalIdeal_intersection_index_ratio _ _
    (mul_ne_zero (FractionalIdeal.spanSingleton_ne_zero_iff.mpr hA)
      (Finset.prod_ne_zero_iff.mpr fun j _ => hI j))
    (Finset.prod_ne_zero_iff.mpr fun i _ => hJ i), ← map_div₀]
  exact AlpogeDeterminantLattices.determinant_ideal_absNorm A I J

open MeasureTheory in
/-- Covolumes in the occupied Euclidean space are measured by the same
index quotient. The common lattice hypothesis excludes incommensurable pairs. -/
theorem covolume_ratio_eq_index_ratio {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
    [FiniteDimensional ℝ E] [MeasurableSpace E] [BorelSpace E]
    (C P Q : Submodule ℤ E) [DiscreteTopology C] [IsZLattice ℝ C]
    [DiscreteTopology P] [IsZLattice ℝ P] [DiscreteTopology Q] [IsZLattice ℝ Q]
    (hCP : C ≤ P) (hCQ : C ≤ Q) :
    ZLattice.covolume P / ZLattice.covolume Q =
      (C.toAddSubgroup.relIndex Q.toAddSubgroup : ℝ) /
        (C.toAddSubgroup.relIndex P.toAddSubgroup : ℝ) := by
  rw [← ZLattice.covolume_div_covolume_eq_relIndex' _ _ hCQ,
    ← ZLattice.covolume_div_covolume_eq_relIndex' _ _ hCP]
  field_simp [(ZLattice.covolume_pos C volume).ne', (ZLattice.covolume_pos P volume).ne',
    (ZLattice.covolume_pos Q volume).ne']

end GRWTSK.NumberTheory.AlpogeRelativeLatticeIndex
