/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.MvPolynomial.PDeriv
import Mathlib.Tactic.Ring

/-! # Oscillator contractions and the weight ladder on a Cartan plane

The two copies of the index type label the opposite-sign rows. Every
source column contributes one to the normal-ordering constant.
-/

namespace GRWTSK.NumberTheory.AlpogeOscillatorCartan

open MvPolynomial Finset

noncomputable section

variable {ι R : Type*} [CommRing R]

/-- The diagonal contraction of one creation pair. -/
theorem contraction_pair (i j : ι) (hne : i ≠ j) (P : MvPolynomial ι R) :
    pderiv i (pderiv j (X i * X j * P)) =
      X i * X j * pderiv i (pderiv j P) + X i * pderiv i P + X j * pderiv j P + P := by
  classical
  simp [pderiv_X_of_ne hne, pderiv_X_of_ne hne.symm]
  ring

/-- A contraction associated with a disjoint pair commutes through the two
creation variables, including for polynomials using all four variables. -/
theorem contraction_disjoint (i j u v : ι) (hui : u ≠ i) (hvi : v ≠ i)
    (huj : u ≠ j) (hvj : v ≠ j) (P : MvPolynomial ι R) :
    pderiv i (pderiv j (X u * X v * P)) = X u * X v * pderiv i (pderiv j P) := by
  classical
  simp [pderiv_X_of_ne hui, pderiv_X_of_ne hvi, pderiv_X_of_ne huj,
    pderiv_X_of_ne hvj]

/-- The all-column commutator of the two mixed quadratic operators. -/
theorem column_commutator [Fintype ι] (P : MvPolynomial (ι ⊕ ι) R) :
    (∑ i : ι, pderiv (Sum.inl i) (pderiv (Sum.inr i)
      ((∑ j : ι, X (Sum.inl j) * X (Sum.inr j)) * P))) =
      (∑ j : ι, X (Sum.inl j) * X (Sum.inr j)) *
        (∑ i : ι, pderiv (Sum.inl i) (pderiv (Sum.inr i) P)) +
      (∑ i : ι, (X (Sum.inl i) * pderiv (Sum.inl i) P +
        X (Sum.inr i) * pderiv (Sum.inr i) P)) + Fintype.card ι • P := by
  classical
  have entry (i j : ι) :
      pderiv (Sum.inl i) (pderiv (Sum.inr i) (X (Sum.inl j) * X (Sum.inr j) * P)) =
        X (Sum.inl j) * X (Sum.inr j) * pderiv (Sum.inl i) (pderiv (Sum.inr i) P) +
          (if i = j then X (Sum.inl i) * pderiv (Sum.inl i) P +
            X (Sum.inr i) * pderiv (Sum.inr i) P + P else 0) := by
    by_cases h : i = j
    · subst j
      simp only [↓reduceIte]
      rw [contraction_pair _ _ (by simp)]
      ring
    · simp only [h, ↓reduceIte, add_zero]
      exact contraction_disjoint _ _ _ _ (by simpa using (Ne.symm h)) (by simp)
        (by simp) (by simpa using (Ne.symm h)) P
  simp only [sum_mul, map_sum, entry, sum_add_distrib, sum_ite_eq, mem_univ, ite_true,
    sum_const, card_univ]
  rw [sum_comm]
  simp [mul_sum, add_assoc]

variable {K V : Type*} [Field K] [AddCommGroup V] [Module K V]

/-- The entire lowering ladder for a lowest weight vector, from the two
Lie brackets alone. The second formula includes all multiplicities. -/
theorem lowering_ladder (E F H : V →ₗ[K] V) (h : K) (v : V)
    (hv : H v = h • v) (hz : F v = 0)
    (he : ∀ w, H (E w) = E (H w) + (2 : K) • E w)
    (hf : ∀ w, F (E w) = E (F w) + H w) (k : ℕ) :
    H ((E^k) v) = (h+2*(k : K)) • ((E^k) v) ∧
    F ((E^(k+1)) v) = ((k+1 : K) * (h+k)) • ((E^k) v) := by
  induction k with
  | zero => simp [hf, hv, hz]
  | succ k ih =>
    have eqpow (n : ℕ) (x : V) : (E^(n+1)) x = E ((E^n) x) := by
      rw [pow_succ', Module.End.mul_apply]
    have hH : H ((E^(k+1)) v) = (h+2*((k+1 : ℕ) : K)) • ((E^(k+1)) v) := by
      rw [eqpow, he, ih.1, map_smul, ← add_smul]
      congr 1
      push_cast
      ring
    refine ⟨hH, ?_⟩
    rw [eqpow (k+1), hf, ih.2, map_smul, ← eqpow, hH, ← add_smul]
    congr 1
    push_cast
    ring

end
end GRWTSK.NumberTheory.AlpogeOscillatorCartan
