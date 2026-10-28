/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Imported GRWTSK and Mathlib authorship and licenses are retained. -/
import GRWTSK.NumberTheory.Chebyshev.TentPrimeConsequences

/-!
# Sharp short-interval consumers independent of the RH adapter

The source is the same canonical zero series and real-window prime count as
in the completed coarse RH consequence. The sharp weighted-zero estimate is
DEFINED AS A PROPOSITION, NOT ASSERTED, axiomatized, or inferred from the
coarse Jensen coefficient. Its missing proof from RH consists of the
source-bound Riemann--von Mangoldt asymptotic and the sinc-squared weighted
summation argument. No extra proper-prime-power hypothesis remains.

The theorems below fully discharge the finite margin, constant selection,
real-endpoint conversion, and strict counts once that estimate is proved.
This preserves the previously stated constants 1 and 3 without relabeling
a weaker Cramer constant as their proof.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Chebyshev.SharpShortIntervalCount

open GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
open ShortIntervalPrimeCount TentPrimeConsequences

/-- Actual both-sign, analytic-multiplicity zero norm at the specified geometry.
This proposition has no proof declaration in this increment. In particular,
canonical RH is NOT silently identified with this stronger analytic interface. -/
def SharpZeroAllowance : Prop :=
  ∀ A : ℝ, 1 < A → ∀ η : ℝ, 0 < η → ∃ T : ℝ, ∀ t : ℝ, T ≤ t →
    ‖zeroContribution ((Real.exp t) ^ 2 + A * t * Real.exp t)
      (A * t * Real.exp t)‖ ≤ (1 + η) * (t * Real.exp t)

/-- Epsilon-form of the lower-liminf statement. Only nonnegative c matters:
negative lower thresholds follow from the nonnegative literal prime count. -/
def SharpLowerCount : Prop :=
  ∀ A c : ℝ, 1 < A → 0 ≤ c → 2 * c < A - 1 →
    ∃ X : ℝ, 0 < X ∧ ∀ x : ℝ, X ≤ x →
      c * Real.sqrt x <
        (primeCount x (x + A * Real.sqrt x * Real.log x) : ℝ)

/-- Fully priced finite sharp margin: three eta allowances pay the zero excess,
all proper powers, and the signed rational correction. -/
theorem count_gt_of_sharp_log_margin (A c η C t : ℝ)
    (hA : 1 < A) (hc : 0 ≤ c) (hη : 0 < η) (hC : 0 ≤ C)
    (hpower : ∀ x h : ℝ, 0 < h → properPowerTent x h ≤ C * Real.sqrt (x + h))
    (ht : 1 ≤ t) (htA : 8 * A ≤ t)
    (htC : 2 * C ≤ η * t) (htη : 1 ≤ η * t)
    (hzero : ‖zeroContribution ((Real.exp t) ^ 2 + A * t * Real.exp t)
      (A * t * Real.exp t)‖ ≤ (1 + η) * (t * Real.exp t))
    (hmargin : c * (2 + η) < A - 1 - 3 * η) :
    c * Real.exp t < (primeCount ((Real.exp t) ^ 2)
      ((Real.exp t) ^ 2 + 2 * A * t * Real.exp t) : ℝ) := by
  let e := Real.exp t
  let a := e ^ 2
  let h := A * t * e
  let x := a + h
  let b := a + 2 * h
  have he : 0 < e := Real.exp_pos t
  have he2 : 2 ≤ e := by have := Real.add_one_le_exp t; dsimp [e]; linarith
  have ha : 4 ≤ a := by
    have hp := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 2) he2 2
    norm_num at hp
    exact hp
  have hh : 0 < h := by dsimp [h]; positivity
  have hEt : 2 * A * t ≤ e := by
    have hq := exp_ge_square_quarter t (by linarith)
    have hm := mul_nonneg (by linarith : 0 ≤ t) (by linarith : 0 ≤ t - 8 * A)
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
  have hsqrt : Real.sqrt b ≤ 2 * e := by
    apply (sq_le_sq₀ (Real.sqrt_nonneg b) (by positivity : 0 ≤ 2 * e)).mp
    rw [Real.sq_sqrt hb0.le]
    dsimp [a] at hb
    nlinarith [sq_nonneg e]
  have hp : properPowerTent x h ≤ η * (t * e) := by
    have hp := hpower x h hh
    rw [hxb] at hp
    have hs := mul_le_mul_of_nonneg_left hsqrt hC
    have he' := mul_le_mul_of_nonneg_right htC he.le
    nlinarith
  have hunit : 1 ≤ η * (t * e) := by
    have hm := mul_le_mul_of_nonneg_right htη he.le
    nlinarith
  have hcorr : -(η * (t * e)) ≤ rationalTentCorrection x h := by
    have hq := rational_correction_ge_neg_one x h hh
      (by rw [hxs]; linarith) (by rw [hxs]; linarith)
    linarith
  have hlog : Real.log b ≤ (2 + η) * t := by
    have htwo : 2 ≤ Real.exp (η * t) := by
      have := Real.add_one_le_exp (η * t)
      linarith
    have hbound : b ≤ a * Real.exp (η * t) :=
      hb.trans (by
        have hm := mul_le_mul_of_nonneg_left htwo (by linarith : 0 ≤ a)
        nlinarith)
    have heq : a * Real.exp (η * t) = Real.exp ((2 + η) * t) := by
      dsimp [a, e]
      rw [pow_two, ← Real.exp_add, ← Real.exp_add]
      congr 1
      ring
    rw [heq] at hbound
    have hl := Real.log_le_log hb0 hbound
    rwa [Real.log_exp] at hl
  have hm := prime_count_master_bound x h hh (by rw [hxs]; linarith)
  rw [hxs, hxb] at hm
  have hz : ‖zeroContribution x h‖ ≤ (1 + η) * (t * e) := hzero
  have hcount : c * e < (primeCount a b : ℝ) := by
    by_contra hn
    have hle : (primeCount a b : ℝ) ≤ c * e := le_of_not_gt hn
    have hprod := mul_le_mul hlog hle (Nat.cast_nonneg (primeCount a b))
      (by positivity : 0 ≤ (2 + η) * t)
    have hstrict := mul_lt_mul_of_pos_right hmargin (mul_pos (by linarith : 0 < t) he)
    have heq : h = A * (t * e) := by dsimp [h]; ring
    rw [heq] at hm
    nlinarith
  simpa only [b, h, a, e, mul_assoc] using hcount

/-- No asymptotic correction premise: the existing global O(sqrt) theorem
supplies all proper powers. Constants are selected before the outer variable. -/
theorem sharpLowerCount_of_zero_allowance (hz : SharpZeroAllowance) : SharpLowerCount := by
  obtain ⟨C, hC, hp⟩ := exists_uniform_proper_power_constant
  intro A c hA hc hac
  let η := (A - 1 - 2 * c) / (2 * (3 + c))
  have hη : 0 < η := div_pos (by linarith) (by positivity)
  have hηid : (3 + c) * η = (A - 1 - 2 * c) / 2 := by
    dsimp [η]
    field_simp [show 3 + c ≠ 0 by linarith]
    <;> ring
  have hmargin : c * (2 + η) < A - 1 - 3 * η := by nlinarith
  obtain ⟨T, hT⟩ := hz A hA η hη
  let t₀ := max (max T 1) (max (8 * A) (max (2 * C / η) (1 / η)))
  refine ⟨Real.exp (2 * t₀), Real.exp_pos _, ?_⟩
  intro y hy
  have hy0 : 0 < y := (Real.exp_pos _).trans_le hy
  let t := Real.log y / 2
  have ht₀ : t₀ ≤ t := by
    have hl := Real.log_le_log (Real.exp_pos (2 * t₀)) hy
    rw [Real.log_exp] at hl
    dsimp [t]
    linarith
  have hT₀ : T ≤ t₀ := (le_max_left T 1).trans (le_max_left _ _)
  have h1₀ : 1 ≤ t₀ := (le_max_right T 1).trans (le_max_left _ _)
  have hA₀ : 8 * A ≤ t₀ := (le_max_left _ _).trans (le_max_right _ _)
  have hC₀ : 2 * C / η ≤ t₀ :=
    (le_max_left _ _).trans ((le_max_right _ _).trans (le_max_right _ _))
  have hη₀ : 1 / η ≤ t₀ :=
    (le_max_right _ _).trans ((le_max_right _ _).trans (le_max_right _ _))
  have htC : 2 * C ≤ η * t := by
    have hl := (div_le_iff₀ hη).mp (hC₀.trans ht₀)
    nlinarith
  have htη : 1 ≤ η * t := by
    have hl := (div_le_iff₀ hη).mp (hη₀.trans ht₀)
    nlinarith
  have hr := count_gt_of_sharp_log_margin A c η C t hA hc hη hC hp
    (h1₀.trans ht₀) (hA₀.trans ht₀) htC htη (hT t (hT₀.trans ht₀)) hmargin
  have he : (Real.exp t) ^ 2 = y := by
    rw [pow_two, ← Real.exp_add]
    dsimp [t]
    rw [show Real.log y / 2 + Real.log y / 2 = Real.log y by ring, Real.exp_log hy0]
  have hs : Real.sqrt y = Real.exp t := by
    rw [← he, Real.sqrt_sq_eq_abs, abs_of_pos (Real.exp_pos t)]
  rw [he] at hr
  have hw : 2 * A * t * Real.exp t = A * Real.sqrt y * Real.log y := by
    rw [hs]
    dsimp [t]
    ring
  rwa [hw, ← hs] at hr

/-- The original strict many-primes conclusion, once the sharp analytic estimate is supplied. -/
theorem many_primes_three_epsilon (hz : SharpZeroAllowance) (ε : ℝ) (hε : 0 < ε) :
    ∃ X : ℝ, 0 < X ∧ ∀ x : ℝ, X ≤ x →
      Real.sqrt x <
        (primeCount x (x + (3 + ε) * Real.sqrt x * Real.log x) : ℝ) := by
  simpa only [one_mul] using
    (sharpLowerCount_of_zero_allowance hz (3 + ε) 1 (by linarith)
      (by norm_num) (by linarith))

/-- The coefficient 1+epsilon consequence is a literal prime witness.
No successive-prime indexing or a zero-count inventory is substituted. -/
theorem prime_one_epsilon (hz : SharpZeroAllowance) (ε : ℝ) (hε : 0 < ε) :
    ∃ X : ℝ, 0 < X ∧ ∀ x : ℝ, X ≤ x →
      ∃ p : ℕ, Nat.Prime p ∧ x < (p : ℝ) ∧
        (p : ℝ) ≤ x + (1 + ε) * Real.sqrt x * Real.log x := by
  obtain ⟨X, hX, hb⟩ := sharpLowerCount_of_zero_allowance hz
    (1 + ε) 0 (by linarith) (by norm_num) (by linarith)
  refine ⟨max X 1, lt_of_lt_of_le hX (le_max_left _ _), ?_⟩
  intro x hx
  have hxX := (le_max_left X 1).trans hx
  have hx1 := (le_max_right X 1).trans hx
  have hn : 0 < primeCount x (x + (1 + ε) * Real.sqrt x * Real.log x) := by
    have hs := hb x hxX
    simp only [zero_mul] at hs
    exact_mod_cast hs
  have hl : 0 ≤ Real.log x := Real.log_nonneg hx1
  have hb0 : 0 ≤ x + (1 + ε) * Real.sqrt x * Real.log x := by positivity
  exact (primeCount_pos_iff hb0).mp hn

/-- A mathematical statement of the exact remaining analytic proof task, not an axiom. -/
def SharpRHAnalyticReturn : Prop := _root_.RiemannHypothesis → SharpZeroAllowance

end GRWTSK.NumberTheory.Chebyshev.SharpShortIntervalCount
