/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.IntegerAdditiveDefectCongruences

set_option autoImplicit false
noncomputable section

/-! Exact integer derivative growth and one-sided additive-defect bounds.
No uniform radical-only bound is inferred. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.RetainedArithmeticDerivative

theorem naturalArithmeticDerivative_leibniz (m n : ℕ) (hm : m ≠ 0) (hn : n ≠ 0) :
    naturalArithmeticDerivative (m * n) =
      m * naturalArithmeticDerivative n + n * naturalArithmeticDerivative m := by
  have h := arithmeticDerivative_leibniz m n hm hn
  rw [← naturalArithmeticDerivative_cast, ← naturalArithmeticDerivative_cast,
    ← naturalArithmeticDerivative_cast] at h
  exact_mod_cast h

theorem naturalArithmeticDerivative_prime (p : ℕ) (hp : p.Prime) :
    naturalArithmeticDerivative p = 1 := by
  have h := arithmeticDerivative_prime p hp
  rw [← naturalArithmeticDerivative_cast] at h
  exact_mod_cast h

theorem naturalArithmeticDerivative_prime_pow_succ (p k : ℕ) (hp : p.Prime) :
    naturalArithmeticDerivative (p ^ (k + 1)) = (k + 1) * p ^ k := by
  induction k with
  | zero => simpa using naturalArithmeticDerivative_prime p hp
  | succ k ih =>
    calc
      naturalArithmeticDerivative (p ^ (k + 1 + 1)) =
          naturalArithmeticDerivative (p ^ (k + 1) * p) := by rw [pow_succ]
      _ = p ^ (k + 1) * naturalArithmeticDerivative p +
          p * naturalArithmeticDerivative (p ^ (k + 1)) :=
        naturalArithmeticDerivative_leibniz _ _ (pow_ne_zero _ hp.ne_zero) hp.ne_zero
      _ = (k + 1 + 1) * p ^ (k + 1) := by
        rw [naturalArithmeticDerivative_prime p hp, ih]
        simp only [pow_succ]
        ring

end GRWTSK.NumberTheory.ABC.RetainedArithmeticDerivative

namespace GRWTSK.NumberTheory.ABC.IntegerAdditiveDefectCongruences
open RetainedFactorization RetainedArithmeticDerivative

theorem integerDefect_lower (T : CoprimeAdditiveTriple) :
    -(naturalArithmeticDerivative T.a : ℤ) - (naturalArithmeticDerivative T.b : ℤ) ≤
      integerAdditiveDefect T := by
  unfold integerAdditiveDefect
  have h : (0 : ℤ) ≤ naturalArithmeticDerivative T.c := by positivity
  linarith

theorem integerDefect_upper (T : CoprimeAdditiveTriple) :
    integerAdditiveDefect T ≤ (naturalArithmeticDerivative T.c : ℤ) := by
  unfold integerAdditiveDefect
  have ha : (0 : ℤ) ≤ naturalArithmeticDerivative T.a := by positivity
  have hb : (0 : ℤ) ≤ naturalArithmeticDerivative T.b := by positivity
  linarith

end GRWTSK.NumberTheory.ABC.IntegerAdditiveDefectCongruences
