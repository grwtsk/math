import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.Totient
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic.Ring

/-! # Finite prime budgets for strict Selmer lengths

The adjacent manuscript identifies the arithmetic inputs by duality and étale
descent. Here positive integral orders, strict lengths and local correction
lengths are combined over exactly the original finite set of twists.
-/

namespace GRWTSK.AlpogeSelmerBudget

/-- Reassemble local lengths over the primes of a positive integral order. -/
def primaryProduct (N : ℕ) (v : ℕ → ℕ) : ℕ :=
  ∏ p ∈ N.primeFactors, p ^ v p

theorem twisted_primary_factorization {ι : Type*} (T : Finset ι)
    (order : ι → ℕ) (horder : ∀ e ∈ T, order e ≠ 0)
    (strict correction : ℕ → ι → ℕ)
    (hpt : ∀ p, p.Prime → ∀ e ∈ T,
      strict p e + correction p e = (order e).factorization p) :
    primaryProduct (∏ e ∈ T, order e) (fun p => ∑ e ∈ T, strict p e) *
      primaryProduct (∏ e ∈ T, order e) (fun p => ∑ e ∈ T, correction p e) =
      ∏ e ∈ T, order e := by
  classical
  let N := ∏ e ∈ T, order e
  have hN : N ≠ 0 := Finset.prod_ne_zero_iff.mpr horder
  change primaryProduct N _ * primaryProduct N _ = N
  unfold primaryProduct
  rw [← Finset.prod_mul_distrib]
  refine Eq.trans (Finset.prod_congr rfl fun p hp => ?_) (Nat.prod_primeFactors_pow_factorization hN).symm
  rw [← pow_add, ← Finset.sum_add_distrib]
  congr 1
  exact (Finset.sum_congr rfl (hpt p (Nat.prime_of_mem_primeFactors hp))).trans
    (Nat.factorization_prod_apply horder).symm

theorem strict_zero_outside {ι : Type*} (T : Finset ι)
    (order : ι → ℕ) (horder : ∀ e ∈ T, order e ≠ 0)
    (strict correction : ℕ → ι → ℕ) {p : ℕ}
    (hpt : ∀ e ∈ T, strict p e + correction p e = (order e).factorization p)
    (hout : p ∉ (∏ e ∈ T, order e).primeFactors) :
    ∀ e ∈ T, strict p e = 0 := by
  classical
  have hz : (∏ e ∈ T, order e).factorization p = 0 :=
    Finsupp.notMem_support_iff.mp (by simpa using hout)
  rw [Nat.factorization_prod_apply horder] at hz
  intro e he
  have hz' := (Finset.sum_eq_zero_iff_of_nonneg (fun i (_ : i ∈ T) =>
    Nat.zero_le ((order i).factorization p))).mp hz e he
  exact Nat.eq_zero_of_add_eq_zero_right ((hpt e he).trans hz')

theorem log_primaryProduct (N : ℕ) (v : ℕ → ℕ) :
    Real.log (primaryProduct N v) = ∑ p ∈ N.primeFactors, Real.log p * (v p : ℝ) := by
  unfold primaryProduct
  push_cast
  rw [Real.log_prod]
  · exact Finset.sum_congr rfl (fun p _ => by rw [Real.log_pow, mul_comm])
  · intro p hp
    exact pow_ne_zero _ (by exact_mod_cast (Nat.prime_of_mem_primeFactors hp).ne_zero)

/-- All finite-prime sums have the same sharp upper bound as the sum over
the prime divisors of the integral order. -/
theorem finite_budget_iff (N : ℕ) (v : ℕ → ℕ)
    (hsupp : ∀ p, p.Prime → p ∉ N.primeFactors → v p = 0) (B : ℝ) :
    (∀ S : Finset ℕ, (∀ p ∈ S, p.Prime) →
      ∑ p ∈ S, Real.log p * (v p : ℝ) ≤ B) ↔ Real.log (primaryProduct N v) ≤ B := by
  classical
  rw [log_primaryProduct]
  constructor
  · intro h
    exact h _ (fun _ => Nat.prime_of_mem_primeFactors)
  · intro h S hS
    have hrestrict : ∑ p ∈ S, Real.log p * (v p : ℝ) =
        ∑ p ∈ S ∩ N.primeFactors, Real.log p * (v p : ℝ) := by
      symm
      apply Finset.sum_subset_zero_on_sdiff Finset.inter_subset_left
      · intro p hp
        obtain ⟨hpS, hout⟩ := Finset.mem_sdiff.mp hp
        have ho : p ∉ N.primeFactors := fun hx => hout (Finset.mem_inter.mpr ⟨hpS, hx⟩)
        simp [hsupp p (hS p hpS) ho]
      · intros; rfl
    rw [hrestrict]
    exact (Finset.sum_le_sum_of_subset_of_nonneg Finset.inter_subset_right
      (fun p hp _ => mul_nonneg (Real.log_nonneg (by exact_mod_cast
        (Nat.prime_of_mem_primeFactors hp).one_le)) (Nat.cast_nonneg _))).trans h

/-- The index times the number of units killed by the twist bounds the size
of the group of units. This converts that bound to the integral prime power,
including at 2. -/
theorem prime_power_cutoff {p j e d : ℕ} (hp : p.Prime) (hj : 0 < j)
    (hindex : (p ^ j).totient ≤ 2 * e * d) : p ^ j ≤ 4 * e * d := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hj.ne'
  rw [Nat.totient_prime_pow_succ hp] at hindex
  have hp' : p ≤ (p - 1) * 2 := by have := hp.two_le; omega
  calc
    p ^ (k + 1) = p ^ k * p := pow_succ _ _
    _ ≤ p ^ k * ((p - 1) * 2) := Nat.mul_le_mul_left _ hp'
    _ = (p ^ k * (p - 1)) * 2 := (Nat.mul_assoc _ _ _).symm
    _ ≤ (2 * e * d) * 2 := Nat.mul_le_mul_right _ hindex
    _ = 4 * e * d := by ring

/-- Sum the local invariant lengths over all twists, primes up to the proven
cutoff and places, without assuming the residue characteristics unramified. -/
theorem local_correction_sum_bound {ι κ : Type*} (T : Finset ι) (P : Finset ℕ)
    (places : ℕ → Finset κ) (len : ι → ℕ → κ → ℕ) (M D : ℕ) (hM : 1 ≤ M)
    (hp : ∀ p ∈ P, p.Prime) (hd : ∀ p ∈ P, (places p).card ≤ D)
    (hsize : ∀ i ∈ T, ∀ p ∈ P, ∀ w ∈ places p, p ^ len i p w ≤ M) :
    ∑ i ∈ T, ∑ p ∈ P, ∑ w ∈ places p, Real.log p * len i p w ≤
      T.card * (P.card * (D * Real.log M)) := by
  have hm : 0 ≤ Real.log M := Real.log_nonneg (by exact_mod_cast hM)
  have hterm (i) (hi : i ∈ T) (p) (hp' : p ∈ P) (w) (hw : w ∈ places p) :
      Real.log p * (len i p w : ℝ) ≤ Real.log M := by
    rw [mul_comm, ← Real.log_pow]
    apply Real.log_le_log (pow_pos (by exact_mod_cast (hp p hp').pos) _)
    exact_mod_cast hsize i hi p hp' w hw
  have hplaces (i) (hi : i ∈ T) (p) (hp' : p ∈ P) :
      ∑ w ∈ places p, Real.log p * (len i p w : ℝ) ≤ D * Real.log M := by
    calc
      _ ≤ ∑ _w ∈ places p, Real.log M := Finset.sum_le_sum (hterm i hi p hp')
      _ = (places p).card * Real.log M := by simp
      _ ≤ _ := mul_le_mul_of_nonneg_right (by exact_mod_cast hd p hp') hm
  calc
    _ ≤ ∑ i ∈ T, ∑ _p ∈ P, D * Real.log M :=
      Finset.sum_le_sum fun i hi => Finset.sum_le_sum (hplaces i hi)
    _ = _ := by simp

/-- Coordinates of a reduced positive binary quadratic form of discriminant
−231. The third coefficient is uniquely determined by the first two. -/
def reduced231 (a : ℕ) (b : ℤ) : Bool := decide (
  let A : ℤ := a
  let c := (b ^ 2 + 231) / (4 * A)
  b ^ 2 + 231 = 4 * A * c ∧ -A ≤ b ∧ b ≤ A ∧ A ≤ c ∧
    ((b.natAbs = a ∨ A = c) → 0 ≤ b))

set_option maxRecDepth 8000 in
set_option maxHeartbeats 1000000 in
/-- Reduced-form computation for the quadratic field contributing the
nonzero strict 3-Selmer class in the conductor-77 host. -/
theorem count_reduced_231 :
    (((Finset.Icc 1 8 : Finset ℕ) ×ˢ (Finset.Icc (-8) 8 : Finset ℤ)).filter
      (fun ab => reduced231 ab.1 ab.2)).card = 12 := by
  decide +kernel

end GRWTSK.AlpogeSelmerBudget
