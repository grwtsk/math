/- Local attribution: grwtsk contributors.
Source candidates; compilation, fresh replay and transitive axiom audit NOT_RUN.
OpenAI source keeps its exact Apache-2.0 attribution and dependency pin. -/
import OpenAITwoPointFiniteFamily

namespace GRWTSK.NumberTheory.MultiplicativeNumberTheory.LiouvilleNormalizedReadouts

open scoped BigOperators
open OAI.TwoPointCorrelations
open GRWTSK.NumberTheory.Moebius.OpenAITwoPointFiniteFamily

variable {ι : Type*}

/-- The logarithmic saving normalizes an entire fixed finite family with one
exponent. Constants retain their dependence on each affine form. -/
theorem normalized_family_bound :
    ∃ c : ℝ, 0 < c ∧ ∀ (S : Finset ι) (a₁ a₂ b₁ b₂ : ι → ℕ),
      (∀ i ∈ S, 0 < a₁ i ∧ 0 < a₂ i ∧ a₁ i * b₂ i ≠ a₂ i * b₁ i) →
      ∃ C : ι → ℝ, (∀ i ∈ S, 0 < C i) ∧
        ∀ X : ℝ, 3 ≤ X → ∀ K : ι → ℂ,
          ‖(∑ i ∈ S, K i *
              affineSum liouville liouville (a₁ i) (a₂ i) (b₁ i) (b₂ i) ⌊X⌋₊) /
            ((X / Real.rpow (Real.log X) c : ℝ) : ℂ)‖ ≤
            ∑ i ∈ S, ‖K i‖ * C i := by
  obtain ⟨c, hc, hsource⟩ := liouville_finite_family_bound (ι := ι)
  refine ⟨c, hc, ?_⟩
  intro S a₁ a₂ b₁ b₂ hforms
  obtain ⟨C, hC, hb⟩ := hsource S a₁ a₂ b₁ b₂ hforms
  refine ⟨C, hC, ?_⟩
  intro X hX K
  have hXpos : 0 < X := by linarith
  have hlog : 0 < Real.log X := Real.log_pos (by linarith)
  have hscale : 0 < X / Real.rpow (Real.log X) c :=
    div_pos hXpos (Real.rpow_pos_of_pos hlog c)
  rw [norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hscale]
  exact (div_le_iff₀ hscale).2 (hb X hX K)

/-- A finite readout operator is uniformly bounded on the l1 unit ball after
normalization. The allowance depends on the fixed affine family, not on X or K;
no allowance uniform in growing families or any Liouville-to-Möbius map is given. -/
theorem normalized_unit_ball_bound :
    ∃ c : ℝ, 0 < c ∧ ∀ (S : Finset ι) (a₁ a₂ b₁ b₂ : ι → ℕ),
      (∀ i ∈ S, 0 < a₁ i ∧ 0 < a₂ i ∧ a₁ i * b₂ i ≠ a₂ i * b₁ i) →
      ∃ B : ℝ, 0 ≤ B ∧ ∀ X : ℝ, 3 ≤ X → ∀ K : ι → ℂ,
        (∑ i ∈ S, ‖K i‖) ≤ 1 →
        ‖(∑ i ∈ S, K i *
            affineSum liouville liouville (a₁ i) (a₂ i) (b₁ i) (b₂ i) ⌊X⌋₊) /
          ((X / Real.rpow (Real.log X) c : ℝ) : ℂ)‖ ≤ B := by
  classical
  obtain ⟨c, hc, hsource⟩ := normalized_family_bound (ι := ι)
  refine ⟨c, hc, ?_⟩
  intro S a₁ a₂ b₁ b₂ hforms
  obtain ⟨C, hC, hb⟩ := hsource S a₁ a₂ b₁ b₂ hforms
  refine ⟨∑ i ∈ S, C i, Finset.sum_nonneg (fun i hi ↦ (hC i hi).le), ?_⟩
  intro X hX K hK
  apply (hb X hX K).trans
  apply Finset.sum_le_sum
  intro i hi
  have hiK : ‖K i‖ ≤ 1 :=
    (Finset.single_le_sum (fun j _ ↦ norm_nonneg (K j)) hi).trans hK
  simpa only [one_mul] using mul_le_mul_of_nonneg_right hiK (hC i hi).le

end GRWTSK.NumberTheory.MultiplicativeNumberTheory.LiouvilleNormalizedReadouts
