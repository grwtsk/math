/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDCoefficients
import Mathlib.Data.Nat.Factorization.Induction
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic

/-!
# Restricted Möbius-log blocks

For fixed `r`, restrict the Möbius function to divisors coprime to `r`.
Its divisor sum is a multiplicative `0/1` indicator.  Convolving that
indicator with von Mangoldt proves that the corresponding restricted
Möbius-log block is nonnegative and at most `log n`.

The elementary identity

`mu (r*a) = mu r * (if Coprime a r then mu a else 0)`

then gives the sharp pointwise estimate

`|sum_{a|n} mu(r*a) log(n/a)| <= log n`.

No prime-distribution estimate is used.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction ArithmeticFunction.Moebius

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open ArithmeticFunction

/-- Möbius restricted to integers coprime to the fixed modulus `r`. -/
def coprimeRestrictedMobius (r : ℕ) : ArithmeticFunction ℝ where
  toFun n := if Nat.Coprime n r then mobiusReal n else 0
  map_zero' := by
    by_cases h : Nat.Coprime 0 r
    · simp [h, mobiusReal]
    · simp [h]

@[simp]
theorem coprimeRestrictedMobius_apply
    (r n : ℕ) :
    coprimeRestrictedMobius r n =
      if Nat.Coprime n r then mobiusReal n else 0 := by
  rfl

/-- Real Möbius is multiplicative on coprime inputs. -/
theorem mobiusReal_mul_of_coprime
    {a b : ℕ}
    (hab : Nat.Coprime a b) :
    mobiusReal (a * b) = mobiusReal a * mobiusReal b := by
  unfold mobiusReal
  exact_mod_cast
    ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hab

/-- The restricted Möbius function remains multiplicative. -/
theorem isMultiplicative_coprimeRestrictedMobius
    (r : ℕ) :
    (coprimeRestrictedMobius r).IsMultiplicative := by
  rw [ArithmeticFunction.IsMultiplicative.iff_ne_zero]
  refine ⟨?_, ?_⟩
  · simp [coprimeRestrictedMobius, mobiusReal]
  · intro a b ha hb hab
    simp only [coprimeRestrictedMobius_apply,
      Nat.coprime_mul_iff_left]
    by_cases har : Nat.Coprime a r <;>
      by_cases hbr : Nat.Coprime b r
    · simp [har, hbr, mobiusReal_mul_of_coprime hab]
    · simp [har, hbr]
    · simp [har, hbr]
    · simp [har, hbr]

/-- Divisor sum of the restricted Möbius function. -/
def coprimeRestrictedMobiusDivisorIndicator
    (r : ℕ) : ArithmeticFunction ℝ :=
  coprimeRestrictedMobius r *
    (ArithmeticFunction.zeta : ArithmeticFunction ℝ)

/-- Restricted Möbius-log convolution. -/
def coprimeRestrictedMobiusLog
    (r : ℕ) : ArithmeticFunction ℝ :=
  coprimeRestrictedMobius r * ArithmeticFunction.log

/-- The restricted divisor indicator is multiplicative. -/
theorem isMultiplicative_coprimeRestrictedMobiusDivisorIndicator
    (r : ℕ) :
    (coprimeRestrictedMobiusDivisorIndicator r).IsMultiplicative := by
  exact (isMultiplicative_coprimeRestrictedMobius r).mul
    ArithmeticFunction.isMultiplicative_zeta.natCast

/-- At a positive prime power the restricted divisor indicator is `1` when
that prime divides `r`, and `0` otherwise. -/
theorem coprimeRestrictedMobiusDivisorIndicator_prime_pow
    {r p k : ℕ}
    (hp : p.Prime)
    (hk : 0 < k) :
    coprimeRestrictedMobiusDivisorIndicator r (p ^ k) =
      if p ∣ r then 1 else 0 := by
  by_cases hpr : p ∣ r
  · rw [if_pos hpr]
    unfold coprimeRestrictedMobiusDivisorIndicator
    rw [ArithmeticFunction.coe_mul_zeta_apply]
    have hfilter :
        (p ^ k).divisors.filter
            (fun d => Nat.Coprime d r) = {1} := by
      ext d
      simp only [Finset.mem_filter, Finset.mem_singleton,
        Nat.mem_divisors]
      constructor
      · rintro ⟨⟨hdpow, hpow0⟩, hdr⟩
        obtain ⟨j, hj, rfl⟩ := (Nat.dvd_prime_pow hp).mp hdpow
        by_cases hj0 : j = 0
        · simp [hj0]
        · have hpdiv : p ∣ p ^ j :=
            dvd_pow_self p hj0
          have hpcop : Nat.Coprime p r :=
            hdr.coprime_dvd_left hpdiv
          exact (hp.coprime_iff_not_dvd.mp hpcop hpr).elim
      · rintro rfl
        exact ⟨⟨one_dvd _, pow_ne_zero _ hp.ne_zero⟩,
          Nat.coprime_one_left _⟩
    calc
      (∑ d ∈ (p ^ k).divisors,
          coprimeRestrictedMobius r d) =
        ∑ d ∈ (p ^ k).divisors.filter
            (fun d => Nat.Coprime d r),
          mobiusReal d := by
            rw [← Finset.sum_filter]
            apply Finset.sum_congr rfl
            intro d hd
            by_cases hdr : Nat.Coprime d r <;>
              simp [coprimeRestrictedMobius, hdr]
      _ = 1 := by simp [hfilter, mobiusReal]
  · rw [if_neg hpr]
    have hpcop : Nat.Coprime p r :=
      (hp.coprime_iff_not_dvd).2 hpr
    have hall :
        ∀ d ∈ (p ^ k).divisors,
          Nat.Coprime d r := by
      intro d hd
      obtain ⟨j, hj, rfl⟩ :=
        (Nat.dvd_prime_pow hp).mp
          (Nat.dvd_of_mem_divisors hd)
      exact hpcop.pow_left j
    unfold coprimeRestrictedMobiusDivisorIndicator
    rw [ArithmeticFunction.coe_mul_zeta_apply]
    calc
      (∑ d ∈ (p ^ k).divisors,
          coprimeRestrictedMobius r d) =
        ∑ d ∈ (p ^ k).divisors, mobiusReal d := by
          apply Finset.sum_congr rfl
          intro d hd
          simp [coprimeRestrictedMobius, hall d hd]
      _ =
        (((ArithmeticFunction.moebius : ArithmeticFunction ℝ) *
          (ArithmeticFunction.zeta : ArithmeticFunction ℝ)) (p ^ k)) := by
            rw [ArithmeticFunction.coe_mul_zeta_apply]
      _ = 0 := by
        rw [ArithmeticFunction.coe_moebius_mul_coe_zeta]
        simp [hp.ne_one, hk.ne', hp, hk]

/-- The restricted divisor indicator takes only the values `0` and `1`. -/
theorem coprimeRestrictedMobiusDivisorIndicator_eq_zero_or_one
    (r n : ℕ) :
    coprimeRestrictedMobiusDivisorIndicator r n = 0 ∨
      coprimeRestrictedMobiusDivisorIndicator r n = 1 := by
  induction n using Nat.recOnPosPrimePosCoprime with
  | zero =>
      left
      exact (coprimeRestrictedMobiusDivisorIndicator r).map_zero
  | one =>
      right
      simp [coprimeRestrictedMobiusDivisorIndicator,
        coprimeRestrictedMobius, mobiusReal]
  | prime_pow p k hp hk =>
      rw [coprimeRestrictedMobiusDivisorIndicator_prime_pow hp hk]
      split <;> simp
  | coprime a b ha hb hab hA hB =>
      rw [(isMultiplicative_coprimeRestrictedMobiusDivisorIndicator r).
        map_mul_of_coprime hab]
      rcases hA with hA | hA <;>
        rcases hB with hB | hB <;>
          simp [hA, hB]

/-- The restricted divisor indicator lies in `[0,1]`. -/
theorem coprimeRestrictedMobiusDivisorIndicator_mem_Icc
    (r n : ℕ) :
    coprimeRestrictedMobiusDivisorIndicator r n ∈
      Set.Icc (0 : ℝ) 1 := by
  rcases coprimeRestrictedMobiusDivisorIndicator_eq_zero_or_one r n
    with h | h <;> simp [h]

/-- Associativity with `log = zeta * vonMangoldt` turns the restricted
Möbius-log convolution into a nonnegative von Mangoldt convolution. -/
theorem coprimeRestrictedMobiusLog_eq_indicator_mul_vonMangoldt
    (r : ℕ) :
    coprimeRestrictedMobiusLog r =
      coprimeRestrictedMobiusDivisorIndicator r *
        ArithmeticFunction.vonMangoldt := by
  unfold coprimeRestrictedMobiusLog
    coprimeRestrictedMobiusDivisorIndicator
  rw [← ArithmeticFunction.zeta_mul_vonMangoldt]
  ac_rfl

/-- The restricted Möbius-log convolution is nonnegative and bounded by the
ordinary logarithm. -/
theorem coprimeRestrictedMobiusLog_mem_Icc
    {r n : ℕ}
    (hn : 0 < n) :
    coprimeRestrictedMobiusLog r n ∈
      Set.Icc (0 : ℝ) (Real.log (n : ℝ)) := by
  rw [coprimeRestrictedMobiusLog_eq_indicator_mul_vonMangoldt]
  have hnonneg :
      0 ≤ (coprimeRestrictedMobiusDivisorIndicator r *
        ArithmeticFunction.vonMangoldt) n := by
    rw [ArithmeticFunction.mul_apply]
    exact Finset.sum_nonneg fun p hp =>
      mul_nonneg
        (coprimeRestrictedMobiusDivisorIndicator_mem_Icc r p.1).1
        ArithmeticFunction.vonMangoldt_nonneg
  have hupper :
      (coprimeRestrictedMobiusDivisorIndicator r *
        ArithmeticFunction.vonMangoldt) n ≤
      ((ArithmeticFunction.zeta : ArithmeticFunction ℝ) *
        ArithmeticFunction.vonMangoldt) n := by
    rw [ArithmeticFunction.mul_apply,
      ArithmeticFunction.mul_apply]
    apply Finset.sum_le_sum
    intro p hp
    have hp1pos : 0 < p.1 :=
      Nat.pos_of_mem_divisors
        (Nat.fst_mem_divisors_of_mem_antidiagonal hp)
    have hI :=
      coprimeRestrictedMobiusDivisorIndicator_mem_Icc r p.1
    simp only [ArithmeticFunction.zeta_apply,
      if_neg hp1pos.ne']
    exact mul_le_mul_of_nonneg_right hI.2
      ArithmeticFunction.vonMangoldt_nonneg
  rw [ArithmeticFunction.zeta_mul_vonMangoldt,
    ArithmeticFunction.log_apply] at hupper
  exact ⟨hnonneg, hupper⟩

/-- Absolute form of the restricted Möbius-log bound. -/
theorem abs_coprimeRestrictedMobiusLog_le_log
    {r n : ℕ}
    (hn : 0 < n) :
    |coprimeRestrictedMobiusLog r n| ≤
      Real.log (n : ℝ) := by
  have h := coprimeRestrictedMobiusLog_mem_Icc (r := r) hn
  rw [abs_of_nonneg h.1]
  exact h.2

/-- The product Möbius coefficient factors through the restricted Möbius
coefficient, including the non-coprime zero case. -/
theorem mobiusReal_mul_eq_restricted
    (r a : ℕ) :
    mobiusReal (r * a) =
      mobiusReal r * coprimeRestrictedMobius r a := by
  by_cases hcop : Nat.Coprime r a
  · rw [mobiusReal_mul_of_coprime hcop]
    simp [coprimeRestrictedMobius, hcop.symm]
  · have hnotSq : ¬Squarefree (r * a) := by
      intro hsq
      exact hcop (Nat.coprime_of_squarefree_mul hsq)
    unfold mobiusReal
    rw [ArithmeticFunction.moebius_eq_zero_of_not_squarefree hnotSq]
    simp [coprimeRestrictedMobius, hcop.symm]

/-- Restricted product Möbius-log block. -/
def restrictedProductMobiusLogBlock
    (r n : ℕ) : ℝ :=
  ∑ a ∈ n.divisors,
    mobiusReal (r * a) * Real.log (n / a : ℕ)

/-- The product block is `mu(r)` times the restricted Möbius-log
convolution. -/
theorem restrictedProductMobiusLogBlock_eq
    {r n : ℕ}
    (hn : 0 < n) :
    restrictedProductMobiusLogBlock r n =
      mobiusReal r * coprimeRestrictedMobiusLog r n := by
  unfold restrictedProductMobiusLogBlock
  rw [← Nat.sum_divisorsAntidiagonal
    (n := n)
    (fun a b => mobiusReal (r * a) * Real.log b)]
  unfold coprimeRestrictedMobiusLog
  rw [ArithmeticFunction.mul_apply, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro p hp
  rw [mobiusReal_mul_eq_restricted]
  ring

/-- Sharp pointwise bound for the restricted product Möbius-log block. -/
theorem abs_restrictedProductMobiusLogBlock_le_log
    {r n : ℕ}
    (hn : 0 < n) :
    |restrictedProductMobiusLogBlock r n| ≤
      Real.log (n : ℝ) := by
  rw [restrictedProductMobiusLogBlock_eq hn, abs_mul]
  have hmu : |mobiusReal r| ≤ 1 := by
    unfold mobiusReal
    exact_mod_cast
      (ArithmeticFunction.abs_moebius_le_one (n := r))
  have hlog := abs_coprimeRestrictedMobiusLog_le_log
    (r := r) hn
  have hlognonneg : 0 ≤ Real.log (n : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hn)
  calc
    |mobiusReal r| * |coprimeRestrictedMobiusLog r n| ≤
      1 * |coprimeRestrictedMobiusLog r n| := by
        exact mul_le_mul_of_nonneg_right hmu (abs_nonneg _)
    _ ≤ Real.log (n : ℝ) := by simpa using hlog

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
