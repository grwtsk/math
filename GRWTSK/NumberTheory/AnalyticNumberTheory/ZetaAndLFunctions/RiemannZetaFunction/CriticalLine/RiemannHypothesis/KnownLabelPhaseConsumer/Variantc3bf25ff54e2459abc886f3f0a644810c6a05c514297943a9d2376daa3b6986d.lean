import FormalResearch.RiemannHypothesis.Conversation.PrimePhaseGeometry

/-!
# Labelled phase error pays an actual finite oscillatory signal error

Written direction and certificate 2026-10-09: grwtsk contributors. Local
consumer: OpenAI Codex. Labels and complex coefficients are already supplied;
the theorem does not infer them from a mixture. The actual phase certificate
is a hypothesis, not an admitted Matveev axiom. The finite mode theorem is
separate from any infinite summability extension or zero-source adapter.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.KnownLabelPhaseConsumer
open PrimePhaseGeometry
open scoped BigOperators
noncomputable section

/-- The mode in this module, with the following exact parameterization.

def mode (γ t : ℝ) : ℂ := Complex.exp (Complex.I * ((γ * t : ℝ) : ℂ))
-/
def mode (γ t : ℝ) : ℂ := Complex.exp (Complex.I * ((γ * t : ℝ) : ℂ))

theorem mode_difference_le {γ η t : ℝ} (ht : 0 ≤ t) :
    ‖mode γ t - mode η t‖ ≤ t * |γ - η| := by
  have h := unit_phase_difference_le (γ * t) (η * t)
  simpa only [mode, ← sub_mul, abs_mul, abs_of_nonneg ht, mul_comm] using h

theorem known_label_coordinate_error {c : ℝ} {k : ℕ} (hc : 0 < c)
    (hcert : PhaseCertificate c k) {H γ η ε : ℝ} (hH : 0 < H)
    (hγ : |γ| ≤ H) (hη : |η| ≤ H) (herror : phaseDistance γ η ≤ ε)
    {t : ℝ} (ht : 0 ≤ t) :
    ‖mode γ t - mode η t‖ ≤ t * (c⁻¹ * (1 + H) ^ (k : ℝ) * ε) :=
  (mode_difference_le ht).trans
    (mul_le_mul_of_nonneg_left (coordinate_inverse hc hcert hH hγ hη herror) ht)

theorem finite_known_label_error {ι : Type*} (s : Finset ι)
    (a : ι → ℂ) (γ η : ι → ℝ) {c : ℝ} {k : ℕ}
    (hc : 0 < c) (hcert : PhaseCertificate c k) {H ε t : ℝ}
    (hH : 0 < H) (ht : 0 ≤ t)
    (hγ : ∀ j ∈ s, |γ j| ≤ H) (hη : ∀ j ∈ s, |η j| ≤ H)
    (herror : ∀ j ∈ s, phaseDistance (γ j) (η j) ≤ ε) :
    ‖(∑ j ∈ s, a j * mode (γ j) t) - (∑ j ∈ s, a j * mode (η j) t)‖ ≤
      (∑ j ∈ s, ‖a j‖) * t * (c⁻¹ * (1 + H) ^ (k : ℝ) * ε) := by
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ j ∈ s, ‖a j * mode (γ j) t - a j * mode (η j) t‖ :=
      norm_sum_le _ _
    _ ≤ ∑ j ∈ s, ‖a j‖ * (t * (c⁻¹ * (1 + H) ^ (k : ℝ) * ε)) := by
      apply Finset.sum_le_sum
      intro j hj
      rw [← mul_sub, norm_mul]
      exact mul_le_mul_of_nonneg_left
        (known_label_coordinate_error hc hcert hH (hγ j hj) (hη j hj)
          (herror j hj) ht) (norm_nonneg _)
    _ = _ := by rw [← Finset.sum_mul]; ring

/-- Exact polynomial cost with a supplied positive cutoff and supplied mass. -/
theorem polynomial_known_label_error {ι : Type*} (s : Finset ι)
    (a : ι → ℂ) (γ η : ι → ℝ) {c C aexp M b A H ε t : ℝ} {k : ℕ}
    (hc : 0 < c) (hcert : PhaseCertificate c k)
    (hC : 0 ≤ C) (ha : 0 ≤ aexp) (hM : 0 ≤ M) (hA : 1 ≤ A)
    (hH : 0 < H) (hcutoff : H ≤ C * A ^ aexp) (hε : 0 ≤ ε)
    (ht : t ∈ Set.Icc 0 (2 * A))
    (hγ : ∀ j ∈ s, |γ j| ≤ H) (hη : ∀ j ∈ s, |η j| ≤ H)
    (herror : ∀ j ∈ s, phaseDistance (γ j) (η j) ≤ ε)
    (hmass : (∑ j ∈ s, ‖a j‖) ≤ M * A ^ b) :
    ‖(∑ j ∈ s, a j * mode (γ j) t) - (∑ j ∈ s, a j * mode (η j) t)‖ ≤
      2 * M * c⁻¹ * (1 + C) ^ (k : ℝ) * A ^ (1 + b + aexp * k) * ε := by
  have hinv := inverse_cost_at_polynomial_cutoff (k := k) hc hC ha hA hH.le hcutoff
  have hAn : 0 ≤ A := by linarith
  have hcost : 0 ≤ c⁻¹ * (1 + H) ^ (k : ℝ) * ε := by positivity
  have hleft := mul_le_mul hmass ht.2 ht.1
    (mul_nonneg hM (Real.rpow_nonneg hAn b))
  have hright := mul_le_mul_of_nonneg_right hinv hε
  have hproduct := mul_le_mul hleft hright hcost
    (mul_nonneg (mul_nonneg hM (Real.rpow_nonneg hAn b)) (by linarith : 0 ≤ 2 * A))
  have heq : M * A ^ b * (2 * A) *
      (c⁻¹ * (1 + C) ^ (k : ℝ) * A ^ (aexp * k) * ε) =
      2 * M * c⁻¹ * (1 + C) ^ (k : ℝ) * A ^ (1 + b + aexp * k) * ε := by
    rw [Real.rpow_add (by linarith : 0 < A), Real.rpow_add (by linarith : 0 < A),
      Real.rpow_one]
    ring
  exact (finite_known_label_error s a γ η hc hcert hH ht.1 hγ hη herror).trans
    (hproduct.trans_eq heq)

theorem separately_measured_port_error {x y measured : EuclideanSpace ℂ (Fin 2)}
    {ε : ℝ} (hx : ‖x - measured‖ ≤ ε) (hy : ‖y - measured‖ ≤ ε) :
    ‖x - y‖ ≤ 2 * ε := by
  have h := norm_sub_le_norm_sub_add_norm_sub x measured y
  rw [norm_sub_rev measured y] at h
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.KnownLabelPhaseConsumer
