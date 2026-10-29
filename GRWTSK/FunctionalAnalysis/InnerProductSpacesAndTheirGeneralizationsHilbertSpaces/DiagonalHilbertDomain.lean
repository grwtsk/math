/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Hilbert sums retain Heather Macbeth's authorship and Apache-2.0
license; other imports retain their upstream attribution and licenses. -/
import Mathlib.Analysis.InnerProductSpace.l2Space
import Mathlib.Analysis.InnerProductSpace.Projection.Submodule
import Mathlib.Tactic

/-!
# The actual maximal domain of a real Hilbert-sum multiplier

The domain consists of precisely those vectors whose weighted coordinates
are square summable. The operator is a linear map on this domain, not a
bounded map on the original Hilbert space. Single-coordinate vectors prove
density and identify the full adjoint domain. The adjoint graph condition is
proved equivalent to the literal graph, including domain membership.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.InnerProductSpace.DiagonalHilbertDomain
variable {I E : Type*} {G : I → Type*}
variable [NormedAddCommGroup E] [InnerProductSpace ℝ E] [CompleteSpace E]
variable [∀ i, NormedAddCommGroup (G i)] [∀ i, InnerProductSpace ℝ (G i)]
variable (U : E ≃ₗᵢ[ℝ] lp G 2) (w : I → ℝ)

def weighted (x : E) (i : I) : G i := w i • U x i

def domain : Submodule ℝ E where
  carrier := {x | Memℓp (weighted U w x) 2}
  zero_mem' := by simpa [weighted] using (zero_mem_ℓp' (E := G) (p := 2))
  add_mem' := by
    intro x y hx hy
    simpa only [weighted, map_add, lp.coeFn_add, Pi.add_apply, smul_add] using hx.add hy
  smul_mem' c x hx := by
    simpa only [weighted, map_smul, lp.coeFn_smul, Pi.smul_apply, smul_comm] using hx.const_smul c

def weightedVector (x : domain U w) : lp G 2 := ⟨weighted U w x, x.property⟩

def operator : domain U w →ₗ[ℝ] E where
  toFun x := U.symm (weightedVector U w x)
  map_add' x y := by
    apply U.injective
    apply lp.ext
    intro i
    simp [weightedVector, weighted, smul_add]
  map_smul' c x := by
    apply U.injective
    apply lp.ext
    intro i
    simp [weightedVector, weighted, smul_comm]

@[simp] theorem operator_coordinate (x : domain U w) (i : I) :
    U (operator U w x) i = w i • U (x : E) i := by
  simp [operator, weightedVector, weighted]

/-- A literal single-coordinate vector belongs to the maximal domain. -/
theorem single_mem (i : I) (u : G i) : U.symm (lp.single 2 i u) ∈ domain U w := by
  classical
  have he : weighted U w (U.symm (lp.single 2 i u)) =
      (lp.single 2 i (w i • u) : ∀ j, G j) := by
    funext j
    by_cases h : j = i
    · subst j; simp [weighted]
    · simp [weighted, lp.single_apply, Pi.single_eq_of_ne h, h]
  change Memℓp _ 2
  rw [he]
  exact lp.memℓp _

def singleVector (i : I) (u : G i) : domain U w :=
  ⟨U.symm (lp.single 2 i u), single_mem U w i u⟩

theorem operator_single (i : I) (u : G i) :
    operator U w (singleVector U w i u) = U.symm (lp.single 2 i (w i • u)) := by
  classical
  apply U.injective
  apply lp.ext
  intro j
  by_cases h : j = i
  · subst j; simp [singleVector]
  · simp [singleVector, lp.single_apply, Pi.single_eq_of_ne h, h]

/-- Finite-mode inputs really give a dense domain, even for unbounded weights. -/
theorem domain_dense : (domain U w).topologicalClosure = ⊤ := by
  classical
  apply Submodule.topologicalClosure_eq_top_iff.mpr
  apply Submodule.eq_bot_iff.mpr
  intro x hx
  have hcoords (i : I) : U x i = 0 := by
    have h := hx (U.symm (lp.single 2 i (U x i))) (single_mem U w i (U x i))
    rw [← U.inner_map_map, U.apply_symm_apply, lp.inner_single_left,
      real_inner_self_eq_norm_sq] at h
    exact norm_eq_zero.mp (by nlinarith [norm_nonneg (U x i)])
  apply U.injective
  apply lp.ext
  intro i
  simpa using hcoords i

/-- Symmetry is a convergent inner-product identity, not a formal unsummed series. -/
theorem symmetric (x y : domain U w) :
    inner ℝ (operator U w x) (y : E) = inner ℝ (x : E) (operator U w y) := by
  rw [← U.inner_map_map, ← U.inner_map_map, lp.inner_eq_tsum, lp.inner_eq_tsum]
  apply tsum_congr
  intro i
  simp only [operator_coordinate, real_inner_smul_left, inner_smul_right]

/-- The maximal adjoint domain is exactly the weighted-square-summability domain.
This gives self-adjointness in explicit graph form, without a fictitious bounded logarithm. -/
theorem adjoint_graph_iff (x y : E) :
    (∀ z : domain U w, inner ℝ (operator U w z) x = inner ℝ (z : E) y) ↔
      ∃ hx : x ∈ domain U w, operator U w ⟨x,hx⟩ = y := by
  classical
  constructor
  · intro h
    have he (i : I) : w i • U x i = U y i := by
      have hp (u : G i) : inner ℝ u (w i • U x i - U y i) = 0 := by
        have hi := h (singleVector U w i u)
        rw [operator_single, ← U.inner_map_map, U.apply_symm_apply,
          lp.inner_single_left] at hi
        change inner ℝ (w i • u) (U x i) = inner ℝ (U.symm (lp.single 2 i u)) y at hi
        rw [← U.inner_map_map, U.apply_symm_apply, lp.inner_single_left] at hi
        simpa only [inner_sub_right, real_inner_smul_left, inner_smul_right,
          sub_eq_zero] using hi
      have hh := hp (w i • U x i - U y i)
      rw [real_inner_self_eq_norm_sq] at hh
      apply sub_eq_zero.mp
      exact norm_eq_zero.mp (by nlinarith [norm_nonneg (w i • U x i - U y i)])
    have hx : x ∈ domain U w := by
      change Memℓp (weighted U w x) 2
      have hfun : weighted U w x = (U y : ∀ i, G i) := funext he
      rw [hfun]
      exact lp.memℓp _
    refine ⟨hx, ?_⟩
    apply U.injective
    apply lp.ext
    intro i
    exact (operator_coordinate U w ⟨x,hx⟩ i).trans (he i)
  · rintro ⟨hx,rfl⟩ z
    exact symmetric U w z ⟨x,hx⟩

/-- Closedness is also established for the graph in the original product space. -/
theorem graph_isClosed :
    IsClosed {p : E × E | ∃ hx : p.1 ∈ domain U w, operator U w ⟨p.1,hx⟩ = p.2} := by
  have he : {p : E × E | ∃ hx : p.1 ∈ domain U w, operator U w ⟨p.1,hx⟩ = p.2} =
      ⋂ z : domain U w, {p : E × E | inner ℝ (operator U w z) p.1 = inner ℝ (z : E) p.2} := by
    ext p
    simp only [Set.mem_iInter, Set.mem_setOf_eq]
    exact (adjoint_graph_iff U w p.1 p.2).symm
  rw [he]
  exact isClosed_iInter (fun z => isClosed_eq
    (continuous_const.inner continuous_fst) (continuous_const.inner continuous_snd))

/-- The quadratic formula is an actually summable series on the constructed domain. -/
theorem quadratic_series (x : domain U w) :
    inner ℝ (x : E) (operator U w x) = ∑' i, w i * ‖U (x : E) i‖ ^ 2 := by
  rw [← U.inner_map_map, lp.inner_eq_tsum]
  apply tsum_congr
  intro i
  rw [operator_coordinate, inner_smul_right, real_inner_self_eq_norm_sq]

theorem quadratic_series_summable (x : domain U w) :
    Summable (fun i => w i * ‖U (x : E) i‖ ^ 2) := by
  simpa only [operator_coordinate, inner_smul_right, real_inner_self_eq_norm_sq] using
    (lp.summable_inner (𝕜 := ℝ) (U (x : E)) (U (operator U w x)))

theorem quadratic_nonnegative (hw : ∀ i (u : G i), 0 ≤ w i * ‖u‖ ^ 2)
    (x : domain U w) : 0 ≤ inner ℝ (x : E) (operator U w x) := by
  rw [quadratic_series]
  exact tsum_nonneg (fun i => hw i _)

/-- A pointwise spectral lower bound yields the full quadratic lower bound,
with the actual maximal domain and every eigenspace multiplicity retained. -/
theorem quadratic_lower_bound (x : domain U w) (g : ℝ)
    (h : ∀ i, g * ‖U (x : E) i‖ ^ 2 ≤ w i * ‖U (x : E) i‖ ^ 2) :
    g * ‖(x : E)‖ ^ 2 ≤ inner ℝ (x : E) (operator U w x) := by
  have hs : Summable (fun i => ‖U (x : E) i‖ ^ 2) := by
    simpa only [real_inner_self_eq_norm_sq] using
      (lp.summable_inner (𝕜 := ℝ) (U (x : E)) (U (x : E)))
  have he : ‖(x : E)‖ ^ 2 = ∑' i, ‖U (x : E) i‖ ^ 2 := by
    rw [← real_inner_self_eq_norm_sq, ← U.inner_map_map, lp.inner_eq_tsum]
    exact tsum_congr (fun i => real_inner_self_eq_norm_sq _)
  rw [he, quadratic_series, ← tsum_mul_left]
  exact Summable.tsum_le_tsum h (hs.mul_left g) (quadratic_series_summable U w x)

end GRWTSK.Analysis.InnerProductSpace.DiagonalHilbertDomain
