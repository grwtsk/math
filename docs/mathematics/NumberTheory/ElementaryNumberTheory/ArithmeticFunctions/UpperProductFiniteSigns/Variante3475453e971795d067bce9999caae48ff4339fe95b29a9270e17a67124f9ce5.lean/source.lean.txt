import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic

set_option autoImplicit false

namespace UpperProductFiniteSignsScratch
open Finset
noncomputable section

private theorem mu6 : ArithmeticFunction.moebius 6 = 1 := by
  have h := ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
    (by decide : Nat.Coprime 2 3)
  norm_num [ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)] at h
  exact h

private theorem mu7 : ArithmeticFunction.moebius 7 = -1 :=
  ArithmeticFunction.moebius_apply_prime (by norm_num)

private theorem mu8 : ArithmeticFunction.moebius 8 = 0 := by
  simpa using ArithmeticFunction.moebius_apply_prime_pow
    (p := 2) (k := 3) (by norm_num) (by norm_num)

private theorem mu9 : ArithmeticFunction.moebius 9 = 0 := by
  simpa using ArithmeticFunction.moebius_apply_prime_pow
    (p := 3) (k := 2) (by norm_num) (by norm_num)

private theorem mu10 : ArithmeticFunction.moebius 10 = 1 := by
  have h := ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
    (by decide : Nat.Coprime 2 5)
  norm_num [ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 5)] at h
  exact h

/-- The complete upper half at N=10 has positive cumulative product mass at 36. -/
theorem upper_cutoff_36 :
    (∑ i ∈ Ioc 5 10, ∑ j ∈ Ioc 5 10, if i*j ≤ 36 then
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) = 1 := by
  have hset : Ioc 5 10 = ({6, 7, 8, 9, 10} : Finset ℕ) := by decide
  norm_num [hset, mu6, mu7, mu8, mu9, mu10]

/-- The same complete upper half has negative cumulative product mass at 42. -/
theorem upper_cutoff_42 :
    (∑ i ∈ Ioc 5 10, ∑ j ∈ Ioc 5 10, if i*j ≤ 42 then
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) = -1 := by
  have hset : Ioc 5 10 = ({6, 7, 8, 9, 10} : Finset ℕ) := by decide
  norm_num [hset, mu6, mu7, mu8, mu9, mu10]

/-- All ordered pairs in the same upper square give this exact six-product combination. -/
theorem upper_square_10_eq (F : ℕ → ℝ) :
    (∑ i ∈ Ioc 5 10, ∑ j ∈ Ioc 5 10,
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ)*F (i*j)) =
      F 36 - 2*F 42 + F 49 + 2*F 60 - 2*F 70 + F 100 := by
  have hset : Ioc 5 10 = ({6, 7, 8, 9, 10} : Finset ℕ) := by decide
  norm_num [hset, mu6, mu7, mu8, mu9, mu10]
  ring

end
end UpperProductFiniteSignsScratch
