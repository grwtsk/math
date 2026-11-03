/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.RetainedFactorization
import Mathlib.Data.Nat.GCD.Basic

set_option autoImplicit false
noncomputable section

/-!
# Additive-triple defect: a genuine infinite subclass estimate

The additive equation propagates coprimality to all three pairs and gives
c <= 2*max(a,b). If that larger summand is squarefree, it divides rad(abc),
so c <= 2*rad(abc). Thus every nonnegative-epsilon logarithmic defect is
at most log(2) in this subclass, with no uniform exponent cap assumed.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
The general case with a nonsquarefree larger summand remains unresolved.
No assertion that the subclass exhausts coprime additive triples is made.
-/
namespace GRWTSK.NumberTheory.ABC.AdditiveDefectEstimate
open RetainedFactorization

def defect (T : CoprimeAdditiveTriple) (ε : ℝ) : ℝ :=
  Real.log (T.c : ℝ) - (1 + ε) * Real.log (UniqueFactorizationMonoid.radical T.product : ℝ)

theorem additive_pairwise_coprime (T : CoprimeAdditiveTriple) :
    Nat.Coprime T.a T.c ∧ Nat.Coprime T.b T.c := by
  rw [← T.additive]
  constructor
  · simpa using T.coprime
  · simpa [Nat.add_comm] using T.coprime.symm

theorem radical_product (T : CoprimeAdditiveTriple) :
    UniqueFactorizationMonoid.radical T.product =
      UniqueFactorizationMonoid.radical T.a *
        UniqueFactorizationMonoid.radical T.b * UniqueFactorizationMonoid.radical T.c := by
  have hp := additive_pairwise_coprime T
  have habc : Nat.Coprime (T.a * T.b) T.c :=
    Nat.coprime_mul_iff_left.mpr hp
  unfold CoprimeAdditiveTriple.product
  rw [UniqueFactorizationMonoid.radical_mul (Nat.coprime_iff_isRelPrime.mp habc),
    UniqueFactorizationMonoid.radical_mul (Nat.coprime_iff_isRelPrime.mp T.coprime)]

theorem log_radical_product (T : CoprimeAdditiveTriple) :
    Real.log (UniqueFactorizationMonoid.radical T.product : ℝ) =
      Real.log (UniqueFactorizationMonoid.radical T.a : ℝ) +
        Real.log (UniqueFactorizationMonoid.radical T.b : ℝ) +
        Real.log (UniqueFactorizationMonoid.radical T.c : ℝ) := by
  have h (n : ℕ) : (UniqueFactorizationMonoid.radical n : ℝ) ≠ 0 := by
    exact_mod_cast (ne_of_gt (Nat.radical_pos n))
  rw [radical_product]
  push_cast
  rw [Real.log_mul (mul_ne_zero (h T.a) (h T.b)) (h T.c), Real.log_mul (h T.a) (h T.b)]

theorem squarefree_divisor_le_radical (T : CoprimeAdditiveTriple) (d : ℕ)
    (hd : d ∣ T.product) (hs : Squarefree d) :
    d ≤ UniqueFactorizationMonoid.radical T.product := by
  have hn : T.product ≠ 0 :=
    ne_of_gt (Nat.mul_pos (Nat.mul_pos T.a_pos T.b_pos) T.c_pos)
  have hdiv : d ∣ UniqueFactorizationMonoid.radical T.product :=
    (UniqueFactorizationMonoid.dvd_radical_iff hs.isRadical hn).mpr hd
  exact Nat.le_of_dvd (Nat.radical_pos T.product) hdiv

theorem height_le_twice_radical_of_large_squarefree_divisor
    (T : CoprimeAdditiveTriple) (d : ℕ) (hd : d ∣ T.product)
    (hs : Squarefree d) (hlarge : T.c ≤ 2 * d) :
    T.c ≤ 2 * UniqueFactorizationMonoid.radical T.product :=
  hlarge.trans (Nat.mul_le_mul_left 2 (squarefree_divisor_le_radical T d hd hs))

theorem defect_le_log_two_of_large_squarefree_divisor
    (T : CoprimeAdditiveTriple) (d : ℕ) (hd : d ∣ T.product)
    (hs : Squarefree d) (hlarge : T.c ≤ 2 * d) (ε : ℝ) (hε : 0 ≤ ε) :
    defect T ε ≤ Real.log 2 := by
  have hn := height_le_twice_radical_of_large_squarefree_divisor T d hd hs hlarge
  have hr : (UniqueFactorizationMonoid.radical T.product : ℝ) ≠ 0 := by
    exact_mod_cast (ne_of_gt (Nat.radical_pos T.product))
  have hl := Real.log_le_log (by exact_mod_cast T.c_pos : 0 < (T.c : ℝ))
    (by exact_mod_cast hn : (T.c : ℝ) ≤ 2 * (UniqueFactorizationMonoid.radical T.product : ℝ))
  rw [Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) hr] at hl
  have hnat : 1 ≤ UniqueFactorizationMonoid.radical T.product := Nat.radical_pos T.product
  have hlog : 0 ≤ Real.log (UniqueFactorizationMonoid.radical T.product : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hnat)
  unfold defect
  nlinarith [mul_nonneg hε hlog]

theorem larger_summand_dvd_product (T : CoprimeAdditiveTriple) :
    max T.a T.b ∣ T.product := by
  rcases le_total T.a T.b with hab | hba
  · rw [max_eq_right hab]
    exact ⟨T.a * T.c, by unfold CoprimeAdditiveTriple.product; ring⟩
  · rw [max_eq_left hba]
    exact ⟨T.b * T.c, by unfold CoprimeAdditiveTriple.product; ring⟩

/-- Actual additive estimate on an explicit infinite subclass, not full ABC. -/
theorem defect_le_log_two_of_squarefree_larger_summand
    (T : CoprimeAdditiveTriple) (hs : Squarefree (max T.a T.b))
    (ε : ℝ) (hε : 0 ≤ ε) : defect T ε ≤ Real.log 2 := by
  have hlarge : T.c ≤ 2 * max T.a T.b := by
    rw [← T.additive]
    calc
      T.a + T.b ≤ max T.a T.b + max T.a T.b :=
        Nat.add_le_add (le_max_left _ _) (le_max_right _ _)
      _ = 2 * max T.a T.b := by omega
  exact defect_le_log_two_of_large_squarefree_divisor T (max T.a T.b)
    (larger_summand_dvd_product T) hs hlarge ε hε

end GRWTSK.NumberTheory.ABC.AdditiveDefectEstimate
