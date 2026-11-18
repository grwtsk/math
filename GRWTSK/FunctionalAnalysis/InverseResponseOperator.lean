/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.InnerProductSpace.LinearPMap
import Mathlib.Tactic

/-!
# The physical inverse of a bounded symmetric response

For an injective bounded real Hilbert-space operator R with dense range,
construct R^{-1}-a I as a Mathlib LinearPMap, with domain exactly range(R).
Its graph is the closed kernel of (x,y) -> R(y+a x)-x. If R is symmetric,
prove equality with the actual densely defined adjoint, not merely formal
symmetry. This is consumed by WeilPhysicalSourceOperator for the genuine
signed Weil source. No boundedness of the inverse is asserted.

SOURCE_PROOF_CANDIDATE. Elaboration, exact signatures, kernel replay,
transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set
open scoped Topology

namespace GRWTSK.FunctionalAnalysis.InverseResponseOperator

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H]
  [CompleteSpace H]

/-- A continuous equation for the entire unbounded inverse graph. -/
def relation (R : H →L[ℝ] H) (a : ℝ) : Submodule ℝ (H × H) :=
  (R.comp (ContinuousLinearMap.snd ℝ H H +
    a • ContinuousLinearMap.fst ℝ H H) -
      ContinuousLinearMap.fst ℝ H H).ker

@[simp] theorem mem_relation (R : H →L[ℝ] H) (a : ℝ) (x y : H) :
    (x, y) ∈ relation R a ↔ R (y + a • x) = x := by
  change R (y + a • x) - x = 0 ↔ _
  exact sub_eq_zero

/-- No inverse at points outside range(R) is silently totalized. -/
def operator (R : H →L[ℝ] H) (a : ℝ) : H →ₗ.[ℝ] H :=
  (relation R a).toLinearPMap

theorem operator_graph (R : H →L[ℝ] H) (a : ℝ)
    (hR : Function.Injective R) : (operator R a).graph = relation R a := by
  apply Submodule.toLinearPMap_graph_eq
  intro z hz hzero
  have he : R (z.2 + a • z.1) = z.1 := (mem_relation R a z.1 z.2).1 hz
  apply hR
  simpa only [hzero, smul_zero, add_zero, map_zero] using he

theorem mem_operator_graph (R : H →L[ℝ] H) (a : ℝ)
    (hR : Function.Injective R) (x y : H) :
    (x, y) ∈ (operator R a).graph ↔ R (y + a • x) = x := by
  rw [operator_graph R a hR]
  exact mem_relation R a x y

theorem operator_domain (R : H →L[ℝ] H) (a : ℝ)
    (hR : Function.Injective R) : (operator R a).domain = R.range := by
  ext x
  rw [LinearPMap.mem_domain_iff]
  constructor
  · rintro ⟨y, hy⟩
    exact ⟨y + a • x, (mem_operator_graph R a hR x y).1 hy⟩
  · rintro ⟨h, rfl⟩
    refine ⟨h - a • R h, (mem_operator_graph R a hR _ _).2 ?_⟩
    simp

theorem operator_isClosed (R : H →L[ℝ] H) (a : ℝ)
    (hR : Function.Injective R) : (operator R a).IsClosed := by
  rw [LinearPMap.IsClosed, operator_graph R a hR]
  exact (R.comp (ContinuousLinearMap.snd ℝ H H +
    a • ContinuousLinearMap.fst ℝ H H) -
      ContinuousLinearMap.fst ℝ H H).isClosed_ker

theorem operator_dense_domain (R : H →L[ℝ] H) (a : ℝ)
    (hR : Function.Injective R) (hd : Dense (R.range : Set H)) :
    Dense ((operator R a).domain : Set H) := by
  rw [operator_domain R a hR]
  exact hd

theorem value_relation (R : H →L[ℝ] H) (a : ℝ)
    (hR : Function.Injective R) (x : (operator R a).domain) :
    R (operator R a x + a • (x : H)) = x :=
  (mem_operator_graph R a hR _ _).1 ((operator R a).mem_graph x)

theorem response_mem_domain (R : H →L[ℝ] H) (a : ℝ)
    (hR : Function.Injective R) (h : H) : R h ∈ (operator R a).domain := by
  rw [operator_domain R a hR]
  exact ⟨h, rfl⟩

/-- The right inverse law, with the domain proof explicit. -/
theorem operator_on_response (R : H →L[ℝ] H) (a : ℝ)
    (hR : Function.Injective R) (h : H) :
    operator R a ⟨R h, response_mem_domain R a hR h⟩ = h - a • R h := by
  apply Eq.symm
  apply (LinearPMap.image_iff (response_mem_domain R a hR h)).2
  apply (mem_operator_graph R a hR _ _).2
  simp

/-- Symmetry of the inverse is proved on its actual domain. -/
theorem operator_formalAdjoint (R : H →L[ℝ] H) (a : ℝ)
    (hR : Function.Injective R) (hs : R.IsSymmetric) :
    (operator R a).IsFormalAdjoint (operator R a) := by
  intro x y
  have h := hs (operator R a x + a • (x : H))
    (operator R a y + a • (y : H))
  rw [value_relation R a hR x, value_relation R a hR y,
    inner_add_left, inner_add_right, real_inner_smul_left,
    real_inner_smul_right] at h
  linarith

/-- Genuine self-adjointness: the maximal adjoint has the same graph.
The dense-domain premise prevents Mathlib's nondense-adjoint junk branch. -/
theorem operator_isSelfAdjoint (R : H →L[ℝ] H) (a : ℝ)
    (hR : Function.Injective R) (hd : Dense (R.range : Set H))
    (hs : R.IsSymmetric) : IsSelfAdjoint (operator R a) := by
  have hdom := operator_dense_domain R a hR hd
  have hformal := operator_formalAdjoint R a hR hs
  change (operator R a).adjoint = operator R a
  apply le_antisymm
  · apply LinearPMap.le_of_le_graph
    intro z hz
    obtain ⟨u, hu, hv⟩ := (LinearPMap.mem_graph_iff _).1 hz
    have he : R ((operator R a).adjoint u + a • (u : H)) = (u : H) := by
      apply ext_inner_right ℝ
      intro h
      have hp := (LinearPMap.adjoint_isFormalAdjoint
        (T := operator R a) hdom) u
        ⟨R h, response_mem_domain R a hR h⟩
      change inner ℝ ((operator R a).adjoint u) (R h) =
        inner ℝ (u : H)
          (operator R a ⟨R h, response_mem_domain R a hR h⟩) at hp
      rw [operator_on_response R a hR h, inner_sub_right,
        real_inner_smul_right] at hp
      rw [hs, inner_add_left, real_inner_smul_left]
      linarith
    apply (mem_operator_graph R a hR z.1 z.2).2
    simpa only [hu, hv] using he
  · exact LinearPMap.IsFormalAdjoint.le_adjoint (hT := hdom) hformal

end GRWTSK.FunctionalAnalysis.InverseResponseOperator
