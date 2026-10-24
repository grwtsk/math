# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SquarefreeCount.Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc6bafc7cf55e1aa42f97a83a9a536d964de1a27` · SHA-256 `d53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusRatio
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.Sqrt
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Algebra.BigOperators.Field
import scratch.mertens.CoprimeCount
import scratch.mertens.ReciprocalSquareTail

set_option autoImplicit false

namespace SquarefreeCountScratch
open Finset
open scoped ArithmeticFunction.zeta
noncomputable section

def halfFactorization (n : ℕ) : ℕ →₀ ℕ :=
  n.factorization.mapRange (fun a ↦ a / 2) (by decide)

def squareDivisorRoot (n : ℕ) : ℕ := (halfFactorization n).prod (· ^ ·)

theorem halfFactorization_le (n : ℕ) : halfFactorization n ≤ n.factorization := by
  intro p
  exact Nat.div_le_self _ _

theorem squareDivisorRoot_ne_zero (n : ℕ) : squareDivisorRoot n ≠ 0 := by
  apply Finsupp.prod_ne_zero_iff.mpr
  intro p hp
  have hprime : Nat.Prime p := Nat.prime_of_mem_primeFactors
    (Finsupp.support_mono (halfFactorization_le n) hp)
  exact pow_ne_zero _ hprime.ne_zero

theorem squareDivisorRoot_factorization (n : ℕ) :
    (squareDivisorRoot n).factorization = halfFactorization n :=
  Nat.factorization_prod_pow_eq_self_of_le_factorization (halfFactorization_le n)

theorem square_dvd_iff_dvd_root (n d : ℕ) (hn : n ≠ 0) :
    d ^ 2 ∣ n ↔ d ∣ squareDivisorRoot n := by
  by_cases hd : d = 0
  · subst d
    simp [hn, squareDivisorRoot_ne_zero n]
  rw [← Nat.factorization_le_iff_dvd (pow_ne_zero _ hd) hn,
    ← Nat.factorization_le_iff_dvd hd (squareDivisorRoot_ne_zero n),
    squareDivisorRoot_factorization, Nat.factorization_pow]
  change (∀ p, 2 * d.factorization p ≤ n.factorization p) ↔
    ∀ p, d.factorization p ≤ n.factorization p / 2
  exact forall_congr' (fun p ↦ by omega)

theorem root_eq_one_iff_squarefree (n : ℕ) (hn : n ≠ 0) :
    squareDivisorRoot n = 1 ↔ Squarefree n := by
  constructor
  · intro hr d hd
    have hdiv : d ∣ squareDivisorRoot n :=
      (square_dvd_iff_dvd_root n d hn).mp (by simpa only [pow_two] using hd)
    rw [hr] at hdiv
    exact Nat.isUnit_iff.mpr (Nat.dvd_one.mp hdiv)
  · intro h
    exact Nat.isUnit_iff.mp (h _ (by
      rw [← pow_two, square_dvd_iff_dvd_root n (squareDivisorRoot n) hn]))

theorem squareDivisors_eq_root_divisors (n : ℕ) (hn : n ≠ 0) :
    n.divisors.filter (fun d ↦ d ^ 2 ∣ n) = (squareDivisorRoot n).divisors := by
  ext d
  simp only [mem_filter, Nat.mem_divisors]
  constructor
  · rintro ⟨_, hsq⟩
    exact ⟨(square_dvd_iff_dvd_root n d hn).mp hsq, squareDivisorRoot_ne_zero n⟩
  · rintro ⟨hd, _⟩
    have hsq := (square_dvd_iff_dvd_root n d hn).mpr hd
    exact ⟨⟨(dvd_pow_self d (by decide : 2 ≠ 0)).trans hsq, hn⟩, hsq⟩

theorem sum_moebius_divisors (n : ℕ) :
    (∑ e ∈ n.divisors, (ArithmeticFunction.moebius e : ℝ)) = if n = 1 then 1 else 0 := by
  have h := congrArg (fun f : ArithmeticFunction ℝ ↦ f n)
    (ArithmeticFunction.coe_moebius_mul_coe_zeta (R := ℝ))
  simpa only [ArithmeticFunction.coe_mul_zeta_apply, ArithmeticFunction.intCoe_apply,
    ArithmeticFunction.one_apply] using h

theorem moebius_square_eq_sum_squareDivisors (n : ℕ) (hn : n ≠ 0) :
    (ArithmeticFunction.moebius n : ℝ)^2 =
      ∑ d ∈ n.divisors, if d^2 ∣ n then (ArithmeticFunction.moebius d : ℝ) else 0 := by
  rw [← sum_filter, squareDivisors_eq_root_divisors n hn, sum_moebius_divisors]
  simp only [root_eq_one_iff_squarefree n hn]
  exact_mod_cast (ArithmeticFunction.moebius_sq (n := n))


theorem squareDivisors_eq_Icc (n j : ℕ) (hn : 1 ≤ n) (hnj : n ≤ j) :
    n.divisors.filter (fun d ↦ d^2 ∣ n) =
      (Icc 1 (Nat.sqrt j)).filter (fun d ↦ d^2 ∣ n) := by
  ext d
  simp only [mem_filter, Nat.mem_divisors, mem_Icc]
  constructor
  · rintro ⟨⟨hd, _⟩, hsq⟩
    have hd0 : 1 ≤ d := Nat.pos_of_dvd_of_pos hd hn
    exact ⟨⟨hd0, Nat.le_sqrt'.mpr ((Nat.le_of_dvd hn hsq).trans hnj)⟩, hsq⟩
  · rintro ⟨_, hsq⟩
    exact ⟨⟨(dvd_pow_self d (by decide : 2 ≠ 0)).trans hsq, by omega⟩, hsq⟩

theorem moebius_square_eq_sum_Icc (n j : ℕ) (hn : 1 ≤ n) (hnj : n ≤ j) :
    (ArithmeticFunction.moebius n : ℝ)^2 =
      ∑ d ∈ Icc 1 (Nat.sqrt j), if d^2 ∣ n then
        (ArithmeticFunction.moebius d : ℝ) else 0 := by
  rw [moebius_square_eq_sum_squareDivisors n (by omega), ← sum_filter,
    squareDivisors_eq_Icc n j hn hnj, sum_filter]

open CoprimeCountScratch

theorem coprime_multiples_card (h j a : ℕ) (ha : 1 ≤ a) (hah : Nat.Coprime a h) :
    ((Icc 1 j).filter (fun n ↦ a ∣ n ∧ Nat.Coprime n h)).card =
      coprimeCount h (j / a) := by
  classical
  unfold coprimeCount
  symm
  apply card_bij (fun k _ ↦ a * k)
  · intro k hk
    obtain ⟨hk, hkh⟩ := mem_filter.mp hk
    obtain ⟨hk1, hkj⟩ := mem_Icc.mp hk
    apply mem_filter.mpr
    refine ⟨mem_Icc.mpr ⟨by nlinarith, ?_⟩, dvd_mul_right a k, ?_⟩
    · simpa only [Nat.mul_comm k a] using
        (Nat.le_div_iff_mul_le (by omega : 0 < a)).mp hkj
    · exact hah.mul_left hkh
  · intro k hk l hl heq
    exact Nat.eq_of_mul_eq_mul_left (by omega : 0 < a) heq
  · intro n hn
    obtain ⟨hn, had, hnh⟩ := mem_filter.mp hn
    obtain ⟨hn1, hnj⟩ := mem_Icc.mp hn
    refine ⟨n / a, mem_filter.mpr ⟨mem_Icc.mpr ⟨?_, ?_⟩, ?_⟩, ?_⟩
    · have heq := Nat.mul_div_cancel' had
      nlinarith
    · exact Nat.div_le_div_right hnj
    · exact hnh.of_dvd_left (Nat.div_dvd_of_dvd had)
    · exact Nat.mul_div_cancel' had


def squarefreeCoprimeCount (h j : ℕ) : ℝ :=
  ∑ g ∈ Icc 1 j, (ArithmeticFunction.moebius g : ℝ)^2 *
    (if Nat.Coprime g h then 1 else 0)

theorem coprime_multiples_sum (h j d : ℕ) (hd : 1 ≤ d) :
    (∑ g ∈ Icc 1 j, (if d^2 ∣ g then (1 : ℝ) else 0) *
      (if Nat.Coprime g h then 1 else 0)) =
      if Nat.Coprime d h then (coprimeCount h (j / d^2) : ℝ) else 0 := by
  classical
  by_cases hdh : Nat.Coprime d h
  · rw [if_pos hdh]
    have hsq : Nat.Coprime (d^2) h := hdh.pow_left 2
    have hcount := coprime_multiples_card h j (d^2) (by nlinarith) hsq
    have hs : (∑ g ∈ Icc 1 j, (if d^2 ∣ g then (1 : ℝ) else 0) *
        (if Nat.Coprime g h then 1 else 0)) =
        (((Icc 1 j).filter (fun g ↦ d^2 ∣ g ∧ Nat.Coprime g h)).card : ℝ) := by
      calc
        _ = ∑ g ∈ Icc 1 j, if d^2 ∣ g ∧ Nat.Coprime g h then (1 : ℝ) else 0 := by
          apply sum_congr rfl
          intro g _
          by_cases h1 : d^2 ∣ g <;> by_cases h2 : Nat.Coprime g h <;> simp [h1, h2]
        _ = _ := by simp only [← sum_filter, sum_const, nsmul_eq_mul, mul_one]
    rw [hs, hcount]
  · rw [if_neg hdh]
    apply sum_eq_zero
    intro g _
    by_cases hdg : d^2 ∣ g
    · have hgh : ¬Nat.Coprime g h := by
        intro hgh
        apply hdh
        exact hgh.of_dvd_left ((dvd_pow_self d (by decide : 2 ≠ 0)).trans hdg)
      simp [hgh]
    · simp [hdg]

theorem squarefreeCoprimeCount_eq (h j : ℕ) :
    squarefreeCoprimeCount h j =
      ∑ d ∈ Icc 1 (Nat.sqrt j),
        (ArithmeticFunction.moebius d : ℝ) *
          (if Nat.Coprime d h then (coprimeCount h (j / d^2) : ℝ) else 0) := by
  unfold squarefreeCoprimeCount
  have hpoint (g : ℕ) (hg : g ∈ Icc 1 j) :
      (ArithmeticFunction.moebius g : ℝ)^2 =
        ∑ d ∈ Icc 1 (Nat.sqrt j), if d^2 ∣ g then
          (ArithmeticFunction.moebius d : ℝ) else 0 :=
    moebius_square_eq_sum_Icc g j (mem_Icc.mp hg).1 (mem_Icc.mp hg).2
  calc
    _ = ∑ g ∈ Icc 1 j, (∑ d ∈ Icc 1 (Nat.sqrt j),
        if d^2 ∣ g then (ArithmeticFunction.moebius d : ℝ) else 0) *
          (if Nat.Coprime g h then 1 else 0) :=
      sum_congr rfl (fun g hg ↦ by rw [hpoint g hg])
    _ = ∑ d ∈ Icc 1 (Nat.sqrt j), ∑ g ∈ Icc 1 j,
        (if d^2 ∣ g then (ArithmeticFunction.moebius d : ℝ) else 0) *
          (if Nat.Coprime g h then 1 else 0) := by
      simp_rw [sum_mul]
      rw [sum_comm]
    _ = _ := by
      apply sum_congr rfl
      intro d hd
      rw [← coprime_multiples_sum h j d (mem_Icc.mp hd).1, mul_sum]
      apply sum_congr rfl
      intro g _
      by_cases hdg : d^2 ∣ g <;> simp [hdg]


theorem coprimeCount_div_error (h j a : ℕ) (hh : 1 ≤ h) (ha : 1 ≤ a) :
    |(coprimeCount h (j / a) : ℝ) - coprimeDensity h * (j : ℝ) / (a : ℝ)| ≤
      (h.divisors.card : ℝ) := by
  rw [coprimeCount_eq_moebius_floor h (j / a) hh, coprimeDensity, sum_mul, sum_div,
    ← sum_sub_distrib]
  have hterm (e : ℕ) (he : e ∈ h.divisors) :
      |(ArithmeticFunction.moebius e : ℝ) * (((j / a) / e : ℕ) : ℝ) -
        ((ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) * (j : ℝ) / (a : ℝ)| ≤ 1 := by
    have he1 : 1 ≤ e := Nat.pos_of_mem_divisors he
    have hae : 1 ≤ a * e := by nlinarith
    have hf := natural_division_error j (a * e) hae
    have hmu : |(ArithmeticFunction.moebius e : ℝ)| ≤ 1 := by
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := e))
    have heq : (ArithmeticFunction.moebius e : ℝ) * (((j / a) / e : ℕ) : ℝ) -
        ((ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) * (j : ℝ) / (a : ℝ) =
        (ArithmeticFunction.moebius e : ℝ) * (((j / (a * e) : ℕ) : ℝ) -
          (j : ℝ) / ((a * e : ℕ) : ℝ)) := by
      rw [Nat.div_div_eq_div_mul]
      simp only [Nat.cast_mul, div_eq_mul_inv, mul_inv_rev]
      ring
    rw [heq, abs_mul]
    simpa only [one_mul] using mul_le_mul hmu hf (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
  calc
    _ ≤ ∑ e ∈ h.divisors,
        |(ArithmeticFunction.moebius e : ℝ) * (((j / a) / e : ℕ) : ℝ) -
          ((ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) * (j : ℝ) / (a : ℝ)| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ _e ∈ h.divisors, (1 : ℝ) := sum_le_sum hterm
    _ = _ := by simp

def finiteSquarefreeDensity (h D : ℕ) : ℝ :=
  coprimeDensity h * ∑ d ∈ Icc 1 D,
    if Nat.Coprime d h then (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0

theorem squarefreeCoprimeCount_error_le (h j : ℕ) (hh : 1 ≤ h) :
    |squarefreeCoprimeCount h j -
      (j : ℝ) * finiteSquarefreeDensity h (Nat.sqrt j)| ≤
      (h.divisors.card : ℝ) * (Nat.sqrt j : ℝ) := by
  rw [squarefreeCoprimeCount_eq, finiteSquarefreeDensity, mul_sum, mul_sum,
    ← sum_sub_distrib]
  have hterm (d : ℕ) (hd : d ∈ Icc 1 (Nat.sqrt j)) :
      |(ArithmeticFunction.moebius d : ℝ) *
          (if Nat.Coprime d h then (coprimeCount h (j / d^2) : ℝ) else 0) -
        (j : ℝ) * (coprimeDensity h *
          (if Nat.Coprime d h then (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0))| ≤
      (h.divisors.card : ℝ) := by
    by_cases hdh : Nat.Coprime d h
    · rw [if_pos hdh, if_pos hdh]
      have hd1 := (mem_Icc.mp hd).1
      have hc := coprimeCount_div_error h j (d^2) hh (by nlinarith)
      simp only [Nat.cast_pow] at hc
      have heq : (ArithmeticFunction.moebius d : ℝ) * (coprimeCount h (j / d^2) : ℝ) -
          (j : ℝ) * (coprimeDensity h * ((ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2)) =
          (ArithmeticFunction.moebius d : ℝ) *
            ((coprimeCount h (j / d^2) : ℝ) - coprimeDensity h * (j : ℝ) / (d : ℝ)^2) := by
        ring
      rw [heq, abs_mul]
      have hmu : |(ArithmeticFunction.moebius d : ℝ)| ≤ 1 := by
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      simpa only [one_mul] using mul_le_mul hmu hc (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
    · rw [if_neg hdh, if_neg hdh]
      simp only [mul_zero, sub_self, abs_zero]
      exact Nat.cast_nonneg _
  calc
    _ ≤ ∑ d ∈ Icc 1 (Nat.sqrt j),
        |(ArithmeticFunction.moebius d : ℝ) *
            (if Nat.Coprime d h then (coprimeCount h (j / d^2) : ℝ) else 0) -
          (j : ℝ) * (coprimeDensity h *
            (if Nat.Coprime d h then (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0))| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ _d ∈ Icc 1 (Nat.sqrt j), (h.divisors.card : ℝ) := sum_le_sum hterm
    _ = _ := by simp [mul_comm]


theorem finiteSquarefreeDensity_difference_le (h Y Z : ℕ) (hh : 1 ≤ h) (hYZ : Y ≤ Z) :
    |finiteSquarefreeDensity h Z - finiteSquarefreeDensity h Y| ≤
      ∑ d ∈ Ioc Y Z, 1 / (d : ℝ)^2 := by
  classical
  have hunion : Icc 1 Z = Icc 1 Y ∪ Ioc Y Z := by
    ext d
    simp only [mem_union, mem_Icc, mem_Ioc]
    omega
  have hdisj : Disjoint (Icc 1 Y) (Ioc Y Z) := by
    apply disjoint_left.mpr
    intro d hd1 hd2
    have h1 := (mem_Icc.mp hd1).2
    have h2 := (mem_Ioc.mp hd2).1
    omega
  rw [finiteSquarefreeDensity, finiteSquarefreeDensity, hunion, sum_union hdisj,
    mul_add, add_sub_cancel_left, abs_mul, abs_of_nonneg (coprimeDensity_nonneg h hh)]
  calc
    _ ≤ |∑ d ∈ Ioc Y Z, if Nat.Coprime d h then
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0| :=
      mul_le_of_le_one_left (abs_nonneg _) (coprimeDensity_le_one h hh)
    _ ≤ ∑ d ∈ Ioc Y Z, |if Nat.Coprime d h then
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0| := abs_sum_le_sum_abs _ _
    _ ≤ _ := by
      apply sum_le_sum
      intro d _
      by_cases hdh : Nat.Coprime d h
      · rw [if_pos hdh, abs_div, abs_of_nonneg (sq_nonneg (d : ℝ))]
        apply div_le_div_of_nonneg_right _ (sq_nonneg _)
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      · rw [if_neg hdh, abs_zero]
        positivity

theorem fixedDensity_error_le (h j G : ℕ) (hh : 1 ≤ h) (hj : 1 ≤ j) (hjG : j ≤ G) :
    |squarefreeCoprimeCount h j -
      finiteSquarefreeDensity h (Nat.sqrt G) * (j : ℝ)| ≤
      ((h.divisors.card : ℝ) + 2) * Real.sqrt (j : ℝ) := by
  have hlocal := squarefreeCoprimeCount_error_le h j hh
  have htail := finiteSquarefreeDensity_difference_le h (Nat.sqrt j) (Nat.sqrt G) hh
    (Nat.sqrt_le_sqrt hjG)
  have hweight : |(j : ℝ) * finiteSquarefreeDensity h (Nat.sqrt j) -
      finiteSquarefreeDensity h (Nat.sqrt G) * (j : ℝ)| ≤ 2 * Real.sqrt (j : ℝ) := by
    calc
      _ = (j : ℝ) * |finiteSquarefreeDensity h (Nat.sqrt G) -
          finiteSquarefreeDensity h (Nat.sqrt j)| := by
        rw [mul_comm (finiteSquarefreeDensity h (Nat.sqrt G)) (j : ℝ), ← mul_sub,
          abs_mul, abs_of_nonneg (Nat.cast_nonneg j), abs_sub_comm]
      _ ≤ (j : ℝ) * ∑ d ∈ Ioc (Nat.sqrt j) (Nat.sqrt G), 1 / (d : ℝ)^2 :=
        mul_le_mul_of_nonneg_left htail (Nat.cast_nonneg j)
      _ ≤ _ := ReciprocalSquareTailScratch.sqrt_cutoff_tail_le j G hj hjG
  calc
    _ ≤ |squarefreeCoprimeCount h j - (j : ℝ) * finiteSquarefreeDensity h (Nat.sqrt j)| +
        |(j : ℝ) * finiteSquarefreeDensity h (Nat.sqrt j) -
          finiteSquarefreeDensity h (Nat.sqrt G) * (j : ℝ)| := abs_sub_le _ _ _
    _ ≤ (h.divisors.card : ℝ) * (Nat.sqrt j : ℝ) + 2 * Real.sqrt (j : ℝ) :=
      add_le_add hlocal hweight
    _ ≤ (h.divisors.card : ℝ) * Real.sqrt (j : ℝ) + 2 * Real.sqrt (j : ℝ) :=
      add_le_add (mul_le_mul_of_nonneg_left (Real.nat_sqrt_le_real_sqrt (a := j))
        (Nat.cast_nonneg h.divisors.card)) le_rfl
    _ = _ := by ring

end
end SquarefreeCountScratch

#print axioms SquarefreeCountScratch.halfFactorization
#print axioms SquarefreeCountScratch.squareDivisorRoot
#print axioms SquarefreeCountScratch.halfFactorization_le
#print axioms SquarefreeCountScratch.squareDivisorRoot_ne_zero
#print axioms SquarefreeCountScratch.squareDivisorRoot_factorization
#print axioms SquarefreeCountScratch.square_dvd_iff_dvd_root
#print axioms SquarefreeCountScratch.root_eq_one_iff_squarefree
#print axioms SquarefreeCountScratch.squareDivisors_eq_root_divisors
#print axioms SquarefreeCountScratch.sum_moebius_divisors
#print axioms SquarefreeCountScratch.moebius_square_eq_sum_squareDivisors
#print axioms SquarefreeCountScratch.squareDivisors_eq_Icc
#print axioms SquarefreeCountScratch.moebius_square_eq_sum_Icc
#print axioms SquarefreeCountScratch.coprime_multiples_card
#print axioms SquarefreeCountScratch.squarefreeCoprimeCount
#print axioms SquarefreeCountScratch.coprime_multiples_sum
#print axioms SquarefreeCountScratch.squarefreeCoprimeCount_eq
#print axioms SquarefreeCountScratch.coprimeCount_div_error
#print axioms SquarefreeCountScratch.finiteSquarefreeDensity
#print axioms SquarefreeCountScratch.squarefreeCoprimeCount_error_le
#print axioms SquarefreeCountScratch.finiteSquarefreeDensity_difference_le
#print axioms SquarefreeCountScratch.fixedDensity_error_le
```
