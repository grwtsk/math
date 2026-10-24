# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualCenteredHalfHarmonic.Variantc9976459b01ce6f5028647cb7c911dd40438426211876e522af25715fd3a3d39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e00d0b97e67e6bee20f09f0b6edbb6cfe7e265e` · SHA-256 `c9976459b01ce6f5028647cb7c911dd40438426211876e522af25715fd3a3d39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualAdjointColumnTrace
import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-!
The actual closed centered-beta half inventory is expanded through the original
short-divisor mean and finite square-root harmonic sums. The literal Vaughan
beta sign and closed unit are retained; no critical Moebius bound is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualCenteredHalfHarmonic
open ArithmeticFunction
open scoped BigOperators
open SourceActualAdjointColumnTrace SourceActualLogColumnTransport
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateVaughanIdentity EstimateBetaCentering EstimateSourceMobiusKernel
noncomputable section

/-- The finite harmonic sum uses every closed positive integer, including one. -/
def finiteHalfHarmonic (L : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 L, 1 / Real.sqrt (n : ℝ)

/-- The actual short Moebius half inventory keeps all signs and the closed cutoff. -/
def actualCriticalMoebiusHalf (U : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) / Real.sqrt (d : ℝ)

/-- The generic closed centered-beta half inventory preserves the original coefficient. -/
def closedCenteredHalfInventory (U L : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc U L, centeredBeta U n / Real.sqrt (n : ℝ)

private def halfMoebius : ArithmeticFunction ℝ :=
  ⟨fun n => (moebius n : ℝ) / Real.sqrt (n : ℝ), by simp⟩

private def halfOne : ArithmeticFunction ℝ :=
  ⟨fun n => 1 / Real.sqrt (n : ℝ), by simp⟩

private theorem halfMoebius_apply (n : ℕ) :
    halfMoebius n = (moebius n : ℝ) / Real.sqrt (n : ℝ) := rfl

private theorem halfOne_apply (n : ℕ) : halfOne n = 1 / Real.sqrt (n : ℝ) := rfl

private theorem weighted_short_convolution (U n : ℕ) (hn : 0 < n) :
    (shortPart U halfMoebius * halfOne) n =
      ((shortPart U (moebius : ArithmeticFunction ℝ) * zeta) n) /
        Real.sqrt (n : ℝ) := by
  classical
  simp only [ArithmeticFunction.mul_apply, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro p hp
  have he := (Nat.mem_divisorsAntidiagonal.mp hp).1
  have hd : 0 < p.1 := Nat.pos_of_ne_zero (left_ne_zero_of_mul (he ▸ hn.ne'))
  have hm : 0 < p.2 := Nat.pos_of_ne_zero (right_ne_zero_of_mul (he ▸ hn.ne'))
  have hdR : 0 ≤ (p.1 : ℝ) := Nat.cast_nonneg _
  rw [shortPart_apply, shortPart_apply]
  simp only [halfMoebius_apply, halfOne_apply, intCoe_apply, natCoe_apply,
    zeta_apply, if_neg hm.ne', Nat.cast_one]
  split_ifs
  · rw [← he, Nat.cast_mul, Real.sqrt_mul hdR]
    ring
  · simp

private theorem weighted_short_sum (U L : ℕ) (hUL : U ≤ L) :
    (∑ n ∈ Finset.Icc 1 L,
      ((shortPart U (moebius : ArithmeticFunction ℝ) * zeta) n) /
        Real.sqrt (n : ℝ)) =
      ∑ d ∈ Finset.Icc 1 U,
        (moebius d : ℝ) / Real.sqrt (d : ℝ) * finiteHalfHarmonic (L / d) := by
  have hc := ArithmeticFunction.sum_Ioc_mul_eq_sum_sum
    (shortPart U halfMoebius) halfOne L
  simp only [← Finset.Icc_add_one_left_eq_Ioc, Nat.zero_add] at hc
  have hl : (∑ n ∈ Finset.Icc 1 L,
      ((shortPart U (moebius : ArithmeticFunction ℝ) * zeta) n) /
        Real.sqrt (n : ℝ)) = ∑ n ∈ Finset.Icc 1 L,
          (shortPart U halfMoebius * halfOne) n := by
    apply Finset.sum_congr rfl
    intro n hn
    exact (weighted_short_convolution U n (by have := (Finset.mem_Icc.mp hn).1; omega)).symm
  rw [hl, hc]
  have he : (∑ d ∈ Finset.Icc 1 L, shortPart U halfMoebius d *
      ∑ m ∈ Finset.Icc 1 (L / d), halfOne m) =
      ∑ d ∈ Finset.Icc 1 L,
        if d ≤ U then (moebius d : ℝ) / Real.sqrt (d : ℝ) *
          finiteHalfHarmonic (L / d) else 0 := by
    apply Finset.sum_congr rfl
    intro d _
    simp [shortPart_apply, halfMoebius_apply, halfOne_apply, finiteHalfHarmonic, ite_mul]
  rw [he, ← Finset.sum_filter]
  congr 1
  ext d
  simp only [Finset.mem_filter, Finset.mem_Icc]
  omega

/-- The actual positive centered inventory has the source sign and a retained plus unit. -/
theorem closedCenteredHalfInventory_eq_finite_harmonics
    (U L : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) :
    closedCenteredHalfInventory U L =
      alpha U * finiteHalfHarmonic L -
        (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) / Real.sqrt (d : ℝ) *
          finiteHalfHarmonic (L / d)) + 1 - alpha U * finiteHalfHarmonic U := by
  have hfull : (∑ n ∈ Finset.Icc 1 L, beta U n / Real.sqrt (n : ℝ)) =
      1 - ∑ d ∈ Finset.Icc 1 U,
        (moebius d : ℝ) / Real.sqrt (d : ℝ) * finiteHalfHarmonic (L / d) := by
    have hc := weighted_short_sum U L hUL
    have hn (n : ℕ) : beta U n =
        (if n = 1 then (1 : ℝ) else 0) -
          (shortPart U (moebius : ArithmeticFunction ℝ) * zeta) n := by
      rw [beta_eq_long_convolution, longPart, sub_mul, coe_moebius_mul_coe_zeta]
      change (1 : ArithmeticFunction ℝ) n -
        (shortPart U (moebius : ArithmeticFunction ℝ) * zeta) n = _
      rw [ArithmeticFunction.one_apply]
    simp_rw [hn, sub_div, Finset.sum_sub_distrib]
    rw [hc]
    have he : (∑ n ∈ Finset.Icc 1 L,
        (if n = 1 then (1 : ℝ) else 0) / Real.sqrt (n : ℝ)) = 1 := by
      simp [ite_div, hU.trans hUL]
    rw [he]
  have hshort : (∑ n ∈ Finset.Icc 1 U, beta U n / Real.sqrt (n : ℝ)) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    rw [beta_zero_of_le U n (Finset.mem_Icc.mp hn).2, zero_div]
  have hsplit := Finset.sum_Ioc_consecutive
    (fun n => beta U n / Real.sqrt (n : ℝ)) (Nat.zero_le U) hUL
  have he0 (M : ℕ) : Finset.Ioc 0 M = Finset.Icc 1 M := by
    rw [← Finset.Icc_add_one_left_eq_Ioc]
    rfl
  rw [he0 U, he0 L, hshort, zero_add, hfull] at hsplit
  have hh := Finset.sum_Ioc_consecutive
    (fun n : ℕ => 1 / Real.sqrt (n : ℝ)) (Nat.zero_le U) hUL
  rw [he0 U, he0 L] at hh
  unfold closedCenteredHalfInventory
  simp_rw [centeredBeta, add_div]
  rw [Finset.sum_add_distrib, hsplit]
  simp_rw [show ∀ n : ℕ, alpha U / Real.sqrt (n : ℝ) =
    alpha U * (1 / Real.sqrt (n : ℝ)) by intro n; ring]
  rw [← Finset.mul_sum]
  unfold finiteHalfHarmonic
  nlinarith [congrArg (fun x : ℝ => alpha U * x) hh]

/-- The original natural-quotient closed inventory is the same positive harmonic formula. -/
theorem actualCenteredColumnHalfInventory_eq_finite_harmonics {A : ℝ} (hA : 1 ≤ A) :
    actualCenteredColumnHalfInventory A =
      alpha (vaughanCutoff A) *
        finiteHalfHarmonic (sourceKernelCutoff A / (vaughanCutoff A + 1) - 1) -
        (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) / Real.sqrt (d : ℝ) *
          finiteHalfHarmonic ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1) / d)) +
        1 - alpha (vaughanCutoff A) * finiteHalfHarmonic (vaughanCutoff A) := by
  have hK := actual_column_window_nonempty hA
  exact closedCenteredHalfInventory_eq_finite_harmonics _ _
    (vaughanCutoff_pos A hA) (by omega)

end
end FormalResearch.RiemannHypothesis.SourceActualCenteredHalfHarmonic
```
