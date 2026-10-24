# Complete source: GRWTSK.NumberTheory.Moebius.FinitePrimeProductDebt

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8306cc01af4928e3056636576250f63490b8522` · SHA-256 `14136252ea5c4271ff0c0c009cac10298b734ce747e58f757eae99e3edf31c02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform
import GRWTSK.NumberTheory.Moebius.FiniteTranslationProduct

/-!
# Finite prime-product debt

The raw Euler product over the primes at most `N` contains every squarefree
product of those primes, including products larger than `N`.  The finite
Möbius Dirichlet prefix contains only the products already born at the cutoff.
This file identifies their exact signed difference.

No estimate for the debt, P04, or the Riemann hypothesis is asserted.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PrimeProductDebt

open ASBNP04.FiniteProduct

/-- The branch-free exponential weight used by the finite cutoff transform. -/
def exponentialWeight (s : ℂ) (n : ℕ) : ℂ :=
  Complex.exp (-s * Real.log n)

/-- The raw finite Euler product over every prime at most `N`. -/
def rawPrimeProduct (N : ℕ) (s : ℂ) : ℂ :=
  ∏ p ∈ Nat.primesLE N, (1 - exponentialWeight s p)

/-- The complete signed contribution of prime subsets whose product is above
the integer cutoff. -/
def unbornDebt (N : ℕ) (s : ℂ) : ℂ :=
  ∑ U ∈ (Nat.primesLE N).powerset.filter (fun U => ¬ primeProduct U ≤ N),
    (ArithmeticFunction.moebius (primeProduct U) : ℂ) *
      exponentialWeight s (primeProduct U)

/-- The direct integer-cast version of the finite Möbius Dirichlet prefix. -/
def dirichletPrefix (N : ℕ) (s : ℂ) : ℂ :=
  ∑ n ∈ Finset.Icc 1 N,
    (ArithmeticFunction.moebius n : ℂ) * exponentialWeight s n

theorem exponentialWeight_mul {m n : ℕ} (hm : 0 < m) (hn : 0 < n) (s : ℂ) :
    exponentialWeight s (m * n) = exponentialWeight s m * exponentialWeight s n := by
  unfold exponentialWeight
  rw [Nat.cast_mul, Real.log_mul (by exact_mod_cast hm.ne') (by exact_mod_cast hn.ne'),
    Complex.ofReal_add, ← Complex.exp_add]
  congr 1
  ring

theorem exponentialWeight_primeProduct (s : ℂ) (U : Finset ℕ)
    (hU : ∀ p ∈ U, p.Prime) :
    exponentialWeight s (primeProduct U) = ∏ p ∈ U, exponentialWeight s p := by
  induction U using Finset.induction_on with
  | empty => simp [exponentialWeight, primeProduct]
  | @insert p U hp ih =>
      have hpPrime : p.Prime := hU p (Finset.mem_insert_self p U)
      have hUPrime : ∀ q ∈ U, q.Prime :=
        fun q hq => hU q (Finset.mem_insert_of_mem hq)
      have hProductPositive : 0 < ∏ q ∈ U, q :=
        Finset.prod_pos fun q hq => (hUPrime q hq).pos
      have ih' : exponentialWeight s (∏ q ∈ U, q) =
          ∏ q ∈ U, exponentialWeight s q := by
        simpa only [primeProduct] using ih hUPrime
      simp only [primeProduct, Finset.prod_insert hp]
      rw [exponentialWeight_mul hpPrime.pos hProductPositive s, ih']

theorem rawPrimeProduct_expansion (N : ℕ) (s : ℂ) :
    rawPrimeProduct N s =
      ∑ U ∈ (Nat.primesLE N).powerset,
        (ArithmeticFunction.moebius (primeProduct U) : ℂ) *
          exponentialWeight s (primeProduct U) := by
  classical
  rw [rawPrimeProduct, Finset.prod_sub]
  apply Finset.sum_congr rfl
  intro U hU
  have hPrime : ∀ p ∈ U, p.Prime := fun p hp =>
    Nat.prime_of_mem_primesLE ((Finset.mem_powerset.mp hU) hp)
  rw [moebius_primeProduct U hPrime, exponentialWeight_primeProduct s U hPrime]
  push_cast
  simp only [Finset.prod_const]
  ring

theorem subset_squarefree_reindex (N : ℕ) (F : ℕ → ℂ) :
    (∑ U ∈ (Nat.primesLE N).powerset.filter (fun U => primeProduct U ≤ N),
      F (primeProduct U)) =
    ∑ n ∈ (Finset.Icc 1 N).filter Squarefree, F n := by
  classical
  apply Finset.sum_bij (fun U _ => primeProduct U)
  · intro U hU
    rcases Finset.mem_filter.mp hU with ⟨hUP, hUN⟩
    have hPrime : ∀ p ∈ U, p.Prime := fun p hp =>
      Nat.prime_of_mem_primesLE ((Finset.mem_powerset.mp hUP) hp)
    exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
      ⟨primeProduct_positive U hPrime, hUN⟩, primeProduct_squarefree U hPrime⟩
  · intro U hU V hV hProduct
    apply primeProduct_injective_on_primes U V _ _ hProduct
    · exact fun p hp => Nat.prime_of_mem_primesLE
        ((Finset.mem_powerset.mp (Finset.mem_filter.mp hU).1) hp)
    · exact fun p hp => Nat.prime_of_mem_primesLE
        ((Finset.mem_powerset.mp (Finset.mem_filter.mp hV).1) hp)
  · intro n hn
    rcases Finset.mem_filter.mp hn with ⟨hnIcc, hnSquarefree⟩
    have hnN := (Finset.mem_Icc.mp hnIcc).2
    refine ⟨n.primeFactors, ?_, ?_⟩
    · apply Finset.mem_filter.mpr
      constructor
      · apply Finset.mem_powerset.mpr
        intro p hp
        rcases Nat.mem_primeFactors.mp hp with ⟨hpPrime, hpDivides, hnZero⟩
        exact Nat.mem_primesLE.mpr
          ⟨(Nat.le_of_dvd (Nat.pos_of_ne_zero hnZero) hpDivides).trans hnN, hpPrime⟩
      · simpa only [primeProduct, Nat.prod_primeFactors_of_squarefree hnSquarefree] using hnN
    · exact Nat.prod_primeFactors_of_squarefree hnSquarefree
  · intro U _
    rfl

theorem bornSubsetSum_eq_dirichletPrefix (N : ℕ) (s : ℂ) :
    (∑ U ∈ (Nat.primesLE N).powerset.filter (fun U => primeProduct U ≤ N),
      (ArithmeticFunction.moebius (primeProduct U) : ℂ) *
        exponentialWeight s (primeProduct U)) = dirichletPrefix N s := by
  classical
  rw [subset_squarefree_reindex N
    (fun n => (ArithmeticFunction.moebius n : ℂ) * exponentialWeight s n)]
  unfold dirichletPrefix
  apply Finset.sum_subset (Finset.filter_subset _ _)
  intro n hn hnotSquarefree
  have hns : ¬ Squarefree n := by
    intro h
    exact hnotSquarefree (Finset.mem_filter.mpr ⟨hn, h⟩)
  simp [ArithmeticFunction.moebius_eq_zero_of_not_squarefree hns]

/-- Exact finite debt identity for every natural cutoff and complex parameter. -/
theorem rawPrimeProduct_eq_prefix_add_debt (N : ℕ) (s : ℂ) :
    rawPrimeProduct N s = dirichletPrefix N s + unbornDebt N s := by
  rw [rawPrimeProduct_expansion]
  let S := (Nat.primesLE N).powerset
  let f : Finset ℕ → ℂ := fun U =>
    (ArithmeticFunction.moebius (primeProduct U) : ℂ) *
      exponentialWeight s (primeProduct U)
  have hsplit := Finset.sum_filter_add_sum_filter_not S
    (fun U => primeProduct U ≤ N) f
  calc
    _ = (∑ U ∈ (Nat.primesLE N).powerset.filter (fun U => primeProduct U ≤ N),
          (ArithmeticFunction.moebius (primeProduct U) : ℂ) *
            exponentialWeight s (primeProduct U)) +
        ∑ U ∈ (Nat.primesLE N).powerset.filter (fun U => ¬ primeProduct U ≤ N),
          (ArithmeticFunction.moebius (primeProduct U) : ℂ) *
            exponentialWeight s (primeProduct U) := by
      simpa only [S, f] using hsplit.symm
    _ = dirichletPrefix N s + unbornDebt N s := by
      rw [bornSubsetSum_eq_dirichletPrefix]
      rfl

theorem dirichletPrefix_eq_pickupDirichletPrefix (N : ℕ) (s : ℂ) :
    dirichletPrefix N s =
      GRWTSK.RiemannHypothesis.CCC.pickupDirichletPrefix N s := by
  unfold dirichletPrefix GRWTSK.RiemannHypothesis.CCC.pickupDirichletPrefix
  apply Finset.sum_congr rfl
  intro n _hn
  simp [exponentialWeight, GRWTSK.RiemannHypothesis.CCC.moebiusReal]

/-- The exact identity in the native cutoff-transform notation. -/
theorem rawPrimeProduct_eq_pickupPrefix_add_debt (N : ℕ) (s : ℂ) :
    rawPrimeProduct N s =
      GRWTSK.RiemannHypothesis.CCC.pickupDirichletPrefix N s + unbornDebt N s := by
  rw [← dirichletPrefix_eq_pickupDirichletPrefix]
  exact rawPrimeProduct_eq_prefix_add_debt N s

theorem rawPrimeProduct_zero (N : ℕ) (hN : 2 ≤ N) : rawPrimeProduct N 0 = 0 := by
  unfold rawPrimeProduct
  apply Finset.prod_eq_zero (i := 2)
  · exact Nat.mem_primesLE.mpr ⟨hN, by norm_num⟩
  · simp [exponentialWeight]

theorem pickupDirichletPrefix_zero (N : ℕ) :
    GRWTSK.RiemannHypothesis.CCC.pickupDirichletPrefix N 0 =
      (GRWTSK.RiemannHypothesis.CCC.pickupMertensPrefix N : ℂ) := by
  simp [GRWTSK.RiemannHypothesis.CCC.pickupDirichletPrefix,
    GRWTSK.RiemannHypothesis.CCC.pickupMertensPrefix]

/-- At the algebraic edge `s = 0`, the debt is exactly the negative Mertens
prefix.  Thus a uniform debt estimate retains the original signed arithmetic
difficulty rather than bypassing it. -/
theorem unbornDebt_zero (N : ℕ) (hN : 2 ≤ N) :
    unbornDebt N 0 =
      -(GRWTSK.RiemannHypothesis.CCC.pickupMertensPrefix N : ℂ) := by
  have h := rawPrimeProduct_eq_pickupPrefix_add_debt N 0
  rw [rawPrimeProduct_zero N hN, pickupDirichletPrefix_zero] at h
  linear_combination -h

/-- Every correction needed to replace the finite Dirichlet prefix by the raw
prime product in the actual finite-window Laplace transform. -/
def cutoffCorrection (N : ℕ) (T : ℝ) (z s : ℂ) : ℂ :=
  unbornDebt N s +
    2 * s * Complex.exp (-z * T) *
      (GRWTSK.RiemannHypothesis.CCC.pickupWeightedPrefix N : ℂ) -
    2 * z * Complex.exp (-s * T) *
      (GRWTSK.RiemannHypothesis.CCC.pickupMertensPrefix N : ℂ)

/-- Completed raw-product form of the exact cutoff transform.  The unborn
debt and both signed endpoint sums remain in `cutoffCorrection`. -/
theorem wholePickup_cutoff_laplace_prime_product {T : ℝ} (hT : 0 ≤ T)
    {z s : ℂ} (hs : s = z + 1 / 2) (hz : z ≠ 0) (hs0 : s ≠ 0) :
    GRWTSK.RiemannHypothesis.CCC.noteWindowLaplace
        GRWTSK.RiemannHypothesis.CCC.wholePickup z T =
      (rawPrimeProduct ⌊Real.exp T⌋₊ s -
        cutoffCorrection ⌊Real.exp T⌋₊ T z s) / (z * s) := by
  let N := ⌊Real.exp T⌋₊
  have hprefix : GRWTSK.RiemannHypothesis.CCC.pickupDirichletPrefix N s =
      rawPrimeProduct N s - unbornDebt N s := by
    have h := rawPrimeProduct_eq_pickupPrefix_add_debt N s
    linear_combination -h
  rw [GRWTSK.RiemannHypothesis.CCC.wholePickup_cutoff_laplace hT hs hz hs0,
    hprefix]
  unfold cutoffCorrection
  dsimp only [N]
  field_simp [hz, hs0]
  ring

/-- An unborn subset has no causal response anywhere in the matching recording. -/
theorem unborn_atom_zero {T u : ℝ} (hu : u ≤ T) {U : Finset ℕ}
    (hU : U ∈ (Nat.primesLE ⌊Real.exp T⌋₊).powerset)
    (hunborn : ¬ primeProduct U ≤ ⌊Real.exp T⌋₊) :
    ASBNP04.FiniteProduct.atom (primeProduct U) u = 0 := by
  have hPrime : ∀ p ∈ U, p.Prime := fun p hp =>
    Nat.prime_of_mem_primesLE ((Finset.mem_powerset.mp hU) hp)
  exact atom_above_horizon T u hu _ (primeProduct_positive U hPrime) hunborn

end GRWTSK.NumberTheory.Moebius.PrimeProductDebt

#print axioms GRWTSK.NumberTheory.Moebius.PrimeProductDebt.rawPrimeProduct_eq_prefix_add_debt
#print axioms GRWTSK.NumberTheory.Moebius.PrimeProductDebt.rawPrimeProduct_eq_pickupPrefix_add_debt
#print axioms GRWTSK.NumberTheory.Moebius.PrimeProductDebt.unbornDebt_zero
#print axioms GRWTSK.NumberTheory.Moebius.PrimeProductDebt.wholePickup_cutoff_laplace_prime_product
#print axioms GRWTSK.NumberTheory.Moebius.PrimeProductDebt.unborn_atom_zero
```
