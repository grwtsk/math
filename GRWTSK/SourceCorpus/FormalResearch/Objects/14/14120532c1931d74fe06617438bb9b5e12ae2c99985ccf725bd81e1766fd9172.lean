import FormalResearch.RiemannHypothesis.Conversation.WeightedSourceEnergy
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

/-!
# The exponential triangle allowance is paid explicitly

Written continuation 2026-10-09: grwtsk contributors. Local finite-bound
consumer: OpenAI Codex. Source regularity alone pays 4*sqrt(N_A) of absolute
weighted Möbius mass and 16*N_A of full physical energy. This is an exponential
allowance in A, not the open fixed-polynomial signed cross-energy theorem.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.WeightedSourceTriangleAllowance
open WeightedSourcePickup WeightedSourceMass WeightedSourceEnergy
open FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation
open scoped BigOperators
noncomputable section

theorem inverse_root_increment (k : ℕ) :
    (Real.sqrt (k + 1 : ℕ))⁻¹ ≤ 2 * (Real.sqrt (k + 1 : ℕ) - Real.sqrt k) := by
  have hp : 0 < ((k + 1 : ℕ) : ℝ) := by positivity
  have hsp := Real.sqrt_pos.mpr hp
  rw [← one_div, div_le_iff₀ hsp]
  have hs := Real.sq_sqrt hp.le
  have hk := Real.sq_sqrt (Nat.cast_nonneg k)
  push_cast at hs ⊢
  nlinarith [sq_nonneg (Real.sqrt (k + 1 : ℕ) - Real.sqrt k)]

theorem inverse_root_sum (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, (Real.sqrt n)⁻¹) ≤ 2 * Real.sqrt N := by
  induction N with
  | zero => simp
  | succ N ih =>
    rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
    have hi := inverse_root_increment N
    linarith

theorem weighted_absolute_mass {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) :
    (∑ n ∈ integerInventory A, |coefficient A t n|) ≤ 4 * Real.sqrt (integerCutoff A) := by
  have hbound : (∑ n ∈ integerInventory A, |coefficient A t n|) ≤
      2 * ∑ n ∈ integerInventory A, (Real.sqrt n)⁻¹ := by
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro n hn
    have hμ : |realMoebius n| ≤ 1 := by
      unfold realMoebius
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))
    have hn1 := (Finset.mem_Icc.mp hn).1
    have h0 := weight_nonneg hA ht hn1
    rw [coefficient, abs_mul, abs_of_nonneg h0]
    have hm := mul_le_mul_of_nonneg_right hμ h0
    have hm' : |realMoebius n| * pickupWeight A t n ≤ pickupWeight A t n := by
      simpa only [one_mul] using hm
    exact hm'.trans (weight_le_inverse_sqrt hA ht hn1)
  have hi := inverse_root_sum (integerCutoff A)
  change (∑ n ∈ integerInventory A, _) ≤ _ at hi
  linarith

theorem physicalEnergy_triangle {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    physicalEnergy A t ≤ (∑ n ∈ integerInventory A, |coefficient A t n|) ^ 2 := by
  rw [physicalEnergy_eq_full_gram hA, pow_two, Finset.sum_mul_sum]
  apply Finset.sum_le_sum
  intro m _
  apply Finset.sum_le_sum
  intro n _
  have hG : |prescribedGram A m n| ≤ 1 := by
    rw [prescribedGram, prescribedCorrelation_eq A hA]
    exact actual_correlation_abs_le_one A _ hA
  calc
    _ ≤ |coefficient A t m * coefficient A t n * prescribedGram A m n| := le_abs_self _
    _ = |coefficient A t m| * |coefficient A t n| * |prescribedGram A m n| := by
      rw [abs_mul, abs_mul]
    _ ≤ _ := by
      simpa only [mul_one] using mul_le_mul_of_nonneg_left hG (by positivity)

theorem physicalEnergy_exponential_allowance {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) : physicalEnergy A t ≤ 16 * (integerCutoff A : ℝ) := by
  have hm := weighted_absolute_mass hA ht
  have hs := pow_le_pow_left₀ (Finset.sum_nonneg (fun n _ ↦ abs_nonneg (coefficient A t n))) hm 2
  rw [mul_pow, Real.sq_sqrt (Nat.cast_nonneg (integerCutoff A))] at hs
  exact (physicalEnergy_triangle hA t).trans (by norm_num at hs ⊢; exact hs)

theorem crossEnergy_exponential_allowance {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) :
    crossEnergy A t ≤ 16 * (integerCutoff A : ℝ) - diagonalEnergy A t := by
  have he := physicalEnergy_exponential_allowance hA ht
  rw [physicalEnergy_eq_diagonal_add_cross hA] at he
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedSourceTriangleAllowance
