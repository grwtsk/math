/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.TwinShiftTwoCRT
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact finite divisor expansion of the shift-two Mangoldt correlation

This module expands each von Mangoldt factor through the pinned identity
`Λ = μ * log`, preserves the literal translation `n + 2`, and removes every
incompatible divisor pair by the exact condition `gcd(d,e) ∣ 2`.

An arbitrary small-divisor cutoff is then separated from the remaining signed
finite sum.  No estimate for either source, and no parity-sensitive lower
bound, is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.TwinMangoldtExpansion

open scoped BigOperators ArithmeticFunction ArithmeticFunction.Moebius
open Finset Nat ArithmeticFunction
open GRWTSK.NumberTheory.Primes.TwinShiftTwoCRT

noncomputable section

/-- The literal finite Dirichlet-convolution expansion at one input. -/
def twinMoebiusLogExpansion (n : ℕ) : ℝ :=
  ∑ de ∈ n.divisorsAntidiagonal,
    (μ de.1 : ℝ) * Real.log de.2

/-- Pointwise source identity inherited from `μ * log = Λ`. -/
theorem twinMoebiusLogExpansion_eq_vonMangoldt
    (n : ℕ) :
    twinMoebiusLogExpansion n = Λ n := by
  have h := congrArg
    (fun f : ArithmeticFunction ℝ => f n)
    ArithmeticFunction.moebius_mul_log_eq_vonMangoldt
  simpa only [twinMoebiusLogExpansion,
    ArithmeticFunction.mul_apply,
    ArithmeticFunction.intCoe_apply,
    ArithmeticFunction.log_apply] using h

/-- The exact bounded shift-two Mangoldt correlation. -/
def twinMangoldtCorrelation (X : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 X, Λ n * Λ (n + 2)

/-- One term in the expanded divisor source. -/
def twinDivisorKernelTerm
    (de fg : ℕ × ℕ) : ℝ :=
  ((μ de.1 : ℝ) * Real.log de.2) *
    ((μ fg.1 : ℝ) * Real.log fg.2)

/-- Complete finite nested divisor expansion, with every divisor identity and
endpoint retained. -/
def twinDivisorCorrelation (X : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 X,
    ∑ de ∈ n.divisorsAntidiagonal,
      ∑ fg ∈ (n + 2).divisorsAntidiagonal,
        twinDivisorKernelTerm de fg

/-- Exact expansion of the shift-two Mangoldt correlation. -/
theorem twinMangoldtCorrelation_eq_divisorCorrelation
    (X : ℕ) :
    twinMangoldtCorrelation X =
      twinDivisorCorrelation X := by
  unfold twinMangoldtCorrelation twinDivisorCorrelation
  apply Finset.sum_congr rfl
  intro n hn
  rw [← twinMoebiusLogExpansion_eq_vonMangoldt n,
    ← twinMoebiusLogExpansion_eq_vonMangoldt (n + 2)]
  unfold twinMoebiusLogExpansion
    twinDivisorKernelTerm
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro de hde
  rw [Finset.mul_sum]

/-- Every divisor pair actually occurring in the nested source satisfies the
shift-two CRT compatibility condition. -/
theorem twinDivisorPair_compatible
    {n : ℕ} {de fg : ℕ × ℕ}
    (hde : de ∈ n.divisorsAntidiagonal)
    (hfg : fg ∈ (n + 2).divisorsAntidiagonal) :
    TwinShiftTwoCompatible de.1 fg.1 := by
  have hdeprod : de.1 * de.2 = n :=
    (Nat.mem_divisorsAntidiagonal.mp hde).1
  have hfgprod : fg.1 * fg.2 = n + 2 :=
    (Nat.mem_divisorsAntidiagonal.mp hfg).1
  apply naturalSolution_implies_compatible
  refine ⟨n, ?_, ?_⟩
  · exact ⟨de.2, hdeprod.symm⟩
  · exact ⟨fg.2, hfgprod.symm⟩

/-- The same finite divisor source with incompatible pairs explicitly set to
zero. -/
def twinCompatibleDivisorCorrelation
    (X : ℕ) : ℝ := by
  classical
  exact ∑ n ∈ Finset.Icc 1 X,
    ∑ de ∈ n.divisorsAntidiagonal,
      ∑ fg ∈ (n + 2).divisorsAntidiagonal,
        if TwinShiftTwoCompatible de.1 fg.1 then
          twinDivisorKernelTerm de fg
        else 0

/-- CRT pruning loses no term from the exact divisor expansion. -/
theorem twinDivisorCorrelation_eq_compatible
    (X : ℕ) :
    twinDivisorCorrelation X =
      twinCompatibleDivisorCorrelation X := by
  unfold twinDivisorCorrelation
    twinCompatibleDivisorCorrelation
  apply Finset.sum_congr rfl
  intro n hn
  apply Finset.sum_congr rfl
  intro de hde
  apply Finset.sum_congr rfl
  intro fg hfg
  rw [if_pos (twinDivisorPair_compatible hde hfg)]

/-- Exact small-divisor source at a supplied cutoff. -/
def twinSmallDivisorSource
    (D X : ℕ) : ℝ := by
  classical
  exact ∑ n ∈ Finset.Icc 1 X,
    ∑ de ∈ n.divisorsAntidiagonal,
      ∑ fg ∈ (n + 2).divisorsAntidiagonal,
        if TwinShiftTwoCompatible de.1 fg.1 ∧
            de.1 ≤ D ∧ fg.1 ≤ D then
          twinDivisorKernelTerm de fg
        else 0

/-- Every compatible term outside the small-divisor box.  Möbius signs are
retained; this is not an absolute-value error. -/
def twinSignedDivisorResidual
    (D X : ℕ) : ℝ := by
  classical
  exact ∑ n ∈ Finset.Icc 1 X,
    ∑ de ∈ n.divisorsAntidiagonal,
      ∑ fg ∈ (n + 2).divisorsAntidiagonal,
        if TwinShiftTwoCompatible de.1 fg.1 ∧
            ¬ (de.1 ≤ D ∧ fg.1 ≤ D) then
          twinDivisorKernelTerm de fg
        else 0

/-- Exact small-divisor plus signed-residual decomposition. -/
theorem twinCompatibleDivisorCorrelation_eq_small_add_residual
    (D X : ℕ) :
    twinCompatibleDivisorCorrelation X =
      twinSmallDivisorSource D X +
        twinSignedDivisorResidual D X := by
  unfold twinCompatibleDivisorCorrelation
    twinSmallDivisorSource twinSignedDivisorResidual
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro de hde
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro fg hfg
  have hcompat := twinDivisorPair_compatible hde hfg
  by_cases hsmall : de.1 ≤ D ∧ fg.1 ≤ D
  · simp [hcompat, hsmall]
  · simp [hcompat, hsmall]

/-- Full exact source chain from the Mangoldt correlation to a selected local
box plus its signed complement. -/
theorem twinMangoldtCorrelation_eq_small_add_residual
    (D X : ℕ) :
    twinMangoldtCorrelation X =
      twinSmallDivisorSource D X +
        twinSignedDivisorResidual D X := by
  rw [twinMangoldtCorrelation_eq_divisorCorrelation,
    twinDivisorCorrelation_eq_compatible,
    twinCompatibleDivisorCorrelation_eq_small_add_residual]

end
end GRWTSK.NumberTheory.Primes.TwinMangoldtExpansion
