import SourceActualXiHalfFiniteReadout
import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-!
Literal critical-half arithmetic functions expose the genuine finite hyperbola.
All natural quotient floors and the complete lower-seven prefix are retained.
This estimates no critical Moebius row or actual Xi primitive average.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiHalfHyperbola
open ArithmeticFunction MeasureTheory Set
open scoped Interval
open SourceActualXiHalfFiniteReadout RootActualXiTailPrimitive RH16ActualPsiNegativeBlock
noncomputable section

/-- The independently literal signed actual Moebius critical-half arithmetic function. -/
def actualMoebiusHalfFunction : ArithmeticFunction ℝ :=
  ⟨fun n => (moebius n : ℝ) / Real.sqrt (n : ℝ), by simp⟩

/-- The literal logarithmic critical-half arithmetic function, including its zero unit log. -/
def actualLogHalfFunction : ArithmeticFunction ℝ :=
  ⟨fun n => Real.log (n : ℝ) / Real.sqrt (n : ℝ), by simp⟩

/-- The complete independent finite signed Moebius logarithmic quotient inventory. -/
def actualMoebiusLogHalfHyperbola (N : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 N, (moebius d : ℝ) / Real.sqrt (d : ℝ) *
    ∑ m ∈ Finset.Icc 1 (N / d), Real.log (m : ℝ) / Real.sqrt (m : ℝ)

/-- Genuine actual Lambda=mu*log commutes with the multiplicative critical-half weight. -/
theorem actualMoebiusHalf_mul_logHalf (n : ℕ) :
    (actualMoebiusHalfFunction * actualLogHalfFunction) n =
      (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ) := by
  have hm := congrArg (fun f : ArithmeticFunction ℝ => f n)
    moebius_mul_log_eq_vonMangoldt
  simp only [mul_apply, log_apply, intCoe_apply] at hm
  rw [mul_apply, ← hm, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro p hp
  change ((moebius p.1 : ℝ) / Real.sqrt (p.1 : ℝ)) *
    (Real.log (p.2 : ℝ) / Real.sqrt (p.2 : ℝ)) =
      ((moebius p.1 : ℝ) * Real.log (p.2 : ℝ)) / Real.sqrt (n : ℝ)
  have hprod := (Nat.mem_divisorsAntidiagonal.mp hp).1
  have hs : Real.sqrt (n : ℝ) = Real.sqrt (p.1 : ℝ) * Real.sqrt (p.2 : ℝ) := by
    rw [← hprod, Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg _)]
  rw [hs, div_mul_div_comm]

/-- Exact finite Fubini retains every closed prime power and literal natural quotient. -/
theorem actualMangoldtHalfPrefix_eq_hyperbola (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) =
      actualMoebiusLogHalfHyperbola N := by
  have hh := sum_Ioc_mul_eq_sum_sum actualMoebiusHalfFunction actualLogHalfFunction N
  simp_rw [actualMoebiusHalf_mul_logHalf] at hh
  have hi (M : ℕ) : Finset.Ioc 0 M = Finset.Icc 1 M := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_Icc]
    omega
  simp_rw [hi] at hh
  exact hh

/-- The lower-seven prefix is subtracted in full, preserving the actual prime-seven trace. -/
theorem actualMangoldtHalfWindowSeven_eq_hyperbola {Y : ℝ} (hY : 7 ≤ Y) :
    actualMangoldtHalfWindowSeven Y =
      actualMoebiusLogHalfHyperbola (Nat.floor Y) - actualMoebiusLogHalfHyperbola 7 := by
  rw [← actualMangoldtHalfPrefix_eq_hyperbola, ← actualMangoldtHalfPrefix_eq_hyperbola]
  have hu : Finset.Icc 1 (Nat.floor Y) = Finset.Icc 1 7 ∪ Finset.Ioc 7 (Nat.floor Y) := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_union, Finset.mem_Ioc]
    have hf : 7 ≤ Nat.floor Y := Nat.le_floor hY
    omega
  have hd : Disjoint (Finset.Icc 1 7) (Finset.Ioc 7 (Nat.floor Y)) := by
    rw [Finset.disjoint_left]
    intro n hn hm
    simp only [Finset.mem_Icc, Finset.mem_Ioc] at hn hm
    omega
  rw [hu, Finset.sum_union hd]
  unfold actualMangoldtHalfWindowSeven
  ring

/-- The complete actual F7 arithmetic formula preserves signed full quotient rows and all heads. -/
theorem actualAnchoredXiTailPrimitive_eq_hyperbola {t : ℝ} (ht : Real.log 7 ≤ t) :
    actualAnchoredXiTailPrimitive t =
      2 * (actualMoebiusLogHalfHyperbola (Nat.floor (Real.exp t)) -
        actualMoebiusLogHalfHyperbola 7) -
        2 * (Chebyshev.psi (Real.exp t) + Real.exp t +
          2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt (Real.exp t) +
        2 * (Chebyshev.psi 7 + 7 +
          2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt 7 := by
  rw [actualAnchoredXiTailPrimitive_eq_finite ht,
    actualMangoldtHalfWindowSeven_eq_hyperbola]
  simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr ht

end
end FormalResearch.RiemannHypothesis.SourceActualXiHalfHyperbola
