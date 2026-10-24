/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.TruncatedMoebiusCoefficients
import Mathlib.Data.Complex.Basic

/-!
# Complex casts of complete truncated arithmetic coefficients

Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI Codex.
Closed cutoffs, signed factors and squareful outputs stay exact.
-/
namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
open scoped ArithmeticFunction.Moebius ArithmeticFunction.zeta

/-- Casting preserves the closed cutoff pointwise. -/
theorem integer_cutoff_complex (f : ArithmeticFunction ℤ) (U : ℕ) :
    (ArithmeticFunction.ofInt (closedArithmeticCutoff f U) : ArithmeticFunction ℂ) =
      closedArithmeticCutoff (ArithmeticFunction.ofInt f : ArithmeticFunction ℂ) U := by
  ext n
  change ((if n ≤ U then f n else 0 : ℤ) : ℂ) =
    (if n ≤ U then (f n : ℂ) else 0)
  by_cases hn : n ≤ U <;> simp [hn]

/-- Casting preserves the signed difference, without coefficient absolutes. -/
theorem integer_sub_complex (f g : ArithmeticFunction ℤ) :
    (ArithmeticFunction.ofInt (f - g) : ArithmeticFunction ℂ) =
      (ArithmeticFunction.ofInt f : ArithmeticFunction ℂ) - ArithmeticFunction.ofInt g := by
  ext n
  change ((f n - g n : ℤ) : ℂ) = (f n : ℂ) - (g n : ℂ)
  exact Int.cast_sub _ _

/-- The exact complete integer high coefficient has the complex convolution cast. -/
theorem high_moebius_complex_function (U : ℕ) :
    (fun n => (highMoebiusCoefficient U n : ℂ)) =
      (fun n => (((μ : ArithmeticFunction ℂ) - closedArithmeticCutoff (μ : ArithmeticFunction ℂ) U) *
        ((μ : ArithmeticFunction ℂ) - closedArithmeticCutoff (μ : ArithmeticFunction ℂ) U) *
        (ζ : ArithmeticFunction ℂ)) n) := by
  have h : (ArithmeticFunction.ofInt
      (((μ : ArithmeticFunction ℤ) - closedArithmeticCutoff μ U) *
        ((μ : ArithmeticFunction ℤ) - closedArithmeticCutoff μ U) *
        (ζ : ArithmeticFunction ℤ)) : ArithmeticFunction ℂ) =
      ((μ : ArithmeticFunction ℂ) - closedArithmeticCutoff (μ : ArithmeticFunction ℂ) U) *
        ((μ : ArithmeticFunction ℂ) - closedArithmeticCutoff (μ : ArithmeticFunction ℂ) U) *
        (ζ : ArithmeticFunction ℂ) := by
    rw [ArithmeticFunction.intCoe_mul, ArithmeticFunction.intCoe_mul,
      integer_sub_complex, integer_cutoff_complex]
    rfl
  exact congrArg (fun f : ArithmeticFunction ℂ => (f : ℕ → ℂ)) h

set_option maxRecDepth 10000 in
set_option maxHeartbeats 1000000 in
/-- Exact hostile fixture: convolution is not coefficientwise multiplication. -/
theorem moebius_convolution_not_pointwise_at_two :
    highMoebiusCoefficient 0 2 = -1 ∧
      (μ 2 : ℤ) * (μ 2 : ℤ) * (ζ : ArithmeticFunction ℤ) 2 = 1 := by
  decide +kernel

end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
