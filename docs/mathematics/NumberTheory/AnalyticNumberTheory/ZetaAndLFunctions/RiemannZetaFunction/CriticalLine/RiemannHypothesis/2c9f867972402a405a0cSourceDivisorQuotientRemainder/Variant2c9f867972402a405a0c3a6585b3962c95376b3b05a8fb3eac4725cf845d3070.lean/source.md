# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.2c9f867972402a405a0cSourceDivisorQuotientRemainder.Variant2c9f867972402a405a0c3a6585b3962c95376b3b05a8fb3eac4725cf845d3070

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b62b149f1453d8293e8327838e5bd121e0ea9e93` · SHA-256 `2c9f867972402a405a0c3a6585b3962c95376b3b05a8fb3eac4725cf845d3070`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceDivisorQuotientSampling

/-!
# Actual divisor quotient remainder after its retained short prefix

AI attribution: OpenAI Codex. The quotient endpoints are the literal natural
divisions in the original long inventory. Only actual source-support zeros
extend the upper sample. The independent source main and retained finite short
multiples are subtracted together before the proved second-order error bound.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceDivisorQuotientRemainder

open scoped BigOperators
open SourceDivisorQuotientSampling SourceVaughanHankel
open SourceSamplingPointwise
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel

/-- The literal quotient row equals the complete actual sample minus its short multiples. -/
theorem quotient_sample_eq_full_sub_short
    (A : ℝ) (hA : 1 ≤ A) (m d : ℕ) (hm : 0 < m) (hd : 0 < d) :
    (∑ j ∈ Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) =
    (∑ j ∈ Finset.Icc 1 (sourceKernelCutoff A),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) -
    ∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ) := by
  classical
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let f : ℕ → ℝ := fun j => sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)
  have hab : U / d ≤ N / d := Nat.div_le_div_right (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hs : (∑ j ∈ Finset.Icc 1 N, f j) = ∑ j ∈ Finset.Icc 1 (N / d), f j := by
    symm
    apply Finset.sum_subset
    · intro j hj
      have hb := (Finset.mem_Icc.mp hj).2
      exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hj).1, hb.trans (Nat.div_le_self _ _)⟩
    · intro j hj hjn
      have hgt : N / d < j := by
        have hlow := (Finset.mem_Icc.mp hj).1
        simp only [Finset.mem_Icc, not_and] at hjn
        exact lt_of_not_ge (hjn hlow)
      have hjN : N < d * j := by
        simpa only [Nat.mul_comm] using (Nat.div_lt_iff_lt_mul hd).mp hgt
      have hcut : N < m * (d * j) := by
        have hmul := Nat.mul_le_mul_right (d * j) (show 1 ≤ m by omega)
        have hmul' : d * j ≤ m * (d * j) := by simpa only [one_mul] using hmul
        exact hjN.trans_le hmul'
      exact sourcePlainWeight_zero_of_cutoff_lt A hA _ hcut
  have hdj : Disjoint (Finset.Icc 1 (U / d)) (Finset.Icc (U / d + 1) (N / d)) := by
    apply Finset.disjoint_left.mpr
    intro j hj hj'
    have h1 := (Finset.mem_Icc.mp hj).2
    have h2 := (Finset.mem_Icc.mp hj').1
    omega
  have hu : Finset.Icc 1 (U / d) ∪ Finset.Icc (U / d + 1) (N / d) =
      Finset.Icc 1 (N / d) := by
    have hua : 0 ≤ U / d := Nat.zero_le _
    ext j
    simp only [Finset.mem_union, Finset.mem_Icc]
    omega
  have hp := Finset.sum_union (f := f) hdj
  rw [hu] at hp
  change (∑ j ∈ Finset.Icc (U / d + 1) (N / d), f j) =
    (∑ j ∈ Finset.Icc 1 N, f j) - ∑ j ∈ Finset.Icc 1 (U / d), f j
  rw [hs]
  linarith

/-- The actual quotient remainder preserves the source main and short prefix at their signs. -/
theorem quotient_sample_sub_main_minus_short_abs_le
    (A : ℝ) (hA : 1 ≤ A) (m d : ℕ) (hm : 0 < m) (hd : 0 < d) :
    |(∑ j ∈ Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d),
        sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) -
      (sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ) -
        ∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
          sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))| ≤
      16 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ)) := by
  rw [quotient_sample_eq_full_sub_short A hA m d hm hd]
  convert actual_full_multiple_sample_sub_main_abs_le A hA m d hm hd using 1
  congr 1
  ring

end FormalResearch.RiemannHypothesis.SourceDivisorQuotientRemainder
```
