/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Imported GRWTSK and Mathlib authorship and licenses are retained. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.ShortIntervalPrimeCount

/-!
# Prime consequences from the actual signed tent allowance

All arithmetic, parameter selection and real/dyadic endpoint transport is
upstream of the RH adapter. The net defect is the exact source-defined
signed loss, not three independently small remainders. Existing norm estimates
are sufficient suppliers, not mandatory hypotheses of the signed consumer.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Chebyshev.TentPrimeConsequences
open GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
open ShortIntervalPrimeCount

/-- A bound on the existing zero series, at every admitted log-window radius. -/
def LogWindowZeroBound (K : ℝ) : Prop :=
  ∀ t h : ℝ, 1 ≤ t → 1 ≤ h → 2 * h ≤ (Real.exp t) ^ 2 →
    ‖zeroContribution ((Real.exp t) ^ 2 + h) h‖ ≤ K * (t * Real.exp t)

/-- Only the complete signed loss is bounded. The fixed unit allowance pays
an independently defined rational correction and does not change the rate. -/
def LogWindowSignedBound (K : ℝ) : Prop :=
  ∀ t h : ℝ, 1 ≤ t → 1 ≤ h → 2 * h ≤ (Real.exp t) ^ 2 →
    signedTentDefect ((Real.exp t) ^ 2 + h) h ≤ K * (t * Real.exp t) + 1

/-- Closed formula converting an existing norm estimate into the signed input.
The proper-power constant is constructed from pinned Mathlib. -/
theorem signed_bound_of_zero_bound {K : ℝ} (hK : 0 ≤ K)
    (hz : LogWindowZeroBound K) :
    ∃ A : ℝ, 0 ≤ A ∧ LogWindowSignedBound A := by
  obtain ⟨C, hC, hpower⟩ := exists_uniform_proper_power_constant
  refine ⟨K + 2 * C, by positivity, ?_⟩
  intro t h ht hh hshort
  let e := Real.exp t
  have he : 0 < e := Real.exp_pos t
  have he2 : 2 ≤ e := by
    have := Real.add_one_le_exp t
    dsimp [e]
    linarith
  have ha : 4 ≤ e ^ 2 := by nlinarith [sq_nonneg (e - 2)]
  have hh0 : 0 < h := by linarith
  have hsqrt : Real.sqrt (e ^ 2 + h + h) ≤ 2 * e := by
    apply (sq_le_sq₀ (Real.sqrt_nonneg _) (by positivity : 0 ≤ 2 * e)).mp
    rw [Real.sq_sqrt (by positivity : 0 ≤ e ^ 2 + h + h)]
    change 2 * h ≤ e ^ 2 at hshort
    nlinarith [sq_nonneg e]
  have hp := (hpower (e ^ 2 + h) h hh0).trans
    (mul_le_mul_of_nonneg_left hsqrt hC)
  have het : e ≤ t * e := by
    simpa only [one_mul] using mul_le_mul_of_nonneg_right ht he.le
  have hpt := mul_le_mul_of_nonneg_left het (show 0 ≤ 2 * C by positivity)
  have hc := rational_correction_ge_neg_one (e ^ 2 + h) h hh0
    (by simpa only [add_sub_cancel_right] using (show 2 ≤ e ^ 2 by linarith))
    (by simpa only [add_sub_cancel_right] using (show h ≤ e ^ 2 by
      change 2 * h ≤ e ^ 2 at hshort
      linarith))
  have hzero := hz t h ht hh hshort
  have hnet := signedDefect_le_norm_allowance (e ^ 2 + h) h
  change ‖zeroContribution (e ^ 2 + h) h‖ ≤ K * (t * e) at hzero
  change signedTentDefect (e ^ 2 + h) h ≤ (K + 2 * C) * (t * e) + 1
  nlinarith

/-- Elementary growth control, with no unquantified limit interchange. -/
theorem exp_ge_square_quarter (t : ℝ) (ht : 0 ≤ t) : t ^ 2 / 4 ≤ Real.exp t := by
  have h := Real.add_one_le_exp (t / 2)
  have hpos := Real.exp_pos (t / 2)
  have he : Real.exp (t / 2) ^ 2 = Real.exp t := by
    rw [pow_two, ← Real.exp_add, show t / 2 + t / 2 = t by ring]
  have hs : (t / 2) ^ 2 ≤ Real.exp (t / 2) ^ 2 :=
    (sq_le_sq₀ (by linarith : 0 ≤ t / 2) hpos.le).2 (by linarith)
  rw [he] at hs
  nlinarith

/-- Only the signed allowance is consumed; no RH or separate error estimates. -/
theorem many_primes_in_log_coordinates_of_signed_bound (A : ℝ)
    (hA : 0 ≤ A) (hnet : LogWindowSignedBound A) :
    ∃ B : ℝ, 0 < B ∧ ∀ t : ℝ, max 1 (8 * B) ≤ t →
      Real.exp t < (primeCount ((Real.exp t) ^ 2)
        ((Real.exp t) ^ 2 + 2 * B * t * Real.exp t) : ℝ) := by
  let B := A + 4
  have hB : 4 ≤ B := by dsimp [B]; linarith
  refine ⟨B, by linarith, ?_⟩
  intro t ht
  have ht1 : 1 ≤ t := (le_max_left _ _).trans ht
  have htB : 8 * B ≤ t := (le_max_right _ _).trans ht
  let e := Real.exp t
  let a := e ^ 2
  let h := B * t * e
  let x := a + h
  let b := a + 2 * h
  have he : 0 < e := Real.exp_pos t
  have he2 : 2 ≤ e := by have := Real.add_one_le_exp t; dsimp [e]; linarith
  have ha : 4 ≤ a := by
    have hp := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 2) he2 2
    norm_num at hp
    exact hp
  have hh1 : 1 ≤ h := by
    have hBt : 4 ≤ B * t := hB.trans
      (le_mul_of_one_le_right (by linarith : 0 ≤ B) ht1)
    have hm := mul_le_mul hBt he2 (by norm_num : (0 : ℝ) ≤ 2)
      (by linarith : 0 ≤ B * t)
    dsimp [h]
    nlinarith
  have hh : 0 < h := by linarith
  have hEt : 2 * B * t ≤ e := by
    have hq := exp_ge_square_quarter t (by linarith)
    have hm := mul_nonneg (by linarith : 0 ≤ t)
      (by linarith : 0 ≤ t - 8 * B)
    dsimp [e]
    nlinarith
  have hshort : 2 * h ≤ a := by
    have hm := mul_le_mul_of_nonneg_right hEt he.le
    dsimp [h, a]
    nlinarith
  have hb : b ≤ 2 * a := by dsimp [b]; linarith
  have hb0 : 0 < b := by dsimp [b]; linarith
  have hxs : x - h = a := by dsimp [x]; ring
  have hxb : x + h = b := by dsimp [x, b]; ring
  have hn : signedTentDefect x h ≤ A * (t * e) + 1 :=
    hnet t h ht1 hh1 hshort
  have hlog : Real.log b ≤ 3 * t := by
    have hba : b ≤ e ^ 3 := by
      have hm := mul_nonneg (sq_nonneg e) (by linarith : 0 ≤ e - 2)
      dsimp [a] at hb
      nlinarith
    have hl := Real.log_le_log hb0 hba
    rw [Real.log_pow] at hl
    dsimp [e] at hl
    rw [Real.log_exp] at hl
    norm_num at hl ⊢
    exact hl
  have hm := prime_count_signed_master_bound x h hh (by rw [hxs]; linarith)
  rw [hxs, hxb] at hm
  have hcount : e < (primeCount a b : ℝ) := by
    by_contra hnot
    have hle : (primeCount a b : ℝ) ≤ e := le_of_not_gt hnot
    have hprod := mul_le_mul hlog hle (Nat.cast_nonneg (primeCount a b))
      (by linarith : 0 ≤ 3 * t)
    have heq : h = (A + 4) * (t * e) := by
      dsimp [h, B]; ring
    have hte : 2 ≤ t * e := by
      have hm := mul_le_mul ht1 he2 (by norm_num : (0 : ℝ) ≤ 2)
        (by linarith : 0 ≤ t)
      simpa only [one_mul] using hm
    rw [heq] at hm
    nlinarith
  simpa only [b, h, a, e, mul_assoc] using hcount

/-- For some fixed B>0, every sufficiently large real interval
(x, x+B*sqrt(x)*log(x)] contains more than sqrt(x) actual primes. -/
theorem many_primes_of_signed_bound (A : ℝ) (hA : 0 ≤ A)
    (hnet : LogWindowSignedBound A) :
    ∃ B X : ℝ, 0 < B ∧ 0 < X ∧ ∀ x : ℝ, X ≤ x →
      Real.sqrt x < (primeCount x (x + B * Real.sqrt x * Real.log x) : ℝ) := by
  obtain ⟨B, hB, hb⟩ := many_primes_in_log_coordinates_of_signed_bound A hA hnet
  let t₀ := max 1 (8 * B)
  refine ⟨B, Real.exp (2 * t₀), hB, Real.exp_pos _, ?_⟩
  intro x hx
  have hx0 : 0 < x := (Real.exp_pos _).trans_le hx
  let t := Real.log x / 2
  have ht : t₀ ≤ t := by
    have hl := Real.log_le_log (Real.exp_pos (2 * t₀)) hx
    rw [Real.log_exp] at hl
    dsimp [t]
    linarith
  have he : (Real.exp t) ^ 2 = x := by
    rw [pow_two, ← Real.exp_add]
    dsimp [t]
    rw [show Real.log x / 2 + Real.log x / 2 = Real.log x by ring,
      Real.exp_log hx0]
  have hs : Real.sqrt x = Real.exp t := by
    rw [← he, Real.sqrt_sq_eq_abs, abs_of_pos (Real.exp_pos t)]
  have hr := hb t ht
  rw [he] at hr
  have hw : 2 * B * t * Real.exp t = B * Real.sqrt x * Real.log x := by
    rw [hs]
    dsimp [t]
    ring
  rw [hw, ← hs] at hr
  exact hr

/-- Optional norm-input route through the constructed signed allowance. -/
theorem many_primes_of_zero_bound {K : ℝ} (hK : 0 ≤ K)
    (hz : LogWindowZeroBound K) :
    ∃ B X : ℝ, 0 < B ∧ 0 < X ∧ ∀ x : ℝ, X ≤ x →
      Real.sqrt x < (primeCount x (x + B * Real.sqrt x * Real.log x) : ℝ) := by
  obtain ⟨A, hA, hn⟩ := signed_bound_of_zero_bound hK hz
  exact many_primes_of_signed_bound A hA hn

/-- The same theorem returns a literal prime, not only positive prime-power mass. -/
theorem prime_in_short_interval_of_many_primes
    (hcount : ∃ B X : ℝ, 0 < B ∧ 0 < X ∧ ∀ x : ℝ, X ≤ x →
      Real.sqrt x < (primeCount x (x + B * Real.sqrt x * Real.log x) : ℝ)) :
    ∃ B X : ℝ, 0 < B ∧ 0 < X ∧ ∀ x : ℝ, X ≤ x →
      ∃ p : ℕ, Nat.Prime p ∧ x < (p : ℝ) ∧
        (p : ℝ) ≤ x + B * Real.sqrt x * Real.log x := by
  obtain ⟨B, X, hB, hX, hb⟩ := hcount
  refine ⟨B, max X 1, hB, lt_of_lt_of_le hX (le_max_left _ _), ?_⟩
  intro x hx
  have hxX := (le_max_left X 1).trans hx
  have hx1 := (le_max_right X 1).trans hx
  have hc := hb x hxX
  have hn : 0 < primeCount x (x + B * Real.sqrt x * Real.log x) := by
    have hp : (0 : ℝ) < primeCount x (x + B * Real.sqrt x * Real.log x) :=
      (Real.sqrt_nonneg x).trans_lt hc
    exact_mod_cast hp
  have hl : 0 ≤ Real.log x := Real.log_nonneg hx1
  have hb0 : 0 ≤ x + B * Real.sqrt x * Real.log x :=
    add_nonneg (by linarith) (mul_nonneg (mul_nonneg hB.le (Real.sqrt_nonneg x)) hl)
  exact (primeCount_pos_iff hb0).mp hn

/-- Consecutive-prime gap consequence with the same fixed constant.
The least-successor condition is literal; natural subtraction is cast only
with p<q supplied. No finite numerical prime inventory is used. -/
theorem consecutive_prime_gap_of_prime_windows
    (hwindows : ∃ B X : ℝ, 0 < B ∧ 0 < X ∧ ∀ x : ℝ, X ≤ x →
      ∃ p : ℕ, Nat.Prime p ∧ x < (p : ℝ) ∧
        (p : ℝ) ≤ x + B * Real.sqrt x * Real.log x) :
    ∃ B X : ℝ, 0 < B ∧ 0 < X ∧ ∀ p q : ℕ,
      Nat.Prime p → Nat.Prime q → p < q →
      (∀ r : ℕ, Nat.Prime r → p < r → q ≤ r) → X ≤ (p : ℝ) →
      ((q - p : ℕ) : ℝ) ≤ B * Real.sqrt (p : ℝ) * Real.log (p : ℝ) := by
  obtain ⟨B, X, hB, hX, hb⟩ := hwindows
  refine ⟨B, X, hB, hX, ?_⟩
  intro p q _hp _hq hpq hnext hpX
  obtain ⟨r, hr, hpr, hrb⟩ := hb (p : ℝ) hpX
  have hprN : p < r := by exact_mod_cast hpr
  have hqr : (q : ℝ) ≤ (r : ℝ) := by exact_mod_cast hnext r hr hprN
  rw [Nat.cast_sub hpq.le]
  linarith

/-- The same downstream conclusion at every sufficiently late actual dyadic cutoff.
The elementary cutoff coverage is proved, not passed as a sequence hypothesis. -/
theorem many_primes_dyadic_of_many_primes
    (hcount : ∃ B X : ℝ, 0 < B ∧ 0 < X ∧ ∀ x : ℝ, X ≤ x →
      Real.sqrt x < (primeCount x (x + B * Real.sqrt x * Real.log x) : ℝ)) :
    ∃ B : ℝ, 0 < B ∧ ∃ J : ℕ, ∀ j : ℕ, J ≤ j →
      Real.sqrt ((2 ^ j : ℕ) : ℝ) <
        (primeCount ((2 ^ j : ℕ) : ℝ)
          (((2 ^ j : ℕ) : ℝ) + B * Real.sqrt ((2 ^ j : ℕ) : ℝ) *
            ((j : ℝ) * Real.log 2)) : ℝ) := by
  obtain ⟨B, X, hB, _hX, hb⟩ := hcount
  refine ⟨B, hB, ⌈X⌉₊, ?_⟩
  intro j hj
  have hpow (n : ℕ) : n ≤ 2 ^ n := by
    induction n with
    | zero => simp
    | succ n ih =>
        have hp : 0 < (2 : ℕ) ^ n := by positivity
        rw [pow_succ]
        omega
  have hXj : X ≤ ((2 ^ j : ℕ) : ℝ) := calc
    X ≤ (⌈X⌉₊ : ℝ) := Nat.le_ceil X
    _ ≤ (j : ℝ) := by exact_mod_cast hj
    _ ≤ ((2 ^ j : ℕ) : ℝ) := by exact_mod_cast hpow j
  have hr := hb ((2 ^ j : ℕ) : ℝ) hXj
  have hl : Real.log ((2 ^ j : ℕ) : ℝ) = (j : ℝ) * Real.log 2 := by
    rw [Nat.cast_pow, Nat.cast_ofNat, Real.log_pow]
  rwa [hl] at hr

end GRWTSK.NumberTheory.Chebyshev.TentPrimeConsequences
