# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ProductFiberSigns.Variant09434574b85ac3136e39354fc375ccb5cbb1c261f439496ef1c4851c57c85800

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0230e4bdcaecef4abd6856a5cf2d99ef54bf8998` · SHA-256 `09434574b85ac3136e39354fc375ccb5cbb1c261f439496ef1c4851c57c85800`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic

set_option autoImplicit false

namespace ProductFiberSignsScratch

open Finset

noncomputable section

theorem moebius_product_sign (i j : ℕ) :
    (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) =
      (-1 : ℝ)^ArithmeticFunction.cardFactors (i*j) *
        (ArithmeticFunction.moebius i : ℝ)^2 * (ArithmeticFunction.moebius j : ℝ)^2 := by
  by_cases hi : Squarefree i
  · by_cases hj : Squarefree j
    · have hsi : (ArithmeticFunction.moebius i : ℝ)^2 = 1 := by
        exact_mod_cast ArithmeticFunction.moebius_sq_eq_one_of_squarefree hi
      have hsj : (ArithmeticFunction.moebius j : ℝ)^2 = 1 := by
        exact_mod_cast ArithmeticFunction.moebius_sq_eq_one_of_squarefree hj
      rw [hsi, hsj, mul_one, mul_one,
        ArithmeticFunction.cardFactors_mul hi.ne_zero hj.ne_zero,
        ArithmeticFunction.moebius_apply_of_squarefree hi,
        ArithmeticFunction.moebius_apply_of_squarefree hj]
      push_cast
      rw [pow_add]
    · simp only [ArithmeticFunction.moebius_eq_zero_of_not_squarefree hj,
        Int.cast_zero, mul_zero, zero_pow (by norm_num : (2:ℕ)≠0)]
  · simp only [ArithmeticFunction.moebius_eq_zero_of_not_squarefree hi,
      Int.cast_zero, zero_mul, mul_zero, zero_pow (by norm_num : (2:ℕ)≠0)]

theorem fixed_product_fiber_sign (S T : Finset ℕ) (n : ℕ) :
    (∑ i ∈ S, ∑ j ∈ T, if i*j=n then
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) =
      (-1 : ℝ)^ArithmeticFunction.cardFactors n *
        ∑ i ∈ S, ∑ j ∈ T, if i*j=n then
          (ArithmeticFunction.moebius i : ℝ)^2*(ArithmeticFunction.moebius j : ℝ)^2 else 0 := by
  rw [mul_sum]
  apply sum_congr rfl
  intro i _
  rw [mul_sum]
  apply sum_congr rfl
  intro j _
  by_cases h : i*j=n
  · rw [if_pos h, if_pos h, moebius_product_sign, h]
    ring
  · rw [if_neg h, if_neg h, mul_zero]

theorem fixed_product_fiber_sign_nonneg (S T : Finset ℕ) (n : ℕ) :
    0 ≤ (-1 : ℝ)^ArithmeticFunction.cardFactors n *
      (∑ i ∈ S, ∑ j ∈ T, if i*j=n then
        (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) := by
  rw [fixed_product_fiber_sign]
  have hs : ((-1 : ℝ)^ArithmeticFunction.cardFactors n)^2=1 := by
    rw [← pow_mul, mul_comm _ 2, pow_mul, neg_one_sq, one_pow]
  rw [← mul_assoc, ← pow_two, hs, one_mul]
  apply sum_nonneg
  intro i _
  apply sum_nonneg
  intro j _
  split_ifs <;> positivity

end
end ProductFiberSignsScratch
```
