import FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController
import Mathlib.Analysis.Complex.RemovableSingularity

/-! The actual corrected finite Möbius numerator and its removable one-half value. -/
set_option autoImplicit false
namespace MobiusPoleNumeratorScratch
open Finset MeasureTheory Filter
open scoped ComplexConjugate Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FiniteMobiusController
noncomputable section

/-- The original finite signed reciprocal Dirichlet numerator in exponential coordinates. -/
def dirichletNumerator (X : ℕ) (z : ℂ) : ℂ :=
  ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
    Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ))

/-- The complete corrected numerator, retaining the actual endpoint coefficient. -/
def correctedNumerator (X : ℕ) (z : ℂ) : ℂ :=
  dirichletNumerator X z - (mobiusReciprocalSum X : ℂ) *
    Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ))

/-- The signed logarithmic normalization required at the removed source pole. -/
def logNormalization (X : ℕ) : ℝ :=
  ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ) *
    Real.log ((X : ℝ) / (n : ℝ))

/-- Positive integer logarithms give the exact reciprocal coefficient at one half. -/
theorem exponential_at_half (n : ℕ) (hn : 1 ≤ n) :
    Complex.exp (-(1 / 2 + (1 / 2 : ℂ)) * (Real.log (n : ℝ) : ℂ)) =
      (n : ℂ)⁻¹ := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have h : -(1 / 2 + (1 / 2 : ℂ)) * (Real.log (n : ℝ) : ℂ) =
      ((-Real.log (n : ℝ) : ℝ) : ℂ) := by push_cast; ring
  rw [h, ← Complex.ofReal_exp, Real.exp_neg, Real.exp_log hn0, Complex.ofReal_inv]
  rfl

/-- The finite numerator at one half is exactly the original signed reciprocal sum. -/
theorem dirichletNumerator_half (X : ℕ) :
    dirichletNumerator X (1 / 2) = (mobiusReciprocalSum X : ℂ) := by
  unfold dirichletNumerator mobiusReciprocalSum
  simp only [Complex.ofReal_sum, Complex.ofReal_div, Complex.ofReal_natCast,
    Complex.ofReal_intCast]
  apply sum_congr rfl
  intro n hn
  rw [exponential_at_half n (mem_Icc.mp hn).1]
  rfl

/-- The actual endpoint correction cancels the numerator at one half exactly. -/
theorem correctedNumerator_half (X : ℕ) : correctedNumerator X (1 / 2) = 0 := by
  rw [correctedNumerator, dirichletNumerator_half]
  simp

/-- The finite exponential numerator is entire; no zeta inverse is taken here. -/
theorem correctedNumerator_differentiable (X : ℕ) : Differentiable ℂ (correctedNumerator X) := by
  unfold correctedNumerator dirichletNumerator
  fun_prop

end
end MobiusPoleNumeratorScratch
