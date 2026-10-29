import SourceCompleteDivisorCancellation

/-!
Exact asymmetric adaptive Vaughan refinement of the SAME full closed Mangoldt
row. The long-long sector disappears by its literal product support, including
floor equality cases. This supplies no uniform bound on the retained signed
independent main or signed sampling error.
Direction, selection, corrections and evaluation: grwtsk contributors.
Finite proof construction and focused scratch verification: Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16AdaptiveVaughan
open ArithmeticFunction
open scoped BigOperators
open RH16CompleteDivisorCancellation
open FormalResearch.RiemannHypothesis
open SourceSamplingPointwise SourceVaughanHankel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateVaughanSource EstimatePlainKernel
open EstimateSourceMobiusKernel EstimateVaughanTranslationGate

/-- All equality-inclusive long products exceed N under the stated exact threshold. -/
theorem complete_long_long_vanishes (N U V : ℕ) (w : ℕ → ℝ)
    (hw : ∀ n, N < n → w n = 0) (hN : N < (U + 1) * (V + 1)) :
    (∑ m ∈ Finset.Ioc V N, vonMangoldt m *
      (∑ n ∈ Finset.Ioc U N, beta U n * w (m * n))) = 0 := by
  apply Finset.sum_eq_zero
  intro m hm
  have hmV : V + 1 ≤ m := by have := (Finset.mem_Ioc.mp hm).1; omega
  have hs : (∑ n ∈ Finset.Ioc U N, beta U n * w (m * n)) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    have hnU : U + 1 ≤ n := by have := (Finset.mem_Ioc.mp hn).1; omega
    have hp : (U + 1) * (V + 1) ≤ m * n := by
      simpa only [Nat.mul_comm] using Nat.mul_le_mul hnU hmV
    rw [hw (m * n) (hN.trans_le hp), mul_zero]
  rw [hs, mul_zero]

/-- Natural quotient floors enforce the threshold without a dropped seam atom. -/
theorem quotient_no_long_products (N U : ℕ) (hU : 1 ≤ U) :
    N < (U + 1) * (N / U + 1) := by
  have hm := Nat.mod_lt N (show 0 < U by omega)
  have he := Nat.div_add_mod N U
  nlinarith [Nat.zero_le (N / U)]

/-- Exact adaptive identity; all original prime powers survive on the left. -/
theorem finite_vaughan_no_long_products (N U V : ℕ) (hU : U ≤ N) (hV : V ≤ N)
    (w : ℕ → ℝ) (hw : ∀ n, N < n → w n = 0)
    (hN : N < (U + 1) * (V + 1)) :
    (∑ n ∈ Finset.Icc 1 N, vonMangoldt n * w n) =
      (∑ m ∈ Finset.Icc 1 V, vonMangoldt m * w m) +
      (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        ∑ k ∈ Finset.Icc 1 N, Real.log k * w (d * k)) -
      (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        ∑ m ∈ Finset.Icc 1 V, vonMangoldt m *
          ∑ k ∈ Finset.Icc 1 N, w (d * m * k)) := by
  rw [finite_vaughan_sum N U V hU hV w hw,
    complete_long_long_vanishes N U V w hw hN, add_zero]

/-- The source's Möbius cutoff stays fixed; only the auxiliary Mangoldt depth grows. -/
def adaptiveMangoldtDepth (A : ℝ) : ℕ := sourceKernelCutoff A / vaughanCutoff A

/-- Literal sampled head; no asymptotic main replacement has happened. -/
def adaptiveSampledHead (A : ℝ) : ℝ :=
  (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A),
    vonMangoldt m * sourcePlainWeight A (m : ℝ)) +
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    (∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
      Real.log k * sourcePlainWeight A ((d * k : ℕ) : ℝ))) -
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A), vonMangoldt m *
      (∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
        sourcePlainWeight A ((d * m * k : ℕ) : ℝ))))

/-- A genuine source identity, including natural floors, endpoints and every prime power. -/
theorem fullMangoldtRow_eq_adaptiveSampledHead (A : ℝ) (hA : 1 ≤ A) :
    fullMangoldtRow A = adaptiveSampledHead A := by
  have hU := vaughanCutoff_pos A hA
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hVN : adaptiveMangoldtDepth A ≤ sourceKernelCutoff A := Nat.div_le_self _ _
  have he := finite_vaughan_no_long_products (sourceKernelCutoff A) (vaughanCutoff A)
    (adaptiveMangoldtDepth A) hUN hVN (fun n => sourcePlainWeight A (n : ℝ))
    (fun n hn => sourcePlainWeight_zero_of_cutoff_lt A hA n hn)
    (quotient_no_long_products _ _ hU)
  exact he

end RH16AdaptiveVaughan
