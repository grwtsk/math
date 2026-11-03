/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib factorization and finite-sum facts retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.RetainedFactorization
import Mathlib.Algebra.BigOperators.Finsupp.Basic

set_option autoImplicit false
noncomputable section

/-!
# Retained-factorization arithmetic differentiation

The rational-valued observation D(n)=n*sum_p v_p(n)/p retains all prime
multiplicities. It obeys Leibniz on nonzero natural inputs, but fails
additivity already at the coprime additive triple 2+3=5. Thus this is
not the additive integer derivation excluded by IntegerDerivationObstruction.
No bound on additive failure in terms of radical is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ABC.RetainedArithmeticDerivative

def logarithmicDerivative (n : ℕ) : ℚ :=
  n.factorization.sum (fun p k => (k : ℚ) / (p : ℚ))

def arithmeticDerivative (n : ℕ) : ℚ := (n : ℚ) * logarithmicDerivative n

theorem logarithmicDerivative_mul (m n : ℕ) (hm : m ≠ 0) (hn : n ≠ 0) :
    logarithmicDerivative (m * n) = logarithmicDerivative m + logarithmicDerivative n := by
  unfold logarithmicDerivative
  rw [Nat.factorization_mul hm hn]
  apply Finsupp.sum_add_index'
  · intro p
    simp
  · intro p a b
    simp [Nat.cast_add, add_div]

theorem arithmeticDerivative_leibniz (m n : ℕ) (hm : m ≠ 0) (hn : n ≠ 0) :
    arithmeticDerivative (m * n) =
      (m : ℚ) * arithmeticDerivative n + (n : ℚ) * arithmeticDerivative m := by
  unfold arithmeticDerivative
  rw [Nat.cast_mul, logarithmicDerivative_mul m n hm hn]
  ring

theorem logarithmicDerivative_prime (p : ℕ) (hp : p.Prime) :
    logarithmicDerivative p = 1 / (p : ℚ) := by
  unfold logarithmicDerivative
  rw [hp.factorization, Finsupp.sum_single_index (by simp)]
  simp

theorem arithmeticDerivative_prime (p : ℕ) (hp : p.Prime) : arithmeticDerivative p = 1 := by
  rw [arithmeticDerivative, logarithmicDerivative_prime p hp]
  have hp0 : (p : ℚ) ≠ 0 := by exact_mod_cast hp.ne_zero
  field_simp [hp0]

theorem arithmeticDerivative_not_additive_at_coprime_triple :
    arithmeticDerivative (2 + 3) ≠ arithmeticDerivative 2 + arithmeticDerivative 3 := by
  rw [show 2 + 3 = (5 : ℕ) by norm_num,
    arithmeticDerivative_prime 5 (by norm_num), arithmeticDerivative_prime 2 (by norm_num),
    arithmeticDerivative_prime 3 (by norm_num)]
  norm_num

end GRWTSK.NumberTheory.ABC.RetainedArithmeticDerivative
