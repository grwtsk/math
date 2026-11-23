import Mathlib.RingTheory.Nakayama
import Mathlib.Algebra.CharP.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.NormNum
import Mathlib.Algebra.Ring.GeomSum
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith

/-! # Twisted coinvariants in a stabilized class tower

The geometric trace in a ramified tower forces its relation submodule to
vanish once two successive coinvariant orders agree. Orbit estimates use
one denominator-cleared integer for all primes and coefficient embeddings.
-/

namespace GRWTSK.AlpogeSelmerTowerControl

open scoped Pointwise BigOperators

/-- Equality of adjacent relation modules forces the first relation module
to vanish when the geometric trace belongs to the Jacobson radical. -/
theorem stable_relation_vanishes {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    (t : R) (p : ℕ) (C : Submodule R M)
    (hfg : ((t-1) • C).FG)
    (hstable : (t-1) • C = (t^p-1) • C)
    (hjac : (∑ i ∈ Finset.range p, t^i) ∈ (⊥ : Ideal R).jacobson) :
    (t-1) • C = ⊥ := by
  apply Submodule.eq_bot_of_eq_pointwise_smul_of_mem_jacobson_annihilator hfg
  · calc (t-1) • C = (t^p-1) • C := hstable
         _ = (∑ i ∈ Finset.range p, t^i) • ((t-1) • C) := by rw [smul_smul,geom_sum_mul]
  · exact Ideal.jacobson_mono bot_le hjac

/-- The trace is zero over the residue field for the action of a generator
that reduces to one. -/
theorem residue_trace_zero {R k : Type*} [CommRing R] [Field k] (p : ℕ)
    [CharP k p] (red : R →+* k) (t : R) (ht : red t = 1) :
    red (∑ i ∈ Finset.range p, t^i) = 0 := by simp [ht,CharP.cast_eq_zero]

/-- When the tower generator acts trivially on the source, equivariance
is precisely a scalar annihilator condition on every target value. -/
theorem equivariance_iff_annihilated {R M C : Type*} [Ring R] [AddCommGroup M] [Module R M]
    (u : R) (f : C → M) : (∀ x, f x = u • f x) ↔ ∀ x, (u-1) • f x = 0 := by
  simp only [sub_smul, one_smul, sub_eq_zero]
  exact ⟨fun h x => (h x).symm, fun h x => (h x).symm⟩

/-- Clearing each embedding's denominator before enlarging a subset to
a full orbit bounds its summed valuation by that of the full integer. -/
theorem subset_valuation_le_orbit {ι : Type*} (A B : Finset ι) (hAB : A ⊆ B)
    (v : ι → ℤ) (d : ℕ) (h : ∀ i ∈ B, 0 ≤ v i + d) :
    ∑ i ∈ A, v i ≤ ∑ i ∈ B, (v i + d) := by
  calc ∑ i ∈ A, v i ≤ ∑ i ∈ A, (v i + d) := by
         apply Finset.sum_le_sum; intro i hi; omega
       _ ≤ ∑ i ∈ B, (v i+d) := Finset.sum_le_sum_of_subset_of_nonneg hAB (fun i hi _ => h i hi)

/-- The product of any chosen parts of an integer's prime powers is at most
that integer. -/
theorem selected_prime_product_le (n : ℕ) (hn : n ≠ 0) (S : Finset ℕ)
    (v : ℕ → ℕ) (hS : S ⊆ n.primeFactors) (hv : ∀ p ∈ S, v p ≤ n.factorization p) :
    ∏ p ∈ S, p^(v p) ≤ n := by
  calc ∏ p ∈ S, p^(v p) ≤ ∏ p ∈ S, p^(n.factorization p) := by
         apply Finset.prod_le_prod'
         intro p hp
         exact Nat.pow_le_pow_right (Nat.prime_of_mem_primeFactors (hS hp)).pos (hv p hp)
       _ ≤ ∏ p ∈ n.primeFactors, p^(n.factorization p) := by
         apply Finset.prod_le_prod_of_subset_of_one_le' hS
         intro p hp _
         exact Nat.one_le_pow _ _ (Nat.prime_of_mem_primeFactors hp).pos
       _ = n := (n.prod_primeFactors_pow_factorization hn).symm

/-- A critical-weight cutoff well beyond the original weight still fits
the source modulus and weight exponents when the logarithmic factor is
bounded by N times e. -/
theorem critical_cutoff_absorption (N e J L : ℝ) (hN : 1 ≤ N) (he : 1 ≤ e)
    (hJ : 0 ≤ J) (hL : 0 ≤ L) (hcut : J ≤ N^8 * e^3) (hlog : L ≤ N*e) :
    J^2 * L ≤ N^18 * e^7 := by
  calc J^2 * L ≤ (N^8*e^3)^2*(N*e) := by gcongr
       _ = N^17*e^7 := by ring
       _ ≤ N^18*e^7 := by gcongr <;> norm_num

end GRWTSK.AlpogeSelmerTowerControl
