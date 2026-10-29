import FormalResearch.RiemannHypothesis.Conversation.PrimeIncidenceDecoderBoundary

/-!
# The actual prime-incidence decoder pays a uniform nonzero residual

Both test atoms belong to the unchanged complete source inventory at A>=8.
Any shared prime-incidence readout pays at least half their actual signed gap.
The retained kernel coherence and log-two certificate make the worst two-row
absolute reconstruction error greater than 1/40, uniformly in A and in every
chosen decoder. This concerns the explicitly defined prime-membership statistic;
it does not identify that statistic with complete GPY/Zhang data or bound RH's
full signed sum.

Human complete-decoder and retained-error direction: grwtsk contributors. Local
uniform residual consumer: OpenAI Codex. Qualified Mathlib numerical and order
laws retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.PrimeIncidenceResidualBudget
open PrimeIncidenceDecoderBoundary CenteredVaughan
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent
noncomputable section

theorem actual_test_atoms_belong_to_full_inventory {A : ℝ} (hA : 8 ≤ A) :
    2 ∈ primePowerInventory (2 * A) ∧ 3 ∈ primePowerInventory (2 * A) := by
  have he : Real.exp (2 : ℝ) = Real.exp 1 ^ 2 := by simp [← Real.exp_nat_mul]
  have h3 : (3 : ℝ) < Real.exp (2 : ℝ) := by
    rw [he]; nlinarith [Real.exp_one_gt_two]
  have hsource : (3 : ℝ) ≤ Real.exp (2 * A) := h3.le.trans
    (Real.exp_le_exp.mpr (by linarith))
  have hf : 3 ≤ ⌊Real.exp (2 * A)⌋₊ := Nat.le_floor hsource
  constructor <;> apply Finset.mem_Icc.mpr <;> constructor <;> omega

private theorem shared_scalar_half_gap (a b d : ℝ) :
    (b - a) / 2 ≤ max |d - a| |d - b| := by
  have ht := (le_abs_self (b - a)).trans (abs_sub_le b d a)
  rw [abs_sub_comm b d] at ht
  have ha := le_max_left |d - a| |d - b|
  have hb := le_max_right |d - a| |d - b|
  linarith

theorem actual_shared_incidence_half_gap {A : ℝ} (decode : ℝ → ℝ) :
    (actualAtom A 3 - actualAtom A 2) / 2 ≤
      max |decode (incidence 2) - actualAtom A 2| |decode (incidence 3) - actualAtom A 3| := by
  have h := shared_scalar_half_gap (actualAtom A 2) (actualAtom A 3) (decode (incidence 2))
  simpa only [prime_incidence_has_same_actual_fiber] using h

theorem actual_second_atom_uniform_negative_margin {A : ℝ} (hA : 8 ≤ A) :
    actualAtom A 2 < -31 / 576 := by
  have hl : Real.log (2 : ℝ) < 3 / 4 := by linarith [Real.log_two_lt_d9]
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hc := actual_correlation_positive_on_two_log_width hA
    (t := Real.log 2) (by rw [abs_of_nonneg hl0]; linarith)
  have hprod := mul_le_mul_of_nonpos_left hc (by linarith : Real.log (2 : ℝ) - 1 ≤ 0)
  have hs : Real.sqrt (2 : ℝ) < 3 / 2 := by
    nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2), Real.sqrt_nonneg (2 : ℝ)]
  unfold actualAtom
  rw [centeredMangoldt_apply (by norm_num : 2 ≤ 2),
    ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
  norm_num only [Nat.cast_ofNat]
  apply (div_lt_iff₀ (by positivity : 0 < Real.sqrt (2 : ℝ))).mpr
  linarith

theorem every_incidence_decoder_has_uniform_positive_residual {A : ℝ} (hA : 8 ≤ A)
    (decode : ℝ → ℝ) :
    (1 / 40 : ℝ) < max |decode (incidence 2) - actualAtom A 2|
      |decode (incidence 3) - actualAtom A 3| := by
  have hhalf := actual_shared_incidence_half_gap (A := A) decode
  have hneg := actual_second_atom_uniform_negative_margin hA
  have hpos := actual_third_atom_positive hA
  linarith

theorem complete_two_row_residual_budget_is_positive {A epsilon : ℝ} (hA : 8 ≤ A)
    (decode : ℝ → ℝ)
    (h2 : |decode (incidence 2) - actualAtom A 2| ≤ epsilon)
    (h3 : |decode (incidence 3) - actualAtom A 3| ≤ epsilon) : 1 / 40 < epsilon :=
  (every_incidence_decoder_has_uniform_positive_residual hA decode).trans_le (max_le h2 h3)

end
end GRWTSK.RiemannHypothesis.Conversation.PrimeIncidenceResidualBudget
