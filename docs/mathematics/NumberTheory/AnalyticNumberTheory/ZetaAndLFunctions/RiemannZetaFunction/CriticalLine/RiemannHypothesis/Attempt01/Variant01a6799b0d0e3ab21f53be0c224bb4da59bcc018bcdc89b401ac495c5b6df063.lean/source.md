# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt01.Variant01a6799b0d0e3ab21f53be0c224bb4da59bcc018bcdc89b401ac495c5b6df063

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dea3129319b5456a282d899b5d46e32333e48d64` · SHA-256 `01a6799b0d0e3ab21f53be0c224bb4da59bcc018bcdc89b401ac495c5b6df063`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualVariableColumnDivisor

/-!
The literal centered column prefix is split into its actual signed period mean
and the finite sum of genuinely centered divisor periods. An explicit periodic
primitive keeps every integer seam and gives a finite Abel estimate. The
retained mean, critical main, source diagonal and boundary terms are not bounded
uniformly or identified with an independent source main.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualPeriodicColumnPrimitive
open ArithmeticFunction
open scoped BigOperators
open SourceActualVariableColumnDivisor
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering
noncomputable section

/-- The true mean includes the signed unweighted Moebius inventory and closed unit. -/
def actualCenteredPrefixPeriodMean (U : ℕ) : ℝ :=
  1 - alpha U * U + ((∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ)) - alpha U) / 2

/-- The original divisor remainder is centered by its actual integer period mean. -/
def actualDivisorPeriodicResidual (d M : ℕ) : ℝ :=
  ((M % d : ℕ) : ℝ) / d - ((d : ℝ) - 1) / (2 * d)

/-- This explicit primitive has the genuine seam values, rather than a new arithmetic premise. -/
def actualDivisorPeriodicPrimitive (d M : ℕ) : ℝ :=
  ((M % d : ℕ) : ℝ) * (((M % d : ℕ) : ℝ) - (d : ℝ)) / (2 * d)

/-- The actual signed aggregate retains every short divisor, including the unit. -/
def actualSignedPeriodicPrimitive (U M : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * actualDivisorPeriodicPrimitive d M

private theorem quotient_remainder_real (M d : ℕ) (hd : 1 ≤ d) :
    (M : ℝ) / d - ((M / d : ℕ) : ℝ) = ((M % d : ℕ) : ℝ) / d := by
  have he : ((M % d : ℕ) : ℝ) + (d : ℝ) * ((M / d : ℕ) : ℝ) = (M : ℝ) := by
    exact_mod_cast Nat.mod_add_div M d
  have hz : (d : ℝ) ≠ 0 := by exact_mod_cast (show d ≠ 0 by omega)
  field_simp
  nlinarith

/-- Exact period centering for the actual closed integer column prefix. -/
theorem actual_closed_prefix_eq_period_mean (U M : ℕ) (hU : 1 ≤ U) (hUM : U ≤ M) :
    (∑ n ∈ Finset.Ioc U M, centeredBeta U n) =
      actualCenteredPrefixPeriodMean U +
        ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * actualDivisorPeriodicResidual d M := by
  rw [closed_centered_prefix_eq_divisor_quotients U M hU hUM]
  have hc : (∑ d ∈ Finset.Icc 1 U,
      (moebius d : ℝ) * (((d : ℝ) - 1) / (2 * d))) =
      ((∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ)) - alpha U) / 2 := by
    unfold alpha
    rw [Finset.sum_sub_distrib, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro d hd
    have hz : (d : ℝ) ≠ 0 := by
      have := (Finset.mem_Icc.mp hd).1
      exact_mod_cast (show d ≠ 0 by omega)
    field_simp
    ring
  have hr : (∑ d ∈ Finset.Icc 1 U,
      (moebius d : ℝ) * (((M % d : ℕ) : ℝ) / d)) =
      alpha U * (M : ℝ) -
        ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((M / d : ℕ) : ℝ) := by
    unfold alpha
    rw [Finset.sum_mul, ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro d hd
    rw [← quotient_remainder_real M d (Finset.mem_Icc.mp hd).1]
    ring
  unfold actualCenteredPrefixPeriodMean actualDivisorPeriodicResidual
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib, hr, hc]
  ring

/-- The divisor residual has the actual integer period d. -/
theorem actualDivisorPeriodicResidual_periodic (d M : ℕ) :
    actualDivisorPeriodicResidual d (M + d) = actualDivisorPeriodicResidual d M := by
  simp only [actualDivisorPeriodicResidual, Nat.add_mod_right]

/-- The explicit primitive has the same integer period, including its touching seam. -/
theorem actualDivisorPeriodicPrimitive_periodic (d M : ℕ) :
    actualDivisorPeriodicPrimitive d (M + d) = actualDivisorPeriodicPrimitive d M := by
  simp only [actualDivisorPeriodicPrimitive, Nat.add_mod_right]

/-- The forward primitive increment equals the source residual at the closed left integer. -/
theorem actualDivisorPeriodicPrimitive_succ (d M : ℕ) (hd : 1 ≤ d) :
    actualDivisorPeriodicPrimitive d (M + 1) - actualDivisorPeriodicPrimitive d M =
      actualDivisorPeriodicResidual d M := by
  have hd0 : 0 < d := by omega
  have hz : (d : ℝ) ≠ 0 := by exact_mod_cast hd0.ne'
  have hr := Nat.mod_lt M hd0
  have he : (M + 1) % d = (M % d + 1) % d := by omega
  by_cases hlt : M % d + 1 < d
  · rw [actualDivisorPeriodicPrimitive, actualDivisorPeriodicPrimitive,
      actualDivisorPeriodicResidual, he, Nat.mod_eq_of_lt hlt, Nat.cast_add, Nat.cast_one]
    field_simp
    ring
  · have hlast : M % d + 1 = d := by omega
    have hrR : ((M % d : ℕ) : ℝ) + 1 = (d : ℝ) := by exact_mod_cast hlast
    rw [actualDivisorPeriodicPrimitive, actualDivisorPeriodicPrimitive,
      actualDivisorPeriodicResidual, he, hlast, Nat.mod_self, Nat.cast_zero]
    field_simp
    nlinarith

/-- Its global quantitative primitive bound is sharp at a half-period. -/
theorem actualDivisorPeriodicPrimitive_abs_le (d M : ℕ) (hd : 1 ≤ d) :
    |actualDivisorPeriodicPrimitive d M| ≤ (d : ℝ) / 8 := by
  have hd0 : 0 < (d : ℝ) := by exact_mod_cast (show 0 < d by omega)
  have hr0 : (0 : ℝ) ≤ ((M % d : ℕ) : ℝ) := Nat.cast_nonneg _
  have hr1 : ((M % d : ℕ) : ℝ) ≤ (d : ℝ) := by
    exact_mod_cast (Nat.mod_lt M (show 0 < d by omega)).le
  unfold actualDivisorPeriodicPrimitive
  apply abs_le.mpr
  constructor
  · apply (le_div_iff₀ (by positivity : (0 : ℝ) < 2 * d)).mpr
    nlinarith [sq_nonneg (((M % d : ℕ) : ℝ) - (d : ℝ) / 2)]
  · have hneg : ((M % d : ℕ) : ℝ) * (((M % d : ℕ) : ℝ) - (d : ℝ)) ≤ 0 :=
      mul_nonpos_of_nonneg_of_nonpos hr0 (by linarith)
    have hn := div_nonpos_of_nonpos_of_nonneg hneg (by positivity : (0 : ℝ) ≤ 2 * d)
    linarith

private theorem sum_Ico_difference (L H : ℕ) (hLH : L ≤ H) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Ico L H, f (n + 1) - f n) = f H - f L := by
  refine Nat.le_induction ?_ ?_ H hLH
  · simp
  intro H hLH ih
  rw [Finset.sum_Ico_succ_top hLH, ih]
  ring

/-- Every finite interval of actual divisor residuals is its retained endpoint difference. -/
theorem actualDivisorPeriodicResidual_sum_eq (d L H : ℕ) (hd : 1 ≤ d) (hLH : L ≤ H) :
    (∑ M ∈ Finset.Ico L H, actualDivisorPeriodicResidual d M) =
      actualDivisorPeriodicPrimitive d H - actualDivisorPeriodicPrimitive d L := by
  simp_rw [← actualDivisorPeriodicPrimitive_succ d _ hd]
  exact sum_Ico_difference L H hLH _

/-- A full period has zero mean at every actual integer starting endpoint. -/
theorem actualDivisorPeriodicResidual_sum_period_zero (d L : ℕ) (hd : 1 ≤ d) :
    (∑ M ∈ Finset.Ico L (L + d), actualDivisorPeriodicResidual d M) = 0 := by
  rw [actualDivisorPeriodicResidual_sum_eq d L (L + d) hd (by omega),
    actualDivisorPeriodicPrimitive_periodic, sub_self]

/-- The signed aggregate increment is the original prefix minus its retained actual mean. -/
theorem actualSignedPeriodicPrimitive_succ (U M : ℕ) (hU : 1 ≤ U) (hUM : U ≤ M) :
    actualSignedPeriodicPrimitive U (M + 1) - actualSignedPeriodicPrimitive U M =
      (∑ n ∈ Finset.Ioc U M, centeredBeta U n) - actualCenteredPrefixPeriodMean U := by
  unfold actualSignedPeriodicPrimitive
  rw [← Finset.sum_sub_distrib]
  simp_rw [← mul_sub]
  have he : (∑ d ∈ Finset.Icc 1 U,
      (moebius d : ℝ) * (actualDivisorPeriodicPrimitive d (M + 1) -
        actualDivisorPeriodicPrimitive d M)) =
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * actualDivisorPeriodicResidual d M := by
    apply Finset.sum_congr rfl
    intro d hd
    rw [actualDivisorPeriodicPrimitive_succ d M (Finset.mem_Icc.mp hd).1]
  rw [he, actual_closed_prefix_eq_period_mean U M hU hUM]
  ring

private theorem sum_closed_naturals (U : ℕ) :
    (∑ d ∈ Finset.Icc 1 U, (d : ℝ)) = (U : ℝ) * ((U : ℝ) + 1) / 2 := by
  have he (M : ℕ) : Finset.Icc 1 M = Finset.Ioc 0 M := by
    rw [← Finset.Icc_add_one_left_eq_Ioc]
    rfl
  simp_rw [he]
  induction U with
  | zero => simp
  | succ U ih =>
    rw [Finset.sum_Ioc_succ_top (Nat.zero_le U), ih, Nat.cast_add, Nat.cast_one]
    ring

/-- The true signed periodic primitive has an unconditional quadratic cutoff budget. -/
theorem actualSignedPeriodicPrimitive_abs_le (U M : ℕ) :
    |actualSignedPeriodicPrimitive U M| ≤ (U : ℝ) * ((U : ℝ) + 1) / 16 := by
  unfold actualSignedPeriodicPrimitive
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 U, |(moebius d : ℝ) * actualDivisorPeriodicPrimitive d M| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 U, (d : ℝ) / 8 := by
      apply Finset.sum_le_sum
      intro d hd
      rw [abs_mul]
      have hm : |(moebius d : ℝ)| ≤ 1 := by exact_mod_cast (abs_moebius_le_one (n := d))
      calc
        _ ≤ 1 * ((d : ℝ) / 8) := mul_le_mul hm
          (actualDivisorPeriodicPrimitive_abs_le d M (Finset.mem_Icc.mp hd).1)
          (abs_nonneg _) (by norm_num)
        _ = _ := by ring
    _ = _ := by rw [Finset.sum_div, sum_closed_naturals]; ring

/-- Actual finite summation by parts keeps both endpoints and the weight difference. -/
theorem actual_centered_prefix_finite_abel (U L H : ℕ) (hU : 1 ≤ U)
    (hUL : U ≤ L) (hLH : L ≤ H) (f : ℕ → ℝ) :
    (∑ M ∈ Finset.Ico L H,
      ((∑ n ∈ Finset.Ioc U M, centeredBeta U n) - actualCenteredPrefixPeriodMean U) *
        f (M + 1)) =
      actualSignedPeriodicPrimitive U H * f H - actualSignedPeriodicPrimitive U L * f L -
        ∑ M ∈ Finset.Ico L H,
          actualSignedPeriodicPrimitive U M * (f (M + 1) - f M) := by
  have he (M : ℕ) (hM : M ∈ Finset.Ico L H) :
      ((∑ n ∈ Finset.Ioc U M, centeredBeta U n) - actualCenteredPrefixPeriodMean U) *
        f (M + 1) =
      (actualSignedPeriodicPrimitive U (M + 1) * f (M + 1) -
        actualSignedPeriodicPrimitive U M * f M) -
      actualSignedPeriodicPrimitive U M * (f (M + 1) - f M) := by
    rw [← actualSignedPeriodicPrimitive_succ U M hU (hUL.trans (Finset.mem_Ico.mp hM).1)]
    ring
  rw [Finset.sum_congr rfl he, Finset.sum_sub_distrib, sum_Ico_difference L H hLH]

/-- Finite Fubini retains every actual signed divisor row after mean centering. -/
theorem actual_centered_prefix_finite_fubini (U L H : ℕ) (hU : 1 ≤ U)
    (hUL : U ≤ L) (f : ℕ → ℝ) :
    (∑ M ∈ Finset.Ico L H,
      ((∑ n ∈ Finset.Ioc U M, centeredBeta U n) - actualCenteredPrefixPeriodMean U) * f M) =
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        ∑ M ∈ Finset.Ico L H, actualDivisorPeriodicResidual d M * f M := by
  have he (M : ℕ) (hM : M ∈ Finset.Ico L H) :
      ((∑ n ∈ Finset.Ioc U M, centeredBeta U n) - actualCenteredPrefixPeriodMean U) * f M =
      (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * actualDivisorPeriodicResidual d M) * f M := by
    rw [actual_closed_prefix_eq_period_mean U M hU (hUL.trans (Finset.mem_Ico.mp hM).1)]
    ring
  rw [Finset.sum_congr rfl he]
  simp_rw [Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro d _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro M _
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualPeriodicColumnPrimitive
```
