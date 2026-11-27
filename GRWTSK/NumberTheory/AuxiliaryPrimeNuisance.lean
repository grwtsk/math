import GRWTSK.NumberTheory.AuxiliaryPrimeIdealDifference
import Mathlib.RingTheory.Ideal.Int
import Mathlib.RingTheory.RamificationInertia.Basic
import Mathlib.Data.Nat.Log
import Mathlib.Data.Nat.Sqrt
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# A uniform bound for the actual exceptional prime-ideal terms

Local source attribution: grwtsk contributors. This module bounds the nuisance
sum used by `auxiliary_of_prime_ideal_difference`. Its ideals and norms are
those of the actual ring of integers. The bound uses the fundamental identity
for ramification and inertia, and does not assume a prime-counting estimate.
-/

noncomputable section

namespace GRWTSK.PrimeFieldFactoring.IdealDifference

open scoped NumberField Classical
open Finset

variable (F : Type*) [Field F] [NumberField F]

/-- The underlying rational prime of a nonzero prime ideal. -/
def rationalPrime (P : Ideal (𝓞 F)) : ℕ := (P.under ℤ).absNorm

omit [NumberField F] in
theorem rationalPrime_prime (P : Ideal (𝓞 F)) (hP : P.IsPrime) (hne : P ≠ ⊥) :
    (rationalPrime F P).Prime := by
  let : P.IsPrime := hP
  let : NeZero P := ⟨hne⟩
  exact Nat.absNorm_under_prime P

theorem rationalPrime_pow_inertia (P : Ideal (𝓞 F)) (hP : P.IsPrime) :
    rationalPrime F P ^ P.inertiaDeg ℤ = P.absNorm := by
  let : P.IsPrime := hP
  exact Ideal.absNorm_pow_inertiaDeg (P.under ℤ) P

/-- At most the absolute degree many prime ideals lie above one rational
prime. The proof sums the actual ramification and inertia degrees. -/
theorem primesOver_card_le_degree (r : ℕ) (hr : r.Prime) :
    Nat.card ((Ideal.span {(r : ℤ)}).primesOver (𝓞 F)) ≤ Module.finrank ℚ F := by
  let : Fact r.Prime := ⟨hr⟩
  let J : Ideal ℤ := Ideal.span {(r : ℤ)}
  rw [Nat.card_eq_fintype_card]
  have hsum := Ideal.sum_ramification_inertia_eq_finrank J (𝓞 F)
  rw [NumberField.RingOfIntegers.rank F] at hsum
  calc
    _ = ∑ P : J.primesOver (𝓞 F), 1 := by simp [J]
    _ ≤ ∑ P : J.primesOver (𝓞 F), P.1.ramificationIdx ℤ * P.1.inertiaDeg ℤ := by
      apply Finset.sum_le_sum
      intro P _
      let : P.1.IsPrime := P.2.1
      exact Nat.succ_le_of_lt (Nat.mul_pos (Ideal.ramificationIdx_pos P.1 ℤ)
        (Ideal.inertiaDeg_pos P.1 ℤ))
    _ = _ := hsum

/-- A finite set of distinct actual prime ideals over the specified rational
prime inherits the degree bound. -/
theorem primeIdeal_card_le_degree (s : Finset (Ideal (𝓞 F))) (r : ℕ) (hr : r.Prime)
    (hprime : ∀ P ∈ s, P.IsPrime)
    (hbase : ∀ P ∈ s, rationalPrime F P = r) : s.card ≤ Module.finrank ℚ F := by
  let : Fact r.Prime := ⟨hr⟩
  let J : Ideal ℤ := Ideal.span {(r : ℤ)}
  let f : s → J.primesOver (𝓞 F) := fun P => ⟨P.1, hprime P.1 P.2, by
    change P.1.LiesOver (Ideal.span {(r : ℤ)})
    rw [← hbase P.1 P.2]
    exact Int.liesOver_span_absNorm P.1⟩
  have hinj : Function.Injective f := by
    intro P Q h
    apply Subtype.ext
    exact congrArg (fun R : J.primesOver (𝓞 F) => R.val) h
  have hc := Fintype.card_le_of_injective f hinj
  have hc' : s.card ≤ Nat.card (J.primesOver (𝓞 F)) := by
    simpa only [Fintype.card_coe, Nat.card_eq_fintype_card] using hc
  exact hc'.trans (primesOver_card_le_degree F r hr)

/-- Summing all powers attached to one ideal costs at most one logarithmic
window width. The logarithm of the ideal norm cancels the exponent count. -/
theorem ideal_fiber_weight_le (s : Finset (Term F)) (x : ℕ) (hx : 2 ≤ x)
    (hs : s ⊆ window F x) (φ : ℝ → ℝ) (H : ℝ) (hH : 0 ≤ H)
    (hφ : ∀ y, φ y ≤ H) (P : Ideal (𝓞 F)) :
    ∑ t ∈ s.filter (fun t => t.1 = P), weight F φ x t ≤ H * Real.log (2*x) := by
  let z := s.filter (fun t => t.1 = P)
  by_cases hz : z.Nonempty
  · obtain ⟨u, hu⟩ := hz
    have hu' := Finset.mem_filter.mp hu
    have hw := (mem_window F x u).mp (hs hu'.1)
    have hnorm : 2 ≤ P.absNorm := hu'.2 ▸ hw.2.2.1
    let k := Nat.log P.absNorm (2*x)
    have hlog : 0 ≤ Real.log (P.absNorm : ℝ) :=
      Real.log_nonneg (by exact_mod_cast (show 1 ≤ P.absNorm by omega))
    have hcard : z.card ≤ k := by
      have hc := Finset.card_le_card_of_injOn (s := z) (t := Finset.Icc 1 k) Prod.snd
        (fun t ht => by
          obtain ⟨hts, htP⟩ := Finset.mem_filter.mp ht
          have ht' := (mem_window F x t).mp (hs hts)
          apply Finset.mem_Icc.mpr
          refine ⟨ht'.2.2.2.1, ?_⟩
          apply Nat.le_log_of_pow_le (by omega)
          simpa [htP] using ht'.2.2.2.2.2.le)
        (fun a ha b hb he => Prod.ext ((Finset.mem_filter.mp ha).2.trans
          (Finset.mem_filter.mp hb).2.symm) he)
      simpa using hc
    have hpow := Nat.pow_log_le_self P.absNorm (show 2*x ≠ 0 by omega)
    have hlogpow : (k : ℝ) * Real.log (P.absNorm : ℝ) ≤ Real.log (2*x) := by
      have he := Real.log_le_log (pow_pos (by exact_mod_cast (show 0 < P.absNorm by omega)) k)
        (show (P.absNorm : ℝ)^k ≤ (2*x : ℕ) by exact_mod_cast hpow)
      simpa only [Real.log_pow, Nat.cast_mul, Nat.cast_ofNat] using he
    calc
      _ ≤ ∑ t ∈ z, Real.log (P.absNorm : ℝ) * H := by
        apply Finset.sum_le_sum
        intro t ht
        obtain ⟨_, htP⟩ := Finset.mem_filter.mp ht
        simp only [weight, htP]
        exact mul_le_mul_of_nonneg_left (hφ _) hlog
      _ = (z.card : ℝ) * (Real.log (P.absNorm : ℝ) * H) := by simp
      _ ≤ (k : ℝ) * (Real.log (P.absNorm : ℝ) * H) :=
        mul_le_mul_of_nonneg_right (by exact_mod_cast hcard) (mul_nonneg hlog hH)
      _ = H * ((k : ℝ) * Real.log (P.absNorm : ℝ)) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_left hlogpow hH
  · have he : z = ∅ := Finset.not_nonempty_iff_eq_empty.mp hz
    change (∑ t ∈ z, weight F φ x t) ≤ _
    rw [he]
    simp only [Finset.sum_empty]
    exact mul_nonneg hH (Real.log_nonneg (by exact_mod_cast (show 1 ≤ 2*x by omega)))

/-- Rational primes capable of supporting exceptional terms. The four
listed primes are retained even when some coincide. -/
def nuisanceBases (p q x : ℕ) : Finset ℕ :=
  Finset.Icc 1 (Nat.sqrt (2*x)) ∪ [2, 3, p, q].toFinset

theorem nuisanceBases_card (p q x : ℕ) :
    (nuisanceBases p q x).card ≤ Nat.sqrt (2*x) + 4 := by
  have he := List.toFinset_card_le (l := [2, 3, p, q])
  have hc := Finset.card_union_le (Finset.Icc 1 (Nat.sqrt (2*x))) [2, 3, p, q].toFinset
  simpa only [nuisanceBases, Nat.card_Icc, Nat.add_sub_cancel, List.length_cons,
    List.length_nil] using hc.trans (Nat.add_le_add_left he _)

/-- A nonordinary term either lies over a small rational prime, because its
total rational-prime exponent is at least two, or over a listed exception. -/
theorem nuisance_base_mem (p q x : ℕ) (t : Term F) (ht : t ∈ window F x)
    (hbad : ¬ ordinary F p q t) : rationalPrime F t.1 ∈ nuisanceBases p q x := by
  obtain ⟨hprime, hne, hnorm, hj, hx, hy⟩ := (mem_window F x t).mp ht
  let : t.1.IsPrime := hprime
  let r := rationalPrime F t.1
  let f := t.1.inertiaDeg ℤ
  have hr : r.Prime := rationalPrime_prime F t.1 hprime hne
  have hf : 0 < f := Ideal.inertiaDeg_pos t.1 ℤ
  have hrf : r ^ f = t.1.absNorm := rationalPrime_pow_inertia F t.1 hprime
  by_cases he : f * t.2 = 1
  · have hf1 : f = 1 := by nlinarith
    have hj1 : t.2 = 1 := by simpa [hf1] using he
    have hn : t.1.absNorm = r := by rw [← hrf, hf1, pow_one]
    have hex : r = 2 ∨ r = 3 ∨ r = p ∨ r = q := by
      by_contra h
      have hh : r ≠ 2 ∧ r ≠ 3 ∧ r ≠ p ∧ r ≠ q := by simpa using h
      apply hbad
      exact ⟨hj1, hn.symm ▸ hr, hn.symm ▸ hh.1, hn.symm ▸ hh.2.1,
        hn.symm ▸ hh.2.2.1, hn.symm ▸ hh.2.2.2⟩
    apply Finset.mem_union_right
    simpa [r] using hex
  · have hfj : 2 ≤ f * t.2 := by have := Nat.mul_pos hf (by omega : 0 < t.2); omega
    have hs : r ^ 2 ≤ 2*x := calc
      _ ≤ r ^ (f*t.2) := Nat.pow_le_pow_right hr.pos hfj
      _ = t.1.absNorm ^ t.2 := by rw [pow_mul, hrf]
      _ ≤ _ := hy.le
    exact Finset.mem_union_left _ (Finset.mem_Icc.mpr
      ⟨by exact hr.pos, Nat.le_sqrt'.mpr hs⟩)

/-- Grouping an actual finite set of nonzero prime ideals by their rational
prime gives a degree bound for each fiber. -/
theorem primeIdeal_card_le_of_rational_support (s : Finset (Ideal (𝓞 F)))
    (R : Finset ℕ) (hprime : ∀ P ∈ s, P.IsPrime)
    (hne : ∀ P ∈ s, P ≠ ⊥) (hbase : ∀ P ∈ s, rationalPrime F P ∈ R) :
    s.card ≤ R.card * Module.finrank ℚ F := by
  rw [Finset.card_eq_sum_card_fiberwise hbase]
  calc
    _ ≤ ∑ _r ∈ R, Module.finrank ℚ F := by
      apply Finset.sum_le_sum
      intro r hr
      by_cases he : (s.filter (fun P => rationalPrime F P = r)).Nonempty
      · obtain ⟨P, hP⟩ := he
        obtain ⟨hPs, hPr⟩ := Finset.mem_filter.mp hP
        have hrat : r.Prime := hPr ▸ rationalPrime_prime F P (hprime P hPs) (hne P hPs)
        apply primeIdeal_card_le_degree F _ r hrat
        · intro Q hQ
          exact hprime Q (Finset.mem_filter.mp hQ).1
        · intro Q hQ
          exact (Finset.mem_filter.mp hQ).2
      · simp [Finset.not_nonempty_iff_eq_empty.mp he]
    _ = _ := by simp

/-- Number of distinct ideals that can contribute to the nuisance sum. -/
theorem nuisance_ideal_card (p q x : ℕ) :
    (((window F x).filter (fun t => ¬ ordinary F p q t)).image Prod.fst).card ≤
      (Nat.sqrt (2*x)+4) * Module.finrank ℚ F := by
  let s := (window F x).filter (fun t => ¬ ordinary F p q t)
  let I := s.image Prod.fst
  have hb := primeIdeal_card_le_of_rational_support F I (nuisanceBases p q x)
    (fun P hP => by
      obtain ⟨t, ht, rfl⟩ := Finset.mem_image.mp hP
      exact ((mem_window F x t).mp (Finset.mem_filter.mp ht).1).1)
    (fun P hP => by
      obtain ⟨t, ht, rfl⟩ := Finset.mem_image.mp hP
      exact ((mem_window F x t).mp (Finset.mem_filter.mp ht).1).2.1)
    (fun P hP => by
      obtain ⟨t, ht, rfl⟩ := Finset.mem_image.mp hP
      exact nuisance_base_mem F p q x t (Finset.mem_filter.mp ht).1 (Finset.mem_filter.mp ht).2)
  exact hb.trans (Nat.mul_le_mul_right _ (nuisanceBases_card p q x))

/-- Uniform nuisance estimate for the actual prime-ideal sum, with the
integer square-root bound. Neither splitting nor analytic prime counting is
assumed. -/
theorem nuisance_le_nat_sqrt (p q x : ℕ) (hx : 2 ≤ x) (φ : ℝ → ℝ) (H : ℝ)
    (hH : 0 ≤ H) (hφ : ∀ y, φ y ≤ H) :
    nuisance F φ p q x ≤ H * (Module.finrank ℚ F : ℝ) *
      ((Nat.sqrt (2*x) : ℝ)+4) * Real.log (2*x) := by
  let s := (window F x).filter (fun t => ¬ ordinary F p q t)
  let I := s.image Prod.fst
  have hlog : 0 ≤ Real.log (2*x : ℝ) :=
    Real.log_nonneg (by exact_mod_cast (show 1 ≤ 2*x by omega))
  have hc : I.card ≤ (Nat.sqrt (2*x)+4) * Module.finrank ℚ F := nuisance_ideal_card F p q x
  change (∑ t ∈ s, weight F φ x t) ≤ _
  calc
    _ = ∑ P ∈ I, ∑ t ∈ s.filter (fun t => t.1 = P), weight F φ x t :=
      (Finset.sum_fiberwise_of_maps_to (fun t ht => Finset.mem_image_of_mem Prod.fst ht)
        (weight F φ x)).symm
    _ ≤ ∑ _P ∈ I, H * Real.log (2*x) := by
      apply Finset.sum_le_sum
      intro P _
      exact ideal_fiber_weight_le F s x hx (Finset.filter_subset _ _) φ H hH hφ P
    _ = (I.card : ℝ) * (H * Real.log (2*x)) := by simp
    _ ≤ (((Nat.sqrt (2*x)+4) * Module.finrank ℚ F : ℕ) : ℝ) *
        (H * Real.log (2*x)) :=
      mul_le_mul_of_nonneg_right (by exact_mod_cast hc) (mul_nonneg hH hlog)
    _ = _ := by push_cast; ring

/-- The real-square-root form of the exceptional contribution estimate. -/
theorem nuisance_le_sqrt (p q x : ℕ) (hx : 2 ≤ x) (φ : ℝ → ℝ) (H : ℝ)
    (hH : 0 ≤ H) (hφ : ∀ y, φ y ≤ H) :
    nuisance F φ p q x ≤ H * (Module.finrank ℚ F : ℝ) *
      (Real.sqrt (2*x)+4) * Real.log (2*x) := by
  have hs : (Nat.sqrt (2*x) : ℝ) ≤ Real.sqrt (2*x) :=
    Real.le_sqrt_of_sq_le (by exact_mod_cast Nat.sqrt_le' (2*x))
  exact (nuisance_le_nat_sqrt F p q x hx φ H hH hφ).trans
    (mul_le_mul_of_nonneg_right
      (mul_le_mul_of_nonneg_left (add_le_add hs (le_refl 4)) (mul_nonneg hH (Nat.cast_nonneg _)))
      (Real.log_nonneg (by exact_mod_cast (show 1 ≤ 2*x by omega))))

private theorem sqrt_log_le_three_quarters (x : ℝ) (hx : 2 ≤ x) :
    (Real.sqrt (2*x)+4) * Real.log (2*x) ≤ 20 * x ^ (3/4 : ℝ) := by
  have hx0 : 0 < x := by linarith
  have hsq := Real.sq_sqrt hx0.le
  have hroot : Real.sqrt (2*x)+4 ≤ 5*Real.sqrt x := by
    have ha : Real.sqrt (2*x) ≤ 2*Real.sqrt x := by
      apply Real.sqrt_le_iff.mpr
      exact ⟨by positivity, by nlinarith⟩
    have hb := Real.le_sqrt_of_sq_le (show (4/3 : ℝ)^2 ≤ x by nlinarith)
    linarith
  have hlog : Real.log (2*x) ≤ 4*x^(1/4 : ℝ) := by
    have ha := Real.log_le_sub_one_of_pos (Real.rpow_pos_of_pos hx0 (1/4 : ℝ))
    rw [Real.log_rpow hx0] at ha
    have hb := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    rw [Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) hx0.ne']
    nlinarith
  calc
    _ ≤ (5*Real.sqrt x)*(4*x^(1/4 : ℝ)) :=
      mul_le_mul hroot hlog (Real.log_nonneg (by linarith)) (by positivity)
    _ = 20 * (x^(1/2 : ℝ) * x^(1/4 : ℝ)) := by rw [Real.sqrt_eq_rpow]; ring
    _ = _ := by rw [← Real.rpow_add hx0]; norm_num

/-- A convenient power envelope for the same actual nuisance sum. -/
theorem nuisance_le_three_quarters (p q x : ℕ) (hx : 2 ≤ x) (φ : ℝ → ℝ) (H : ℝ)
    (hH : 0 ≤ H) (hφ : ∀ y, φ y ≤ H) :
    nuisance F φ p q x ≤ 20 * H * (Module.finrank ℚ F : ℝ) * (x : ℝ)^(3/4 : ℝ) := by
  calc
    _ ≤ H * (Module.finrank ℚ F : ℝ) *
        ((Real.sqrt (2*x)+4) * Real.log (2*x)) := by
      simpa only [mul_assoc] using nuisance_le_sqrt F p q x hx φ H hH hφ
    _ ≤ H * (Module.finrank ℚ F : ℝ) * (20 * (x : ℝ)^(3/4 : ℝ)) :=
      mul_le_mul_of_nonneg_left
        (sqrt_log_le_three_quarters x (by exact_mod_cast hx)) (by positivity)
    _ = _ := by ring

/-- Substitution of the cyclotomic degree bound used by the auxiliary-prime
argument. All exceptional terms are included in the bound. -/
theorem nuisance_le_input_bound (p q x B : ℕ) (hx : 2 ≤ x)
    (hdegree : Module.finrank ℚ F ≤ 12*B) (φ : ℝ → ℝ) (H : ℝ)
    (hH : 0 ≤ H) (hφ : ∀ y, φ y ≤ H) :
    nuisance F φ p q x ≤ 240 * H * (B : ℝ) * (x : ℝ)^(3/4 : ℝ) := by
  calc
    _ ≤ 20 * H * (Module.finrank ℚ F : ℝ) * (x : ℝ)^(3/4 : ℝ) :=
      nuisance_le_three_quarters F p q x hx φ H hH hφ
    _ ≤ 20 * H * (12*(B : ℝ)) * (x : ℝ)^(3/4 : ℝ) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left (by exact_mod_cast hdegree) (by positivity)) (by positivity)
    _ = _ := by ring

end GRWTSK.PrimeFieldFactoring.IdealDifference
