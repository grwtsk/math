import Mathlib.Data.Nat.Prime.Defs
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.Factorization.Defs
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.NumberTheory.EulerProduct.DirichletLSeries

/-!
Public, nonterminal prerequisite statements for the arithmetic route in #8.
These aliases use the exact locked Mathlib source; they are outside the canonical
proof root and confer no proofgraph admission or reader-review acceptance.
-/

open scoped BigOperators Topology LSeries.notation ArithmeticFunction.vonMangoldt

namespace Riemann.Fixtures.Arithmetic

theorem primeTwo : Nat.Prime 2 := Nat.prime_two

theorem primeLowerBound {p : ℕ} (hp : Nat.Prime p) : 2 ≤ p := Nat.Prime.two_le hp

theorem factorization {n : ℕ} (hn : n ≠ 0) : n.factorization.prod (· ^ ·) = n :=
  Nat.prod_factorization_pow_eq_self hn

theorem logPower (x : ℝ) (n : ℕ) : Real.log (x ^ n) = n * Real.log x :=
  Real.log_pow x n

theorem logPrimePositive {p : ℕ} (hp : p.Prime) : 0 < Real.log p :=
  Nat.Prime.log_pos hp

theorem primePowerNotPrime {x n : ℕ} (hn : 2 ≤ n) : ¬(x ^ n).Prime :=
  Nat.Prime.not_prime_pow hn

theorem lambdaPrimePower {p k : ℕ} (hp : p.Prime) (hk : k ≠ 0) :
    Λ (p ^ k) = Real.log p :=
  (ArithmeticFunction.vonMangoldt_apply_pow hk).trans
    (ArithmeticFunction.vonMangoldt_apply_prime hp)

theorem lambdaZero {n : ℕ} : Λ n = 0 ↔ ¬IsPrimePow n :=
  ArithmeticFunction.vonMangoldt_eq_zero_iff

theorem lambdaDivisorSum {n : ℕ} : ∑ i ∈ n.divisors, Λ i = Real.log n :=
  ArithmeticFunction.vonMangoldt_sum

theorem zetaSeries {s : ℂ} (hs : 1 < s.re) :
    riemannZeta s = ∑' n : ℕ, 1 / (n + 1 : ℂ) ^ s :=
  zeta_eq_tsum_one_div_nat_add_one_cpow hs

theorem eulerProduct {s : ℂ} (hs : 1 < s.re) :
    ∏' p : Nat.Primes, (1 - (p : ℂ) ^ (-s))⁻¹ = riemannZeta s :=
  riemannZeta_eulerProduct_tprod hs

theorem eulerProductLimit {s : ℂ} (hs : 1 < s.re) :
    Filter.Tendsto
      (fun n : ℕ ↦ ∏ p ∈ Nat.primesBelow n, (1 - (p : ℂ) ^ (-s))⁻¹)
      Filter.atTop (𝓝 (riemannZeta s)) :=
  riemannZeta_eulerProduct hs

theorem zetaExpLambdaSeries {s : ℂ} (hs : 1 < s.re) :
    Complex.exp (LSeries (fun n : ℕ ↦ Λ n / Real.log n) s) = riemannZeta s :=
  riemannZeta_eq_exp_LSeries hs

theorem lambdaSummable {s : ℂ} (hs : 1 < s.re) : LSeriesSummable ↗Λ s :=
  ArithmeticFunction.LSeriesSummable_vonMangoldt hs

theorem zetaNonvanishing {s : ℂ} (hs : 1 < s.re) : riemannZeta s ≠ 0 :=
  riemannZeta_ne_zero_of_one_lt_re hs

theorem lambdaLogDerivative {s : ℂ} (hs : 1 < s.re) :
    LSeries ↗Λ s = -deriv riemannZeta s / riemannZeta s :=
  ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hs

end Riemann.Fixtures.Arithmetic
