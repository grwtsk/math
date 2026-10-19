import FormalResearch.RiemannHypothesis.Conversation.WeightedHodge

/-!
# Infinite square energy and the native deficit rate

Batch 12's p=2 barrier is obtained by taking the limit of the proved finite
weighted refinement bound. Exact HasSum hypotheses retain height, width and
energy separately. On width 2 exp(-T/2), a tail energy tending to zero forces
the rescaled deficit Delta(T) exp(T/4) to tend to zero. This is a necessary
rate for that energy certificate, not a claim that actual prime energy is finite.

Human native-time and rate direction: grwtsk contributors. Local limiting
adapter and Lean proof: OpenAI Codex. Sum convergence, exponential and square
root infrastructure retain Mathlib identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.TailEnergyBarrier

open Filter
open scoped BigOperators Topology
noncomputable section

theorem finite_square_bound (w ρ : ℕ → ℝ) (hw : ∀ j, 0 < w j) (N : ℕ) :
    (∑ j ∈ Finset.range N, ρ j) ^ 2 ≤
      (∑ j ∈ Finset.range N, w j) * (∑ j ∈ Finset.range N, ρ j ^ 2 / w j) := by
  by_cases hN : N = 0
  · subst N
    simp
  have hW : 0 < ∑ j ∈ Finset.range N, w j :=
    Finset.sum_pos (fun j _ => hw j) ⟨0, Finset.mem_range.mpr (by omega)⟩
  have h := WeightedHodge.finite_refinement_mono (Finset.range N) w ρ
    (fun j _ => hw j) hW.ne'
  simpa only [mul_comm] using (div_le_iff₀ hW).mp h

theorem infinite_square_bound (w ρ : ℕ → ℝ) (hw : ∀ j, 0 < w j)
    {Δ W E : ℝ} (hheight : HasSum ρ Δ) (hwidth : HasSum w W)
    (henergy : HasSum (fun j => ρ j ^ 2 / w j) E) : Δ ^ 2 ≤ W * E := by
  exact le_of_tendsto_of_tendsto'
    (hheight.tendsto_sum_nat.pow 2)
    (hwidth.tendsto_sum_nat.mul henergy.tendsto_sum_nat)
    (finite_square_bound w ρ hw)

theorem native_scaled_deficit_square {Δ E T : ℝ}
    (henergy : Δ ^ 2 ≤ (2 * Real.exp (-T / 2)) * E) :
    (Δ * Real.exp (T / 4)) ^ 2 ≤ 2 * E := by
  have hexp : Real.exp (-T / 2) * (Real.exp (T / 4)) ^ 2 = 1 := by
    rw [pow_two, ← mul_assoc, ← Real.exp_add, ← Real.exp_add]
    rw [show -T / 2 + T / 4 + T / 4 = 0 by ring, Real.exp_zero]
  calc
    _ = Δ ^ 2 * (Real.exp (T / 4)) ^ 2 := by ring
    _ ≤ ((2 * Real.exp (-T / 2)) * E) * (Real.exp (T / 4)) ^ 2 :=
      mul_le_mul_of_nonneg_right henergy (sq_nonneg _)
    _ = 2 * E * (Real.exp (-T / 2) * (Real.exp (T / 4)) ^ 2) := by ring
    _ = 2 * E := by rw [hexp]; ring

theorem native_tail_energy_forces_deficit_rate (Δ E : ℕ → ℝ)
    (hΔ : ∀ N, 0 ≤ Δ N) (hE : ∀ N, 0 ≤ E N)
    (henergy : ∀ N, (Δ N) ^ 2 ≤ (2 * Real.exp (-(N : ℝ) / 2)) * E N)
    (htail : Tendsto E atTop (𝓝 0)) :
    Tendsto (fun N => Δ N * Real.exp ((N : ℝ) / 4)) atTop (𝓝 0) := by
  have hupper : Tendsto (fun N => Real.sqrt (2 * E N)) atTop (𝓝 0) := by
    have hmul : Tendsto (fun N => (2 : ℝ) * E N) atTop (𝓝 ((2 : ℝ) * 0)) :=
      tendsto_const_nhds.mul htail
    simpa only [mul_zero, Real.sqrt_zero] using hmul.sqrt
  apply squeeze_zero (fun N => mul_nonneg (hΔ N) (Real.exp_pos _).le) _ hupper
  intro N
  have hsq := native_scaled_deficit_square (henergy N)
  have hs := Real.sq_sqrt (mul_nonneg (by norm_num : (0 : ℝ) ≤ 2) (hE N))
  have hn := Real.sqrt_nonneg (2 * E N)
  nlinarith

/-- Finite total energy supplies the vanishing tail used by the rate consumer. -/
theorem finite_square_energy_forces_native_deficit_rate (w ρ Δ : ℕ → ℝ)
    (hw : ∀ j, 0 < w j) (hρ : ∀ j, 0 ≤ ρ j)
    (hwidth : ∀ N : ℕ, HasSum (fun j => w (j + N)) (2 * Real.exp (-(N : ℝ) / 2)))
    (hheight : ∀ N : ℕ, HasSum (fun j => ρ (j + N)) (Δ N))
    (hfinite : Summable (fun j => ρ j ^ 2 / w j)) :
    Tendsto (fun N => Δ N * Real.exp ((N : ℝ) / 4)) atTop (𝓝 0) := by
  let E : ℕ → ℝ := fun N => ∑' j : ℕ, ρ (j + N) ^ 2 / w (j + N)
  have hΔ (N : ℕ) : 0 ≤ Δ N := by
    rw [← (hheight N).tsum_eq]
    exact tsum_nonneg (fun j => hρ (j + N))
  have hE (N : ℕ) : 0 ≤ E N :=
    tsum_nonneg (fun j => div_nonneg (sq_nonneg _) (hw (j + N)).le)
  have hbound (N : ℕ) : (Δ N) ^ 2 ≤ (2 * Real.exp (-(N : ℝ) / 2)) * E N := by
    have hs : Summable (fun j => ρ (j + N) ^ 2 / w (j + N)) :=
      (summable_nat_add_iff N).mpr hfinite
    exact infinite_square_bound (fun j => w (j + N)) (fun j => ρ (j + N))
      (fun j => hw (j + N)) (hheight N) (hwidth N) hs.hasSum
  have htail : Tendsto E atTop (𝓝 0) := tendsto_sum_nat_add (fun j => ρ j ^ 2 / w j)
  exact native_tail_energy_forces_deficit_rate Δ E hΔ hE hbound htail

end
end GRWTSK.RiemannHypothesis.Conversation.TailEnergyBarrier
