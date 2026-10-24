# Complete source: GRWTSK.NumberTheory.Moebius.MobiusVonMangoldtCoefficientBridge

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a8a9adc1ef1cb3d5a5bc40e016de055edb1adb1` · SHA-256 `ac535ee03a58a93bb42af7a82027b63ff80e0fb6234f6a6e94fa36501eb3ccae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #948. Parent: draft PR #937 at b109a7e835230614092d17f9ad7a098a3e132d17.
-/
-- This finite coefficient identity uses the Möbius definition, independently
-- of the regular-orbit energy and its analytic supplier interfaces.
import GRWTSK.NumberTheory.Moebius.MertensPrimitive
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
  simpa only [ArithmeticFunction.mul_apply, ArithmeticFunction.intCoe_apply] using h.symm

-- Preserve the published nonzero-domain parameter.
set_option linter.unusedVariables false in
/-- Equivalent divisor form: Lambda(n) is a finite Möbius-log divisor
convolution. -/
theorem vonMangoldt_eq_sum_divisors_mobius_log_quotient
    {n : ℕ} (hn : n ≠ 0) :
    ArithmeticFunction.vonMangoldt n =
      ∑ d ∈ n.divisors,
        (ArithmeticFunction.moebius d : ℝ) *
          Real.log (n / d : ℕ) := by
  rw [vonMangoldt_eq_sum_divisorsAntidiagonal_mobius_log,
    Nat.sum_divisorsAntidiagonal
      (fun d q => (ArithmeticFunction.moebius d : ℝ) * ArithmeticFunction.log q)]
  simp only [ArithmeticFunction.log_apply]

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
  simpa only [Complex.ofReal_sum, Complex.ofReal_mul] using
    congrArg (fun x : ℝ => (x : ℂ) * F n) h

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
```
