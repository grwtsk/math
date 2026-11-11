/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.SchurNegativeIndex
import Mathlib.LinearAlgebra.FiniteDimensional.Basic
import Mathlib.Analysis.Normed.Group.Constructions
import Mathlib.Tactic

/-!
# Finite observation bounds and robust negative frames

MSC2020: 15A63, 47A55; consumer RP-OC-03 / math issue #1808.
Baseline: grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94.

A nonnegative kernel of a finite-dimensional linear observation gives an upper
bound on the existing scalar-field negative index. Every negative frame is
injected into the observation space: a vector in the kernel would have both
nonnegative and strictly negative value. This generalizes the scalar-functional
argument in `SchurObserverCertificate.functional_injective_on_negative_subspace`.
No finite-dimensionality of the original form domain is required.

A uniform negative margin on ALL coefficient vectors survives a smaller uniform
quadratic error. Strict negativity itself proves frame injectivity; a list of
separately negative vectors would not suffice. Combining the lower and upper
bounds gives exact finite inertia without presupposing an eigenvalue theorem.

The source-return identities and the observation-kernel estimate remain actual
hypotheses. This does not construct a Weil operator, prove compactness, identify
spectral projections, or supply an arithmetic sign. The mechanisms are standard
linear and order algebra, not a novelty claim. The prior source and Mathlib retain
their own authorship and licenses. Individual declaration records are adjacent.

FORMAL_SOURCE_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom audit,
and independent mathematical review: NOT_RUN. No proof execution dispatched.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.LinearAlgebra.NegativeIndexBounds

open GRWTSK.LinearAlgebra.NegativeIndex

section Algebraic

variable {𝕜 V W : Type*} [Field 𝕜]
  [AddCommGroup V] [Module 𝕜 V] [AddCommGroup W] [Module 𝕜 W]

/-- A strict negative parametrization cannot collapse a nonzero coefficient. -/
theorem injective_of_strict_negative {n : ℕ} (Q : V → ℝ) (hzero : Q 0 = 0)
    (L : (Fin n → 𝕜) →ₗ[𝕜] V)
    (hnegative : ∀ x, x ≠ 0 → Q (L x) < 0) : Function.Injective L := by
  intro x y hxy
  apply sub_eq_zero.mp
  by_contra hne
  have hz : Q (L (x - y)) = 0 := by rw [map_sub, hxy, sub_self, hzero]
  have hn := hnegative (x - y) hne
  rw [hz] at hn
  exact (lt_irrefl (0 : ℝ)) hn

/-- Reuse the existing negative-frame definition, deriving its injectivity field. -/
theorem hasNegativeFrame_of_strict_negative {n : ℕ}
    (Q : V → ℝ) (hzero : Q 0 = 0) (L : (Fin n → 𝕜) →ₗ[𝕜] V)
    (hnegative : ∀ x, x ≠ 0 → Q (L x) < 0) :
    HasNegativeFrame (𝕜 := 𝕜) Q n :=
  ⟨L, injective_of_strict_negative Q hzero L hnegative, hnegative⟩

/-- Observation is injective on a negative frame when its whole kernel is nonnegative. -/
theorem observation_injective_on_negative_frame {n : ℕ}
    (Q : V → ℝ) (observe : V →ₗ[𝕜] W)
    (hkernel : ∀ v, observe v = 0 → 0 ≤ Q v)
    (L : (Fin n → 𝕜) →ₗ[𝕜] V)
    (hnegative : ∀ x, x ≠ 0 → Q (L x) < 0) :
    Function.Injective (observe.comp L) := by
  intro x y hxy
  apply sub_eq_zero.mp
  by_contra hne
  have hxy' : observe (L x) = observe (L y) := hxy
  have hz : observe (L (x - y)) = 0 := by
    rw [map_sub, map_sub, hxy', sub_self]
  exact (not_lt_of_ge (hkernel (L (x - y)) hz)) (hnegative (x - y) hne)

/-- Bound every finite negative dimension in the declared scalar field. -/
theorem negativeFrame_dimension_le [FiniteDimensional 𝕜 W]
    {Q : V → ℝ} {n : ℕ} (observe : V →ₗ[𝕜] W)
    (hkernel : ∀ v, observe v = 0 → 0 ≤ Q v)
    (hframe : HasNegativeFrame (𝕜 := 𝕜) Q n) :
    n ≤ Module.finrank 𝕜 W := by
  obtain ⟨L, _, hnegative⟩ := hframe
  have hinj := observation_injective_on_negative_frame Q observe hkernel L hnegative
  simpa using LinearMap.finrank_le_finrank_of_injective hinj

/-- Finite codimension is an upper index certificate, not an assumed finite global index. -/
theorem negativeIndex_le_finrank_of_nonneg_kernel [FiniteDimensional 𝕜 W]
    (Q : V → ℝ) (observe : V →ₗ[𝕜] W)
    (hkernel : ∀ v, observe v = 0 → 0 ≤ Q v) :
    negativeIndex (𝕜 := 𝕜) Q ≤ (Module.finrank 𝕜 W : ℕ∞) := by
  unfold negativeIndex
  refine iSup_le fun n => iSup_le fun hn => ?_
  exact_mod_cast negativeFrame_dimension_le observe hkernel hn

/-- A negative frame and a matching finite observation certify the exact index. -/
theorem negativeIndex_eq_of_frame_and_observer [FiniteDimensional 𝕜 W]
    {Q : V → ℝ} {n : ℕ} (observe : V →ₗ[𝕜] W)
    (hkernel : ∀ v, observe v = 0 → 0 ≤ Q v)
    (hdimension : Module.finrank 𝕜 W = n)
    (hframe : HasNegativeFrame (𝕜 := 𝕜) Q n) :
    negativeIndex (𝕜 := 𝕜) Q = (n : ℕ∞) := by
  apply le_antisymm
  · simpa only [hdimension] using negativeIndex_le_finrank_of_nonneg_kernel Q observe hkernel
  · exact natCast_le_negativeIndex hframe

/-- A paid reference-energy estimate supplies the nonnegative-kernel premise.
`mass` is the actual source mass; it is not replaced by a head-coordinate norm. -/
theorem negativeIndex_le_of_energy_budget [FiniteDimensional 𝕜 W]
    (Q energy mass : V → ℝ) (observe : V →ₗ[𝕜] W) (loss error : ℝ)
    (hloss : 0 ≤ loss) (henergy : ∀ v, 0 ≤ energy v)
    (hlower : ∀ v, energy v - loss * mass v ≤ Q v)
    (happrox : ∀ v, observe v = 0 → mass v ≤ error * energy v)
    (hbudget : loss * error ≤ 1) :
    negativeIndex (𝕜 := 𝕜) Q ≤ (Module.finrank 𝕜 W : ℕ∞) := by
  apply negativeIndex_le_finrank_of_nonneg_kernel Q observe
  intro v hv
  have hp := mul_le_mul_of_nonneg_left (happrox v hv) hloss
  have hr := mul_nonneg (sub_nonneg.mpr hbudget) (henergy v)
  have hl := hlower v
  nlinarith

/-- A positive multiplicity weight changes scale, not the number of negative directions. -/
theorem hasNegativeFrame_pos_mul_iff (Q : V → ℝ) (c : ℝ) (hc : 0 < c) (n : ℕ) :
    HasNegativeFrame (𝕜 := 𝕜) (fun v => c * Q v) n ↔
      HasNegativeFrame (𝕜 := 𝕜) Q n := by
  constructor
  · rintro ⟨L, hL, hn⟩
    refine ⟨L, hL, ?_⟩
    intro x hx
    by_contra h
    have hq : 0 ≤ Q (L x) := le_of_not_gt h
    exact (not_lt_of_ge (mul_nonneg hc.le hq)) (hn x hx)
  · rintro ⟨L, hL, hn⟩
    exact ⟨L, hL, fun x hx => mul_neg_of_pos_of_neg hc (hn x hx)⟩

theorem negativeIndex_pos_mul (Q : V → ℝ) (c : ℝ) (hc : 0 < c) :
    negativeIndex (𝕜 := 𝕜) (fun v => c * Q v) = negativeIndex (𝕜 := 𝕜) Q := by
  apply le_antisymm
  · exact negativeIndex_le_of_frames fun n h => (hasNegativeFrame_pos_mul_iff Q c hc n).1 h
  · exact negativeIndex_le_of_frames fun n h => (hasNegativeFrame_pos_mul_iff Q c hc n).2 h

end Algebraic

section Perturbation

variable {𝕜 V : Type*} [NormedField 𝕜] [AddCommGroup V] [Module 𝕜 V]

/-- Uniform control of the full quadratic value, not separate control on basis vectors. -/
theorem hasNegativeFrame_of_error_bound {n : ℕ}
    (Q : V → ℝ) (hzero : Q 0 = 0) (L : (Fin n → 𝕜) →ₗ[𝕜] V)
    (model : (Fin n → 𝕜) → ℝ) (margin error : ℝ)
    (hmodel : ∀ x, model x ≤ -margin * ‖x‖ ^ 2)
    (herror : ∀ x, |Q (L x) - model x| ≤ error * ‖x‖ ^ 2)
    (hmargin : error < margin) : HasNegativeFrame (𝕜 := 𝕜) Q n := by
  apply hasNegativeFrame_of_strict_negative Q hzero L
  intro x hx
  have hn : 0 < ‖x‖ ^ 2 := sq_pos_of_pos (norm_pos_iff.mpr hx)
  have hp : 0 < (margin - error) * ‖x‖ ^ 2 := mul_pos (sub_pos.mpr hmargin) hn
  have he := (abs_le.mp (herror x)).2
  have hm := hmodel x
  nlinarith

end Perturbation

section Schur

variable {𝕜 V W U : Type*} [Field 𝕜]
  [AddCommGroup V] [Module 𝕜 V] [AddCommGroup W] [Module 𝕜 W]
  [AddCommGroup U] [Module 𝕜 U] [FiniteDimensional 𝕜 U]

/-- Exact completed-square transport followed by the finite observation bound.
The same Schur form and solution map occur in both hypotheses. -/
theorem completedSquare_negativeIndex_le
    (Q : V × W → ℝ) (S : V → ℝ) (R : W → ℝ) (Y : V →ₗ[𝕜] W)
    (hSzero : S 0 = 0) (hRzero : R 0 = 0) (hR : ∀ y, 0 ≤ R y)
    (hreturn : ∀ z, Q z = S z.1 + R (z.2 + Y z.1))
    (observe : V →ₗ[𝕜] U) (hkernel : ∀ v, observe v = 0 → 0 ≤ S v) :
    negativeIndex (𝕜 := 𝕜) Q ≤ (Module.finrank 𝕜 U : ℕ∞) := by
  rw [GRWTSK.LinearAlgebra.SchurNegativeIndex.negativeIndex_completedSquare
    Q S R Y hSzero hRzero hR hreturn]
  exact negativeIndex_le_finrank_of_nonneg_kernel S observe hkernel

end Schur

/-- Two independent, separately negative vectors need not span a negative subspace. -/
theorem separate_negative_vectors_counterexample :
    let q : ℝ × ℝ → ℝ := fun v => -(v.1 ^ 2) - v.2 ^ 2 + 4 * v.1 * v.2
    q (1, 0) < 0 ∧ q (0, 1) < 0 ∧ 0 < q (1, 1) := by
  norm_num

/-- At equality the permitted perturbation can erase the strict sign completely. -/
theorem equality_budget_counterexample (x : ℝ) :
    |(0 : ℝ) - (-x ^ 2)| ≤ x ^ 2 ∧ ¬ ((0 : ℝ) < 0) := by
  constructor
  · rw [zero_sub, neg_neg, abs_of_nonneg (sq_nonneg x)]
  · exact lt_irrefl _

end GRWTSK.LinearAlgebra.NegativeIndexBounds
