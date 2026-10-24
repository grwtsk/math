# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SmallDivisorBound.Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18becace601b9101db72937bc4b7a39dc8968037` · SHA-256 `c8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualKernelBound
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport

/-!
# Small divisors and the actual Mertens endpoint

The existing large-divisor transport only covers divisors strictly above `A²`.
Here its finite reindexing is extended to every positive divisor, including `1`.
The excluded product `1` contributes zero because `log 1 = 0`.
This extension consumes the actual kernel bound, without replacing the signed
Möbius coefficients by a probabilistic model.

Proof lineage: the reindexing extends `EstimateMobiusIntegerTransport` in this
repository; its imported declarations retain their names. Human mathematical
direction: grwtsk contributors, audited conversation Batch 25 (2026-10-08).
Local extension and Lean implementation: OpenAI Codex under that direction.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.SmallDivisorBound

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMobiusSplit EstimateMertensAbel EstimateSourceMobiusKernel
open EstimateMobiusIntegerTransport PrimePowerDescent
open ActualKernelBound

noncomputable section

/-- Uniform coefficient control is Mathlib's actual Möbius theorem. -/
theorem realMoebius_abs_le_one (n : ℕ) : |realMoebius n| ≤ 1 := by
  unfold realMoebius
  exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))

/-- A positive divisor has exactly the actual source kernel as integer readout. -/
theorem positive_divisor_integer_agreement (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) :
    (∑ n ∈ primePowerInventory (2 * A),
      ∑ dk ∈ n.divisorsAntidiagonal,
        if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0) =
      sourceMobiusKernel A d := by
  have hdpos : 0 < d := hd
  let S := (primePowerInventory (2 * A)).filter (fun n => d ∣ n)
  let K := (admissibleK A d).filter (fun k => 2 ≤ d * k)
  rw [sourceMobiusKernel_eq_admissible_sum A hA d hd]
  calc
    _ = ∑ n ∈ S, Real.log (n / d : ℕ) * closedPrimeWeight A n := by
      unfold S
      rw [Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro n hn
      rw [antidiagonal_first_factor A d n (by
        have := (Finset.mem_Icc.mp hn).1
        omega)]
      simp [hdpos.ne']
    _ = ∑ k ∈ K, sourceKernelTerm A k d := by
      apply Finset.sum_bij (fun n _ => n / d)
      · intro n hn
        have hnS := Finset.mem_filter.mp hn
        have hnI := Finset.mem_Icc.mp hnS.1
        have hprod : d * (n / d) = n := Nat.mul_div_cancel' hnS.2
        apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨?_, ?_⟩, ?_⟩, ?_⟩
        · exact Nat.div_pos (Nat.le_of_dvd (by omega) hnS.2) hdpos
        · exact (Nat.div_le_self n d).trans hnI.2
        · simpa only [hprod, sourceKernelCutoff, sourceUpper] using hnI.2
        · simpa only [hprod] using hnI.1
      · intro n₁ hn₁ n₂ hn₂ heq
        have h₁ := (Finset.mem_filter.mp hn₁).2
        have h₂ := (Finset.mem_filter.mp hn₂).2
        calc
          n₁ = d * (n₁ / d) := (Nat.mul_div_cancel' h₁).symm
          _ = d * (n₂ / d) := by rw [heq]
          _ = n₂ := Nat.mul_div_cancel' h₂
      · intro k hk
        have hk' := Finset.mem_filter.mp hk
        have hkA := Finset.mem_filter.mp hk'.1
        refine ⟨d * k, Finset.mem_filter.mpr ⟨?_, dvd_mul_right d k⟩, ?_⟩
        · exact Finset.mem_Icc.mpr ⟨hk'.2, hkA.2⟩
        · simp [hdpos.ne']
      · intro n hn
        have hprod := Nat.mul_div_cancel' (Finset.mem_filter.mp hn).2
        unfold sourceKernelTerm closedPrimeWeight
        rw [← Nat.cast_mul, hprod]
    _ = ∑ k ∈ admissibleK A d, sourceKernelTerm A k d := by
      apply Finset.sum_subset (Finset.filter_subset _ _)
      intro k hk hnot
      have hk1 := (Finset.mem_Icc.mp (Finset.mem_filter.mp hk).1).1
      have hsmall : d * k < 2 := by
        apply Nat.lt_of_not_ge
        intro h
        exact hnot (Finset.mem_filter.mpr ⟨hk, h⟩)
      have hkEq : k = 1 := by nlinarith
      subst k
      simp [sourceKernelTerm]

/-- Reindex the small sector at its closed endpoint, including divisor `1`. -/
theorem smallDivisorMobiusMoment_eq_kernel_sum (A : ℝ) (hA : 1 ≤ A) :
    smallDivisorMobiusMoment A =
      ∑ d ∈ Finset.Icc 1 ⌊A ^ 2⌋₊, realMoebius d * sourceMobiusKernel A d := by
  symm
  let D := Finset.Icc 1 ⌊A ^ 2⌋₊
  calc
    _ = ∑ d ∈ D, realMoebius d *
        (∑ n ∈ primePowerInventory (2 * A),
          ∑ dk ∈ n.divisorsAntidiagonal,
            if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0) := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [positive_divisor_integer_agreement A hA d (Finset.mem_Icc.mp hd).1]
    _ = ∑ n ∈ primePowerInventory (2 * A),
          ∑ dk ∈ n.divisorsAntidiagonal,
            ∑ d ∈ D, realMoebius d *
              (if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0) := by
      simp_rw [Finset.mul_sum]
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro n _
      rw [Finset.sum_comm]
    _ = smallDivisorMobiusMoment A := by
      unfold smallDivisorMobiusMoment mobiusLogTerm realMoebius
      apply Finset.sum_congr rfl
      intro n hn
      apply Finset.sum_congr rfl
      intro dk hdk
      have hdpos : 1 ≤ dk.1 :=
        Nat.pos_of_mem_divisors (Nat.fst_mem_divisors_of_mem_antidiagonal hdk)
      have hm : dk.1 ∈ D ↔ (dk.1 : ℝ) ≤ A ^ 2 := by
        simp only [D, Finset.mem_Icc, hdpos, true_and]
        exact Nat.le_floor_iff (sq_nonneg A)
      by_cases hs : (dk.1 : ℝ) ≤ A ^ 2
      · rw [Finset.sum_eq_single dk.1]
        · simp [hs, mul_assoc]
        · intro d _ hne
          simp [Ne.symm hne]
        · simp [hm.mpr hs]
      · have hz : (∑ d ∈ D, ((ArithmeticFunction.moebius d : ℤ) : ℝ) *
            (if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0)) = 0 := by
          apply Finset.sum_eq_zero
          intro d hd
          have hne : dk.1 ≠ d := by
            intro heq
            exact hs (hm.mp (heq ▸ hd))
          simp [hne]
        rw [hz]
        simp [hs]

/-- A telescoping square-root comparison controls every finite inverse-root sum. -/
theorem inverse_sqrt_sum_le (N : ℕ) :
    (∑ d ∈ Finset.Icc 1 N, (1 : ℝ) / Real.sqrt d) ≤ 2 * Real.sqrt N := by
  induction N with
  | zero => norm_num
  | succ N ih =>
      rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
      have hN : 0 ≤ (N : ℝ) := Nat.cast_nonneg N
      have hb : 0 < Real.sqrt (N + 1 : ℕ) := Real.sqrt_pos.2 (by positivity)
      have hsq0 := Real.sq_sqrt hN
      have hsq1 := Real.sq_sqrt (show (0 : ℝ) ≤ (N + 1 : ℕ) by positivity)
      have hstep : (1 : ℝ) / Real.sqrt (N + 1 : ℕ) ≤
          2 * (Real.sqrt (N + 1 : ℕ) - Real.sqrt N) := by
        apply (div_le_iff₀ hb).mpr
        have hs := sq_nonneg (Real.sqrt (N + 1 : ℕ) - Real.sqrt N)
        simp only [Nat.cast_add, Nat.cast_one] at hsq1 hs ⊢
        nlinarith
      linarith

/-- The whole actual small-divisor sector has a polynomial, explicit budget. -/
theorem smallDivisorMobiusMoment_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |smallDivisorMobiusMoment A| ≤ 16 * A + 40 := by
  have hA0 : 0 < A := by linarith
  have hC : 0 ≤ 8 + 20 / A := by positivity
  rw [smallDivisorMobiusMoment_eq_kernel_sum A hA]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 ⌊A ^ 2⌋₊, |realMoebius d * sourceMobiusKernel A d| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 ⌊A ^ 2⌋₊, (8 + 20 / A) * (1 / Real.sqrt d) := by
      apply Finset.sum_le_sum
      intro d hd
      have hd1 : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
      rw [abs_mul]
      calc
        _ ≤ 1 * ((8 + 20 / A) / Real.sqrt d) :=
          mul_le_mul (realMoebius_abs_le_one d) (sourceMobiusKernel_abs_le hA hd1)
            (abs_nonneg _) (by norm_num)
        _ = _ := by ring
    _ = (8 + 20 / A) * ∑ d ∈ Finset.Icc 1 ⌊A ^ 2⌋₊, (1 / Real.sqrt d) :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (8 + 20 / A) * (2 * Real.sqrt ⌊A ^ 2⌋₊) :=
      mul_le_mul_of_nonneg_left (inverse_sqrt_sum_le _) hC
    _ ≤ (8 + 20 / A) * (2 * A) := by
      have hs := Real.sqrt_le_sqrt (Nat.floor_le (sq_nonneg A))
      rw [Real.sqrt_sq hA0.le] at hs
      exact mul_le_mul_of_nonneg_left (by linarith) hC
    _ = _ := by field_simp; ring

/-- The lower Mertens sum retains its zero coefficient at zero. -/
theorem mertens_abs_le {x : ℝ} (hx : 0 ≤ x) : |mertens x| ≤ x := by
  have heq : mertens x = ∑ d ∈ Finset.Icc 1 ⌊x⌋₊, realMoebius d := by
    unfold mertens
    symm
    apply Finset.sum_subset (fun d hd =>
      Finset.mem_Icc.mpr ⟨Nat.zero_le d, (Finset.mem_Icc.mp hd).2⟩)
    intro d hd hnot
    have hd0 : d = 0 := by
      have hdN := (Finset.mem_Icc.mp hd).2
      by_contra h
      exact hnot (Finset.mem_Icc.mpr ⟨by omega, hdN⟩)
    subst d
    simp
  rw [heq]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 ⌊x⌋₊, |realMoebius d| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _d ∈ Finset.Icc 1 ⌊x⌋₊, (1 : ℝ) :=
      Finset.sum_le_sum (fun d _ => realMoebius_abs_le_one d)
    _ = (⌊x⌋₊ : ℝ) := by simp
    _ ≤ x := Nat.floor_le hx

/-- The endpoint subtraction in the signed Abel identity costs only linearly in `A`. -/
theorem actual_mertens_endpoint_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |mertens (sourceLower A) * sourceMobiusKernel A (sourceLower A)| ≤
      8 * A + 20 := by
  have hA0 : 0 < A := by linarith
  rw [sourceLower, abs_mul]
  calc
    _ ≤ A ^ 2 * ((8 + 20 / A) / A) :=
      mul_le_mul (mertens_abs_le (sq_nonneg A)) (sourceMobiusKernel_lower_abs_le hA)
        (abs_nonneg _) (sq_nonneg A)
    _ = _ := by field_simp

end
end GRWTSK.RiemannHypothesis.Conversation.SmallDivisorBound
```
