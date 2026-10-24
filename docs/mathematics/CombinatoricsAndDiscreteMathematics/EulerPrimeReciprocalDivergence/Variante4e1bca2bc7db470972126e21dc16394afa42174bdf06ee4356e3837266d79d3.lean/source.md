# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EulerPrimeReciprocalDivergence.Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3fa2f7f6e0ba752c2c3aa555662e027b22870e15` · SHA-256 `e4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.PrimeReciprocalSums
import Folder.Rebuild.AnalyticNumberTheory.RealEulerProductConvergence
import Folder.Rebuild.NumberTheory.FiniteEulerLogDerivative

/-!
# Folder.Rebuild.AnalyticNumberTheory.EulerPrimeReciprocalDivergence

Euler's finite-Euler-product proof that reciprocal-prime partial sums are
unbounded.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def finiteHarmonicEulerProduct
    (N : Nat) : Real :=
  finiteZetaEulerProductReal (primesUpTo N) 1 N

theorem finiteHarmonicEulerProduct_expands
    (N : Nat) :
    finiteHarmonicEulerProduct N =
      ∑ n ∈ boundedSmoothNumbers (primesUpTo N) N,
        posWeightReal 1 n := by
  unfold finiteHarmonicEulerProduct
  exact
    finiteZetaEulerProductReal_expands_boundedSmoothNumbers
      (primesUpTo N) N 1
      (by intro p hp; exact primesUpTo_prime hp)

theorem posWeightReal_one_eq_inv_nat
    {n : Nat}
    (hn : 0 < n) :
    posWeightReal 1 n = (n : Real)⁻¹ := by
  rw [posWeightReal_of_pos 1 hn]
  rw [Real.rpow_neg_one]

theorem harmonicPartial_le_finiteHarmonicEulerProduct
    (N : Nat) :
    harmonicPartial N ≤ finiteHarmonicEulerProduct N := by
  have h := zetaPartialReal_le_zetaEulerApproxReal 1 N
  have hleft :
      harmonicPartial N = zetaPartialReal 1 N := by
    unfold harmonicPartial zetaPartialReal
    refine Finset.sum_congr rfl ?_
    intro n hn
    exact (posWeightReal_one_eq_inv_nat (lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hn).1)).symm
  have hright :
      finiteHarmonicEulerProduct N = zetaEulerApproxReal 1 N := rfl
  simpa [hleft, hright]
    using h

noncomputable def reciprocalGeometricFactor
    (p K : Nat) : Real :=
  ∑ k ∈ Finset.range (K + 1), ((p : Real)⁻¹) ^ k

theorem finiteZetaEulerFactorReal_one_eq_reciprocalGeometricFactor
    {p K : Nat}
    (hp : 0 < p) :
    finiteZetaEulerFactorReal p 1 K =
      reciprocalGeometricFactor p K := by
  unfold finiteZetaEulerFactorReal reciprocalGeometricFactor
  refine Finset.sum_congr rfl ?_
  intro k _hk
  rw [← posWeightReal_prime_power 1 (p := p) (k := k) hp]
  rw [posWeightReal_one_eq_inv_nat (pow_pos hp k)]
  rw [Nat.cast_pow]
  rw [inv_pow]

theorem reciprocalGeometricFactor_le_inv_one_sub
    {p K : Nat}
    (hp2 : 2 ≤ p) :
    reciprocalGeometricFactor p K ≤ (1 - (p : Real)⁻¹)⁻¹ := by
  have hp_pos_nat : 0 < p := lt_of_lt_of_le (by norm_num : 0 < 2) hp2
  have hp_pos : 0 < (p : Real) := Nat.cast_pos.mpr hp_pos_nat
  have hx0 : 0 ≤ (p : Real)⁻¹ := inv_nonneg.mpr hp_pos.le
  have hx1 : (p : Real)⁻¹ < 1 := by
    rw [inv_lt_one_iff₀]
    exact
      Or.inr
        (by exact_mod_cast lt_of_lt_of_le (by norm_num : 1 < 2) hp2)
  have hs : Summable fun k : Nat => ((p : Real)⁻¹) ^ k :=
    summable_geometric_of_lt_one hx0 hx1
  calc
    reciprocalGeometricFactor p K
        ≤ ∑' k : Nat, ((p : Real)⁻¹) ^ k := by
          unfold reciprocalGeometricFactor
          exact hs.sum_le_tsum (Finset.range (K + 1)) (fun k _hk => pow_nonneg hx0 k)
    _ = (1 - (p : Real)⁻¹)⁻¹ :=
          tsum_geometric_of_lt_one hx0 hx1

theorem inv_one_sub_prime_inv_le_exp
    {p : Nat}
    (hp2 : 2 ≤ p) :
    (1 - (p : Real)⁻¹)⁻¹ ≤ Real.exp (2 * (p : Real)⁻¹) := by
  let x : Real := (p : Real)⁻¹
  have hp_pos_nat : 0 < p := lt_of_lt_of_le (by norm_num : 0 < 2) hp2
  have hp_pos : 0 < (p : Real) := Nat.cast_pos.mpr hp_pos_nat
  have hx0 : 0 ≤ x := by
    exact inv_nonneg.mpr hp_pos.le
  have hp2_real : (2 : Real) ≤ p := by exact_mod_cast hp2
  have hxhalf : x ≤ (1 / 2 : Real) := by
    have h := one_div_le_one_div_of_le (by norm_num : (0 : Real) < 2) hp2_real
    simpa [x, one_div] using h
  have h1mx_pos : 0 < 1 - x := by linarith
  have h2x_le_one : 2 * x ≤ 1 := by linarith
  have hinv :
      (1 - x)⁻¹ ≤ 1 + 2 * x := by
    rw [inv_le_iff_one_le_mul₀ h1mx_pos]
    nlinarith [mul_nonneg hx0 (sub_nonneg.mpr h2x_le_one)]
  have hexp : 1 + 2 * x ≤ Real.exp (2 * x) := by
    simpa [add_comm] using Real.add_one_le_exp (2 * x)
  simpa [x] using hinv.trans hexp

theorem finiteHarmonicEulerProduct_le_exp_primeReciprocalPartial
    (N : Nat) :
    finiteHarmonicEulerProduct N ≤
      Real.exp (2 * primeReciprocalPartial N) := by
  unfold finiteHarmonicEulerProduct finiteZetaEulerProductReal primeReciprocalPartial
  calc
    (∏ p ∈ primesUpTo N, finiteZetaEulerFactorReal p 1 N)
        ≤ ∏ p ∈ primesUpTo N, Real.exp (2 * (p : Real)⁻¹) := by
          refine Finset.prod_le_prod ?hnonneg ?hle
          · intro p hp
            exact le_of_lt (finiteZetaEulerFactorReal_pos (p := p) (K := N) (σ := 1) (primesUpTo_pos hp))
          · intro p hp
            rw [finiteZetaEulerFactorReal_one_eq_reciprocalGeometricFactor (p := p) (K := N) (primesUpTo_pos hp)]
            exact
              (reciprocalGeometricFactor_le_inv_one_sub
                (p := p) (K := N) (primesUpTo_prime hp).two_le).trans
                (inv_one_sub_prime_inv_le_exp (p := p) (primesUpTo_prime hp).two_le)
    _ = Real.exp (∑ p ∈ primesUpTo N, 2 * (p : Real)⁻¹) := by
          rw [Real.exp_sum]
    _ = Real.exp (2 * ∑ p ∈ primesUpTo N, (p : Real)⁻¹) := by
          congr 1
          rw [Finset.mul_sum]

/--
Euler's theorem: partial sums of reciprocal primes are unbounded.

The proof is elementary: harmonic partial sums are dominated by finite Euler
products, and finite Euler products are bounded by `exp(2 * sum_{p≤N} 1/p)`.
Since harmonic partial sums are unbounded, so are the reciprocal-prime partial
sums.

This is not PNT, not analytic continuation, not a zero-free theorem, not RH,
and not generalized RH.
-/
theorem primeReciprocalPartial_unbounded :
    ∀ B : Real, ∃ N : Nat, B ≤ primeReciprocalPartial N := by
  intro B
  rcases harmonicPartial_unbounded (Real.exp (2 * B) + 1) with ⟨N, hN⟩
  refine ⟨N, ?_⟩
  by_contra hnot
  have hlt : primeReciprocalPartial N < B := lt_of_not_ge hnot
  have hexp_lt :
      Real.exp (2 * primeReciprocalPartial N) < Real.exp (2 * B) :=
    Real.exp_lt_exp.mpr (by nlinarith)
  have hHlt :
      harmonicPartial N < Real.exp (2 * B) :=
    lt_of_le_of_lt
      ((harmonicPartial_le_finiteHarmonicEulerProduct N).trans
        (finiteHarmonicEulerProduct_le_exp_primeReciprocalPartial N))
      hexp_lt
  linarith

end AnalyticNumberTheory
end Rebuild
end Folder
```
