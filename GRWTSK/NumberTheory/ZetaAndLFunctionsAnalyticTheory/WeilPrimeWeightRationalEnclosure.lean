/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.RealFunctions.RationalLogEnclosure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeWindow

/-! # Rational enclosures of the Weil prime-power weights -/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open GRWTSK.RealFunctions

/-- Divide the logarithm endpoints by the opposite positive square-root endpoints. -/
def rationalPrimeWeightEnclosure (p k : ℕ) (a b : ℚ) : ℚ × ℚ :=
  let logBounds := rationalLogEnclosure (p : ℚ) k
  (logBounds.1 / b, (logBounds.1 + logBounds.2) / a)

/-- The square-root bracket can be certified by rational inequalities on the
squares. At a positive power of a prime the numerator is exactly the log of
the base prime. -/
theorem rationalPrimeWeightEnclosure_correct {p e : ℕ} (hp : p.Prime) (he : e ≠ 0)
    (k : ℕ) {a b : ℚ} (ha : 0 < a) (hb : 0 ≤ b)
    (hlo : a ^ 2 ≤ ((p ^ e : ℕ) : ℚ)) (hhi : ((p ^ e : ℕ) : ℚ) ≤ b ^ 2) :
    ((rationalPrimeWeightEnclosure p k a b).1 : ℝ) ≤ LowSchur.primeWeight (p ^ e) ∧
      LowSchur.primeWeight (p ^ e) ≤ ((rationalPrimeWeightEnclosure p k a b).2 : ℝ) := by
  let r := Real.sqrt ((p ^ e : ℕ) : ℝ)
  have hr : 0 ≤ r := Real.sqrt_nonneg _
  have hrsq : r ^ 2 = ((p ^ e : ℕ) : ℝ) := Real.sq_sqrt (by positivity)
  have haR : (0 : ℝ) < a := by exact_mod_cast ha
  have hbR : (0 : ℝ) ≤ b := by exact_mod_cast hb
  have hla : (a : ℝ) ≤ r := by
    apply (sq_le_sq₀ haR.le hr).mp
    rw [hrsq]
    exact_mod_cast hlo
  have hub : r ≤ (b : ℝ) := by
    apply (sq_le_sq₀ hr hbR).mp
    rw [hrsq]
    exact_mod_cast hhi
  have hrpos : 0 < r := haR.trans_le hla
  have hp1 : 1 ≤ p := hp.one_lt.le
  obtain ⟨hs, hl, hu⟩ := rationalLogEnclosure_correct (p : ℚ) (by exact_mod_cast hp1) k
  simp only [Rat.cast_natCast] at hl hu
  rw [LowSchur.primeWeight, ArithmeticFunction.vonMangoldt_apply_pow he,
    ArithmeticFunction.vonMangoldt_apply_prime hp]
  simp only [rationalPrimeWeightEnclosure, Rat.cast_div, Rat.cast_add]
  change _ ≤ Real.log (p : ℝ) / r ∧ Real.log (p : ℝ) / r ≤ _
  have hsR : (0 : ℝ) ≤ (rationalLogEnclosure (p : ℚ) k).1 := by exact_mod_cast hs
  exact ⟨(div_le_div_of_nonneg_left hsR hrpos hub).trans
    (div_le_div_of_nonneg_right hl hr),
    (div_le_div_of_nonneg_right (by linarith) hr).trans
      (div_le_div_of_nonneg_left (by linarith) haR hla)⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
