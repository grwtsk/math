# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SourceSquarefreeSamplingConsumer.Variant6ee60fd4211d35408b13d957c88591e8e2ef7242fc2180daa5e5dad78f9996b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f5423bed034ff0ac817efc0855c45c5c4d26935` · SHA-256 `6ee60fd4211d35408b13d957c88591e8e2ef7242fc2180daa5e5dad78f9996b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceSquarefreeSampling
import SourceExactSamplingTail

/-!
Original short sampling errors use actual finite Moebius support before budgets.
Direction: grwtsk contributors. Native source adaptation: Codex root.
Old source quadrature/Chebyshev proofs retain their authorship. graph_review
constructed the support application; root retained the exact unit refinement.
-/
set_option autoImplicit false
noncomputable section
namespace RH16SquarefreeSamplingConsumer
open RH16SquarefreeSampling RH16ExactSamplingTail RH16ExactTailEnergy
open FormalResearch.RiemannHypothesis
open SourceShortSamplingInventory SourceShortSamplingPointwise SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensAbel EstimateVaughanSource EstimateSourceMobiusKernel
open SourceSamplingCoefficients SourceSamplingPointwise SourcePositiveSampling SourcePairing
open EstimatePlainKernel EstimateMobiusSplit

private theorem actual_squarefree_weight_sum (N : Nat) :
    (Finset.Icc 1 N).sum (fun d => abs (realMoebius d) / Real.sqrt (d : Real)) <=
      (3 / 2 : Real) * Real.sqrt (N : Real) := by
  simpa only [squarefreeWeightSum, realMoebius] using squarefreeWeightSum_three_halves N

theorem shortLog_error_le_of_sampling_error_squarefree {A E : ℝ} (hA : 1 ≤ A) (hE : 0 ≤ E)
    (J₁ : ℝ → ℝ)
    (herr : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |sourceMobiusKernel A d - J₁ d| ≤ E / (A ^ 2 * Real.sqrt d)) :
    |shortLogSource A - shortLogMainTerm A J₁| ≤ (3 / 2 : ℝ) * E / A := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  unfold shortLogSource shortLogMainTerm
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |realMoebius d * sourceMobiusKernel A d - realMoebius d * J₁ d| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), E / A ^ 2 * (|realMoebius d| / Real.sqrt d) := by
      apply Finset.sum_le_sum
      intro d hd
      rw [← mul_sub, abs_mul]
      calc
        _ ≤ |realMoebius d| * (E / (A ^ 2 * Real.sqrt d)) :=
          mul_le_mul_of_nonneg_left (herr d hd) (abs_nonneg _)
        _ = _ := by ring
    _ = E / A ^ 2 * ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt d :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ E / A ^ 2 * ((3 / 2) * Real.sqrt (vaughanCutoff A)) :=
      mul_le_mul_of_nonneg_left (actual_squarefree_weight_sum _) (by positivity)
    _ ≤ E / A ^ 2 * ((3 / 2) * A) := by
      gcongr
      exact sqrt_vaughanCutoff_le A hA
    _ = _ := by field_simp [hp.ne']


theorem shortPlain_error_uniform_le_of_sampling_error_squarefree {A E : ℝ} (hA : 1 ≤ A)
    (hE : 0 ≤ E) (J₀ : ℝ → ℝ)
    (herr : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      ∀ m ∈ Finset.Icc 1 (vaughanCutoff A),
        |sourcePlainKernel A ((d * m : ℕ) : ℝ) - J₀ ((d * m : ℕ) : ℝ)| ≤
          E / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ))) :
    |shortPlainSource A - shortPlainMainTerm A J₀| ≤
      3 * (Real.log 4 + 4) * E := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hcoef : 0 ≤ Real.log 4 + 4 := by positivity
  unfold shortPlainSource shortPlainMainTerm
  rw [← Finset.sum_sub_distrib]
  simp_rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        |realMoebius d * ArithmeticFunction.vonMangoldt m *
            sourcePlainKernel A ((d * m : ℕ) : ℝ) -
          realMoebius d * ArithmeticFunction.vonMangoldt m * J₀ ((d * m : ℕ) : ℝ)| := by
      apply (Finset.abs_sum_le_sum_abs _ _).trans
      apply Finset.sum_le_sum
      intro d _
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        E / A ^ 2 * (|realMoebius d| / Real.sqrt d) *
          (ArithmeticFunction.vonMangoldt m / Real.sqrt m) := by
      apply Finset.sum_le_sum
      intro d hd
      apply Finset.sum_le_sum
      intro m hm
      rw [← mul_sub, abs_mul, abs_mul,
        abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
      calc
        _ ≤ (|realMoebius d| * ArithmeticFunction.vonMangoldt m) *
          (E / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ))) := by
          exact mul_le_mul_of_nonneg_left (herr d hd m hm)
            (mul_nonneg (abs_nonneg _) ArithmeticFunction.vonMangoldt_nonneg)
        _ = _ := by
          rw [Nat.cast_mul, Real.sqrt_mul (by positivity : (0 : ℝ) ≤ d)]
          ring
    _ = E / A ^ 2 *
        (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt d) *
        (∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
          ArithmeticFunction.vonMangoldt m / Real.sqrt m) := by
      simp_rw [← Finset.mul_sum]
      rw [← Finset.sum_mul, ← Finset.mul_sum]
    _ ≤ E / A ^ 2 * ((3 / 2) * Real.sqrt (vaughanCutoff A)) *
        (2 * (Real.log 4 + 4) * Real.sqrt (vaughanCutoff A)) := by
      gcongr
      · exact actual_squarefree_weight_sum _
      · exact sum_vonMangoldt_div_sqrt_le _
    _ ≤ E / A ^ 2 * ((3 / 2) * A) * (2 * (Real.log 4 + 4) * A) := by
      gcongr <;> exact sqrt_vaughanCutoff_le A hA
    _ = _ := by field_simp [hp.ne']

theorem actual_shortLog_error_tail_squarefree {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |shortLogSource A - shortLogMainTerm A (sourceLogSamplingMainTerm A)| ≤
      144 * tailEnergyCoefficient Q / A := by
  have hδ : 0 < tailEnergyCoefficient Q := tailEnergyCoefficient_pos Q
  have h := shortLog_error_le_of_sampling_error_squarefree (hQ.trans hQA)
    (show 0 ≤ 96 * tailEnergyCoefficient Q by positivity)
    (sourceLogSamplingMainTerm A) (fun d hd ↦ by
      exact sourceMobiusKernel_sub_mainTerm_abs_le_tail hQ hQA
        (by exact_mod_cast (Finset.mem_Icc.mp hd).1))
  convert h using 1
  ring

/-- The doubly short Mangoldt inventory uses its sharper plain coefficient. -/
theorem actual_shortPlain_error_tail_squarefree {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |shortPlainSource A - shortPlainMainTerm A (sourcePlainSamplingMainTerm A)| ≤
      48 * (Real.log 4 + 4) * tailEnergyCoefficient Q := by
  have hδ : 0 < tailEnergyCoefficient Q := tailEnergyCoefficient_pos Q
  have h := shortPlain_error_uniform_le_of_sampling_error_squarefree (hQ.trans hQA)
    (show 0 ≤ 16 * tailEnergyCoefficient Q by positivity)
    (sourcePlainSamplingMainTerm A) (fun d hd m hm ↦ by
      exact sourcePlainKernel_sub_mainTerm_abs_le_tail hQ hQA (by
        have hd1 : 1 ≤ d := (Finset.mem_Icc.mp hd).1
        have hm1 : 1 ≤ m := (Finset.mem_Icc.mp hm).1
        exact_mod_cast Nat.mul_le_mul hd1 hm1))
  convert h using 1
  ring


end RH16SquarefreeSamplingConsumer
```
