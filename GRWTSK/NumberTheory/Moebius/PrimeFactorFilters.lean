/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.FiniteResponseSum
import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.Algebra.BigOperators.Group.Finset.Powerset

/-! Exact causal prime-note expansion of the actual closed Möbius pickup.
No correlation bound or Kakeya input is assumed in these identities. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set
open scoped BigOperators

def causalShift (a : ℝ) (f : ℝ → ℝ) (u : ℝ) : ℝ :=
  if a ≤ u then f (u - a) else 0

def baseNote : ℝ → ℝ := pickupResponse 1

def primeNoteFilter (p : ℕ) (f : ℝ → ℝ) (u : ℝ) : ℝ :=
  f u - (Real.sqrt p)⁻¹ * causalShift (Real.log p) f u

theorem causalShift_add {a b : ℝ} (_ha : 0 ≤ a) (hb : 0 ≤ b) (f : ℝ → ℝ) :
    causalShift a (causalShift b f) = causalShift (a + b) f := by
  funext u
  by_cases h : a + b ≤ u
  · simp [causalShift, h, show a ≤ u by linarith,
      show b ≤ u - a by linarith, sub_sub]
  · by_cases hA : a ≤ u
    · simp [causalShift, h, hA, show ¬b ≤ u - a by linarith]
    · simp [causalShift, h, hA]

theorem pickupResponse_eq_causal_note {n : ℕ} (hn : 1 ≤ n) :
    pickupResponse n = fun u ↦ (Real.sqrt n)⁻¹ * causalShift (Real.log n) baseNote u := by
  funext u
  by_cases h : Real.log n ≤ u
  · have he : Real.exp (-(u - Real.log n) / 2) =
        Real.exp (-u / 2) * Real.sqrt n := by
      rw [show -(u - Real.log (n : ℝ)) / 2 = -u / 2 + Real.log n / 2 by ring,
        Real.exp_add]
      congr 1
      have hi := congrArg (fun x : ℝ ↦ x⁻¹) (pickup_exp_negative_log_half hn)
      simpa only [show -Real.log (n : ℝ) / 2 = -(Real.log n / 2) by ring,
        Real.exp_neg, inv_inv] using hi
    have hs : Real.sqrt n ≠ 0 := (Real.sqrt_pos.mpr (by exact_mod_cast hn)).ne'
    simp only [causalShift, if_pos h, baseNote]
    simp only [pickupResponse, Nat.cast_one, Real.log_one, Real.sqrt_one, inv_one,
      if_pos h, if_pos (show (0 : ℝ) ≤ u - Real.log n by linarith), he]
    field_simp
  · simp [pickupResponse, causalShift, h]

theorem pickupResponse_mul {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n) :
    pickupResponse (m * n) = fun u ↦
      (Real.sqrt m)⁻¹ * causalShift (Real.log m) (pickupResponse n) u := by
  have hm0 : (m : ℝ) ≠ 0 := by exact_mod_cast (by omega : m ≠ 0)
  have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast (by omega : n ≠ 0)
  rw [pickupResponse_eq_causal_note (by nlinarith : 1 ≤ m * n)]
  funext u
  rw [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg m), mul_inv_rev,
    Real.log_mul hm0 hn0, ← causalShift_add (Real.log_nonneg (by exact_mod_cast hm))
      (Real.log_nonneg (by exact_mod_cast hn))]
  rw [pickupResponse_eq_causal_note hn]
  by_cases h : Real.log (m : ℝ) ≤ u
  · simp only [causalShift, if_pos h]
    ring
  · simp [causalShift, h]

/-- Finite set expansion; each subset creates exactly one squarefree note. -/
def primeNoteCascade (P : Finset ℕ) (u : ℝ) : ℝ :=
  ∑ S ∈ P.powerset, moebiusReal (∏ p ∈ S, p) * pickupResponse (∏ p ∈ S, p) u

theorem prime_product_pos {P : Finset ℕ} (hP : ∀ p ∈ P, p.Prime) :
    1 ≤ ∏ p ∈ P, p :=
  Nat.one_le_iff_ne_zero.mpr (Finset.prod_ne_zero_iff.mpr fun p hp ↦ (hP p hp).ne_zero)

theorem prime_product_squarefree {P : Finset ℕ} (hP : ∀ p ∈ P, p.Prime) :
    Squarefree (∏ p ∈ P, p) := by
  induction P using Finset.induction_on with
  | empty => simp
  | @insert p P hp ih =>
    rw [Finset.prod_insert hp, Nat.squarefree_mul_iff]
    refine ⟨Nat.coprime_prod_right_iff.mpr ?_, (hP p (by simp)).squarefree,
      ih (fun q hq ↦ hP q (by simp [hq]))⟩
    intro q hq
    exact (hP p (by simp)).coprime_iff_not_dvd.mpr fun hd ↦
      hp (by simpa [((hP q (by simp [hq])).dvd_iff_eq (hP p (by simp)).ne_one).mp hd] using hq)

@[simp] theorem primeNoteCascade_empty : primeNoteCascade ∅ = baseNote := by
  funext u
  simp [primeNoteCascade, moebiusReal, baseNote]

/-- This insertion law identifies the expansion with the commuting prime filters. -/
theorem primeNoteCascade_insert {P : Finset ℕ} {p : ℕ}
    (hP : ∀ q ∈ P, q.Prime) (hp : p.Prime) (hpP : p ∉ P) :
    primeNoteCascade (insert p P) = primeNoteFilter p (primeNoteCascade P) := by
  funext u
  rw [primeNoteCascade, Finset.sum_powerset_insert hpP]
  have hterms : ∀ S ∈ P.powerset,
      moebiusReal (∏ q ∈ insert p S, q) * pickupResponse (∏ q ∈ insert p S, q) u =
      -(Real.sqrt p)⁻¹ * causalShift (Real.log p)
        (fun v ↦ moebiusReal (∏ q ∈ S, q) * pickupResponse (∏ q ∈ S, q) v) u := by
    intro S hS
    have hsub := Finset.mem_powerset.mp hS
    have hpS : p ∉ S := fun h ↦ hpP (hsub h)
    have hcop : p.Coprime (∏ q ∈ S, q) := Nat.coprime_prod_right_iff.mpr fun q hq ↦
      hp.coprime_iff_not_dvd.mpr fun hd ↦
        hpS (by simpa [((hP q (hsub hq)).dvd_iff_eq hp.ne_one).mp hd] using hq)
    rw [Finset.prod_insert hpS, pickupResponse_mul hp.one_le
      (prime_product_pos fun q hq ↦ hP q (hsub hq))]
    have hm : moebiusReal (p * ∏ q ∈ S, q) = -moebiusReal (∏ q ∈ S, q) := by
      simp [moebiusReal, ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hcop,
        ArithmeticFunction.moebius_apply_prime hp]
    rw [hm]
    by_cases h : Real.log (p : ℝ) ≤ u
    · simp only [causalShift, if_pos h]
      ring
    · simp [causalShift, h]
  rw [Finset.sum_congr rfl hterms, ← Finset.mul_sum]
  unfold primeNoteFilter primeNoteCascade
  by_cases h : Real.log (p : ℝ) ≤ u
  · simp only [causalShift, if_pos h]
    ring
  · simp [causalShift, h]

def pickupPrimes (T : ℝ) : Finset ℕ := (Finset.Icc 1 ⌊Real.exp T⌋₊).filter Nat.Prime

/-- Exact source identification at every real time in the closed recording window. -/
theorem pickup_eq_prime_note_cascade {u T : ℝ} (hu : 0 ≤ u) (huT : u ≤ T) :
    wholePickup u = primeNoteCascade (pickupPrimes T) u := by
  rw [wholePickup_fixed_inventory hu huT]
  let P := pickupPrimes T
  let S := (Finset.Icc 1 ⌊Real.exp T⌋₊).filter Squarefree
  have hP : ∀ p ∈ P, p.Prime := fun p hp ↦ (Finset.mem_filter.mp hp).2
  have hf : (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      moebiusReal n * pickupResponse n u) = ∑ n ∈ S, moebiusReal n * pickupResponse n u := by
    symm
    apply Finset.sum_subset (Finset.filter_subset _ _)
    intro n hn hns
    have h : ¬Squarefree n := fun hs ↦ hns (Finset.mem_filter.mpr ⟨hn, hs⟩)
    simp [moebiusReal, ArithmeticFunction.moebius_eq_zero_of_not_squarefree h]
  rw [hf]
  unfold primeNoteCascade
  symm
  apply Finset.sum_bij_ne_zero (fun A _ _ ↦ ∏ p ∈ A, p)
  · intro A hA hne
    have hAp := fun p hp ↦ hP p (Finset.mem_powerset.mp hA hp)
    have hpos := prime_product_pos hAp
    have hsf := prime_product_squarefree hAp
    have hcut : (∏ p ∈ A, p) ≤ ⌊Real.exp T⌋₊ := by
      by_contra h
      have hlog : ¬Real.log (∏ p ∈ A, p : ℕ) ≤ u := by
        intro hlu
        have := (pickup_log_le_iff_closed_cutoff hpos T).mp (hlu.trans huT)
        omega
      exact hne (by rw [pickupResponse, if_neg hlog, mul_zero])
    exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hpos, hcut⟩, hsf⟩
  · intro A hA _ B hB _ hab
    have hAf := Nat.primeFactors_prod (fun p hp ↦ hP p (Finset.mem_powerset.mp hA hp))
    have hBf := Nat.primeFactors_prod (fun p hp ↦ hP p (Finset.mem_powerset.mp hB hp))
    exact hAf.symm.trans ((congrArg Nat.primeFactors hab).trans hBf)
  · intro n hn hne
    have hnS := Finset.mem_filter.mp hn
    refine ⟨n.primeFactors, Finset.mem_powerset.mpr ?_, ?_⟩
    · intro p hp
      have hpf := Nat.mem_primeFactors.mp hp
      exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
        ⟨hpf.1.one_le, (Nat.le_of_dvd (by omega) hpf.2.1).trans
          (Finset.mem_Icc.mp hnS.1).2⟩, hpf.1⟩
    · have heq := Nat.prod_primeFactors_of_squarefree hnS.2
      exact ⟨by simpa only [heq] using hne, heq⟩
  · intro A _ _
    rfl

end GRWTSK.RiemannHypothesis.CCC
