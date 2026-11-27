import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-!
# The signed prime prefix for the harmonic prime discrepancy

The prime atoms carry mass `log p / p²`. Their cumulative mass up to a real
cutoff is strictly below the integral of `y⁻²` from one to that cutoff.
A telescoping bound on odd integers supplies the estimate for every cutoff.
-/

namespace GRWTSK.XiPrimeHarmonicSharpTail

noncomputable section

/-- Mass of a single ordinary-prime atom; composite indices have zero mass. -/
def atom (p : ℕ) : ℝ := if p.Prime then Real.log p / (p : ℝ)^2 else 0

/-- Sum over indices strictly smaller than the natural cutoff. -/
def primePrefix (n : ℕ) : ℝ := ∑ p ∈ Finset.range n, atom p

/-- Signed mass through the inclusive real cutoff. -/
def discrepancy (x : ℝ) : ℝ := primePrefix (⌊x⌋₊ + 1) - (1 - 1 / x)

private def tail (x : ℝ) : ℝ := (1 + Real.log x) / x

private def bound : ℝ := Real.log 2 / 4 + Real.log 3 / 9 + (1 + Real.log 3) / 6

/-- On odd integers the mass is bounded by a difference that telescopes. -/
theorem log_mass_le_tail_difference {x : ℝ} (hx : 3 ≤ x) :
    Real.log (x + 2) / (x + 2)^2 ≤
      (((1 + Real.log x) / x) - ((1 + Real.log (x+2)) / (x+2))) / 2 := by
  have hx0 : 0 < x := by linarith
  have hb : 0 < x+2 := by linarith
  have hl : 1 ≤ Real.log x := (Real.le_log_iff_exp_le hx0).mpr (Real.exp_one_lt_three.le.trans hx)
  have hdiv := Real.log_le_sub_one_of_pos (div_pos hb hx0)
  rw [Real.log_div hb.ne' hx0.ne'] at hdiv
  have hd : x * (Real.log (x+2) - Real.log x) ≤ 2 := by
    have := (le_div_iff₀ hx0).mp (show Real.log (x+2)-Real.log x ≤ 2/x by
      calc
        _ ≤ (x+2)/x - 1 := hdiv
        _ = 2/x := by field_simp; ring)
    linarith
  calc
    Real.log (x+2) / (x+2)^2 ≤ Real.log x / (x * (x+2)) := by
      apply (div_le_div_iff₀ (sq_pos_of_pos hb) (mul_pos hx0 hb)).mpr
      have h : Real.log (x+2) * x ≤ Real.log x * (x+2) := by nlinarith
      nlinarith only [mul_le_mul_of_nonneg_right h hb.le]
    _ ≤ _ := by
      field_simp
      nlinarith

theorem atom_nonneg (p : ℕ) : 0 ≤ atom p := by
  unfold atom
  split_ifs with hp
  · exact div_nonneg (Real.log_nonneg (by exact_mod_cast hp.one_lt.le)) (sq_nonneg _)
  · exact le_rfl

theorem prefix_mono : Monotone primePrefix := by
  apply monotone_nat_of_le_succ
  intro n
  simp only [primePrefix, Finset.sum_range_succ]
  exact le_add_of_nonneg_right (atom_nonneg n)

private theorem odd_cutoff (n : ℕ) :
    primePrefix (2*n+4) + tail (2*(n : ℝ)+3) / 2 ≤ bound := by
  induction n with
  | zero =>
    norm_num [primePrefix, atom, bound, tail, Finset.sum_range_succ, Nat.prime_three, Nat.prime_two]
    linarith
  | succ n ih =>
    have he : ¬ (2*n+4).Prime := by
      rw [show 2*n+4 = 2*(n+2) by omega]
      exact Nat.not_prime_mul (by decide) (by omega)
    have ha : atom (2*n+5) ≤ Real.log (2*(n:ℝ)+5)/(2*(n:ℝ)+5)^2 := by
      unfold atom
      push_cast
      split_ifs
      · exact le_rfl
      · exact div_nonneg (Real.log_nonneg (by linarith [Nat.cast_nonneg (α := ℝ) n])) (sq_nonneg _)
    have hd := log_mass_le_tail_difference (x := 2*(n:ℝ)+3) (by linarith [Nat.cast_nonneg (α := ℝ) n])
    have hs : 2*(n:ℝ)+3+2 = 2*(n:ℝ)+5 := by ring
    rw [hs] at hd
    have hsum : primePrefix (2*(n+1)+4) = primePrefix (2*n+4) + atom (2*n+5) := by
      rw [show 2*(n+1)+4 = ((2*n+4)+1)+1 by omega]
      simp [primePrefix, Finset.sum_range_succ, atom, he, Nat.add_assoc]
    rw [hsum, Nat.cast_succ]
    rw [show 2*((n:ℝ)+1)+3=2*(n:ℝ)+5 by ring]
    unfold tail at ih ⊢
    linarith

/-- Uniform finite prime mass bound, with a constant strictly below two thirds. -/
theorem prefix_lt_thirteen_twentieths (n : ℕ) : primePrefix n < 13/20 := by
  have h := (prefix_mono (show n ≤ 2*n+4 by omega))
  have ht : 0 ≤ tail (2*(n:ℝ)+3) := by
    unfold tail
    have hl : 0 ≤ Real.log (2*(n:ℝ)+3) := Real.log_nonneg (by linarith [Nat.cast_nonneg (α := ℝ) n])
    positivity
  have ho := odd_cutoff n
  unfold bound at ho
  linarith [Real.log_two_lt_d9, Real.log_three_lt_d9]

/-- The same fraction strictly below one controls every real cutoff. -/
theorem prefix_le_fraction {x : ℝ} (hx : 1 ≤ x) :
    primePrefix (⌊x⌋₊+1) ≤ (39/40) * (1 - 1 / x) := by
  have hx0 : 0 < x := by linarith
  by_cases h3 : 3 ≤ x
  · have hl := one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 3) h3
    linarith [prefix_lt_thirteen_twentieths (⌊x⌋₊+1)]
  by_cases h2 : 2 ≤ x
  · have hf : ⌊x⌋₊ = 2 := (Nat.floor_eq_iff hx0.le).mpr ⟨h2, by norm_num; linarith⟩
    rw [hf]
    have hp : primePrefix (2+1) = Real.log 2 / 4 := by
      norm_num [primePrefix, atom, Finset.sum_range_succ, Nat.prime_two]
    rw [hp]
    have hl := one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 2) h2
    linarith [Real.log_two_lt_d9]
  · have hf : ⌊x⌋₊ = 1 := (Nat.floor_eq_iff hx0.le).mpr ⟨by simpa using hx, by norm_num; linarith⟩
    rw [hf]
    have hp : primePrefix (1+1) = 0 := by norm_num [primePrefix, atom, Finset.sum_range_succ]
    rw [hp]
    have hl := one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 1) hx
    linarith

/-- The signed cumulative discrepancy is strictly negative for every real `x > 1`. -/
theorem discrepancy_neg {x : ℝ} (hx : 1 < x) : discrepancy x < 0 := by
  have h := prefix_le_fraction hx.le
  have hl := one_div_lt_one_div_of_lt (by norm_num : (0 : ℝ) < 1) hx
  unfold discrepancy
  linarith

private def gap (n : ℕ) : ℝ :=
  primePrefix (n+2) - (39/40) * (1 - 1 / ((n : ℝ)+1))

private theorem gap_nonpos (n : ℕ) : gap n ≤ 0 := by
  have hn : (1 : ℝ) ≤ ((n+1 : ℕ) : ℝ) := by exact_mod_cast Nat.succ_pos n
  have h := prefix_le_fraction hn
  rw [Nat.floor_natCast] at h
  unfold gap
  push_cast at h
  linarith

private theorem gap_succ (n : ℕ) :
    gap (n+1) = gap n + atom (n+2) -
      (39/40) * (1 / ((n : ℝ)+1) - 1 / ((n : ℝ)+2)) := by
  unfold gap
  rw [show n+1+2 = n+2+1 by omega]
  simp only [primePrefix, Finset.sum_range_succ, Nat.cast_succ]
  rw [show (n:ℝ)+1+1=(n:ℝ)+2 by ring]
  ring

/-- Abel comparison for all finite decreasing, nonnegative weights at the prime
sites `2,...,n+1`. The smooth coefficients are the integrals of `x⁻²` on the
preceding unit intervals. -/
theorem weighted_prime_le_telescoping (g : ℕ → ℝ)
    (hg : ∀ j, 0 ≤ g (j+2)) (hdec : ∀ j, g (j+3) ≤ g (j+2)) (n : ℕ) :
    (∑ j ∈ Finset.range n, g (j+2) * atom (j+2)) ≤
      (39/40) * ∑ j ∈ Finset.range n,
        g (j+2) * (1/((j:ℝ)+1) - 1/((j:ℝ)+2)) := by
  have hbound : ∀ m : ℕ,
      (∑ j ∈ Finset.range m, g (j+2) * atom (j+2)) -
        (39/40) * (∑ j ∈ Finset.range m,
          g (j+2) * (1/((j:ℝ)+1) - 1/((j:ℝ)+2))) ≤ g (m+2) * gap m := by
    intro m
    induction m with
    | zero => norm_num [gap, primePrefix, atom, Finset.sum_range_succ]
    | succ m ih =>
      simp only [Finset.sum_range_succ]
      have hstep := mul_le_mul_of_nonpos_right (hdec m) (gap_nonpos (m+1))
      have hid := congrArg (fun y : ℝ => g (m+2)*y) (gap_succ m)
      change _ ≤ g (m+3) * gap (m+1)
      linarith only [ih, hstep, hid]
  have hn := mul_nonpos_of_nonneg_of_nonpos (hg n) (gap_nonpos n)
  linarith only [hn,hbound n]

end

end GRWTSK.XiPrimeHarmonicSharpTail
