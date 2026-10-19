import Folder.Rebuild.NumberTheory.DivisorSum
import Mathlib.NumberTheory.ArithmeticFunction.Moebius

/-!
# Folder.Rebuild.NumberTheory.Mobius

Finite Möbius identities repackaged for the rebuild branch.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

open scoped BigOperators
open ArithmeticFunction
open scoped ArithmeticFunction.Moebius

noncomputable def mobiusFn : ArithFn Int :=
  fun n => ArithmeticFunction.moebius n

theorem mobius_sum_divisors_eq_one_or_zero
    (n : Nat) :
    (∑ d ∈ Nat.divisors n, mobiusFn d) =
      if n = 1 then 1 else 0 := by
  have h :=
    congrArg (fun F : ArithmeticFunction Int => F n)
      ArithmeticFunction.moebius_mul_coe_zeta
  rw [ArithmeticFunction.coe_mul_zeta_apply] at h
  simpa [mobiusFn, ArithmeticFunction.one_apply] using h

/--
Checked rebuild of finite Moebius inversion.

This is an elementary finite divisor-sum theorem. It is not an analytic theorem
and does not depend on prime-counting asymptotics, zeta continuation, or
zero-free regions.
-/
theorem mobius_inversion_finite_checked
    {f g : ArithFn Int}
    (hfg :
      ∀ n, 0 < n →
        g n = ∑ d ∈ Nat.divisors n, f d) :
    ∀ n, 0 < n →
      f n = ∑ d ∈ Nat.divisors n, mobiusFn d * g (n / d) := by
  intro n hn
  have hsum :
      ∀ n > 0, (∑ d ∈ Nat.divisors n, f d) = g n := by
    intro m hm
    exact (hfg m hm).symm
  have hm :=
    (ArithmeticFunction.sum_eq_iff_sum_mul_moebius_eq
      (R := Int)).mp hsum n hn
  have hm' :
      ∑ x ∈ n.divisorsAntidiagonal,
        mobiusFn x.1 * g x.2 = f n := by
    simpa [mobiusFn] using hm
  rw [Nat.sum_divisorsAntidiagonal
    (fun d e => mobiusFn d * g e)] at hm'
  exact hm'.symm

theorem mobius_inversion
    {f g : ArithFn Int}
    (hfg :
      ∀ n, 0 < n →
        g n = ∑ d ∈ Nat.divisors n, f d) :
    ∀ n, 0 < n →
      f n = ∑ d ∈ Nat.divisors n, mobiusFn d * g (n / d) :=
  mobius_inversion_finite_checked hfg

end NumberTheory
end Rebuild
end Folder
