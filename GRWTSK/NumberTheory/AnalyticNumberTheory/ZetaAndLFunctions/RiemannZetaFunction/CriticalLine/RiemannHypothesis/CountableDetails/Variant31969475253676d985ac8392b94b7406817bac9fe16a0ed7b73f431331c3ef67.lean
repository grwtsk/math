import Mathlib

/-!
# Orthogonal nonzero detail directions in a separable real carrier

Batch 06's countability boundary is proved by normalizing every nonzero
orthogonal direction and using disjoint open half-balls in a separable space.
Summable scalar energy also has countable nonzero support. Labels outside that
support and nonorthogonal redundant frames are not claimed countable.
No arithmetic energy estimate or completed source representation is supplied.

Human Hilbert-carrier direction: grwtsk contributors. Local detail interface and
Lean proof: OpenAI Codex. Separability, inner products and sum-support results
retain their Mathlib source identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.CountableDetails

noncomputable section

theorem orthonormal_directions_countable {ι E : Type*} [NormedAddCommGroup E]
    [InnerProductSpace ℝ E] [TopologicalSpace.SeparableSpace E] {v : ι → E}
    (hv : Orthonormal ℝ v) : Countable ι := by
  have hdist {i j : ι} (hij : i ≠ j) : 1 ≤ dist (v i) (v j) := by
    have h := norm_sub_sq_real (v i) (v j)
    rw [hv.1 i, hv.1 j, hv.inner_eq_zero hij] at h
    rw [dist_eq_norm]
    nlinarith [norm_nonneg (v i - v j)]
  have hd : Pairwise (fun i j => Disjoint
      (Metric.ball (v i) (1 / 2 : ℝ)) (Metric.ball (v j) (1 / 2 : ℝ))) := by
    intro i j hij
    apply Set.disjoint_left.mpr
    intro x hx hy
    have hx' := Metric.mem_ball.mp hx
    have hy' := Metric.mem_ball.mp hy
    have ht := dist_triangle (v i) x (v j)
    rw [dist_comm (v i) x] at ht
    have hsep := hdist hij
    linarith
  exact hd.countable_of_isOpen_disjoint (fun _ => Metric.isOpen_ball)
    (fun i => ⟨v i, Metric.mem_ball_self (by norm_num)⟩)

theorem nonzero_orthogonal_directions_countable {ι E : Type*} [NormedAddCommGroup E]
    [InnerProductSpace ℝ E] [TopologicalSpace.SeparableSpace E] (v : ι → E)
    (hne : ∀ i, v i ≠ 0) (hortho : Pairwise (fun i j => inner ℝ (v i) (v j) = 0)) :
    Countable ι := by
  let normalized : ι → E := fun i => (‖v i‖⁻¹ : ℝ) • v i
  apply orthonormal_directions_countable (v := normalized)
  constructor
  · intro i
    have hn : 0 < ‖v i‖ := norm_pos_iff.mpr (hne i)
    simp [normalized, norm_smul, hn.ne']
  · intro i j hij
    simp [normalized, inner_smul_left, inner_smul_right, hortho hij]

theorem summable_energy_active_support_countable {ι : Type*} (energy : ι → ℝ)
    (henergy : Summable energy) : (Function.support energy).Countable :=
  henergy.countable_support

end
end GRWTSK.RiemannHypothesis.Conversation.CountableDetails
