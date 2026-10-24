# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.7a35f37001d1e2c29adeSourceFullDivisorLogInventory.Variant7a35f37001d1e2c29ade4ce58607da6ea6d155bd6c59bfdc532985a23fb28eb4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b04bef3d0d8467c6ffde23f322bac1fed194ffc6` · SHA-256 `7a35f37001d1e2c29ade4ce58607da6ea6d155bd6c59bfdc532985a23fb28eb4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCubicSignedUpperCoefficients
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing

/-!
# Actual full finite Moebius-log inventory and the disjoint complementary sector

AI attribution: OpenAI Codex. The existing proved actual Lambda=mu*log finite
recombination is specialized to the unchanged positive logProfile. Every prime
power, the unit divisor and moving equality boundary remain. The independent
literal complementary sector uses X/U and X/m with their exact natural floors.
Only source support deletes products beyond the actual cutoff. No Omega is
defined from a desired residual and no complementary arithmetic bound is supplied.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceFullDivisorLogInventory

open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourceSamplingTaylor SourcePositiveSampling
open SourceCubicUpperLogMoments SourceCubicSignedUpperCoefficients
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel
open EstimateMobiusSplit EstimateMobiusIntegerTransport EstimateMertensResidual
open EstimateWeightedMobiusPairing

noncomputable section

/-- The existing real source kernel summand is the actual sampled-variable log profile. -/
theorem sourceKernelTerm_eq_actual_logProfile (A k : ℝ) (m : ℕ) (hk : 0 < k) (hm : 1 ≤ m) :
    sourceKernelTerm A m k = logProfile A k (m : ℝ) := by
  have hmp : 0 < (m : ℝ) := by exact_mod_cast (by omega : 0 < m)
  rw [sourceKernelTerm_eq_archive A k m hk hm, logProfile_eq_of_pos A k hmp,
    sourceLogSamplingTerm_eq_source_weight A hk hmp, Real.log_mul hk.ne' hmp.ne']
  ring

/-- The unchanged actual finite kernel keeps every positive sample, including its zero unit log. -/
theorem sourceMobiusKernel_eq_actual_logProfile_sum (A k : ℝ) (hk : 0 < k) :
    sourceMobiusKernel A k =
      ∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A k (m : ℝ) := by
  unfold sourceMobiusKernel
  apply Finset.sum_congr rfl
  intro m hm
  exact sourceKernelTerm_eq_actual_logProfile A k m hk (Finset.mem_Icc.mp hm).1

/-- Existing full Lambda=mu*log arithmetic reconstruction, in literal actual profile coordinates. -/
theorem actual_full_divisor_log_sum_eq_mertensResidual (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
      (∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) (m : ℝ))) =
        mertensResidual A := by
  rw [mertensResidual_eq_full_mobius_sum A hA]
  apply Finset.sum_congr rfl
  intro d hd
  have hdp : 0 < (d : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
  rw [sourceMobiusKernel_eq_actual_logProfile_sum A (d : ℝ) hdp]

/-- Exact moving split; equality d=U belongs to the complete short sector. -/
theorem actual_mertensResidual_eq_short_add_complement (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        (∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) (m : ℝ))) +
      (∑ d ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A), realMoebius d *
        (∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) (m : ℝ))) := by
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hu : Finset.Icc 1 (vaughanCutoff A) ∪
      Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A) =
        Finset.Icc 1 (sourceKernelCutoff A) := by
    ext d
    simp only [Finset.mem_union, Finset.mem_Icc, Finset.mem_Ioc]
    omega
  have hd : Disjoint (Finset.Icc 1 (vaughanCutoff A))
      (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)) := by
    rw [Finset.disjoint_left]
    intro d h1 h2
    have hb1 := Finset.mem_Icc.mp h1
    have hb2 := Finset.mem_Ioc.mp h2
    omega
  rw [← actual_full_divisor_log_sum_eq_mertensResidual A hA, ← hu, Finset.sum_union hd]

/-- The original large divisor moment is exactly the full strict complementary profile row. -/
theorem actual_large_divisor_eq_logProfile_complement (A : ℝ) (hA : 1 ≤ A) :
    largeDivisorMobiusMoment A =
      ∑ d ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A), realMoebius d *
        (∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) (m : ℝ)) := by
  rw [largeDivisorMobiusMoment_eq_abel_sum A hA]
  change (∑ d ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
    realMoebius d * sourceMobiusKernel A (d : ℝ)) = _
  apply Finset.sum_congr rfl
  intro d hd
  have hdp : 0 < (d : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Ioc.mp hd).1; omega : 0 < d)
  rw [sourceMobiusKernel_eq_actual_logProfile_sum A (d : ℝ) hdp]

/-- The original small divisor sector keeps precisely the equality-inclusive 1..U inventory. -/
theorem actual_small_divisor_eq_logProfile_short (A : ℝ) (hA : 1 ≤ A) :
    smallDivisorMobiusMoment A =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        (∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) (m : ℝ)) := by
  have hr := mertensResidual_eq_closedPrimeMoment A hA
  have hs := closedPrimeMoment_eq_small_add_large A
  have hf := actual_mertensResidual_eq_short_add_complement A hA
  have hl := actual_large_divisor_eq_logProfile_complement A hA
  linarith only [hr, hs, hf, hl]

/-- The sampled logarithm is log(m), and the source at d*m remains unchanged. -/
theorem actual_logProfile_eq_log_mul_product (A : ℝ) (d m : ℕ) (hd : 0 < d) (hm : 0 < m) :
    logProfile A (d : ℝ) (m : ℝ) = Real.log (m : ℝ) * plainProfile A 1 ((d * m : ℕ) : ℝ) := by
  have hdp : 0 < (d : ℝ) := by exact_mod_cast hd
  have hmp : 0 < (m : ℝ) := by exact_mod_cast hm
  have hprod : 0 < ((d * m : ℕ) : ℝ) := by exact_mod_cast Nat.mul_pos hd hm
  rw [logProfile_eq_log_mul, plainProfile_eq_of_pos A (d : ℝ) hmp,
    sourcePlainSamplingTerm_eq_source_weight A hdp hmp, plainProfile_eq_of_pos A 1 hprod,
    sourcePlainSamplingTerm_eq_source_weight A (by norm_num : (0 : ℝ) < 1) hprod]
  simp only [Nat.cast_mul, one_mul]

/-- The real quotient floor is exactly the quotient of the original upper floor. -/
theorem floor_exp_two_mul_div_natCast (A : ℝ) (m : ℕ) :
    ⌊Real.exp (2 * A) / (m : ℝ)⌋₊ = sourceKernelCutoff A / m := by
  by_cases hm : m = 0
  · subst m
    simp
  have hmc : (m : ℝ) ≠ 0 := by exact_mod_cast hm
  have h := Nat.mul_cast_floor_div_cancel hm (Real.exp (2 * A) / (m : ℝ))
  rw [div_mul_cancel₀ _ hmc] at h
  simpa only [sourceKernelCutoff, sourceUpper] using h.symm

/-- Independently defined literal complete complementary sector from the accepted source comment. -/
def literalOmegaComplementarySector (A : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp (2 * A) / (vaughanCutoff A : ℝ)⌋₊, Real.log (m : ℝ) *
    (∑ d ∈ Finset.Icc (vaughanCutoff A + 1) ⌊Real.exp (2 * A) / (m : ℝ)⌋₊,
      realMoebius d * plainProfile A 1 ((d * m : ℕ) : ℝ))

/-- Actual disjoint large sector is the literal full complementary finite arithmetic sum. -/
theorem actual_logProfile_complement_eq_literal_L (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A), realMoebius d *
      (∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) (m : ℝ))) =
        literalOmegaComplementarySector A := by
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  have hU : 0 < U := by have := vaughanCutoff_pos A hA; omega
  have hzero (d m : ℕ) (hcut : N < d * m) : plainProfile A 1 ((d * m : ℕ) : ℝ) = 0 := by
    apply plainProfile_cutoff_tail hA (by norm_num : (1 : ℝ) ≤ 1)
    exact_mod_cast (by omega : N + 1 ≤ d * m)
  have hc : (∑ d ∈ Finset.Ioc U N, realMoebius d *
      (∑ m ∈ Finset.Icc 1 N, logProfile A (d : ℝ) (m : ℝ))) =
      ∑ m ∈ Finset.Icc 1 N, Real.log (m : ℝ) *
        (∑ d ∈ Finset.Ioc U N, realMoebius d * plainProfile A 1 ((d * m : ℕ) : ℝ)) := by
    simp_rw [Finset.mul_sum]
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro m hm
    apply Finset.sum_congr rfl
    intro d hd
    rw [actual_logProfile_eq_log_mul_product A d m
      (by have := (Finset.mem_Ioc.mp hd).1; omega)
      (by have := (Finset.mem_Icc.mp hm).1; omega)]
    ring
  have hclip (m : ℕ) (hm : 0 < m) :
      (∑ d ∈ Finset.Ioc U N, realMoebius d * plainProfile A 1 ((d * m : ℕ) : ℝ)) =
      ∑ d ∈ Finset.Icc (U + 1) (N / m), realMoebius d * plainProfile A 1 ((d * m : ℕ) : ℝ) := by
    symm
    apply Finset.sum_subset
    · intro d hd
      have hb := Finset.mem_Icc.mp hd
      exact Finset.mem_Ioc.mpr ⟨by omega, hb.2.trans (Nat.div_le_self _ _)⟩
    · intro d hd hdn
      have hb := Finset.mem_Ioc.mp hd
      have hgt : N / m < d := by
        simp only [Finset.mem_Icc, not_and] at hdn
        exact lt_of_not_ge (hdn (by omega))
      have hcut : N < d * m := by
        simpa only [Nat.mul_comm] using (Nat.div_lt_iff_lt_mul hm).mp hgt
      rw [hzero d m hcut, mul_zero]
  have ht : (∑ m ∈ Finset.Icc 1 N, Real.log (m : ℝ) *
      (∑ d ∈ Finset.Icc (U + 1) (N / m), realMoebius d * plainProfile A 1 ((d * m : ℕ) : ℝ))) =
      ∑ m ∈ Finset.Icc 1 (N / U), Real.log (m : ℝ) *
        (∑ d ∈ Finset.Icc (U + 1) (N / m), realMoebius d * plainProfile A 1 ((d * m : ℕ) : ℝ)) := by
    symm
    apply Finset.sum_subset
    · intro m hm
      have hb := Finset.mem_Icc.mp hm
      exact Finset.mem_Icc.mpr ⟨hb.1, hb.2.trans (Nat.div_le_self _ _)⟩
    · intro m hm hmn
      have hb := Finset.mem_Icc.mp hm
      have hgt : N / U < m := by
        simp only [Finset.mem_Icc, not_and] at hmn
        exact lt_of_not_ge (hmn hb.1)
      have hcut : N < U * m := by
        simpa only [Nat.mul_comm] using (Nat.div_lt_iff_lt_mul hU).mp hgt
      have hsum : (∑ d ∈ Finset.Icc (U + 1) (N / m),
          realMoebius d * plainProfile A 1 ((d * m : ℕ) : ℝ)) = 0 := by
        apply Finset.sum_eq_zero
        intro d hd
        have hdU : U < d := by have := (Finset.mem_Icc.mp hd).1; omega
        have hmp : 0 < m := by omega
        have hprod : d * m ≤ N := (Nat.le_div_iff_mul_le hmp).mp (Finset.mem_Icc.mp hd).2
        have hmul : U * m < d * m := Nat.mul_lt_mul_of_pos_right hdU hmp
        omega
      rw [hsum, mul_zero]
  change (∑ d ∈ Finset.Ioc U N, realMoebius d *
    (∑ m ∈ Finset.Icc 1 N, logProfile A (d : ℝ) (m : ℝ))) = _
  rw [hc]
  calc
    _ = ∑ m ∈ Finset.Icc 1 N, Real.log (m : ℝ) *
        (∑ d ∈ Finset.Icc (U + 1) (N / m), realMoebius d * plainProfile A 1 ((d * m : ℕ) : ℝ)) := by
      apply Finset.sum_congr rfl
      intro m hm
      rw [hclip m (by have := (Finset.mem_Icc.mp hm).1; omega)]
    _ = _ := ht
    _ = literalOmegaComplementarySector A := by
      unfold literalOmegaComplementarySector
      simp_rw [floor_exp_two_mul_div_natCast]
      rfl

/-- The complete original residual has the genuine disjoint short and literal
complementary sectors. -/
theorem actual_mertensResidual_eq_short_add_literal_L (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        (∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) (m : ℝ))) +
      literalOmegaComplementarySector A := by
  rw [actual_mertensResidual_eq_short_add_complement A hA,
    actual_logProfile_complement_eq_literal_L A hA]

end
end FormalResearch.RiemannHypothesis.SourceFullDivisorLogInventory
```
