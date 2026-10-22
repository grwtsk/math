/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #948. Parent: draft PR #937 at b109a7e835230614092d17f9ad7a098a3e132d17.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredEnergyBranchSeparation
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction.Moebius

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Checked Mathlib coefficient bridge: Möbius convolved with logarithm is
von Mangoldt. -/
theorem mobiusLogConvolution_eq_vonMangoldt :
    (ArithmeticFunction.moebius : ArithmeticFunction ℝ) *
        ArithmeticFunction.log =
      ArithmeticFunction.vonMangoldt := by
  exact ArithmeticFunction.moebius_mul_log_eq_vonMangoldt

/-- Pointwise divisor-antidiagonal form of the coefficient bridge. -/
theorem vonMangoldt_eq_sum_divisorsAntidiagonal_mobius_log
    (n : ℕ) :
    ArithmeticFunction.vonMangoldt n =
      ∑ p ∈ n.divisorsAntidiagonal,
        (ArithmeticFunction.moebius p.1 : ℝ) *
          ArithmeticFunction.log p.2 := by
  have h := congrArg (fun f : ArithmeticFunction ℝ => f n)
    mobiusLogConvolution_eq_vonMangoldt
  simpa [ArithmeticFunction.mul_apply] using h.symm

/-- Equivalent divisor form: Lambda(n) is a finite Möbius-log divisor
convolution. -/
theorem vonMangoldt_eq_sum_divisors_mobius_log_quotient
    {n : ℕ} (hn : n ≠ 0) :
    ArithmeticFunction.vonMangoldt n =
      ∑ d ∈ n.divisors,
        (ArithmeticFunction.moebius d : ℝ) *
          Real.log (n / d : ℕ) := by
  rw [← ArithmeticFunction.log_apply]
  rw [← ArithmeticFunction.log_mul_moebius_eq_vonMangoldt]
  simp only [ArithmeticFunction.mul_apply]
  rw [ArithmeticFunction.sum_divisorsAntidiagonal
    (fun d q => ArithmeticFunction.log d *
      (ArithmeticFunction.moebius q : ℝ))]
  rw [Finset.sum_bij (fun d _ => n / d)]
  · intro d hd
    simp only [ArithmeticFunction.log_apply]
    ring
  · intro d hd
    exact Nat.div_mem_divisors (Finset.mem_divisors.mp hd).1 hn
  · intro a ha b hb hab
    exact Nat.div_left_injective
      (Finset.mem_divisors.mp ha).2
      (Finset.mem_divisors.mp hb).2 hab
  · intro d hd
    refine ⟨n / d, Nat.div_mem_divisors (Finset.mem_divisors.mp hd).1 hn, ?_⟩
    exact Nat.div_div_cancel (Finset.mem_divisors.mp hd).1

/-- Exact substitution of von-Mangoldt coefficients in any finite real test
sum by the Möbius-log convolution. -/
theorem sum_vonMangoldt_test_eq_mobiusLogConvolution
    (S : Finset ℕ) (F : ℕ → ℝ) :
    (∑ n ∈ S, ArithmeticFunction.vonMangoldt n * F n) =
      ∑ n ∈ S,
        (∑ p ∈ n.divisorsAntidiagonal,
          (ArithmeticFunction.moebius p.1 : ℝ) *
            ArithmeticFunction.log p.2) * F n := by
  apply Finset.sum_congr rfl
  intro n hn
  rw [vonMangoldt_eq_sum_divisorsAntidiagonal_mobius_log]

/-- Complex-valued test-function version, matching Fourier-coordinate use. -/
theorem sum_vonMangoldt_complexTest_eq_mobiusLogConvolution
    (S : Finset ℕ) (F : ℕ → ℂ) :
    (∑ n ∈ S, (ArithmeticFunction.vonMangoldt n : ℂ) * F n) =
      ∑ n ∈ S,
        (∑ p ∈ n.divisorsAntidiagonal,
          ((ArithmeticFunction.moebius p.1 : ℝ) : ℂ) *
            (ArithmeticFunction.log p.2 : ℂ)) * F n := by
  apply Finset.sum_congr rfl
  intro n hn
  have h := vonMangoldt_eq_sum_divisorsAntidiagonal_mobius_log n
  exact congrArg (fun x : ℝ => (x : ℂ) * F n) h

structure MobiusVonMangoldtCoefficientBridgeSourceData where
  theoremStatement : Prop
  mathlibConvolutionBound : Prop
  pointwiseCoefficientBridgeMatched : Prop
  finiteRealTestSumBridgeMatched : Prop
  finiteComplexTestSumBridgeMatched : Prop
  centeredFiberEnergyImplicationClaimed : Prop
  gradedGreenEnergyImplicationClaimed : Prop

def MobiusVonMangoldtCoefficientBridgeSource
    (d : MobiusVonMangoldtCoefficientBridgeSourceData) : Prop :=
  d.theoremStatement ∧
  d.mathlibConvolutionBound ∧
  d.pointwiseCoefficientBridgeMatched ∧
  d.finiteRealTestSumBridgeMatched ∧
  d.finiteComplexTestSumBridgeMatched ∧
  d.centeredFiberEnergyImplicationClaimed ∧
  d.gradedGreenEnergyImplicationClaimed

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
