import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPrimeHarmonicSharpTail
import Mathlib.Topology.Algebra.InfiniteSum.Real

/-!
# A positive sharp tail for the harmonic prime measure

The cumulative discrepancy from one is always negative. In contrast,
the discrepancy on the tail beginning at 109/10 is strictly positive.
A finite calculation through 1500 already supplies the required lower bound.
-/

namespace GRWTSK.XiPrimeHarmonicTailWitness

open GRWTSK.XiPrimeHarmonicSharpTail

/-- Lower bound for log(p)/p² in units of 10⁻⁷, using the anchor 2ᵏ3ˡ. -/
private def anchorTicks (p k l : ℕ) : ℕ :=
  10000000 * ((693*k+1098*l+1000)*p - 1000*(2^k*3^l)) / (1000*p^3)

private def primeTicks (p : ℕ) : ℕ :=
  if 10 < p ∧ p.minFac = p then
    max (anchorTicks p p.log2 0) (anchorTicks p (p.log2-1) 1)
  else 0

private def tickSum : ℕ → ℕ
  | 0 => 0
  | n+1 => tickSum n + primeTicks n

set_option maxRecDepth 12000 in
set_option maxHeartbeats 20000000 in
private theorem finite_certificate : tickSum 1501 = 927464 := by decide +kernel

private theorem anchorTicks_le {p : ℕ} (hp : 0 < p) (k l : ℕ) :
    (anchorTicks p k l : ℝ) / 10000000 ≤ Real.log p / (p:ℝ)^2 := by
  have hp' : (0:ℝ) < p := by exact_mod_cast hp
  by_cases h : 1000*(2^k*3^l) ≤ (693*k+1098*l+1000)*p
  · have hlog := Real.log_le_sub_one_of_pos
        (x := (2^k*3^l : ℝ) / p) (by positivity)
    rw [Real.log_div (by positivity) hp'.ne', Real.log_mul (by positivity) (by positivity),
      Real.log_pow, Real.log_pow] at hlog
    have h2 : 693/1000 ≤ Real.log 2 := by linarith [Real.log_two_gt_d9]
    have h3 : 1098/1000 ≤ Real.log 3 := by linarith [Real.log_three_gt_d9]
    have hb : (693 * (k:ℝ) + 1098 * (l:ℝ) + 1000) / 1000 - 2^k*3^l / p ≤
        Real.log p := by
      linarith [mul_le_mul_of_nonneg_left h2 (Nat.cast_nonneg (α := ℝ) k),
        mul_le_mul_of_nonneg_left h3 (Nat.cast_nonneg (α := ℝ) l)]
    have ht : (anchorTicks p k l : ℝ) ≤ _ := Nat.cast_div_le
        (m := 10000000 * ((693*k+1098*l+1000)*p - 1000*(2^k*3^l)))
        (n := 1000*p^3)
    rw [Nat.cast_mul, Nat.cast_sub h] at ht
    push_cast at ht
    apply (div_le_div_iff₀ (by norm_num) (sq_pos_of_pos hp')).mpr
    field_simp at hb ht
    apply le_of_mul_le_mul_left (a := 1000 * (p:ℝ)) _ (by positivity)
    nlinarith only [ht, hb]
  · unfold anchorTicks
    rw [Nat.sub_eq_zero_of_le (Nat.le_of_not_ge h)]
    simp only [Nat.mul_zero, Nat.zero_div, Nat.cast_zero, zero_div]
    exact div_nonneg (Real.log_nonneg (by exact_mod_cast hp)) (sq_nonneg _)

private noncomputable def mass (p : ℕ) : ℝ := if 10 < p then atom p else 0

private theorem mass_nonneg (p : ℕ) : 0 ≤ mass p := by
  unfold mass
  split_ifs <;> simp [atom_nonneg]

private theorem ticks_le (p : ℕ) : (primeTicks p : ℝ)/10000000 ≤ mass p := by
  unfold primeTicks
  split_ifs with h
  · have hp : p.Prime := Nat.prime_def_minFac.mpr ⟨by omega, h.2⟩
    simp only [mass, h.1, ↓reduceIte, atom, hp]
    rw [Nat.cast_max, ← max_div_div_right (by norm_num : (0:ℝ) ≤ 10000000), max_le_iff]
    exact ⟨anchorTicks_le hp.pos _ _, anchorTicks_le hp.pos _ _⟩
  · simpa using mass_nonneg p

private theorem sum_ticks_le (n : ℕ) :
    (tickSum n : ℝ)/10000000 ≤ ∑ p ∈ Finset.range n, mass p := by
  induction n with
  | zero => simp [tickSum]
  | succ n ih =>
    rw [tickSum, Nat.cast_add, add_div, Finset.sum_range_succ]
    exact add_le_add ih (ticks_le n)

/-- Even after subtracting the full continuous tail mass, the prime tail is positive. -/
theorem sharp_tail_gt_one_thousandth :
    (1:ℝ)/1000 < (∑' p : ℕ, if 10 < p then atom p else 0) - 10/109 := by
  have hs : Summable atom :=
    summable_of_sum_range_le atom_nonneg (fun n => (prefix_lt_thirteen_twentieths n).le)
  have hsm : Summable mass := hs.of_nonneg_of_le mass_nonneg fun p => by
    unfold mass
    split_ifs <;> simp [atom_nonneg]
  have h := (sum_ticks_le 1501).trans (hsm.sum_le_tsum (Finset.range 1501)
    (fun p _ => mass_nonneg p))
  rw [finite_certificate] at h
  change 1/1000 < (∑' p : ℕ, mass p) - 10/109
  norm_num at h ⊢
  linarith

/-- Signed prime mass on the open tail beginning at a positive real cutoff. -/
noncomputable def sharpTail (x : ℝ) : ℝ :=
  (∑' p : ℕ, if x < (p : ℝ) then atom p else 0) - 1/x

/-- The cutoff 109/10 refutes a uniform nonpositive sharp-tail comparison. -/
theorem sharpTail_at_109_div_ten : (1:ℝ)/1000 < sharpTail (109/10) := by
  have hi (p : ℕ) : ((109/10 : ℝ) < p) ↔ 10 < p := by
    constructor
    · intro h
      by_contra! hn
      have h' : (p:ℝ) ≤ 10 := by exact_mod_cast hn
      linarith
    · intro h
      have hn : 11 ≤ p := by omega
      have h' : (11:ℝ) ≤ p := by exact_mod_cast hn
      linarith
  simpa only [sharpTail, hi, show (1:ℝ)/(109/10) = 10/109 by norm_num] using
    sharp_tail_gt_one_thousandth

end GRWTSK.XiPrimeHarmonicTailWitness
