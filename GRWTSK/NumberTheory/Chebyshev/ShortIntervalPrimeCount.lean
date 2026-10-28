/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and imported GRWTSK results retain their upstream licenses. -/
import GRWTSK.NumberTheory.Chebyshev.RieszSourceSecondDifference
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

/-!
# Actual real-window prime counts from the existing tent source

The real interval is (a,b], not an interval with rounded endpoints. Every
proper prime power is retained in a separately defined arithmetic sum.
The existing complete canonical tent formula supplies the source identity.
Mathlib's psi-theta = O(sqrt x) theorem supplies the uniform power budget.
There is no spectral-growth hypothesis in the source identities below.

The finite margin consumers are conditional on their displayed inequalities.
They are not a proof of the asymptotically sharp RH zero-kernel estimate.
SOURCE_PROOF_CANDIDATE / compilation and fresh kernel audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Chebyshev.ShortIntervalPrimeCount

open GRWTSK.Analysis.RealAnalysis.TentWeight
open GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GeneralTentExplicitFormula RieszSourceSecondDifference

/-- Literal primes in the real half-open interval (a,b]. -/
def primeWindow (a b : ℝ) : Finset ℕ :=
  (Finset.Icc 2 ⌊b⌋₊).filter (fun p => Nat.Prime p ∧ a < (p : ℝ))

def primeCount (a b : ℝ) : ℕ := (primeWindow a b).card

theorem mem_primeWindow {a b : ℝ} (hb : 0 ≤ b) (p : ℕ) :
    p ∈ primeWindow a b ↔ Nat.Prime p ∧ a < (p : ℝ) ∧ (p : ℝ) ≤ b := by
  simp only [primeWindow, Finset.mem_filter, Finset.mem_Icc]
  constructor
  · rintro ⟨⟨_, hpb⟩, hp, hap⟩
    exact ⟨hp, hap, (Nat.le_floor_iff hb).mp hpb⟩
  · rintro ⟨hp, hap, hpb⟩
    exact ⟨⟨hp.two_le, (Nat.le_floor_iff hb).mpr hpb⟩, hp, hap⟩

theorem primeCount_pos_iff {a b : ℝ} (hb : 0 ≤ b) :
    0 < primeCount a b ↔ ∃ p : ℕ, Nat.Prime p ∧ a < (p : ℝ) ∧ (p : ℝ) ≤ b := by
  rw [primeCount, Finset.card_pos]
  simp only [Finset.Nonempty, mem_primeWindow hb]

/-- The complete finite Mangoldt observation, with the original tent. -/
def mangoldtTent (x h : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 ⌊x + h⌋₊,
    ArithmeticFunction.vonMangoldt n * tent x h (n : ℝ)

def primeTent (x h : ℝ) : ℝ :=
  ∑ p ∈ primeWindow (x - h) (x + h), Real.log (p : ℝ) * tent x h (p : ℝ)

/-- Nonprime summands with zero von Mangoldt coefficient remain harmless zeros. -/
def properPowerTent (x h : ℝ) : ℝ :=
  ∑ n ∈ (Finset.Icc 2 ⌊x + h⌋₊).filter (fun n => ¬ Nat.Prime n),
    ArithmeticFunction.vonMangoldt n * tent x h (n : ℝ)

/-- This is the actual canonical zero series, not a fitted error field. -/
def zeroContribution (x h : ℝ) : ℂ :=
  ∑' z : ZeroPoint, (multiplicity z : ℂ) * tentKernel x h z.1

theorem mangoldtTent_nonnegative (x h : ℝ) : 0 ≤ mangoldtTent x h :=
  Finset.sum_nonneg (fun n _ =>
    mul_nonneg ArithmeticFunction.vonMangoldt_nonneg (tent_nonneg x h n))

theorem properPowerTent_nonnegative (x h : ℝ) : 0 ≤ properPowerTent x h :=
  Finset.sum_nonneg (fun n _ =>
    mul_nonneg ArithmeticFunction.vonMangoldt_nonneg (tent_nonneg x h n))

/-- Exact floor-cutoff identification: a zero endpoint weight is not a missing birth. -/
theorem mangoldtTent_complex (x h : ℝ) (hh : 0 < h) (hb : 0 ≤ x + h) :
    (mangoldtTent x h : ℂ) = tentMangoldt x h := by
  classical
  unfold tentMangoldt
  rw [tsum_eq_sum (s := Finset.Icc 2 ⌊x + h⌋₊)]
  · simp [mangoldtTent]
  · intro n hn
    by_cases hn2 : n < 2
    · interval_cases n <;> simp
    · have hbN : x + h < (n : ℝ) := by
        by_contra h
        have hnf : n ≤ ⌊x + h⌋₊ := (Nat.le_floor_iff hb).mpr (le_of_not_gt h)
        exact hn (Finset.mem_Icc.mpr ⟨by omega, hnf⟩)
      rw [tent_eq_zero_of_outside x h n hh (by intro hs; linarith [hs.2])]
      simp

/-- Exact partition before either the prime or nonprime contribution is estimated. -/
theorem mangoldtTent_split (x h : ℝ) (hh : 0 < h) :
    mangoldtTent x h = primeTent x h + properPowerTent x h := by
  classical
  unfold mangoldtTent primeTent properPowerTent primeWindow
  simp only [Finset.sum_filter, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  by_cases hp : Nat.Prime n
  · by_cases hl : x - h < (n : ℝ)
    · simp [hp, hl, ArithmeticFunction.vonMangoldt_apply_prime hp]
    · have hw : tent x h (n : ℝ) = 0 :=
        tent_eq_zero_of_outside x h n hh (fun hs => hl hs.1)
      simp [hp, hl, hw]
  · simp [hp]

/-- Every prime has weight at most the logarithm of the actual upper endpoint. -/
theorem primeTent_le_count (x h : ℝ) (hh : 0 < h) (hb : 1 < x + h) :
    primeTent x h ≤ Real.log (x + h) * (primeCount (x - h) (x + h) : ℝ) := by
  calc
    primeTent x h ≤ ∑ _p ∈ primeWindow (x - h) (x + h), Real.log (x + h) := by
      apply Finset.sum_le_sum
      intro p hp
      obtain ⟨hprime, _, hpb⟩ := (mem_primeWindow (by linarith) p).mp hp
      have hp0 : (0 : ℝ) < p := by exact_mod_cast hprime.pos
      have hp1 : (1 : ℝ) ≤ p := by exact_mod_cast hprime.one_le
      calc
        Real.log (p : ℝ) * tent x h p ≤ Real.log (p : ℝ) := by
          simpa using mul_le_mul_of_nonneg_left (tent_le_one x h p hh)
            (Real.log_nonneg hp1)
        _ ≤ Real.log (x + h) := Real.log_le_log hp0 hpb
    _ = _ := by simp [primeCount, mul_comm]

/-- A weighted local correction is bounded by the full cumulative actual correction. -/
theorem properPowerTent_le_psi_sub_theta (x h : ℝ) (hh : 0 < h) :
    properPowerTent x h ≤ Chebyshev.psi (x + h) - Chebyshev.theta (x + h) := by
  classical
  rw [Chebyshev.psi_sub_theta_eq_sum_not_prime]
  calc
    properPowerTent x h ≤
        ∑ n ∈ (Finset.Icc 2 ⌊x + h⌋₊).filter (fun n => ¬ Nat.Prime n),
          ArithmeticFunction.vonMangoldt n := by
      apply Finset.sum_le_sum
      intro n _
      simpa using mul_le_mul_of_nonneg_left (tent_le_one x h n hh)
        (ArithmeticFunction.vonMangoldt_nonneg (n := n))
    _ ≤ _ := Finset.sum_le_sum_of_subset_of_nonneg (by
      intro n hn
      obtain ⟨hn, hp⟩ := Finset.mem_filter.mp hn
      obtain ⟨hn2, hnN⟩ := Finset.mem_Icc.mp hn
      exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨by omega, hnN⟩, hp⟩)
      (fun _ _ _ => ArithmeticFunction.vonMangoldt_nonneg)

/-- The constant is obtained from pinned Mathlib, not supplied by a caller. -/
theorem exists_uniform_proper_power_constant :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ x h : ℝ, 0 < h →
      properPowerTent x h ≤ C * Real.sqrt (x + h) := by
  obtain ⟨C, hC⟩ := Chebyshev.psi_sub_theta_le_mul_sqrt
  refine ⟨max C 0, le_max_right _ _, ?_⟩
  intro x h hh
  exact (properPowerTent_le_psi_sub_theta x h hh).trans
    ((hC (x + h)).trans
      (mul_le_mul_of_nonneg_right (le_max_left _ _) (Real.sqrt_nonneg _)))

/-- Reuse the complete source formula; no new Perron, contour or affine premise. -/
theorem mangoldtTent_explicit (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    mangoldtTent x h = h - (zeroContribution x h).re + rationalTentCorrection x h := by
  have he := general_tent_source_eq_tsum x h hh ha
  rw [← mangoldtTent_complex x h hh (by linarith)] at he
  have hr := congrArg Complex.re he
  simpa [zeroContribution] using hr

/-- A finite, source-exact lower bound for the count of actual primes. -/
theorem prime_count_master_bound (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    h - ‖zeroContribution x h‖ + rationalTentCorrection x h - properPowerTent x h ≤
      Real.log (x + h) * (primeCount (x - h) (x + h) : ℝ) := by
  have he := mangoldtTent_explicit x h hh ha
  have hs := mangoldtTent_split x h hh
  have hp := primeTent_le_count x h hh (by linarith)
  have hz : (zeroContribution x h).re ≤ ‖zeroContribution x h‖ :=
    (le_abs_self _).trans (Complex.abs_re_le_norm _)
  linarith

/-- Numeric head, tail and power allowances remain attached to the actual source. -/
theorem prime_count_of_allowances (x h Z P c : ℝ)
    (hh : 0 < h) (ha : 1 < x - h)
    (hzero : ‖zeroContribution x h‖ ≤ Z)
    (hpower : properPowerTent x h ≤ P)
    (hmargin : c * Real.log (x + h) <
      h - Z + rationalTentCorrection x h - P) :
    c < (primeCount (x - h) (x + h) : ℝ) := by
  have hm := prime_count_master_bound x h hh ha
  have hl : 0 < Real.log (x + h) := Real.log_pos (by linarith)
  apply (mul_lt_mul_right hl).mp
  nlinarith

/-- Constant rational-correction allowance at a genuinely positive left endpoint. -/
theorem rational_correction_ge_neg_one (x h : ℝ)
    (hh : 0 < h) (ha : 2 ≤ x - h) (hsmall : h ≤ x - h) :
    -1 ≤ rationalTentCorrection x h := by
  have ha0 : 0 < x - h := by linarith
  have hsq : 1 ≤ (x - h) ^ 2 - 1 := by
    have hp := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 2) ha 2
    nlinarith
  have hd : 0 < (x - h) * ((x - h) ^ 2 - 1) := mul_pos ha0 (by linarith)
  have hden : h ≤ (x - h) * ((x - h) ^ 2 - 1) := hsmall.trans (by
    simpa only [mul_one] using mul_le_mul_of_nonneg_left hsq ha0.le)
  have hfrac : h / ((x - h) * ((x - h) ^ 2 - 1)) ≤ 1 :=
    (div_le_one hd).mpr hden
  have hc := (rationalTentCorrection_bounds x h hh (by linarith)).1
  linarith

end GRWTSK.NumberTheory.Chebyshev.ShortIntervalPrimeCount
